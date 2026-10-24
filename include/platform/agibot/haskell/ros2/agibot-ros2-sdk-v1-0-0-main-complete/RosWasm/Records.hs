-- @file Records.hs
-- @brief Full agibot haskell codecs and original record metadata.
-- @details Complete agibot ros2_sdk_v1_0_0_main values in haskell. 120 original records retain 366 fields and 93
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
    "UWVMROS1_d46b7979d687f30a04b2d96d2cfde9efeedb18a3b311e43fd3af362d7323102c"
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
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_SITE_SWITCH :: Word8
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_SITE_SWITCH = 8
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_LANGUAGE_LIST :: Word8
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_LANGUAGE_LIST = 9
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
    "UWVMROS1_f5886bcdffa17bde1622e0441b0e05562826ea27c5e393a85e255d4dd6ac32bb"
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
    "UWVMROS1_5c1d34cab6d73c22fa0c9555ff67309d3ad05002b19d814ea03e576a1298f4aa"
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
data Ros2Aimdk_msgsMsgAudioInfo = Ros2Aimdk_msgsMsgAudioInfo
  {
    -- | \@brief aimdk_msgs/msg/AudioInfo.channels: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioInfo_channels :: Word8
  ,
    -- | \@brief aimdk_msgs/msg/AudioInfo.sample_rate: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioInfo_sample_rate :: Word32
  ,
    -- | \@brief aimdk_msgs/msg/AudioInfo.size: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioInfo_size :: Word32
  ,
    -- | \@brief aimdk_msgs/msg/AudioInfo.sample_format: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioInfo_sample_format :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/AudioInfo.coding_format: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioInfo_coding_format :: T.Text
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgAudioInfo :: Ros2Aimdk_msgsMsgAudioInfo
defaultRos2Aimdk_msgsMsgAudioInfo = Ros2Aimdk_msgsMsgAudioInfo (0) (0) (0) (T.empty) (T.empty)
ros2Aimdk_msgsMsgAudioInfoCodecIdentity :: String
ros2Aimdk_msgsMsgAudioInfoCodecIdentity =
    "UWVMROS1_c58c89e03376e7f8beb8df02fe189fb1f6059825c5ff6924c4199b24fdb440be"
encodeRos2Aimdk_msgsMsgAudioInfo :: Ros2Aimdk_msgsMsgAudioInfo -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgAudioInfo value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgAudioInfo_channels value))
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgAudioInfo_sample_rate value))
  b2 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgAudioInfo_size value))
  b3 <- W.encodeText 128 True (ros2Aimdk_msgsMsgAudioInfo_sample_format value)
  b4 <- W.encodeText 128 True (ros2Aimdk_msgsMsgAudioInfo_coding_format value)
  W.bounded 273 [b0, b1, b2, b3, b4]
readRos2Aimdk_msgsMsgAudioInfo :: W.Decoder Ros2Aimdk_msgsMsgAudioInfo
readRos2Aimdk_msgsMsgAudioInfo = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- fromIntegral <$> W.unsigned 4
  a2 <- fromIntegral <$> W.unsigned 4
  a3 <- W.text 128 True
  a4 <- W.text 128 True
  let value = Ros2Aimdk_msgsMsgAudioInfo a0 a1 a2 a3 a4
  case encodeRos2Aimdk_msgsMsgAudioInfo value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgAudioInfo :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgAudioInfo
decodeRos2Aimdk_msgsMsgAudioInfo = W.runDecoder 273 readRos2Aimdk_msgsMsgAudioInfo
instance Canonical Ros2Aimdk_msgsMsgAudioInfo where
  maximumBytes _ = 273
  encodeValue = encodeRos2Aimdk_msgsMsgAudioInfo
  readValue = readRos2Aimdk_msgsMsgAudioInfo
data Ros2Aimdk_msgsMsgAudioData = Ros2Aimdk_msgsMsgAudioData
  {
    -- | \@brief aimdk_msgs/msg/AudioData.data: uint8; 0..256 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioData; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioData_data :: [Word8]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgAudioData :: Ros2Aimdk_msgsMsgAudioData
defaultRos2Aimdk_msgsMsgAudioData = Ros2Aimdk_msgsMsgAudioData ([])
ros2Aimdk_msgsMsgAudioDataCodecIdentity :: String
ros2Aimdk_msgsMsgAudioDataCodecIdentity =
    "UWVMROS1_547da1b39105416d63222ff082398cfeec0804a7c7ad28199168f1107c6844e8"
encodeRos2Aimdk_msgsMsgAudioData :: Ros2Aimdk_msgsMsgAudioData -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgAudioData value = do
  if length (ros2Aimdk_msgsMsgAudioData_data value) > 256 then Left 22 else Right ()
  prefix0 <- W.encodeCount 256 (length (ros2Aimdk_msgsMsgAudioData_data value))
  b0 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e))) (ros2Aimdk_msgsMsgAudioData_data value)
  W.bounded 260 [prefix0, b0]
readRos2Aimdk_msgsMsgAudioData :: W.Decoder Ros2Aimdk_msgsMsgAudioData
readRos2Aimdk_msgsMsgAudioData = do
  count0 <- W.count 256
  a0 <- replicateM count0 (fromIntegral <$> W.unsigned 1)
  let value = Ros2Aimdk_msgsMsgAudioData a0
  case encodeRos2Aimdk_msgsMsgAudioData value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgAudioData :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgAudioData
decodeRos2Aimdk_msgsMsgAudioData = W.runDecoder 260 readRos2Aimdk_msgsMsgAudioData
instance Canonical Ros2Aimdk_msgsMsgAudioData where
  maximumBytes _ = 260
  encodeValue = encodeRos2Aimdk_msgsMsgAudioData
  readValue = readRos2Aimdk_msgsMsgAudioData
data Ros2Aimdk_msgsMsgAudioCapture = Ros2Aimdk_msgsMsgAudioCapture
  {
    -- | \@brief aimdk_msgs/msg/AudioCapture.stamps: builtin_interfaces/msg/Time.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioCapture; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioCapture_stamps :: Ros2Builtin_interfacesMsgTime
  ,
    -- | \@brief aimdk_msgs/msg/AudioCapture.mic_channels: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioCapture; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioCapture_mic_channels :: Word8
  ,
    -- | \@brief aimdk_msgs/msg/AudioCapture.ref_channels: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioCapture; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioCapture_ref_channels :: Word8
  ,
    -- | \@brief aimdk_msgs/msg/AudioCapture.info: aimdk_msgs/msg/AudioInfo.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioCapture; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioCapture_info :: Ros2Aimdk_msgsMsgAudioInfo
  ,
    -- | \@brief aimdk_msgs/msg/AudioCapture.data: aimdk_msgs/msg/AudioData.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioCapture; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioCapture_data :: Ros2Aimdk_msgsMsgAudioData
  ,
    -- | \@brief aimdk_msgs/msg/AudioCapture.pkg_name: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioCapture; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioCapture_pkg_name :: T.Text
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgAudioCapture :: Ros2Aimdk_msgsMsgAudioCapture
defaultRos2Aimdk_msgsMsgAudioCapture = Ros2Aimdk_msgsMsgAudioCapture (defaultRos2Builtin_interfacesMsgTime) (0) (0)
    (defaultRos2Aimdk_msgsMsgAudioInfo) (defaultRos2Aimdk_msgsMsgAudioData) (T.empty)
ros2Aimdk_msgsMsgAudioCaptureCodecIdentity :: String
ros2Aimdk_msgsMsgAudioCaptureCodecIdentity =
    "UWVMROS1_de7db19093964d4783811019e6cc12c952a58364561be2a0a81ae874766e937c"
encodeRos2Aimdk_msgsMsgAudioCapture :: Ros2Aimdk_msgsMsgAudioCapture -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgAudioCapture value = do
  b0 <- encodeRos2Builtin_interfacesMsgTime (ros2Aimdk_msgsMsgAudioCapture_stamps value)
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgAudioCapture_mic_channels value))
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgAudioCapture_ref_channels value))
  b3 <- encodeRos2Aimdk_msgsMsgAudioInfo (ros2Aimdk_msgsMsgAudioCapture_info value)
  b4 <- encodeRos2Aimdk_msgsMsgAudioData (ros2Aimdk_msgsMsgAudioCapture_data value)
  b5 <- W.encodeText 128 True (ros2Aimdk_msgsMsgAudioCapture_pkg_name value)
  W.bounded 675 [b0, b1, b2, b3, b4, b5]
readRos2Aimdk_msgsMsgAudioCapture :: W.Decoder Ros2Aimdk_msgsMsgAudioCapture
readRos2Aimdk_msgsMsgAudioCapture = do
  a0 <- readRos2Builtin_interfacesMsgTime
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- readRos2Aimdk_msgsMsgAudioInfo
  a4 <- readRos2Aimdk_msgsMsgAudioData
  a5 <- W.text 128 True
  let value = Ros2Aimdk_msgsMsgAudioCapture a0 a1 a2 a3 a4 a5
  case encodeRos2Aimdk_msgsMsgAudioCapture value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgAudioCapture :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgAudioCapture
decodeRos2Aimdk_msgsMsgAudioCapture = W.runDecoder 675 readRos2Aimdk_msgsMsgAudioCapture
instance Canonical Ros2Aimdk_msgsMsgAudioCapture where
  maximumBytes _ = 675
  encodeValue = encodeRos2Aimdk_msgsMsgAudioCapture
  readValue = readRos2Aimdk_msgsMsgAudioCapture
data Ros2Aimdk_msgsMsgAudioFile = Ros2Aimdk_msgsMsgAudioFile
  {
    -- | \@brief aimdk_msgs/msg/AudioFile.pkg_name: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioFile; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioFile_pkg_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/AudioFile.file_name: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioFile; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioFile_file_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/AudioFile.file_path: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioFile; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioFile_file_path :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/AudioFile.info: aimdk_msgs/msg/AudioInfo.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioFile; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioFile_info :: Ros2Aimdk_msgsMsgAudioInfo
  ,
    -- | \@brief aimdk_msgs/msg/AudioFile.priority: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioFile; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioFile_priority :: Word32
  ,
    -- | \@brief aimdk_msgs/msg/AudioFile.priority_weight: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioFile; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioFile_priority_weight :: Word32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgAudioFile :: Ros2Aimdk_msgsMsgAudioFile
defaultRos2Aimdk_msgsMsgAudioFile = Ros2Aimdk_msgsMsgAudioFile (T.empty) (T.empty) (T.empty)
    (defaultRos2Aimdk_msgsMsgAudioInfo) (0) (0)
ros2Aimdk_msgsMsgAudioFileCodecIdentity :: String
ros2Aimdk_msgsMsgAudioFileCodecIdentity =
    "UWVMROS1_ed9aeffc24c98e014fe431b9e5e814bf21a474a777f70cf3ac989537b431995d"
encodeRos2Aimdk_msgsMsgAudioFile :: Ros2Aimdk_msgsMsgAudioFile -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgAudioFile value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgAudioFile_pkg_name value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsMsgAudioFile_file_name value)
  b2 <- W.encodeText 128 True (ros2Aimdk_msgsMsgAudioFile_file_path value)
  b3 <- encodeRos2Aimdk_msgsMsgAudioInfo (ros2Aimdk_msgsMsgAudioFile_info value)
  b4 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgAudioFile_priority value))
  b5 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgAudioFile_priority_weight value))
  W.bounded 677 [b0, b1, b2, b3, b4, b5]
readRos2Aimdk_msgsMsgAudioFile :: W.Decoder Ros2Aimdk_msgsMsgAudioFile
readRos2Aimdk_msgsMsgAudioFile = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  a3 <- readRos2Aimdk_msgsMsgAudioInfo
  a4 <- fromIntegral <$> W.unsigned 4
  a5 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Aimdk_msgsMsgAudioFile a0 a1 a2 a3 a4 a5
  case encodeRos2Aimdk_msgsMsgAudioFile value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgAudioFile :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgAudioFile
decodeRos2Aimdk_msgsMsgAudioFile = W.runDecoder 677 readRos2Aimdk_msgsMsgAudioFile
instance Canonical Ros2Aimdk_msgsMsgAudioFile where
  maximumBytes _ = 677
  encodeValue = encodeRos2Aimdk_msgsMsgAudioFile
  readValue = readRos2Aimdk_msgsMsgAudioFile
data Ros2Aimdk_msgsMsgAudioPlayback = Ros2Aimdk_msgsMsgAudioPlayback
  {
    -- | \@brief aimdk_msgs/msg/AudioPlayback.stamps: builtin_interfaces/msg/Time.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioPlayback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioPlayback_stamps :: Ros2Builtin_interfacesMsgTime
  ,
    -- | \@brief aimdk_msgs/msg/AudioPlayback.info: aimdk_msgs/msg/AudioInfo.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioPlayback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioPlayback_info :: Ros2Aimdk_msgsMsgAudioInfo
  ,
    -- | \@brief aimdk_msgs/msg/AudioPlayback.data: aimdk_msgs/msg/AudioData.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioPlayback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioPlayback_data :: Ros2Aimdk_msgsMsgAudioData
  ,
    -- | \@brief aimdk_msgs/msg/AudioPlayback.pkg_name: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioPlayback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioPlayback_pkg_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/AudioPlayback.token_id: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioPlayback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioPlayback_token_id :: T.Text
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgAudioPlayback :: Ros2Aimdk_msgsMsgAudioPlayback
defaultRos2Aimdk_msgsMsgAudioPlayback = Ros2Aimdk_msgsMsgAudioPlayback (defaultRos2Builtin_interfacesMsgTime)
    (defaultRos2Aimdk_msgsMsgAudioInfo) (defaultRos2Aimdk_msgsMsgAudioData) (T.empty) (T.empty)
ros2Aimdk_msgsMsgAudioPlaybackCodecIdentity :: String
ros2Aimdk_msgsMsgAudioPlaybackCodecIdentity =
    "UWVMROS1_1262b4dd07b332e6d10c5968292f29928e43fd6f6ea2faa2be1f48482e2dc499"
encodeRos2Aimdk_msgsMsgAudioPlayback :: Ros2Aimdk_msgsMsgAudioPlayback -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgAudioPlayback value = do
  b0 <- encodeRos2Builtin_interfacesMsgTime (ros2Aimdk_msgsMsgAudioPlayback_stamps value)
  b1 <- encodeRos2Aimdk_msgsMsgAudioInfo (ros2Aimdk_msgsMsgAudioPlayback_info value)
  b2 <- encodeRos2Aimdk_msgsMsgAudioData (ros2Aimdk_msgsMsgAudioPlayback_data value)
  b3 <- W.encodeText 128 True (ros2Aimdk_msgsMsgAudioPlayback_pkg_name value)
  b4 <- W.encodeText 128 True (ros2Aimdk_msgsMsgAudioPlayback_token_id value)
  W.bounded 805 [b0, b1, b2, b3, b4]
readRos2Aimdk_msgsMsgAudioPlayback :: W.Decoder Ros2Aimdk_msgsMsgAudioPlayback
readRos2Aimdk_msgsMsgAudioPlayback = do
  a0 <- readRos2Builtin_interfacesMsgTime
  a1 <- readRos2Aimdk_msgsMsgAudioInfo
  a2 <- readRos2Aimdk_msgsMsgAudioData
  a3 <- W.text 128 True
  a4 <- W.text 128 True
  let value = Ros2Aimdk_msgsMsgAudioPlayback a0 a1 a2 a3 a4
  case encodeRos2Aimdk_msgsMsgAudioPlayback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgAudioPlayback :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgAudioPlayback
decodeRos2Aimdk_msgsMsgAudioPlayback = W.runDecoder 805 readRos2Aimdk_msgsMsgAudioPlayback
instance Canonical Ros2Aimdk_msgsMsgAudioPlayback where
  maximumBytes _ = 805
  encodeValue = encodeRos2Aimdk_msgsMsgAudioPlayback
  readValue = readRos2Aimdk_msgsMsgAudioPlayback
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
data Ros2Aimdk_msgsMsgCurrentVersion = Ros2Aimdk_msgsMsgCurrentVersion
  {
    -- | \@brief aimdk_msgs/msg/CurrentVersion.version: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgCurrentVersion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgCurrentVersion_version :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/CurrentVersion.name: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgCurrentVersion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgCurrentVersion_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/CurrentVersion.files: string; 0..16 elements; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgCurrentVersion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgCurrentVersion_files :: [T.Text]
  ,
    -- | \@brief aimdk_msgs/msg/CurrentVersion.download_timestamp_seconds: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgCurrentVersion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgCurrentVersion_download_timestamp_seconds :: Word64
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgCurrentVersion :: Ros2Aimdk_msgsMsgCurrentVersion
defaultRos2Aimdk_msgsMsgCurrentVersion = Ros2Aimdk_msgsMsgCurrentVersion (T.empty) (T.empty) ([]) (0)
ros2Aimdk_msgsMsgCurrentVersionCodecIdentity :: String
ros2Aimdk_msgsMsgCurrentVersionCodecIdentity =
    "UWVMROS1_0a8226d6e3af0a098ee88498274e2a166f40df85162a67d38ebcb1fcba5e87cd"
encodeRos2Aimdk_msgsMsgCurrentVersion :: Ros2Aimdk_msgsMsgCurrentVersion -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgCurrentVersion value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgCurrentVersion_version value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsMsgCurrentVersion_name value)
  if length (ros2Aimdk_msgsMsgCurrentVersion_files value) > 16 then Left 22 else Right ()
  prefix2 <- W.encodeCount 16 (length (ros2Aimdk_msgsMsgCurrentVersion_files value))
  b2 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros2Aimdk_msgsMsgCurrentVersion_files value)
  b3 <- W.encodeUnsigned 8 (fromIntegral (ros2Aimdk_msgsMsgCurrentVersion_download_timestamp_seconds value))
  W.bounded 2388 [b0, b1, prefix2, b2, b3]
readRos2Aimdk_msgsMsgCurrentVersion :: W.Decoder Ros2Aimdk_msgsMsgCurrentVersion
readRos2Aimdk_msgsMsgCurrentVersion = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  count2 <- W.count 16
  a2 <- replicateM count2 (W.text 128 True)
  a3 <- fromIntegral <$> W.unsigned 8
  let value = Ros2Aimdk_msgsMsgCurrentVersion a0 a1 a2 a3
  case encodeRos2Aimdk_msgsMsgCurrentVersion value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgCurrentVersion :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgCurrentVersion
decodeRos2Aimdk_msgsMsgCurrentVersion = W.runDecoder 2388 readRos2Aimdk_msgsMsgCurrentVersion
instance Canonical Ros2Aimdk_msgsMsgCurrentVersion where
  maximumBytes _ = 2388
  encodeValue = encodeRos2Aimdk_msgsMsgCurrentVersion
  readValue = readRos2Aimdk_msgsMsgCurrentVersion
data Ros2Aimdk_msgsMsgDomainErrorState = Ros2Aimdk_msgsMsgDomainErrorState
  {
    -- | \@brief aimdk_msgs/msg/DomainErrorState.value: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgDomainErrorState_value :: Word8
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgDomainErrorState :: Ros2Aimdk_msgsMsgDomainErrorState
defaultRos2Aimdk_msgsMsgDomainErrorState = Ros2Aimdk_msgsMsgDomainErrorState (0)
ros2Aimdk_msgsMsgDomainErrorStateCodecIdentity :: String
ros2Aimdk_msgsMsgDomainErrorStateCodecIdentity =
    "UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231"
ros2Aimdk_msgsMsgDomainErrorState_NONE :: Word8
ros2Aimdk_msgsMsgDomainErrorState_NONE = 0
ros2Aimdk_msgsMsgDomainErrorState_DAMPING :: Word8
ros2Aimdk_msgsMsgDomainErrorState_DAMPING = 1
ros2Aimdk_msgsMsgDomainErrorState_POWERDOWN :: Word8
ros2Aimdk_msgsMsgDomainErrorState_POWERDOWN = 2
ros2Aimdk_msgsMsgDomainErrorState_DISABLE :: Word8
ros2Aimdk_msgsMsgDomainErrorState_DISABLE = 3
ros2Aimdk_msgsMsgDomainErrorState_DISCONNECT :: Word8
ros2Aimdk_msgsMsgDomainErrorState_DISCONNECT = 4
encodeRos2Aimdk_msgsMsgDomainErrorState :: Ros2Aimdk_msgsMsgDomainErrorState -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgDomainErrorState value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgDomainErrorState_value value))
  W.bounded 1 [b0]
readRos2Aimdk_msgsMsgDomainErrorState :: W.Decoder Ros2Aimdk_msgsMsgDomainErrorState
readRos2Aimdk_msgsMsgDomainErrorState = do
  a0 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Aimdk_msgsMsgDomainErrorState a0
  case encodeRos2Aimdk_msgsMsgDomainErrorState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgDomainErrorState :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgDomainErrorState
decodeRos2Aimdk_msgsMsgDomainErrorState = W.runDecoder 1 readRos2Aimdk_msgsMsgDomainErrorState
instance Canonical Ros2Aimdk_msgsMsgDomainErrorState where
  maximumBytes _ = 1
  encodeValue = encodeRos2Aimdk_msgsMsgDomainErrorState
  readValue = readRos2Aimdk_msgsMsgDomainErrorState
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
data Ros2Aimdk_msgsMsgFocusRequester = Ros2Aimdk_msgsMsgFocusRequester
  {
    -- | \@brief aimdk_msgs/msg/FocusRequester.pkg_name: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgFocusRequester; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgFocusRequester_pkg_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/FocusRequester.priority: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgFocusRequester; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgFocusRequester_priority :: Word32
  ,
    -- | \@brief aimdk_msgs/msg/FocusRequester.priority_weight: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgFocusRequester; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgFocusRequester_priority_weight :: Word32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgFocusRequester :: Ros2Aimdk_msgsMsgFocusRequester
defaultRos2Aimdk_msgsMsgFocusRequester = Ros2Aimdk_msgsMsgFocusRequester (T.empty) (0) (0)
ros2Aimdk_msgsMsgFocusRequesterCodecIdentity :: String
ros2Aimdk_msgsMsgFocusRequesterCodecIdentity =
    "UWVMROS1_9b41f0b3a3cafa6b190ede3107f8cf802c1cbacf1eb81e075a376ceaf37fa186"
encodeRos2Aimdk_msgsMsgFocusRequester :: Ros2Aimdk_msgsMsgFocusRequester -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgFocusRequester value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgFocusRequester_pkg_name value)
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgFocusRequester_priority value))
  b2 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgFocusRequester_priority_weight value))
  W.bounded 140 [b0, b1, b2]
readRos2Aimdk_msgsMsgFocusRequester :: W.Decoder Ros2Aimdk_msgsMsgFocusRequester
readRos2Aimdk_msgsMsgFocusRequester = do
  a0 <- W.text 128 True
  a1 <- fromIntegral <$> W.unsigned 4
  a2 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Aimdk_msgsMsgFocusRequester a0 a1 a2
  case encodeRos2Aimdk_msgsMsgFocusRequester value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgFocusRequester :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgFocusRequester
decodeRos2Aimdk_msgsMsgFocusRequester = W.runDecoder 140 readRos2Aimdk_msgsMsgFocusRequester
instance Canonical Ros2Aimdk_msgsMsgFocusRequester where
  maximumBytes _ = 140
  encodeValue = encodeRos2Aimdk_msgsMsgFocusRequester
  readValue = readRos2Aimdk_msgsMsgFocusRequester
data Ros2Aimdk_msgsMsgFocusResponse = Ros2Aimdk_msgsMsgFocusResponse
  {
    -- | \@brief aimdk_msgs/msg/FocusResponse.pkg_name: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgFocusResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgFocusResponse_pkg_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/FocusResponse.focus_gain: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgFocusResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgFocusResponse_focus_gain :: Bool
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgFocusResponse :: Ros2Aimdk_msgsMsgFocusResponse
defaultRos2Aimdk_msgsMsgFocusResponse = Ros2Aimdk_msgsMsgFocusResponse (T.empty) (False)
ros2Aimdk_msgsMsgFocusResponseCodecIdentity :: String
ros2Aimdk_msgsMsgFocusResponseCodecIdentity =
    "UWVMROS1_16047b8b9e9f131f8aa44fc4e0960ce81446788d557b055be1f6b2542db3a87c"
encodeRos2Aimdk_msgsMsgFocusResponse :: Ros2Aimdk_msgsMsgFocusResponse -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgFocusResponse value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgFocusResponse_pkg_name value)
  b1 <- W.encodeBool (ros2Aimdk_msgsMsgFocusResponse_focus_gain value)
  W.bounded 133 [b0, b1]
readRos2Aimdk_msgsMsgFocusResponse :: W.Decoder Ros2Aimdk_msgsMsgFocusResponse
readRos2Aimdk_msgsMsgFocusResponse = do
  a0 <- W.text 128 True
  a1 <- W.boolean
  let value = Ros2Aimdk_msgsMsgFocusResponse a0 a1
  case encodeRos2Aimdk_msgsMsgFocusResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgFocusResponse :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgFocusResponse
decodeRos2Aimdk_msgsMsgFocusResponse = W.runDecoder 133 readRos2Aimdk_msgsMsgFocusResponse
instance Canonical Ros2Aimdk_msgsMsgFocusResponse where
  maximumBytes _ = 133
  encodeValue = encodeRos2Aimdk_msgsMsgFocusResponse
  readValue = readRos2Aimdk_msgsMsgFocusResponse
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
    -- \@details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds
    -- fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgQuaternion_x :: Double
  ,
    -- | \@brief geometry_msgs/msg/Quaternion.y: float64.
    -- \@details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds
    -- fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgQuaternion_y :: Double
  ,
    -- | \@brief geometry_msgs/msg/Quaternion.z: float64.
    -- \@details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds
    -- fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgQuaternion_z :: Double
  ,
    -- | \@brief geometry_msgs/msg/Quaternion.w: float64.
    -- \@details Schema default 1.0. Encoding preserves the original field position and signedness; invalid bounds
    -- fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgQuaternion_w :: Double
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgQuaternion :: Ros2Geometry_msgsMsgQuaternion
defaultRos2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion (castWord64ToDouble 0x0) (castWord64ToDouble
    0x0) (castWord64ToDouble 0x0) (castWord64ToDouble 0x3ff0000000000000)
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
data Ros2Aimdk_msgsMsgQRCode = Ros2Aimdk_msgsMsgQRCode
  {
    -- | \@brief aimdk_msgs/msg/QRCode.code: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgQRCode; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgQRCode_code :: Int32
  ,
    -- | \@brief aimdk_msgs/msg/QRCode.pose: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgQRCode; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgQRCode_pose :: Ros2Geometry_msgsMsgPose
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgQRCode :: Ros2Aimdk_msgsMsgQRCode
defaultRos2Aimdk_msgsMsgQRCode = Ros2Aimdk_msgsMsgQRCode (0) (defaultRos2Geometry_msgsMsgPose)
ros2Aimdk_msgsMsgQRCodeCodecIdentity :: String
ros2Aimdk_msgsMsgQRCodeCodecIdentity = "UWVMROS1_51293e3c7ee25b1a265c4a57539a11060563e89005ceaf4aaa0891481ab803cd"
encodeRos2Aimdk_msgsMsgQRCode :: Ros2Aimdk_msgsMsgQRCode -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgQRCode value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgQRCode_code value))
  b1 <- encodeRos2Geometry_msgsMsgPose (ros2Aimdk_msgsMsgQRCode_pose value)
  W.bounded 60 [b0, b1]
readRos2Aimdk_msgsMsgQRCode :: W.Decoder Ros2Aimdk_msgsMsgQRCode
readRos2Aimdk_msgsMsgQRCode = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- readRos2Geometry_msgsMsgPose
  let value = Ros2Aimdk_msgsMsgQRCode a0 a1
  case encodeRos2Aimdk_msgsMsgQRCode value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgQRCode :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgQRCode
decodeRos2Aimdk_msgsMsgQRCode = W.runDecoder 60 readRos2Aimdk_msgsMsgQRCode
instance Canonical Ros2Aimdk_msgsMsgQRCode where
  maximumBytes _ = 60
  encodeValue = encodeRos2Aimdk_msgsMsgQRCode
  readValue = readRos2Aimdk_msgsMsgQRCode
data Ros2Aimdk_msgsMsgHRPoint = Ros2Aimdk_msgsMsgHRPoint
  {
    -- | \@brief aimdk_msgs/msg/HRPoint.point_id: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHRPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHRPoint_point_id :: Int32
  ,
    -- | \@brief aimdk_msgs/msg/HRPoint.pose: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHRPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHRPoint_pose :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief aimdk_msgs/msg/HRPoint.qr_list: aimdk_msgs/msg/QRCode; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHRPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHRPoint_qr_list :: [Ros2Aimdk_msgsMsgQRCode]
  ,
    -- | \@brief aimdk_msgs/msg/HRPoint.use_head: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHRPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHRPoint_use_head :: Bool
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgHRPoint :: Ros2Aimdk_msgsMsgHRPoint
defaultRos2Aimdk_msgsMsgHRPoint = Ros2Aimdk_msgsMsgHRPoint (0) (defaultRos2Geometry_msgsMsgPose) ([]) (False)
ros2Aimdk_msgsMsgHRPointCodecIdentity :: String
ros2Aimdk_msgsMsgHRPointCodecIdentity = "UWVMROS1_070874f4fea77298b6d66d02ee40026e86b4f48ee03e6d9acffcaddb387b3645"
encodeRos2Aimdk_msgsMsgHRPoint :: Ros2Aimdk_msgsMsgHRPoint -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgHRPoint value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgHRPoint_point_id value))
  b1 <- encodeRos2Geometry_msgsMsgPose (ros2Aimdk_msgsMsgHRPoint_pose value)
  if length (ros2Aimdk_msgsMsgHRPoint_qr_list value) > 4 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4 (length (ros2Aimdk_msgsMsgHRPoint_qr_list value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgQRCode (e)) (ros2Aimdk_msgsMsgHRPoint_qr_list value)
  b3 <- W.encodeBool (ros2Aimdk_msgsMsgHRPoint_use_head value)
  W.bounded 305 [b0, b1, prefix2, b2, b3]
readRos2Aimdk_msgsMsgHRPoint :: W.Decoder Ros2Aimdk_msgsMsgHRPoint
readRos2Aimdk_msgsMsgHRPoint = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- readRos2Geometry_msgsMsgPose
  count2 <- W.count 4
  a2 <- replicateM count2 (readRos2Aimdk_msgsMsgQRCode)
  a3 <- W.boolean
  let value = Ros2Aimdk_msgsMsgHRPoint a0 a1 a2 a3
  case encodeRos2Aimdk_msgsMsgHRPoint value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgHRPoint :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgHRPoint
decodeRos2Aimdk_msgsMsgHRPoint = W.runDecoder 305 readRos2Aimdk_msgsMsgHRPoint
instance Canonical Ros2Aimdk_msgsMsgHRPoint where
  maximumBytes _ = 305
  encodeValue = encodeRos2Aimdk_msgsMsgHRPoint
  readValue = readRos2Aimdk_msgsMsgHRPoint
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
ros2Aimdk_msgsMsgHandTypeCodecIdentity = "UWVMROS1_be593e2d647a922b02f6f81e52fbfaa805837d6ef6a156de500d4dc40f1fc5bb"
ros2Aimdk_msgsMsgHandType_NONE :: Word8
ros2Aimdk_msgsMsgHandType_NONE = 0
ros2Aimdk_msgsMsgHandType_NIMBLE_HANDS :: Word8
ros2Aimdk_msgsMsgHandType_NIMBLE_HANDS = 1
ros2Aimdk_msgsMsgHandType_CLAW :: Word8
ros2Aimdk_msgsMsgHandType_CLAW = 2
ros2Aimdk_msgsMsgHandType_LEISAI_NIMBLE_HANDS :: Word8
ros2Aimdk_msgsMsgHandType_LEISAI_NIMBLE_HANDS = 3
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
    "UWVMROS1_d7f46a8aa55d6ef296aa86d6522b7add84f4c8e7e3009d1454d573a8af1d17d5"
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
data Ros2Aimdk_msgsMsgHandTouchSensorData = Ros2Aimdk_msgsMsgHandTouchSensorData
  {
    -- | \@brief aimdk_msgs/msg/HandTouchSensorData.palm_touch_data: uint8; exactly 36 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandTouchSensorData; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandTouchSensorData_palm_touch_data :: [Word8]
  ,
    -- | \@brief aimdk_msgs/msg/HandTouchSensorData.back_of_hand_touch_data: uint8; exactly 36 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandTouchSensorData; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandTouchSensorData_back_of_hand_touch_data :: [Word8]
  ,
    -- | \@brief aimdk_msgs/msg/HandTouchSensorData.thumb_touch_data: uint8; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandTouchSensorData; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandTouchSensorData_thumb_touch_data :: [Word8]
  ,
    -- | \@brief aimdk_msgs/msg/HandTouchSensorData.index_finger_touch_data: uint8; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandTouchSensorData; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandTouchSensorData_index_finger_touch_data :: [Word8]
  ,
    -- | \@brief aimdk_msgs/msg/HandTouchSensorData.middle_finger_touch_data: uint8; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandTouchSensorData; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandTouchSensorData_middle_finger_touch_data :: [Word8]
  ,
    -- | \@brief aimdk_msgs/msg/HandTouchSensorData.ring_finger_touch_data: uint8; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandTouchSensorData; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandTouchSensorData_ring_finger_touch_data :: [Word8]
  ,
    -- | \@brief aimdk_msgs/msg/HandTouchSensorData.little_finger_touch_data: uint8; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandTouchSensorData; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandTouchSensorData_little_finger_touch_data :: [Word8]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgHandTouchSensorData :: Ros2Aimdk_msgsMsgHandTouchSensorData
defaultRos2Aimdk_msgsMsgHandTouchSensorData = Ros2Aimdk_msgsMsgHandTouchSensorData (replicate 36 (0)) (replicate 36
    (0)) (replicate 16 (0)) (replicate 16 (0)) (replicate 16 (0)) (replicate 16 (0)) (replicate 16 (0))
ros2Aimdk_msgsMsgHandTouchSensorDataCodecIdentity :: String
ros2Aimdk_msgsMsgHandTouchSensorDataCodecIdentity =
    "UWVMROS1_573ab7611c65bde831172350c3cf49dd73cf4bfcbefabff7aa874845b828e4a0"
encodeRos2Aimdk_msgsMsgHandTouchSensorData :: Ros2Aimdk_msgsMsgHandTouchSensorData -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgHandTouchSensorData value = do
  if length (ros2Aimdk_msgsMsgHandTouchSensorData_palm_touch_data value) /= 36 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e)))
      (ros2Aimdk_msgsMsgHandTouchSensorData_palm_touch_data value)
  if length (ros2Aimdk_msgsMsgHandTouchSensorData_back_of_hand_touch_data value) /= 36 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e)))
      (ros2Aimdk_msgsMsgHandTouchSensorData_back_of_hand_touch_data value)
  if length (ros2Aimdk_msgsMsgHandTouchSensorData_thumb_touch_data value) /= 16 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e)))
      (ros2Aimdk_msgsMsgHandTouchSensorData_thumb_touch_data value)
  if length (ros2Aimdk_msgsMsgHandTouchSensorData_index_finger_touch_data value) /= 16 then Left 22 else Right ()
  b3 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e)))
      (ros2Aimdk_msgsMsgHandTouchSensorData_index_finger_touch_data value)
  if length (ros2Aimdk_msgsMsgHandTouchSensorData_middle_finger_touch_data value) /= 16 then Left 22 else Right ()
  b4 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e)))
      (ros2Aimdk_msgsMsgHandTouchSensorData_middle_finger_touch_data value)
  if length (ros2Aimdk_msgsMsgHandTouchSensorData_ring_finger_touch_data value) /= 16 then Left 22 else Right ()
  b5 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e)))
      (ros2Aimdk_msgsMsgHandTouchSensorData_ring_finger_touch_data value)
  if length (ros2Aimdk_msgsMsgHandTouchSensorData_little_finger_touch_data value) /= 16 then Left 22 else Right ()
  b6 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e)))
      (ros2Aimdk_msgsMsgHandTouchSensorData_little_finger_touch_data value)
  W.bounded 152 [b0, b1, b2, b3, b4, b5, b6]
readRos2Aimdk_msgsMsgHandTouchSensorData :: W.Decoder Ros2Aimdk_msgsMsgHandTouchSensorData
readRos2Aimdk_msgsMsgHandTouchSensorData = do
  a0 <- replicateM 36 (fromIntegral <$> W.unsigned 1)
  a1 <- replicateM 36 (fromIntegral <$> W.unsigned 1)
  a2 <- replicateM 16 (fromIntegral <$> W.unsigned 1)
  a3 <- replicateM 16 (fromIntegral <$> W.unsigned 1)
  a4 <- replicateM 16 (fromIntegral <$> W.unsigned 1)
  a5 <- replicateM 16 (fromIntegral <$> W.unsigned 1)
  a6 <- replicateM 16 (fromIntegral <$> W.unsigned 1)
  let value = Ros2Aimdk_msgsMsgHandTouchSensorData a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Aimdk_msgsMsgHandTouchSensorData value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgHandTouchSensorData :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgHandTouchSensorData
decodeRos2Aimdk_msgsMsgHandTouchSensorData = W.runDecoder 152 readRos2Aimdk_msgsMsgHandTouchSensorData
instance Canonical Ros2Aimdk_msgsMsgHandTouchSensorData where
  maximumBytes _ = 152
  encodeValue = encodeRos2Aimdk_msgsMsgHandTouchSensorData
  readValue = readRos2Aimdk_msgsMsgHandTouchSensorData
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
    -- | \@brief aimdk_msgs/msg/HandStateArray.left_touch_sensors: aimdk_msgs/msg/HandTouchSensorData.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandStateArray_left_touch_sensors :: Ros2Aimdk_msgsMsgHandTouchSensorData
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
  ,
    -- | \@brief aimdk_msgs/msg/HandStateArray.right_touch_sensors: aimdk_msgs/msg/HandTouchSensorData.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandStateArray_right_touch_sensors :: Ros2Aimdk_msgsMsgHandTouchSensorData
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgHandStateArray :: Ros2Aimdk_msgsMsgHandStateArray
defaultRos2Aimdk_msgsMsgHandStateArray = Ros2Aimdk_msgsMsgHandStateArray (defaultRos2Aimdk_msgsMsgMessageHeader)
    (defaultRos2Aimdk_msgsMsgHandType) ([]) (defaultRos2Aimdk_msgsMsgHandTouchSensorData)
    (defaultRos2Aimdk_msgsMsgHandType) ([]) (defaultRos2Aimdk_msgsMsgHandTouchSensorData)
ros2Aimdk_msgsMsgHandStateArrayCodecIdentity :: String
ros2Aimdk_msgsMsgHandStateArrayCodecIdentity =
    "UWVMROS1_0ea5f872d42818af468d20b20670067c07631691b5988e45dc5e87caf137efb3"
encodeRos2Aimdk_msgsMsgHandStateArray :: Ros2Aimdk_msgsMsgHandStateArray -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgHandStateArray value = do
  b0 <- encodeRos2Aimdk_msgsMsgMessageHeader (ros2Aimdk_msgsMsgHandStateArray_header value)
  b1 <- encodeRos2Aimdk_msgsMsgHandType (ros2Aimdk_msgsMsgHandStateArray_left_hand_type value)
  if length (ros2Aimdk_msgsMsgHandStateArray_left_hands value) > 4 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4 (length (ros2Aimdk_msgsMsgHandStateArray_left_hands value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgHandState (e)) (ros2Aimdk_msgsMsgHandStateArray_left_hands
      value)
  b3 <- encodeRos2Aimdk_msgsMsgHandTouchSensorData (ros2Aimdk_msgsMsgHandStateArray_left_touch_sensors value)
  b4 <- encodeRos2Aimdk_msgsMsgHandType (ros2Aimdk_msgsMsgHandStateArray_right_hand_type value)
  if length (ros2Aimdk_msgsMsgHandStateArray_right_hands value) > 4 then Left 22 else Right ()
  prefix5 <- W.encodeCount 4 (length (ros2Aimdk_msgsMsgHandStateArray_right_hands value))
  b5 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgHandState (e)) (ros2Aimdk_msgsMsgHandStateArray_right_hands
      value)
  b6 <- encodeRos2Aimdk_msgsMsgHandTouchSensorData (ros2Aimdk_msgsMsgHandStateArray_right_touch_sensors value)
  W.bounded 1778 [b0, b1, prefix2, b2, b3, b4, prefix5, b5, b6]
readRos2Aimdk_msgsMsgHandStateArray :: W.Decoder Ros2Aimdk_msgsMsgHandStateArray
readRos2Aimdk_msgsMsgHandStateArray = do
  a0 <- readRos2Aimdk_msgsMsgMessageHeader
  a1 <- readRos2Aimdk_msgsMsgHandType
  count2 <- W.count 4
  a2 <- replicateM count2 (readRos2Aimdk_msgsMsgHandState)
  a3 <- readRos2Aimdk_msgsMsgHandTouchSensorData
  a4 <- readRos2Aimdk_msgsMsgHandType
  count5 <- W.count 4
  a5 <- replicateM count5 (readRos2Aimdk_msgsMsgHandState)
  a6 <- readRos2Aimdk_msgsMsgHandTouchSensorData
  let value = Ros2Aimdk_msgsMsgHandStateArray a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Aimdk_msgsMsgHandStateArray value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgHandStateArray :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgHandStateArray
decodeRos2Aimdk_msgsMsgHandStateArray = W.runDecoder 1778 readRos2Aimdk_msgsMsgHandStateArray
instance Canonical Ros2Aimdk_msgsMsgHandStateArray where
  maximumBytes _ = 1778
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
    -- | \@brief aimdk_msgs/msg/JointState.error_code: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointState_error_code :: Word16
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgJointState :: Ros2Aimdk_msgsMsgJointState
defaultRos2Aimdk_msgsMsgJointState = Ros2Aimdk_msgsMsgJointState (T.empty) (0) (0) (0) (0)
ros2Aimdk_msgsMsgJointStateCodecIdentity :: String
ros2Aimdk_msgsMsgJointStateCodecIdentity =
    "UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53"
encodeRos2Aimdk_msgsMsgJointState :: Ros2Aimdk_msgsMsgJointState -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgJointState value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgJointState_name value)
  b1 <- W.encodeFloat64 (ros2Aimdk_msgsMsgJointState_position value)
  b2 <- W.encodeFloat64 (ros2Aimdk_msgsMsgJointState_velocity value)
  b3 <- W.encodeFloat64 (ros2Aimdk_msgsMsgJointState_effort value)
  b4 <- W.encodeUnsigned 2 (fromIntegral (ros2Aimdk_msgsMsgJointState_error_code value))
  W.bounded 158 [b0, b1, b2, b3, b4]
readRos2Aimdk_msgsMsgJointState :: W.Decoder Ros2Aimdk_msgsMsgJointState
readRos2Aimdk_msgsMsgJointState = do
  a0 <- W.text 128 True
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  a4 <- fromIntegral <$> W.unsigned 2
  let value = Ros2Aimdk_msgsMsgJointState a0 a1 a2 a3 a4
  case encodeRos2Aimdk_msgsMsgJointState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgJointState :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgJointState
decodeRos2Aimdk_msgsMsgJointState = W.runDecoder 158 readRos2Aimdk_msgsMsgJointState
instance Canonical Ros2Aimdk_msgsMsgJointState where
  maximumBytes _ = 158
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
    -- | \@brief aimdk_msgs/msg/JointStateArray.state: aimdk_msgs/msg/DomainErrorState.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointStateArray_state :: Ros2Aimdk_msgsMsgDomainErrorState
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
    (defaultRos2Aimdk_msgsMsgDomainErrorState) ([])
ros2Aimdk_msgsMsgJointStateArrayCodecIdentity :: String
ros2Aimdk_msgsMsgJointStateArrayCodecIdentity =
    "UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e"
encodeRos2Aimdk_msgsMsgJointStateArray :: Ros2Aimdk_msgsMsgJointStateArray -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgJointStateArray value = do
  b0 <- encodeRos2Aimdk_msgsMsgMessageHeader (ros2Aimdk_msgsMsgJointStateArray_header value)
  b1 <- encodeRos2Aimdk_msgsMsgDomainErrorState (ros2Aimdk_msgsMsgJointStateArray_state value)
  if length (ros2Aimdk_msgsMsgJointStateArray_joints value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros2Aimdk_msgsMsgJointStateArray_joints value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgJointState (e)) (ros2Aimdk_msgsMsgJointStateArray_joints
      value)
  W.bounded 10269 [b0, b1, prefix2, b2]
readRos2Aimdk_msgsMsgJointStateArray :: W.Decoder Ros2Aimdk_msgsMsgJointStateArray
readRos2Aimdk_msgsMsgJointStateArray = do
  a0 <- readRos2Aimdk_msgsMsgMessageHeader
  a1 <- readRos2Aimdk_msgsMsgDomainErrorState
  count2 <- W.count 64
  a2 <- replicateM count2 (readRos2Aimdk_msgsMsgJointState)
  let value = Ros2Aimdk_msgsMsgJointStateArray a0 a1 a2
  case encodeRos2Aimdk_msgsMsgJointStateArray value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgJointStateArray :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgJointStateArray
decodeRos2Aimdk_msgsMsgJointStateArray = W.runDecoder 10269 readRos2Aimdk_msgsMsgJointStateArray
instance Canonical Ros2Aimdk_msgsMsgJointStateArray where
  maximumBytes _ = 10269
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
data Ros2Geometry_msgsMsgPose2D = Ros2Geometry_msgsMsgPose2D
  {
    -- | \@brief geometry_msgs/msg/Pose2D.x: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPose2D; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPose2D_x :: Double
  ,
    -- | \@brief geometry_msgs/msg/Pose2D.y: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPose2D; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPose2D_y :: Double
  ,
    -- | \@brief geometry_msgs/msg/Pose2D.theta: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPose2D; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPose2D_theta :: Double
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgPose2D :: Ros2Geometry_msgsMsgPose2D
defaultRos2Geometry_msgsMsgPose2D = Ros2Geometry_msgsMsgPose2D (0) (0) (0)
ros2Geometry_msgsMsgPose2DCodecIdentity :: String
ros2Geometry_msgsMsgPose2DCodecIdentity =
    "UWVMROS1_5926ccd43f868ca13520625e24e283abe2e6f6418dacaa136eed5951064d8bce"
encodeRos2Geometry_msgsMsgPose2D :: Ros2Geometry_msgsMsgPose2D -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgPose2D value = do
  b0 <- W.encodeFloat64 (ros2Geometry_msgsMsgPose2D_x value)
  b1 <- W.encodeFloat64 (ros2Geometry_msgsMsgPose2D_y value)
  b2 <- W.encodeFloat64 (ros2Geometry_msgsMsgPose2D_theta value)
  W.bounded 24 [b0, b1, b2]
readRos2Geometry_msgsMsgPose2D :: W.Decoder Ros2Geometry_msgsMsgPose2D
readRos2Geometry_msgsMsgPose2D = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.float64
  let value = Ros2Geometry_msgsMsgPose2D a0 a1 a2
  case encodeRos2Geometry_msgsMsgPose2D value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgPose2D :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgPose2D
decodeRos2Geometry_msgsMsgPose2D = W.runDecoder 24 readRos2Geometry_msgsMsgPose2D
instance Canonical Ros2Geometry_msgsMsgPose2D where
  maximumBytes _ = 24
  encodeValue = encodeRos2Geometry_msgsMsgPose2D
  readValue = readRos2Geometry_msgsMsgPose2D
data Ros2Aimdk_msgsMsgNaviPoint = Ros2Aimdk_msgsMsgNaviPoint
  {
    -- | \@brief aimdk_msgs/msg/NaviPoint.point_id: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgNaviPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgNaviPoint_point_id :: Int32
  ,
    -- | \@brief aimdk_msgs/msg/NaviPoint.navi_point: geometry_msgs/msg/Pose2D.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgNaviPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgNaviPoint_navi_point :: Ros2Geometry_msgsMsgPose2D
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgNaviPoint :: Ros2Aimdk_msgsMsgNaviPoint
defaultRos2Aimdk_msgsMsgNaviPoint = Ros2Aimdk_msgsMsgNaviPoint (0) (defaultRos2Geometry_msgsMsgPose2D)
ros2Aimdk_msgsMsgNaviPointCodecIdentity :: String
ros2Aimdk_msgsMsgNaviPointCodecIdentity =
    "UWVMROS1_e1613f1cc3f2e23dffba8c4b2414f5eaba7ef8909aa4d032f13f6f514484694e"
encodeRos2Aimdk_msgsMsgNaviPoint :: Ros2Aimdk_msgsMsgNaviPoint -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgNaviPoint value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgNaviPoint_point_id value))
  b1 <- encodeRos2Geometry_msgsMsgPose2D (ros2Aimdk_msgsMsgNaviPoint_navi_point value)
  W.bounded 28 [b0, b1]
readRos2Aimdk_msgsMsgNaviPoint :: W.Decoder Ros2Aimdk_msgsMsgNaviPoint
readRos2Aimdk_msgsMsgNaviPoint = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- readRos2Geometry_msgsMsgPose2D
  let value = Ros2Aimdk_msgsMsgNaviPoint a0 a1
  case encodeRos2Aimdk_msgsMsgNaviPoint value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgNaviPoint :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgNaviPoint
decodeRos2Aimdk_msgsMsgNaviPoint = W.runDecoder 28 readRos2Aimdk_msgsMsgNaviPoint
instance Canonical Ros2Aimdk_msgsMsgNaviPoint where
  maximumBytes _ = 28
  encodeValue = encodeRos2Aimdk_msgsMsgNaviPoint
  readValue = readRos2Aimdk_msgsMsgNaviPoint
data Ros2Aimdk_msgsMsgPath = Ros2Aimdk_msgsMsgPath
  {
    -- | \@brief aimdk_msgs/msg/Path.path_id: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPath; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPath_path_id :: Int32
  ,
    -- | \@brief aimdk_msgs/msg/Path.points: geometry_msgs/msg/Pose2D; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPath; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPath_points :: [Ros2Geometry_msgsMsgPose2D]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgPath :: Ros2Aimdk_msgsMsgPath
defaultRos2Aimdk_msgsMsgPath = Ros2Aimdk_msgsMsgPath (0) ([])
ros2Aimdk_msgsMsgPathCodecIdentity :: String
ros2Aimdk_msgsMsgPathCodecIdentity = "UWVMROS1_88efeee6a105a4a88d155242fcd6f5be0866f4c0eadfc0b90243ca0eb020f27d"
encodeRos2Aimdk_msgsMsgPath :: Ros2Aimdk_msgsMsgPath -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgPath value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgPath_path_id value))
  if length (ros2Aimdk_msgsMsgPath_points value) > 4 then Left 22 else Right ()
  prefix1 <- W.encodeCount 4 (length (ros2Aimdk_msgsMsgPath_points value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2Geometry_msgsMsgPose2D (e)) (ros2Aimdk_msgsMsgPath_points value)
  W.bounded 104 [b0, prefix1, b1]
readRos2Aimdk_msgsMsgPath :: W.Decoder Ros2Aimdk_msgsMsgPath
readRos2Aimdk_msgsMsgPath = do
  a0 <- fromIntegral <$> W.signed 4
  count1 <- W.count 4
  a1 <- replicateM count1 (readRos2Geometry_msgsMsgPose2D)
  let value = Ros2Aimdk_msgsMsgPath a0 a1
  case encodeRos2Aimdk_msgsMsgPath value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgPath :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgPath
decodeRos2Aimdk_msgsMsgPath = W.runDecoder 104 readRos2Aimdk_msgsMsgPath
instance Canonical Ros2Aimdk_msgsMsgPath where
  maximumBytes _ = 104
  encodeValue = encodeRos2Aimdk_msgsMsgPath
  readValue = readRos2Aimdk_msgsMsgPath
data Ros2Aimdk_msgsMsgPlayStateType = Ros2Aimdk_msgsMsgPlayStateType
  {
    -- | \@brief aimdk_msgs/msg/PlayStateType.value: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayStateType; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayStateType_value :: Word8
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgPlayStateType :: Ros2Aimdk_msgsMsgPlayStateType
defaultRos2Aimdk_msgsMsgPlayStateType = Ros2Aimdk_msgsMsgPlayStateType (0)
ros2Aimdk_msgsMsgPlayStateTypeCodecIdentity :: String
ros2Aimdk_msgsMsgPlayStateTypeCodecIdentity =
    "UWVMROS1_a103f60f1b75030272dea3bcf7da76ac8fdc214c3a38721fa2b09c507cc47946"
ros2Aimdk_msgsMsgPlayStateType_PLAYER_STATE_CLOSED :: Word8
ros2Aimdk_msgsMsgPlayStateType_PLAYER_STATE_CLOSED = 0
ros2Aimdk_msgsMsgPlayStateType_PLAYER_STATE_PLAYING :: Word8
ros2Aimdk_msgsMsgPlayStateType_PLAYER_STATE_PLAYING = 1
ros2Aimdk_msgsMsgPlayStateType_PLAYER_STATE_STOPED :: Word8
ros2Aimdk_msgsMsgPlayStateType_PLAYER_STATE_STOPED = 2
encodeRos2Aimdk_msgsMsgPlayStateType :: Ros2Aimdk_msgsMsgPlayStateType -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgPlayStateType value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgPlayStateType_value value))
  W.bounded 1 [b0]
readRos2Aimdk_msgsMsgPlayStateType :: W.Decoder Ros2Aimdk_msgsMsgPlayStateType
readRos2Aimdk_msgsMsgPlayStateType = do
  a0 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Aimdk_msgsMsgPlayStateType a0
  case encodeRos2Aimdk_msgsMsgPlayStateType value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgPlayStateType :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgPlayStateType
decodeRos2Aimdk_msgsMsgPlayStateType = W.runDecoder 1 readRos2Aimdk_msgsMsgPlayStateType
instance Canonical Ros2Aimdk_msgsMsgPlayStateType where
  maximumBytes _ = 1
  encodeValue = encodeRos2Aimdk_msgsMsgPlayStateType
  readValue = readRos2Aimdk_msgsMsgPlayStateType
data Ros2Aimdk_msgsMsgPlayStateChange = Ros2Aimdk_msgsMsgPlayStateChange
  {
    -- | \@brief aimdk_msgs/msg/PlayStateChange.pkg_name: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayStateChange; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayStateChange_pkg_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PlayStateChange.state: aimdk_msgs/msg/PlayStateType.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayStateChange; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayStateChange_state :: Ros2Aimdk_msgsMsgPlayStateType
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgPlayStateChange :: Ros2Aimdk_msgsMsgPlayStateChange
defaultRos2Aimdk_msgsMsgPlayStateChange = Ros2Aimdk_msgsMsgPlayStateChange (T.empty)
    (defaultRos2Aimdk_msgsMsgPlayStateType)
ros2Aimdk_msgsMsgPlayStateChangeCodecIdentity :: String
ros2Aimdk_msgsMsgPlayStateChangeCodecIdentity =
    "UWVMROS1_62c2a232fb57ebab6a0fce42a84e12d8a25dc21e40fb5420201ef6337894f41c"
encodeRos2Aimdk_msgsMsgPlayStateChange :: Ros2Aimdk_msgsMsgPlayStateChange -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgPlayStateChange value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPlayStateChange_pkg_name value)
  b1 <- encodeRos2Aimdk_msgsMsgPlayStateType (ros2Aimdk_msgsMsgPlayStateChange_state value)
  W.bounded 133 [b0, b1]
readRos2Aimdk_msgsMsgPlayStateChange :: W.Decoder Ros2Aimdk_msgsMsgPlayStateChange
readRos2Aimdk_msgsMsgPlayStateChange = do
  a0 <- W.text 128 True
  a1 <- readRos2Aimdk_msgsMsgPlayStateType
  let value = Ros2Aimdk_msgsMsgPlayStateChange a0 a1
  case encodeRos2Aimdk_msgsMsgPlayStateChange value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgPlayStateChange :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgPlayStateChange
decodeRos2Aimdk_msgsMsgPlayStateChange = W.runDecoder 133 readRos2Aimdk_msgsMsgPlayStateChange
instance Canonical Ros2Aimdk_msgsMsgPlayStateChange where
  maximumBytes _ = 133
  encodeValue = encodeRos2Aimdk_msgsMsgPlayStateChange
  readValue = readRos2Aimdk_msgsMsgPlayStateChange
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
    "UWVMROS1_6e19302f3df2152dabda478d48e0506d483427f946a552d364a206fee9687507"
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
ros2Aimdk_msgsMsgTtsPriorityLevel_SYSTEM_L7 :: Word8
ros2Aimdk_msgsMsgTtsPriorityLevel_SYSTEM_L7 = 7
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
    "UWVMROS1_f5c7b9646cefc4c4d7a3a2ddac3e1ebed6d6aa789c03be06d89ffdf6fd023b72"
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
    "UWVMROS1_ace6fc9356d764c1f456687c3a05c24f514167cc2b48787bda62413353b8ec82"
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
    -- | \@brief aimdk_msgs/msg/PmuState.fan_speed: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_fan_speed :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.fan_pecentage: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_fan_pecentage :: Word8
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.pmu_temperature: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_pmu_temperature :: Double
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
    (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (T.empty) (T.empty) (T.empty) (T.empty) (0) (0) (0) (0) (0)
    (0) (0) (0) (0) (0)
ros2Aimdk_msgsMsgPmuStateCodecIdentity :: String
ros2Aimdk_msgsMsgPmuStateCodecIdentity = "UWVMROS1_bb828bf3667ae8a8909a7e98b20e789d9dfc6b954fe2ab7fc3adbc306c9ebbbd"
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
  b19 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_fan_speed value)
  b20 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgPmuState_fan_pecentage value))
  b21 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_pmu_temperature value)
  b22 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPmuState_bms_manufacturer value)
  b23 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPmuState_bms_serial_number value)
  b24 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPmuState_bms_hardware_version value)
  b25 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPmuState_bms_software_version value)
  b26 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgPmuState_bms_status_bits value))
  b27 <- W.encodeUnsigned 2 (fromIntegral (ros2Aimdk_msgsMsgPmuState_battery_balance_line_resistance value))
  b28 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_battery_pack_voltage value)
  b29 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_battery_current value)
  b30 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_battery_output_power value)
  b31 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_battery_temperature value)
  b32 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgPmuState_battery_remaining_capacity value))
  b33 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgPmuState_battery_remaining_capacity_percentage value))
  b34 <- W.encodeUnsigned 2 (fromIntegral (ros2Aimdk_msgsMsgPmuState_battery_cycle_count value))
  b35 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgPmuState_battery_cycle_total_capacity value))
  W.bounded 1114 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16, b17, b18, b19, b20,
      b21, b22, b23, b24, b25, b26, b27, b28, b29, b30, b31, b32, b33, b34, b35]
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
  a19 <- W.float64
  a20 <- fromIntegral <$> W.unsigned 1
  a21 <- W.float64
  a22 <- W.text 128 True
  a23 <- W.text 128 True
  a24 <- W.text 128 True
  a25 <- W.text 128 True
  a26 <- fromIntegral <$> W.unsigned 4
  a27 <- fromIntegral <$> W.unsigned 2
  a28 <- W.float64
  a29 <- W.float64
  a30 <- W.float64
  a31 <- W.float64
  a32 <- fromIntegral <$> W.unsigned 4
  a33 <- fromIntegral <$> W.unsigned 1
  a34 <- fromIntegral <$> W.unsigned 2
  a35 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Aimdk_msgsMsgPmuState a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20
          a21 a22 a23 a24 a25 a26 a27 a28 a29 a30 a31 a32 a33 a34 a35
  case encodeRos2Aimdk_msgsMsgPmuState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgPmuState :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgPmuState
decodeRos2Aimdk_msgsMsgPmuState = W.runDecoder 1114 readRos2Aimdk_msgsMsgPmuState
instance Canonical Ros2Aimdk_msgsMsgPmuState where
  maximumBytes _ = 1114
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
data Ros2Aimdk_msgsMsgQRPoint = Ros2Aimdk_msgsMsgQRPoint
  {
    -- | \@brief aimdk_msgs/msg/QRPoint.point_id: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgQRPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgQRPoint_point_id :: Int32
  ,
    -- | \@brief aimdk_msgs/msg/QRPoint.qr_code: aimdk_msgs/msg/QRCode.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgQRPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgQRPoint_qr_code :: Ros2Aimdk_msgsMsgQRCode
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgQRPoint :: Ros2Aimdk_msgsMsgQRPoint
defaultRos2Aimdk_msgsMsgQRPoint = Ros2Aimdk_msgsMsgQRPoint (0) (defaultRos2Aimdk_msgsMsgQRCode)
ros2Aimdk_msgsMsgQRPointCodecIdentity :: String
ros2Aimdk_msgsMsgQRPointCodecIdentity = "UWVMROS1_b158d016b9e3607a1345df207459476cf88c9817dfd3ee7560b5635c7a81863e"
encodeRos2Aimdk_msgsMsgQRPoint :: Ros2Aimdk_msgsMsgQRPoint -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgQRPoint value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgQRPoint_point_id value))
  b1 <- encodeRos2Aimdk_msgsMsgQRCode (ros2Aimdk_msgsMsgQRPoint_qr_code value)
  W.bounded 64 [b0, b1]
readRos2Aimdk_msgsMsgQRPoint :: W.Decoder Ros2Aimdk_msgsMsgQRPoint
readRos2Aimdk_msgsMsgQRPoint = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- readRos2Aimdk_msgsMsgQRCode
  let value = Ros2Aimdk_msgsMsgQRPoint a0 a1
  case encodeRos2Aimdk_msgsMsgQRPoint value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgQRPoint :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgQRPoint
decodeRos2Aimdk_msgsMsgQRPoint = W.runDecoder 64 readRos2Aimdk_msgsMsgQRPoint
instance Canonical Ros2Aimdk_msgsMsgQRPoint where
  maximumBytes _ = 64
  encodeValue = encodeRos2Aimdk_msgsMsgQRPoint
  readValue = readRos2Aimdk_msgsMsgQRPoint
data Ros2Geometry_msgsMsgPoint32 = Ros2Geometry_msgsMsgPoint32
  {
    -- | \@brief geometry_msgs/msg/Point32.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoint32; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPoint32_x :: Float
  ,
    -- | \@brief geometry_msgs/msg/Point32.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoint32; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPoint32_y :: Float
  ,
    -- | \@brief geometry_msgs/msg/Point32.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoint32; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPoint32_z :: Float
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgPoint32 :: Ros2Geometry_msgsMsgPoint32
defaultRos2Geometry_msgsMsgPoint32 = Ros2Geometry_msgsMsgPoint32 (0) (0) (0)
ros2Geometry_msgsMsgPoint32CodecIdentity :: String
ros2Geometry_msgsMsgPoint32CodecIdentity =
    "UWVMROS1_8ca11f8b9c00af9c95e3eebbeb6073227af8dee04b57f84e120a024e7f8539f9"
encodeRos2Geometry_msgsMsgPoint32 :: Ros2Geometry_msgsMsgPoint32 -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgPoint32 value = do
  b0 <- W.encodeFloat32 (ros2Geometry_msgsMsgPoint32_x value)
  b1 <- W.encodeFloat32 (ros2Geometry_msgsMsgPoint32_y value)
  b2 <- W.encodeFloat32 (ros2Geometry_msgsMsgPoint32_z value)
  W.bounded 12 [b0, b1, b2]
readRos2Geometry_msgsMsgPoint32 :: W.Decoder Ros2Geometry_msgsMsgPoint32
readRos2Geometry_msgsMsgPoint32 = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  let value = Ros2Geometry_msgsMsgPoint32 a0 a1 a2
  case encodeRos2Geometry_msgsMsgPoint32 value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgPoint32 :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgPoint32
decodeRos2Geometry_msgsMsgPoint32 = W.runDecoder 12 readRos2Geometry_msgsMsgPoint32
instance Canonical Ros2Geometry_msgsMsgPoint32 where
  maximumBytes _ = 12
  encodeValue = encodeRos2Geometry_msgsMsgPoint32
  readValue = readRos2Geometry_msgsMsgPoint32
data Ros2Geometry_msgsMsgPolygon = Ros2Geometry_msgsMsgPolygon
  {
    -- | \@brief geometry_msgs/msg/Polygon.points: geometry_msgs/msg/Point32; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPolygon; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPolygon_points :: [Ros2Geometry_msgsMsgPoint32]
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgPolygon :: Ros2Geometry_msgsMsgPolygon
defaultRos2Geometry_msgsMsgPolygon = Ros2Geometry_msgsMsgPolygon ([])
ros2Geometry_msgsMsgPolygonCodecIdentity :: String
ros2Geometry_msgsMsgPolygonCodecIdentity =
    "UWVMROS1_b5492d33b802b68eea062a74ffe7f336b1f392161b183e67c3bf24bb0a7d0aa8"
encodeRos2Geometry_msgsMsgPolygon :: Ros2Geometry_msgsMsgPolygon -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgPolygon value = do
  if length (ros2Geometry_msgsMsgPolygon_points value) > 4 then Left 22 else Right ()
  prefix0 <- W.encodeCount 4 (length (ros2Geometry_msgsMsgPolygon_points value))
  b0 <- B.concat <$> mapM (\e -> encodeRos2Geometry_msgsMsgPoint32 (e)) (ros2Geometry_msgsMsgPolygon_points value)
  W.bounded 52 [prefix0, b0]
readRos2Geometry_msgsMsgPolygon :: W.Decoder Ros2Geometry_msgsMsgPolygon
readRos2Geometry_msgsMsgPolygon = do
  count0 <- W.count 4
  a0 <- replicateM count0 (readRos2Geometry_msgsMsgPoint32)
  let value = Ros2Geometry_msgsMsgPolygon a0
  case encodeRos2Geometry_msgsMsgPolygon value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgPolygon :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgPolygon
decodeRos2Geometry_msgsMsgPolygon = W.runDecoder 52 readRos2Geometry_msgsMsgPolygon
instance Canonical Ros2Geometry_msgsMsgPolygon where
  maximumBytes _ = 52
  encodeValue = encodeRos2Geometry_msgsMsgPolygon
  readValue = readRos2Geometry_msgsMsgPolygon
data Ros2Aimdk_msgsMsgRegion = Ros2Aimdk_msgsMsgRegion
  {
    -- | \@brief aimdk_msgs/msg/Region.type: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgRegion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgRegion_type :: Word8
  ,
    -- | \@brief aimdk_msgs/msg/Region.drawing_type: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgRegion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgRegion_drawing_type :: Word8
  ,
    -- | \@brief aimdk_msgs/msg/Region.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgRegion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgRegion_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/Region.polygon: geometry_msgs/msg/Polygon.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgRegion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgRegion_polygon :: Ros2Geometry_msgsMsgPolygon
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgRegion :: Ros2Aimdk_msgsMsgRegion
defaultRos2Aimdk_msgsMsgRegion = Ros2Aimdk_msgsMsgRegion (0) (0) (T.empty) (defaultRos2Geometry_msgsMsgPolygon)
ros2Aimdk_msgsMsgRegionCodecIdentity :: String
ros2Aimdk_msgsMsgRegionCodecIdentity = "UWVMROS1_161bb9787ae2df5a45015946bc386a2c4cf310701fa4970cf447c6445c85f1ce"
ros2Aimdk_msgsMsgRegion_REGION_UNDEFINED :: Word8
ros2Aimdk_msgsMsgRegion_REGION_UNDEFINED = 0
ros2Aimdk_msgsMsgRegion_REGION_WORKING_SPACE :: Word8
ros2Aimdk_msgsMsgRegion_REGION_WORKING_SPACE = 1
ros2Aimdk_msgsMsgRegion_REGION_VIRTUAL_WALL :: Word8
ros2Aimdk_msgsMsgRegion_REGION_VIRTUAL_WALL = 2
ros2Aimdk_msgsMsgRegion_REGION_DRAWING_UNDEFINED :: Word8
ros2Aimdk_msgsMsgRegion_REGION_DRAWING_UNDEFINED = 0
ros2Aimdk_msgsMsgRegion_REGION_DRAWING_CLOSURE :: Word8
ros2Aimdk_msgsMsgRegion_REGION_DRAWING_CLOSURE = 1
ros2Aimdk_msgsMsgRegion_REGION_DRAWING_LINES :: Word8
ros2Aimdk_msgsMsgRegion_REGION_DRAWING_LINES = 2
encodeRos2Aimdk_msgsMsgRegion :: Ros2Aimdk_msgsMsgRegion -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgRegion value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgRegion_type value))
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgRegion_drawing_type value))
  b2 <- W.encodeText 128 True (ros2Aimdk_msgsMsgRegion_name value)
  b3 <- encodeRos2Geometry_msgsMsgPolygon (ros2Aimdk_msgsMsgRegion_polygon value)
  W.bounded 186 [b0, b1, b2, b3]
readRos2Aimdk_msgsMsgRegion :: W.Decoder Ros2Aimdk_msgsMsgRegion
readRos2Aimdk_msgsMsgRegion = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- W.text 128 True
  a3 <- readRos2Geometry_msgsMsgPolygon
  let value = Ros2Aimdk_msgsMsgRegion a0 a1 a2 a3
  case encodeRos2Aimdk_msgsMsgRegion value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgRegion :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgRegion
decodeRos2Aimdk_msgsMsgRegion = W.runDecoder 186 readRos2Aimdk_msgsMsgRegion
instance Canonical Ros2Aimdk_msgsMsgRegion where
  maximumBytes _ = 186
  encodeValue = encodeRos2Aimdk_msgsMsgRegion
  readValue = readRos2Aimdk_msgsMsgRegion
data Ros2Aimdk_msgsMsgRobotResource = Ros2Aimdk_msgsMsgRobotResource
  {
    -- | \@brief aimdk_msgs/msg/RobotResource.resource_key: string; each string is 0..128 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgRobotResource; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgRobotResource_resource_key :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/RobotResource.current_version: aimdk_msgs/msg/CurrentVersion.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgRobotResource; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgRobotResource_current_version :: Ros2Aimdk_msgsMsgCurrentVersion
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgRobotResource :: Ros2Aimdk_msgsMsgRobotResource
defaultRos2Aimdk_msgsMsgRobotResource = Ros2Aimdk_msgsMsgRobotResource (T.empty)
    (defaultRos2Aimdk_msgsMsgCurrentVersion)
ros2Aimdk_msgsMsgRobotResourceCodecIdentity :: String
ros2Aimdk_msgsMsgRobotResourceCodecIdentity =
    "UWVMROS1_abc49dc6dd4cc0b0c59cd0ddb01d19897a51018752e3d9eb39aa6bcc684ad34d"
encodeRos2Aimdk_msgsMsgRobotResource :: Ros2Aimdk_msgsMsgRobotResource -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgRobotResource value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgRobotResource_resource_key value)
  b1 <- encodeRos2Aimdk_msgsMsgCurrentVersion (ros2Aimdk_msgsMsgRobotResource_current_version value)
  W.bounded 2520 [b0, b1]
readRos2Aimdk_msgsMsgRobotResource :: W.Decoder Ros2Aimdk_msgsMsgRobotResource
readRos2Aimdk_msgsMsgRobotResource = do
  a0 <- W.text 128 True
  a1 <- readRos2Aimdk_msgsMsgCurrentVersion
  let value = Ros2Aimdk_msgsMsgRobotResource a0 a1
  case encodeRos2Aimdk_msgsMsgRobotResource value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgRobotResource :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgRobotResource
decodeRos2Aimdk_msgsMsgRobotResource = W.runDecoder 2520 readRos2Aimdk_msgsMsgRobotResource
instance Canonical Ros2Aimdk_msgsMsgRobotResource where
  maximumBytes _ = 2520
  encodeValue = encodeRos2Aimdk_msgsMsgRobotResource
  readValue = readRos2Aimdk_msgsMsgRobotResource
data Ros2Aimdk_msgsMsgSlaveDevice = Ros2Aimdk_msgsMsgSlaveDevice
  {
    -- | \@brief aimdk_msgs/msg/SlaveDevice.ip: string; each string is 0..128 bytes; strict UTF-8 with no embedded
    -- NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgSlaveDevice; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgSlaveDevice_ip :: T.Text
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgSlaveDevice :: Ros2Aimdk_msgsMsgSlaveDevice
defaultRos2Aimdk_msgsMsgSlaveDevice = Ros2Aimdk_msgsMsgSlaveDevice (T.empty)
ros2Aimdk_msgsMsgSlaveDeviceCodecIdentity :: String
ros2Aimdk_msgsMsgSlaveDeviceCodecIdentity =
    "UWVMROS1_36af580c9887ea808824106a14966193c9a639f6825a2cb3f94cbde369bd3255"
encodeRos2Aimdk_msgsMsgSlaveDevice :: Ros2Aimdk_msgsMsgSlaveDevice -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgSlaveDevice value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgSlaveDevice_ip value)
  W.bounded 132 [b0]
readRos2Aimdk_msgsMsgSlaveDevice :: W.Decoder Ros2Aimdk_msgsMsgSlaveDevice
readRos2Aimdk_msgsMsgSlaveDevice = do
  a0 <- W.text 128 True
  let value = Ros2Aimdk_msgsMsgSlaveDevice a0
  case encodeRos2Aimdk_msgsMsgSlaveDevice value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgSlaveDevice :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgSlaveDevice
decodeRos2Aimdk_msgsMsgSlaveDevice = W.runDecoder 132 readRos2Aimdk_msgsMsgSlaveDevice
instance Canonical Ros2Aimdk_msgsMsgSlaveDevice where
  maximumBytes _ = 132
  encodeValue = encodeRos2Aimdk_msgsMsgSlaveDevice
  readValue = readRos2Aimdk_msgsMsgSlaveDevice
data Ros2Aimdk_msgsMsgSystemStatus = Ros2Aimdk_msgsMsgSystemStatus
  {
    -- | \@brief aimdk_msgs/msg/SystemStatus.value: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgSystemStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgSystemStatus_value :: Word8
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgSystemStatus :: Ros2Aimdk_msgsMsgSystemStatus
defaultRos2Aimdk_msgsMsgSystemStatus = Ros2Aimdk_msgsMsgSystemStatus (0)
ros2Aimdk_msgsMsgSystemStatusCodecIdentity :: String
ros2Aimdk_msgsMsgSystemStatusCodecIdentity =
    "UWVMROS1_94275d3d0a1e83e4cc8e45b166b2cb111c9eccd4eabfe7410795b9c1fd69c6f1"
ros2Aimdk_msgsMsgSystemStatus_IN_INITIAL :: Word8
ros2Aimdk_msgsMsgSystemStatus_IN_INITIAL = 0
ros2Aimdk_msgsMsgSystemStatus_IN_READY :: Word8
ros2Aimdk_msgsMsgSystemStatus_IN_READY = 1
ros2Aimdk_msgsMsgSystemStatus_IN_MOVE :: Word8
ros2Aimdk_msgsMsgSystemStatus_IN_MOVE = 2
ros2Aimdk_msgsMsgSystemStatus_IN_ROLLBACK :: Word8
ros2Aimdk_msgsMsgSystemStatus_IN_ROLLBACK = 3
ros2Aimdk_msgsMsgSystemStatus_IN_FALLBACK :: Word8
ros2Aimdk_msgsMsgSystemStatus_IN_FALLBACK = 4
ros2Aimdk_msgsMsgSystemStatus_IN_FALLBACK_MOVE :: Word8
ros2Aimdk_msgsMsgSystemStatus_IN_FALLBACK_MOVE = 5
encodeRos2Aimdk_msgsMsgSystemStatus :: Ros2Aimdk_msgsMsgSystemStatus -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgSystemStatus value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgSystemStatus_value value))
  W.bounded 1 [b0]
readRos2Aimdk_msgsMsgSystemStatus :: W.Decoder Ros2Aimdk_msgsMsgSystemStatus
readRos2Aimdk_msgsMsgSystemStatus = do
  a0 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Aimdk_msgsMsgSystemStatus a0
  case encodeRos2Aimdk_msgsMsgSystemStatus value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgSystemStatus :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgSystemStatus
decodeRos2Aimdk_msgsMsgSystemStatus = W.runDecoder 1 readRos2Aimdk_msgsMsgSystemStatus
instance Canonical Ros2Aimdk_msgsMsgSystemStatus where
  maximumBytes _ = 1
  encodeValue = encodeRos2Aimdk_msgsMsgSystemStatus
  readValue = readRos2Aimdk_msgsMsgSystemStatus
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
data Ros2Aimdk_msgsSrvAbandonAudioFocus_Request = Ros2Aimdk_msgsSrvAbandonAudioFocus_Request
  {
    -- | \@brief aimdk_msgs/srv/AbandonAudioFocus_Request.request: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvAbandonAudioFocus_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvAbandonAudioFocus_Request_request :: Ros2Aimdk_msgsMsgCommonRequest
  ,
    -- | \@brief aimdk_msgs/srv/AbandonAudioFocus_Request.focus_requester: aimdk_msgs/msg/FocusRequester.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvAbandonAudioFocus_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvAbandonAudioFocus_Request_focus_requester :: Ros2Aimdk_msgsMsgFocusRequester
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvAbandonAudioFocus_Request :: Ros2Aimdk_msgsSrvAbandonAudioFocus_Request
defaultRos2Aimdk_msgsSrvAbandonAudioFocus_Request = Ros2Aimdk_msgsSrvAbandonAudioFocus_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest) (defaultRos2Aimdk_msgsMsgFocusRequester)
ros2Aimdk_msgsSrvAbandonAudioFocus_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvAbandonAudioFocus_RequestCodecIdentity =
    "UWVMROS1_c49f508915d7e28b09d6b4e21da757ec4457f96f7bced6861caecf00b5e68ce5"
encodeRos2Aimdk_msgsSrvAbandonAudioFocus_Request :: Ros2Aimdk_msgsSrvAbandonAudioFocus_Request -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvAbandonAudioFocus_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvAbandonAudioFocus_Request_request value)
  b1 <- encodeRos2Aimdk_msgsMsgFocusRequester (ros2Aimdk_msgsSrvAbandonAudioFocus_Request_focus_requester value)
  W.bounded 148 [b0, b1]
readRos2Aimdk_msgsSrvAbandonAudioFocus_Request :: W.Decoder Ros2Aimdk_msgsSrvAbandonAudioFocus_Request
readRos2Aimdk_msgsSrvAbandonAudioFocus_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  a1 <- readRos2Aimdk_msgsMsgFocusRequester
  let value = Ros2Aimdk_msgsSrvAbandonAudioFocus_Request a0 a1
  case encodeRos2Aimdk_msgsSrvAbandonAudioFocus_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvAbandonAudioFocus_Request :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvAbandonAudioFocus_Request
decodeRos2Aimdk_msgsSrvAbandonAudioFocus_Request = W.runDecoder 148 readRos2Aimdk_msgsSrvAbandonAudioFocus_Request
instance Canonical Ros2Aimdk_msgsSrvAbandonAudioFocus_Request where
  maximumBytes _ = 148
  encodeValue = encodeRos2Aimdk_msgsSrvAbandonAudioFocus_Request
  readValue = readRos2Aimdk_msgsSrvAbandonAudioFocus_Request
data Ros2Aimdk_msgsSrvAbandonAudioFocus_Response = Ros2Aimdk_msgsSrvAbandonAudioFocus_Response
  {
    -- | \@brief aimdk_msgs/srv/AbandonAudioFocus_Response.reponse: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvAbandonAudioFocus_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvAbandonAudioFocus_Response_reponse :: Ros2Aimdk_msgsMsgCommonResponse
  ,
    -- | \@brief aimdk_msgs/srv/AbandonAudioFocus_Response.focus_response: aimdk_msgs/msg/FocusResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvAbandonAudioFocus_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvAbandonAudioFocus_Response_focus_response :: Ros2Aimdk_msgsMsgFocusResponse
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvAbandonAudioFocus_Response :: Ros2Aimdk_msgsSrvAbandonAudioFocus_Response
defaultRos2Aimdk_msgsSrvAbandonAudioFocus_Response = Ros2Aimdk_msgsSrvAbandonAudioFocus_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse) (defaultRos2Aimdk_msgsMsgFocusResponse)
ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseCodecIdentity =
    "UWVMROS1_6a26581d66d35c5e6d04720935a163a6f527c036cb9c774e130bce242e47f376"
encodeRos2Aimdk_msgsSrvAbandonAudioFocus_Response :: Ros2Aimdk_msgsSrvAbandonAudioFocus_Response -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvAbandonAudioFocus_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvAbandonAudioFocus_Response_reponse value)
  b1 <- encodeRos2Aimdk_msgsMsgFocusResponse (ros2Aimdk_msgsSrvAbandonAudioFocus_Response_focus_response value)
  W.bounded 285 [b0, b1]
readRos2Aimdk_msgsSrvAbandonAudioFocus_Response :: W.Decoder Ros2Aimdk_msgsSrvAbandonAudioFocus_Response
readRos2Aimdk_msgsSrvAbandonAudioFocus_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  a1 <- readRos2Aimdk_msgsMsgFocusResponse
  let value = Ros2Aimdk_msgsSrvAbandonAudioFocus_Response a0 a1
  case encodeRos2Aimdk_msgsSrvAbandonAudioFocus_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvAbandonAudioFocus_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvAbandonAudioFocus_Response
decodeRos2Aimdk_msgsSrvAbandonAudioFocus_Response = W.runDecoder 285 readRos2Aimdk_msgsSrvAbandonAudioFocus_Response
instance Canonical Ros2Aimdk_msgsSrvAbandonAudioFocus_Response where
  maximumBytes _ = 285
  encodeValue = encodeRos2Aimdk_msgsSrvAbandonAudioFocus_Response
  readValue = readRos2Aimdk_msgsSrvAbandonAudioFocus_Response
data Ros2Aimdk_msgsSrvExecuteActionResource_Request = Ros2Aimdk_msgsSrvExecuteActionResource_Request
  {
    -- | \@brief aimdk_msgs/srv/ExecuteActionResource_Request.header: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvExecuteActionResource_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvExecuteActionResource_Request_header :: Ros2Aimdk_msgsMsgCommonRequest
  ,
    -- | \@brief aimdk_msgs/srv/ExecuteActionResource_Request.resource_key: string; each string is 0..128 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvExecuteActionResource_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvExecuteActionResource_Request_resource_key :: T.Text
  ,
    -- | \@brief aimdk_msgs/srv/ExecuteActionResource_Request.resource_version: string; each string is 0..128 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvExecuteActionResource_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvExecuteActionResource_Request_resource_version :: T.Text
  ,
    -- | \@brief aimdk_msgs/srv/ExecuteActionResource_Request.slaves: aimdk_msgs/msg/SlaveDevice; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvExecuteActionResource_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvExecuteActionResource_Request_slaves :: [Ros2Aimdk_msgsMsgSlaveDevice]
  ,
    -- | \@brief aimdk_msgs/srv/ExecuteActionResource_Request.meta: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvExecuteActionResource_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvExecuteActionResource_Request_meta :: T.Text
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvExecuteActionResource_Request :: Ros2Aimdk_msgsSrvExecuteActionResource_Request
defaultRos2Aimdk_msgsSrvExecuteActionResource_Request = Ros2Aimdk_msgsSrvExecuteActionResource_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest) (T.empty) (T.empty) ([]) (T.empty)
ros2Aimdk_msgsSrvExecuteActionResource_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvExecuteActionResource_RequestCodecIdentity =
    "UWVMROS1_4fa82b039bfd5804bf1591c04cf4c874c78a8f2b25d2a39cd55e8ce877f6ce56"
encodeRos2Aimdk_msgsSrvExecuteActionResource_Request :: Ros2Aimdk_msgsSrvExecuteActionResource_Request -> Either
    Word32 B.ByteString
encodeRos2Aimdk_msgsSrvExecuteActionResource_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvExecuteActionResource_Request_header value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsSrvExecuteActionResource_Request_resource_key value)
  b2 <- W.encodeText 128 True (ros2Aimdk_msgsSrvExecuteActionResource_Request_resource_version value)
  if length (ros2Aimdk_msgsSrvExecuteActionResource_Request_slaves value) > 4 then Left 22 else Right ()
  prefix3 <- W.encodeCount 4 (length (ros2Aimdk_msgsSrvExecuteActionResource_Request_slaves value))
  b3 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgSlaveDevice (e))
      (ros2Aimdk_msgsSrvExecuteActionResource_Request_slaves value)
  b4 <- W.encodeText 128 True (ros2Aimdk_msgsSrvExecuteActionResource_Request_meta value)
  W.bounded 936 [b0, b1, b2, prefix3, b3, b4]
readRos2Aimdk_msgsSrvExecuteActionResource_Request :: W.Decoder Ros2Aimdk_msgsSrvExecuteActionResource_Request
readRos2Aimdk_msgsSrvExecuteActionResource_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  count3 <- W.count 4
  a3 <- replicateM count3 (readRos2Aimdk_msgsMsgSlaveDevice)
  a4 <- W.text 128 True
  let value = Ros2Aimdk_msgsSrvExecuteActionResource_Request a0 a1 a2 a3 a4
  case encodeRos2Aimdk_msgsSrvExecuteActionResource_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvExecuteActionResource_Request :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvExecuteActionResource_Request
decodeRos2Aimdk_msgsSrvExecuteActionResource_Request = W.runDecoder 936
    readRos2Aimdk_msgsSrvExecuteActionResource_Request
instance Canonical Ros2Aimdk_msgsSrvExecuteActionResource_Request where
  maximumBytes _ = 936
  encodeValue = encodeRos2Aimdk_msgsSrvExecuteActionResource_Request
  readValue = readRos2Aimdk_msgsSrvExecuteActionResource_Request
data Ros2Aimdk_msgsSrvExecuteActionResource_Response = Ros2Aimdk_msgsSrvExecuteActionResource_Response
  {
    -- | \@brief aimdk_msgs/srv/ExecuteActionResource_Response.header: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvExecuteActionResource_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvExecuteActionResource_Response_header :: Ros2Aimdk_msgsMsgCommonResponse
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvExecuteActionResource_Response :: Ros2Aimdk_msgsSrvExecuteActionResource_Response
defaultRos2Aimdk_msgsSrvExecuteActionResource_Response = Ros2Aimdk_msgsSrvExecuteActionResource_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse)
ros2Aimdk_msgsSrvExecuteActionResource_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvExecuteActionResource_ResponseCodecIdentity =
    "UWVMROS1_40e147ad6f1534415f232269043f52e6566a1023f728ad31851bbd6aa8651011"
encodeRos2Aimdk_msgsSrvExecuteActionResource_Response :: Ros2Aimdk_msgsSrvExecuteActionResource_Response -> Either
    Word32 B.ByteString
encodeRos2Aimdk_msgsSrvExecuteActionResource_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvExecuteActionResource_Response_header value)
  W.bounded 152 [b0]
readRos2Aimdk_msgsSrvExecuteActionResource_Response :: W.Decoder Ros2Aimdk_msgsSrvExecuteActionResource_Response
readRos2Aimdk_msgsSrvExecuteActionResource_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  let value = Ros2Aimdk_msgsSrvExecuteActionResource_Response a0
  case encodeRos2Aimdk_msgsSrvExecuteActionResource_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvExecuteActionResource_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvExecuteActionResource_Response
decodeRos2Aimdk_msgsSrvExecuteActionResource_Response = W.runDecoder 152
    readRos2Aimdk_msgsSrvExecuteActionResource_Response
instance Canonical Ros2Aimdk_msgsSrvExecuteActionResource_Response where
  maximumBytes _ = 152
  encodeValue = encodeRos2Aimdk_msgsSrvExecuteActionResource_Response
  readValue = readRos2Aimdk_msgsSrvExecuteActionResource_Response
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
    "UWVMROS1_7b5d2c7e0d8c1f9a7beb98289b933a2f4466c4d08e9340a816e9e65d7a8151f2"
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
  W.bounded 2696 [b0, prefix1, b1, prefix2, b2, prefix3, b3, prefix4, b4]
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
decodeRos2Aimdk_msgsSrvGetAllJointState_Response = W.runDecoder 2696 readRos2Aimdk_msgsSrvGetAllJointState_Response
instance Canonical Ros2Aimdk_msgsSrvGetAllJointState_Response where
  maximumBytes _ = 2696
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
    "UWVMROS1_23332f9f7853b7c67f0263a4cbfc9e6f3df2aa4a7c540906f0cf304e06ec9555"
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
data Ros2Aimdk_msgsSrvGetMicSourceRequest_Request = Ros2Aimdk_msgsSrvGetMicSourceRequest_Request
  {
    -- | \@brief aimdk_msgs/srv/GetMicSourceRequest_Request.header: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetMicSourceRequest_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetMicSourceRequest_Request_header :: Ros2Aimdk_msgsMsgCommonRequest
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetMicSourceRequest_Request :: Ros2Aimdk_msgsSrvGetMicSourceRequest_Request
defaultRos2Aimdk_msgsSrvGetMicSourceRequest_Request = Ros2Aimdk_msgsSrvGetMicSourceRequest_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest)
ros2Aimdk_msgsSrvGetMicSourceRequest_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvGetMicSourceRequest_RequestCodecIdentity =
    "UWVMROS1_da81fa95ff0da422aaabb2412f11371452bac4c9b658682884b91fece94171cc"
encodeRos2Aimdk_msgsSrvGetMicSourceRequest_Request :: Ros2Aimdk_msgsSrvGetMicSourceRequest_Request -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvGetMicSourceRequest_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvGetMicSourceRequest_Request_header value)
  W.bounded 8 [b0]
readRos2Aimdk_msgsSrvGetMicSourceRequest_Request :: W.Decoder Ros2Aimdk_msgsSrvGetMicSourceRequest_Request
readRos2Aimdk_msgsSrvGetMicSourceRequest_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  let value = Ros2Aimdk_msgsSrvGetMicSourceRequest_Request a0
  case encodeRos2Aimdk_msgsSrvGetMicSourceRequest_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetMicSourceRequest_Request :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvGetMicSourceRequest_Request
decodeRos2Aimdk_msgsSrvGetMicSourceRequest_Request = W.runDecoder 8 readRos2Aimdk_msgsSrvGetMicSourceRequest_Request
instance Canonical Ros2Aimdk_msgsSrvGetMicSourceRequest_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Aimdk_msgsSrvGetMicSourceRequest_Request
  readValue = readRos2Aimdk_msgsSrvGetMicSourceRequest_Request
data Ros2Aimdk_msgsSrvGetMicSourceRequest_Response = Ros2Aimdk_msgsSrvGetMicSourceRequest_Response
  {
    -- | \@brief aimdk_msgs/srv/GetMicSourceRequest_Response.header: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetMicSourceRequest_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetMicSourceRequest_Response_header :: Ros2Aimdk_msgsMsgCommonResponse
  ,
    -- | \@brief aimdk_msgs/srv/GetMicSourceRequest_Response.mic_source: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetMicSourceRequest_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetMicSourceRequest_Response_mic_source :: Word32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetMicSourceRequest_Response :: Ros2Aimdk_msgsSrvGetMicSourceRequest_Response
defaultRos2Aimdk_msgsSrvGetMicSourceRequest_Response = Ros2Aimdk_msgsSrvGetMicSourceRequest_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse) (0)
ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseCodecIdentity =
    "UWVMROS1_86637a091357add483c69aa331eb4305632f3701ff9d77dc8e00e8bc19b6f1f6"
encodeRos2Aimdk_msgsSrvGetMicSourceRequest_Response :: Ros2Aimdk_msgsSrvGetMicSourceRequest_Response -> Either
    Word32 B.ByteString
encodeRos2Aimdk_msgsSrvGetMicSourceRequest_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvGetMicSourceRequest_Response_header value)
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsSrvGetMicSourceRequest_Response_mic_source value))
  W.bounded 156 [b0, b1]
readRos2Aimdk_msgsSrvGetMicSourceRequest_Response :: W.Decoder Ros2Aimdk_msgsSrvGetMicSourceRequest_Response
readRos2Aimdk_msgsSrvGetMicSourceRequest_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  a1 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Aimdk_msgsSrvGetMicSourceRequest_Response a0 a1
  case encodeRos2Aimdk_msgsSrvGetMicSourceRequest_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetMicSourceRequest_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvGetMicSourceRequest_Response
decodeRos2Aimdk_msgsSrvGetMicSourceRequest_Response = W.runDecoder 156
    readRos2Aimdk_msgsSrvGetMicSourceRequest_Response
instance Canonical Ros2Aimdk_msgsSrvGetMicSourceRequest_Response where
  maximumBytes _ = 156
  encodeValue = encodeRos2Aimdk_msgsSrvGetMicSourceRequest_Response
  readValue = readRos2Aimdk_msgsSrvGetMicSourceRequest_Response
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
data Ros2Aimdk_msgsSrvGetRobotResources_Request = Ros2Aimdk_msgsSrvGetRobotResources_Request
  {
    -- | \@brief aimdk_msgs/srv/GetRobotResources_Request.header: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetRobotResources_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetRobotResources_Request_header :: Ros2Aimdk_msgsMsgCommonRequest
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetRobotResources_Request :: Ros2Aimdk_msgsSrvGetRobotResources_Request
defaultRos2Aimdk_msgsSrvGetRobotResources_Request = Ros2Aimdk_msgsSrvGetRobotResources_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest)
ros2Aimdk_msgsSrvGetRobotResources_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvGetRobotResources_RequestCodecIdentity =
    "UWVMROS1_0d086d105a54d7feea306182350c962ecebe145b8f9c45ca1216a88e6aaec86b"
encodeRos2Aimdk_msgsSrvGetRobotResources_Request :: Ros2Aimdk_msgsSrvGetRobotResources_Request -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvGetRobotResources_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvGetRobotResources_Request_header value)
  W.bounded 8 [b0]
readRos2Aimdk_msgsSrvGetRobotResources_Request :: W.Decoder Ros2Aimdk_msgsSrvGetRobotResources_Request
readRos2Aimdk_msgsSrvGetRobotResources_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  let value = Ros2Aimdk_msgsSrvGetRobotResources_Request a0
  case encodeRos2Aimdk_msgsSrvGetRobotResources_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetRobotResources_Request :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvGetRobotResources_Request
decodeRos2Aimdk_msgsSrvGetRobotResources_Request = W.runDecoder 8 readRos2Aimdk_msgsSrvGetRobotResources_Request
instance Canonical Ros2Aimdk_msgsSrvGetRobotResources_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Aimdk_msgsSrvGetRobotResources_Request
  readValue = readRos2Aimdk_msgsSrvGetRobotResources_Request
data Ros2Aimdk_msgsSrvGetRobotResources_Response = Ros2Aimdk_msgsSrvGetRobotResources_Response
  {
    -- | \@brief aimdk_msgs/srv/GetRobotResources_Response.header: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetRobotResources_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetRobotResources_Response_header :: Ros2Aimdk_msgsMsgCommonResponse
  ,
    -- | \@brief aimdk_msgs/srv/GetRobotResources_Response.robot_resources: aimdk_msgs/msg/RobotResource; 0..4
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetRobotResources_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetRobotResources_Response_robot_resources :: [Ros2Aimdk_msgsMsgRobotResource]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetRobotResources_Response :: Ros2Aimdk_msgsSrvGetRobotResources_Response
defaultRos2Aimdk_msgsSrvGetRobotResources_Response = Ros2Aimdk_msgsSrvGetRobotResources_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse) ([])
ros2Aimdk_msgsSrvGetRobotResources_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvGetRobotResources_ResponseCodecIdentity =
    "UWVMROS1_ec4e3d0e6c502b60e70a3ba18f41d885e108fd4fe530ef2a9136ca0b32edda91"
encodeRos2Aimdk_msgsSrvGetRobotResources_Response :: Ros2Aimdk_msgsSrvGetRobotResources_Response -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvGetRobotResources_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvGetRobotResources_Response_header value)
  if length (ros2Aimdk_msgsSrvGetRobotResources_Response_robot_resources value) > 4 then Left 22 else Right ()
  prefix1 <- W.encodeCount 4 (length (ros2Aimdk_msgsSrvGetRobotResources_Response_robot_resources value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgRobotResource (e))
      (ros2Aimdk_msgsSrvGetRobotResources_Response_robot_resources value)
  W.bounded 10236 [b0, prefix1, b1]
readRos2Aimdk_msgsSrvGetRobotResources_Response :: W.Decoder Ros2Aimdk_msgsSrvGetRobotResources_Response
readRos2Aimdk_msgsSrvGetRobotResources_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  count1 <- W.count 4
  a1 <- replicateM count1 (readRos2Aimdk_msgsMsgRobotResource)
  let value = Ros2Aimdk_msgsSrvGetRobotResources_Response a0 a1
  case encodeRos2Aimdk_msgsSrvGetRobotResources_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetRobotResources_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvGetRobotResources_Response
decodeRos2Aimdk_msgsSrvGetRobotResources_Response = W.runDecoder 10236
    readRos2Aimdk_msgsSrvGetRobotResources_Response
instance Canonical Ros2Aimdk_msgsSrvGetRobotResources_Response where
  maximumBytes _ = 10236
  encodeValue = encodeRos2Aimdk_msgsSrvGetRobotResources_Response
  readValue = readRos2Aimdk_msgsSrvGetRobotResources_Response
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
    -- | \@brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded
    -- NUL.
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
data Ros2Aimdk_msgsSrvGetStoredMapByName_Request = Ros2Aimdk_msgsSrvGetStoredMapByName_Request
  {
    -- | \@brief aimdk_msgs/srv/GetStoredMapByName_Request.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetStoredMapByName_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetStoredMapByName_Request_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief aimdk_msgs/srv/GetStoredMapByName_Request.map_name: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetStoredMapByName_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetStoredMapByName_Request_map_name :: T.Text
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetStoredMapByName_Request :: Ros2Aimdk_msgsSrvGetStoredMapByName_Request
defaultRos2Aimdk_msgsSrvGetStoredMapByName_Request = Ros2Aimdk_msgsSrvGetStoredMapByName_Request
    (defaultRos2Std_msgsMsgHeader) (T.empty)
ros2Aimdk_msgsSrvGetStoredMapByName_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvGetStoredMapByName_RequestCodecIdentity =
    "UWVMROS1_4c33fbe7dbfe4cb2c06345046eb36d470530ff775ae5eee9b89f69fa5ec2fbc3"
encodeRos2Aimdk_msgsSrvGetStoredMapByName_Request :: Ros2Aimdk_msgsSrvGetStoredMapByName_Request -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvGetStoredMapByName_Request value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Aimdk_msgsSrvGetStoredMapByName_Request_header value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsSrvGetStoredMapByName_Request_map_name value)
  W.bounded 272 [b0, b1]
readRos2Aimdk_msgsSrvGetStoredMapByName_Request :: W.Decoder Ros2Aimdk_msgsSrvGetStoredMapByName_Request
readRos2Aimdk_msgsSrvGetStoredMapByName_Request = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- W.text 128 True
  let value = Ros2Aimdk_msgsSrvGetStoredMapByName_Request a0 a1
  case encodeRos2Aimdk_msgsSrvGetStoredMapByName_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetStoredMapByName_Request :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvGetStoredMapByName_Request
decodeRos2Aimdk_msgsSrvGetStoredMapByName_Request = W.runDecoder 272 readRos2Aimdk_msgsSrvGetStoredMapByName_Request
instance Canonical Ros2Aimdk_msgsSrvGetStoredMapByName_Request where
  maximumBytes _ = 272
  encodeValue = encodeRos2Aimdk_msgsSrvGetStoredMapByName_Request
  readValue = readRos2Aimdk_msgsSrvGetStoredMapByName_Request
data Ros2Nav_msgsMsgMapMetaData = Ros2Nav_msgsMsgMapMetaData
  {
    -- | \@brief nav_msgs/msg/MapMetaData.map_load_time: builtin_interfaces/msg/Time.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Nav_msgsMsgMapMetaData; share/platform/ros/haskell/API-CONTRACT.md
    ros2Nav_msgsMsgMapMetaData_map_load_time :: Ros2Builtin_interfacesMsgTime
  ,
    -- | \@brief nav_msgs/msg/MapMetaData.resolution: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Nav_msgsMsgMapMetaData; share/platform/ros/haskell/API-CONTRACT.md
    ros2Nav_msgsMsgMapMetaData_resolution :: Float
  ,
    -- | \@brief nav_msgs/msg/MapMetaData.width: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Nav_msgsMsgMapMetaData; share/platform/ros/haskell/API-CONTRACT.md
    ros2Nav_msgsMsgMapMetaData_width :: Word32
  ,
    -- | \@brief nav_msgs/msg/MapMetaData.height: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Nav_msgsMsgMapMetaData; share/platform/ros/haskell/API-CONTRACT.md
    ros2Nav_msgsMsgMapMetaData_height :: Word32
  ,
    -- | \@brief nav_msgs/msg/MapMetaData.origin: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Nav_msgsMsgMapMetaData; share/platform/ros/haskell/API-CONTRACT.md
    ros2Nav_msgsMsgMapMetaData_origin :: Ros2Geometry_msgsMsgPose
  } deriving (Eq, Show)
defaultRos2Nav_msgsMsgMapMetaData :: Ros2Nav_msgsMsgMapMetaData
defaultRos2Nav_msgsMsgMapMetaData = Ros2Nav_msgsMsgMapMetaData (defaultRos2Builtin_interfacesMsgTime) (0) (0) (0)
    (defaultRos2Geometry_msgsMsgPose)
ros2Nav_msgsMsgMapMetaDataCodecIdentity :: String
ros2Nav_msgsMsgMapMetaDataCodecIdentity =
    "UWVMROS1_494874ea5dbbb03876e0405f6d06b5d7cc5b1727e61dcb8ff9e449735b800009"
encodeRos2Nav_msgsMsgMapMetaData :: Ros2Nav_msgsMsgMapMetaData -> Either Word32 B.ByteString
encodeRos2Nav_msgsMsgMapMetaData value = do
  b0 <- encodeRos2Builtin_interfacesMsgTime (ros2Nav_msgsMsgMapMetaData_map_load_time value)
  b1 <- W.encodeFloat32 (ros2Nav_msgsMsgMapMetaData_resolution value)
  b2 <- W.encodeUnsigned 4 (fromIntegral (ros2Nav_msgsMsgMapMetaData_width value))
  b3 <- W.encodeUnsigned 4 (fromIntegral (ros2Nav_msgsMsgMapMetaData_height value))
  b4 <- encodeRos2Geometry_msgsMsgPose (ros2Nav_msgsMsgMapMetaData_origin value)
  W.bounded 76 [b0, b1, b2, b3, b4]
readRos2Nav_msgsMsgMapMetaData :: W.Decoder Ros2Nav_msgsMsgMapMetaData
readRos2Nav_msgsMsgMapMetaData = do
  a0 <- readRos2Builtin_interfacesMsgTime
  a1 <- W.float32
  a2 <- fromIntegral <$> W.unsigned 4
  a3 <- fromIntegral <$> W.unsigned 4
  a4 <- readRos2Geometry_msgsMsgPose
  let value = Ros2Nav_msgsMsgMapMetaData a0 a1 a2 a3 a4
  case encodeRos2Nav_msgsMsgMapMetaData value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Nav_msgsMsgMapMetaData :: B.ByteString -> Either Word32 Ros2Nav_msgsMsgMapMetaData
decodeRos2Nav_msgsMsgMapMetaData = W.runDecoder 76 readRos2Nav_msgsMsgMapMetaData
instance Canonical Ros2Nav_msgsMsgMapMetaData where
  maximumBytes _ = 76
  encodeValue = encodeRos2Nav_msgsMsgMapMetaData
  readValue = readRos2Nav_msgsMsgMapMetaData
data Ros2Aimdk_msgsSrvGetStoredMapByName_Response = Ros2Aimdk_msgsSrvGetStoredMapByName_Response
  {
    -- | \@brief aimdk_msgs/srv/GetStoredMapByName_Response.code: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetStoredMapByName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetStoredMapByName_Response_code :: Word64
  ,
    -- | \@brief aimdk_msgs/srv/GetStoredMapByName_Response.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetStoredMapByName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetStoredMapByName_Response_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief aimdk_msgs/srv/GetStoredMapByName_Response.map_info: nav_msgs/msg/MapMetaData.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetStoredMapByName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetStoredMapByName_Response_map_info :: Ros2Nav_msgsMsgMapMetaData
  ,
    -- | \@brief aimdk_msgs/srv/GetStoredMapByName_Response.map_version: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetStoredMapByName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetStoredMapByName_Response_map_version :: Word64
  ,
    -- | \@brief aimdk_msgs/srv/GetStoredMapByName_Response.map_path: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetStoredMapByName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetStoredMapByName_Response_map_path :: T.Text
  ,
    -- | \@brief aimdk_msgs/srv/GetStoredMapByName_Response.data: int8; 0..256 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetStoredMapByName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetStoredMapByName_Response_data :: [Int8]
  ,
    -- | \@brief aimdk_msgs/srv/GetStoredMapByName_Response.navi_points: aimdk_msgs/msg/NaviPoint; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetStoredMapByName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetStoredMapByName_Response_navi_points :: [Ros2Aimdk_msgsMsgNaviPoint]
  ,
    -- | \@brief aimdk_msgs/srv/GetStoredMapByName_Response.qr_points: aimdk_msgs/msg/QRPoint; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetStoredMapByName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetStoredMapByName_Response_qr_points :: [Ros2Aimdk_msgsMsgQRPoint]
  ,
    -- | \@brief aimdk_msgs/srv/GetStoredMapByName_Response.hr_points: aimdk_msgs/msg/HRPoint; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetStoredMapByName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetStoredMapByName_Response_hr_points :: [Ros2Aimdk_msgsMsgHRPoint]
  ,
    -- | \@brief aimdk_msgs/srv/GetStoredMapByName_Response.paths: aimdk_msgs/msg/Path; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetStoredMapByName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetStoredMapByName_Response_paths :: [Ros2Aimdk_msgsMsgPath]
  ,
    -- | \@brief aimdk_msgs/srv/GetStoredMapByName_Response.regions: aimdk_msgs/msg/Region; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetStoredMapByName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetStoredMapByName_Response_regions :: [Ros2Aimdk_msgsMsgRegion]
  ,
    -- | \@brief aimdk_msgs/srv/GetStoredMapByName_Response.map_id: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetStoredMapByName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetStoredMapByName_Response_map_id :: Word64
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetStoredMapByName_Response :: Ros2Aimdk_msgsSrvGetStoredMapByName_Response
defaultRos2Aimdk_msgsSrvGetStoredMapByName_Response = Ros2Aimdk_msgsSrvGetStoredMapByName_Response (0)
    (defaultRos2Std_msgsMsgHeader) (defaultRos2Nav_msgsMsgMapMetaData) (0) (T.empty) ([]) ([]) ([]) ([]) ([]) ([])
    (0)
ros2Aimdk_msgsSrvGetStoredMapByName_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvGetStoredMapByName_ResponseCodecIdentity =
    "UWVMROS1_66ba1fb25a02dc55b4c5f46bdb5e090d134ea5fa9ff2a47f4934b0af382c61fb"
encodeRos2Aimdk_msgsSrvGetStoredMapByName_Response :: Ros2Aimdk_msgsSrvGetStoredMapByName_Response -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvGetStoredMapByName_Response value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Aimdk_msgsSrvGetStoredMapByName_Response_code value))
  b1 <- encodeRos2Std_msgsMsgHeader (ros2Aimdk_msgsSrvGetStoredMapByName_Response_header value)
  b2 <- encodeRos2Nav_msgsMsgMapMetaData (ros2Aimdk_msgsSrvGetStoredMapByName_Response_map_info value)
  b3 <- W.encodeUnsigned 8 (fromIntegral (ros2Aimdk_msgsSrvGetStoredMapByName_Response_map_version value))
  b4 <- W.encodeText 128 True (ros2Aimdk_msgsSrvGetStoredMapByName_Response_map_path value)
  if length (ros2Aimdk_msgsSrvGetStoredMapByName_Response_data value) > 256 then Left 22 else Right ()
  prefix5 <- W.encodeCount 256 (length (ros2Aimdk_msgsSrvGetStoredMapByName_Response_data value))
  b5 <- B.concat <$> mapM (\e -> W.encodeSigned 1 (fromIntegral (e)))
      (ros2Aimdk_msgsSrvGetStoredMapByName_Response_data value)
  if length (ros2Aimdk_msgsSrvGetStoredMapByName_Response_navi_points value) > 4 then Left 22 else Right ()
  prefix6 <- W.encodeCount 4 (length (ros2Aimdk_msgsSrvGetStoredMapByName_Response_navi_points value))
  b6 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgNaviPoint (e))
      (ros2Aimdk_msgsSrvGetStoredMapByName_Response_navi_points value)
  if length (ros2Aimdk_msgsSrvGetStoredMapByName_Response_qr_points value) > 4 then Left 22 else Right ()
  prefix7 <- W.encodeCount 4 (length (ros2Aimdk_msgsSrvGetStoredMapByName_Response_qr_points value))
  b7 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgQRPoint (e))
      (ros2Aimdk_msgsSrvGetStoredMapByName_Response_qr_points value)
  if length (ros2Aimdk_msgsSrvGetStoredMapByName_Response_hr_points value) > 4 then Left 22 else Right ()
  prefix8 <- W.encodeCount 4 (length (ros2Aimdk_msgsSrvGetStoredMapByName_Response_hr_points value))
  b8 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgHRPoint (e))
      (ros2Aimdk_msgsSrvGetStoredMapByName_Response_hr_points value)
  if length (ros2Aimdk_msgsSrvGetStoredMapByName_Response_paths value) > 4 then Left 22 else Right ()
  prefix9 <- W.encodeCount 4 (length (ros2Aimdk_msgsSrvGetStoredMapByName_Response_paths value))
  b9 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgPath (e))
      (ros2Aimdk_msgsSrvGetStoredMapByName_Response_paths value)
  if length (ros2Aimdk_msgsSrvGetStoredMapByName_Response_regions value) > 4 then Left 22 else Right ()
  prefix10 <- W.encodeCount 4 (length (ros2Aimdk_msgsSrvGetStoredMapByName_Response_regions value))
  b10 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgRegion (e))
      (ros2Aimdk_msgsSrvGetStoredMapByName_Response_regions value)
  b11 <- W.encodeUnsigned 8 (fromIntegral (ros2Aimdk_msgsSrvGetStoredMapByName_Response_map_id value))
  W.bounded 3400 [b0, b1, b2, b3, b4, prefix5, b5, prefix6, b6, prefix7, b7, prefix8, b8, prefix9, b9, prefix10,
      b10, b11]
readRos2Aimdk_msgsSrvGetStoredMapByName_Response :: W.Decoder Ros2Aimdk_msgsSrvGetStoredMapByName_Response
readRos2Aimdk_msgsSrvGetStoredMapByName_Response = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- readRos2Std_msgsMsgHeader
  a2 <- readRos2Nav_msgsMsgMapMetaData
  a3 <- fromIntegral <$> W.unsigned 8
  a4 <- W.text 128 True
  count5 <- W.count 256
  a5 <- replicateM count5 (fromIntegral <$> W.signed 1)
  count6 <- W.count 4
  a6 <- replicateM count6 (readRos2Aimdk_msgsMsgNaviPoint)
  count7 <- W.count 4
  a7 <- replicateM count7 (readRos2Aimdk_msgsMsgQRPoint)
  count8 <- W.count 4
  a8 <- replicateM count8 (readRos2Aimdk_msgsMsgHRPoint)
  count9 <- W.count 4
  a9 <- replicateM count9 (readRos2Aimdk_msgsMsgPath)
  count10 <- W.count 4
  a10 <- replicateM count10 (readRos2Aimdk_msgsMsgRegion)
  a11 <- fromIntegral <$> W.unsigned 8
  let value = Ros2Aimdk_msgsSrvGetStoredMapByName_Response a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11
  case encodeRos2Aimdk_msgsSrvGetStoredMapByName_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetStoredMapByName_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvGetStoredMapByName_Response
decodeRos2Aimdk_msgsSrvGetStoredMapByName_Response = W.runDecoder 3400
    readRos2Aimdk_msgsSrvGetStoredMapByName_Response
instance Canonical Ros2Aimdk_msgsSrvGetStoredMapByName_Response where
  maximumBytes _ = 3400
  encodeValue = encodeRos2Aimdk_msgsSrvGetStoredMapByName_Response
  readValue = readRos2Aimdk_msgsSrvGetStoredMapByName_Response
data Ros2Aimdk_msgsSrvGetSystemState_Request = Ros2Aimdk_msgsSrvGetSystemState_Request
  {
    -- | \@brief aimdk_msgs/srv/GetSystemState_Request.header: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetSystemState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetSystemState_Request_header :: Ros2Aimdk_msgsMsgCommonRequest
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetSystemState_Request :: Ros2Aimdk_msgsSrvGetSystemState_Request
defaultRos2Aimdk_msgsSrvGetSystemState_Request = Ros2Aimdk_msgsSrvGetSystemState_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest)
ros2Aimdk_msgsSrvGetSystemState_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvGetSystemState_RequestCodecIdentity =
    "UWVMROS1_abc62c31fea241d08d99a5a726199b29b995c0cadb688e5aa480ab70d173bf1f"
encodeRos2Aimdk_msgsSrvGetSystemState_Request :: Ros2Aimdk_msgsSrvGetSystemState_Request -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvGetSystemState_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvGetSystemState_Request_header value)
  W.bounded 8 [b0]
readRos2Aimdk_msgsSrvGetSystemState_Request :: W.Decoder Ros2Aimdk_msgsSrvGetSystemState_Request
readRos2Aimdk_msgsSrvGetSystemState_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  let value = Ros2Aimdk_msgsSrvGetSystemState_Request a0
  case encodeRos2Aimdk_msgsSrvGetSystemState_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetSystemState_Request :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvGetSystemState_Request
decodeRos2Aimdk_msgsSrvGetSystemState_Request = W.runDecoder 8 readRos2Aimdk_msgsSrvGetSystemState_Request
instance Canonical Ros2Aimdk_msgsSrvGetSystemState_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Aimdk_msgsSrvGetSystemState_Request
  readValue = readRos2Aimdk_msgsSrvGetSystemState_Request
data Ros2Aimdk_msgsSrvGetSystemState_Response = Ros2Aimdk_msgsSrvGetSystemState_Response
  {
    -- | \@brief aimdk_msgs/srv/GetSystemState_Response.header: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetSystemState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetSystemState_Response_header :: Ros2Aimdk_msgsMsgCommonResponse
  ,
    -- | \@brief aimdk_msgs/srv/GetSystemState_Response.cur_state: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetSystemState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetSystemState_Response_cur_state :: T.Text
  ,
    -- | \@brief aimdk_msgs/srv/GetSystemState_Response.curr_status: aimdk_msgs/msg/SystemStatus.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetSystemState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetSystemState_Response_curr_status :: Ros2Aimdk_msgsMsgSystemStatus
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetSystemState_Response :: Ros2Aimdk_msgsSrvGetSystemState_Response
defaultRos2Aimdk_msgsSrvGetSystemState_Response = Ros2Aimdk_msgsSrvGetSystemState_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse) (T.empty) (defaultRos2Aimdk_msgsMsgSystemStatus)
ros2Aimdk_msgsSrvGetSystemState_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvGetSystemState_ResponseCodecIdentity =
    "UWVMROS1_8ea41f1383183b566d3c4457bee27191c9ac986a7c42e0b98aab05ab500c9039"
encodeRos2Aimdk_msgsSrvGetSystemState_Response :: Ros2Aimdk_msgsSrvGetSystemState_Response -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvGetSystemState_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvGetSystemState_Response_header value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsSrvGetSystemState_Response_cur_state value)
  b2 <- encodeRos2Aimdk_msgsMsgSystemStatus (ros2Aimdk_msgsSrvGetSystemState_Response_curr_status value)
  W.bounded 285 [b0, b1, b2]
readRos2Aimdk_msgsSrvGetSystemState_Response :: W.Decoder Ros2Aimdk_msgsSrvGetSystemState_Response
readRos2Aimdk_msgsSrvGetSystemState_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  a1 <- W.text 128 True
  a2 <- readRos2Aimdk_msgsMsgSystemStatus
  let value = Ros2Aimdk_msgsSrvGetSystemState_Response a0 a1 a2
  case encodeRos2Aimdk_msgsSrvGetSystemState_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetSystemState_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvGetSystemState_Response
decodeRos2Aimdk_msgsSrvGetSystemState_Response = W.runDecoder 285 readRos2Aimdk_msgsSrvGetSystemState_Response
instance Canonical Ros2Aimdk_msgsSrvGetSystemState_Response where
  maximumBytes _ = 285
  encodeValue = encodeRos2Aimdk_msgsSrvGetSystemState_Response
  readValue = readRos2Aimdk_msgsSrvGetSystemState_Response
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
data Ros2Aimdk_msgsSrvMigrateSystemState_Request = Ros2Aimdk_msgsSrvMigrateSystemState_Request
  {
    -- | \@brief aimdk_msgs/srv/MigrateSystemState_Request.header: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvMigrateSystemState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvMigrateSystemState_Request_header :: Ros2Aimdk_msgsMsgCommonRequest
  ,
    -- | \@brief aimdk_msgs/srv/MigrateSystemState_Request.state: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvMigrateSystemState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvMigrateSystemState_Request_state :: T.Text
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvMigrateSystemState_Request :: Ros2Aimdk_msgsSrvMigrateSystemState_Request
defaultRos2Aimdk_msgsSrvMigrateSystemState_Request = Ros2Aimdk_msgsSrvMigrateSystemState_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest) (T.empty)
ros2Aimdk_msgsSrvMigrateSystemState_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvMigrateSystemState_RequestCodecIdentity =
    "UWVMROS1_02131f85cee3462c507bef0c8f54e75adbb1c8318551cfaef8efc59d693a415b"
encodeRos2Aimdk_msgsSrvMigrateSystemState_Request :: Ros2Aimdk_msgsSrvMigrateSystemState_Request -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvMigrateSystemState_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvMigrateSystemState_Request_header value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsSrvMigrateSystemState_Request_state value)
  W.bounded 140 [b0, b1]
readRos2Aimdk_msgsSrvMigrateSystemState_Request :: W.Decoder Ros2Aimdk_msgsSrvMigrateSystemState_Request
readRos2Aimdk_msgsSrvMigrateSystemState_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  a1 <- W.text 128 True
  let value = Ros2Aimdk_msgsSrvMigrateSystemState_Request a0 a1
  case encodeRos2Aimdk_msgsSrvMigrateSystemState_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvMigrateSystemState_Request :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvMigrateSystemState_Request
decodeRos2Aimdk_msgsSrvMigrateSystemState_Request = W.runDecoder 140 readRos2Aimdk_msgsSrvMigrateSystemState_Request
instance Canonical Ros2Aimdk_msgsSrvMigrateSystemState_Request where
  maximumBytes _ = 140
  encodeValue = encodeRos2Aimdk_msgsSrvMigrateSystemState_Request
  readValue = readRos2Aimdk_msgsSrvMigrateSystemState_Request
data Ros2Aimdk_msgsSrvMigrateSystemState_Response = Ros2Aimdk_msgsSrvMigrateSystemState_Response
  {
    -- | \@brief aimdk_msgs/srv/MigrateSystemState_Response.header: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvMigrateSystemState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvMigrateSystemState_Response_header :: Ros2Aimdk_msgsMsgCommonResponse
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvMigrateSystemState_Response :: Ros2Aimdk_msgsSrvMigrateSystemState_Response
defaultRos2Aimdk_msgsSrvMigrateSystemState_Response = Ros2Aimdk_msgsSrvMigrateSystemState_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse)
ros2Aimdk_msgsSrvMigrateSystemState_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvMigrateSystemState_ResponseCodecIdentity =
    "UWVMROS1_7d4901fe8d9ab86c9f42b643604809a73e07ea77877b955764b4311d6f585802"
encodeRos2Aimdk_msgsSrvMigrateSystemState_Response :: Ros2Aimdk_msgsSrvMigrateSystemState_Response -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvMigrateSystemState_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvMigrateSystemState_Response_header value)
  W.bounded 152 [b0]
readRos2Aimdk_msgsSrvMigrateSystemState_Response :: W.Decoder Ros2Aimdk_msgsSrvMigrateSystemState_Response
readRos2Aimdk_msgsSrvMigrateSystemState_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  let value = Ros2Aimdk_msgsSrvMigrateSystemState_Response a0
  case encodeRos2Aimdk_msgsSrvMigrateSystemState_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvMigrateSystemState_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvMigrateSystemState_Response
decodeRos2Aimdk_msgsSrvMigrateSystemState_Response = W.runDecoder 152
    readRos2Aimdk_msgsSrvMigrateSystemState_Response
instance Canonical Ros2Aimdk_msgsSrvMigrateSystemState_Response where
  maximumBytes _ = 152
  encodeValue = encodeRos2Aimdk_msgsSrvMigrateSystemState_Response
  readValue = readRos2Aimdk_msgsSrvMigrateSystemState_Response
data Ros2Aimdk_msgsSrvPlayAudioFile_Request = Ros2Aimdk_msgsSrvPlayAudioFile_Request
  {
    -- | \@brief aimdk_msgs/srv/PlayAudioFile_Request.request: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayAudioFile_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayAudioFile_Request_request :: Ros2Aimdk_msgsMsgCommonRequest
  ,
    -- | \@brief aimdk_msgs/srv/PlayAudioFile_Request.file: aimdk_msgs/msg/AudioFile.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayAudioFile_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayAudioFile_Request_file :: Ros2Aimdk_msgsMsgAudioFile
  ,
    -- | \@brief aimdk_msgs/srv/PlayAudioFile_Request.play_stamps: builtin_interfaces/msg/Time.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayAudioFile_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayAudioFile_Request_play_stamps :: Ros2Builtin_interfacesMsgTime
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvPlayAudioFile_Request :: Ros2Aimdk_msgsSrvPlayAudioFile_Request
defaultRos2Aimdk_msgsSrvPlayAudioFile_Request = Ros2Aimdk_msgsSrvPlayAudioFile_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest) (defaultRos2Aimdk_msgsMsgAudioFile)
    (defaultRos2Builtin_interfacesMsgTime)
ros2Aimdk_msgsSrvPlayAudioFile_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvPlayAudioFile_RequestCodecIdentity =
    "UWVMROS1_710a4db7c9c3792601fd958615acbd3e413ed1b1ca98aec0a7b04aff79c59cb1"
encodeRos2Aimdk_msgsSrvPlayAudioFile_Request :: Ros2Aimdk_msgsSrvPlayAudioFile_Request -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvPlayAudioFile_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvPlayAudioFile_Request_request value)
  b1 <- encodeRos2Aimdk_msgsMsgAudioFile (ros2Aimdk_msgsSrvPlayAudioFile_Request_file value)
  b2 <- encodeRos2Builtin_interfacesMsgTime (ros2Aimdk_msgsSrvPlayAudioFile_Request_play_stamps value)
  W.bounded 693 [b0, b1, b2]
readRos2Aimdk_msgsSrvPlayAudioFile_Request :: W.Decoder Ros2Aimdk_msgsSrvPlayAudioFile_Request
readRos2Aimdk_msgsSrvPlayAudioFile_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  a1 <- readRos2Aimdk_msgsMsgAudioFile
  a2 <- readRos2Builtin_interfacesMsgTime
  let value = Ros2Aimdk_msgsSrvPlayAudioFile_Request a0 a1 a2
  case encodeRos2Aimdk_msgsSrvPlayAudioFile_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvPlayAudioFile_Request :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvPlayAudioFile_Request
decodeRos2Aimdk_msgsSrvPlayAudioFile_Request = W.runDecoder 693 readRos2Aimdk_msgsSrvPlayAudioFile_Request
instance Canonical Ros2Aimdk_msgsSrvPlayAudioFile_Request where
  maximumBytes _ = 693
  encodeValue = encodeRos2Aimdk_msgsSrvPlayAudioFile_Request
  readValue = readRos2Aimdk_msgsSrvPlayAudioFile_Request
data Ros2Aimdk_msgsSrvPlayAudioFile_Response = Ros2Aimdk_msgsSrvPlayAudioFile_Response
  {
    -- | \@brief aimdk_msgs/srv/PlayAudioFile_Response.reponse: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayAudioFile_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayAudioFile_Response_reponse :: Ros2Aimdk_msgsMsgCommonResponse
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvPlayAudioFile_Response :: Ros2Aimdk_msgsSrvPlayAudioFile_Response
defaultRos2Aimdk_msgsSrvPlayAudioFile_Response = Ros2Aimdk_msgsSrvPlayAudioFile_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse)
ros2Aimdk_msgsSrvPlayAudioFile_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvPlayAudioFile_ResponseCodecIdentity =
    "UWVMROS1_988d360e84f041bc5a53a6d085709ba31e7e3836115e40d890534f44e62b0b85"
encodeRos2Aimdk_msgsSrvPlayAudioFile_Response :: Ros2Aimdk_msgsSrvPlayAudioFile_Response -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvPlayAudioFile_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvPlayAudioFile_Response_reponse value)
  W.bounded 152 [b0]
readRos2Aimdk_msgsSrvPlayAudioFile_Response :: W.Decoder Ros2Aimdk_msgsSrvPlayAudioFile_Response
readRos2Aimdk_msgsSrvPlayAudioFile_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  let value = Ros2Aimdk_msgsSrvPlayAudioFile_Response a0
  case encodeRos2Aimdk_msgsSrvPlayAudioFile_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvPlayAudioFile_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvPlayAudioFile_Response
decodeRos2Aimdk_msgsSrvPlayAudioFile_Response = W.runDecoder 152 readRos2Aimdk_msgsSrvPlayAudioFile_Response
instance Canonical Ros2Aimdk_msgsSrvPlayAudioFile_Response where
  maximumBytes _ = 152
  encodeValue = encodeRos2Aimdk_msgsSrvPlayAudioFile_Response
  readValue = readRos2Aimdk_msgsSrvPlayAudioFile_Response
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
    "UWVMROS1_33f223039d43b52c64efebade4db48eb23c734f57094ed9f354a624927326989"
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
    "UWVMROS1_80d6f75ec35cccce215b1ab1321eabeae2e6668eb29a7249c8f8fad77e59bcc6"
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
data Ros2Aimdk_msgsSrvPlayVideoGroup_Request = Ros2Aimdk_msgsSrvPlayVideoGroup_Request
  {
    -- | \@brief aimdk_msgs/srv/PlayVideoGroup_Request.header: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayVideoGroup_Request_header :: Ros2Aimdk_msgsMsgCommonRequest
  ,
    -- | \@brief aimdk_msgs/srv/PlayVideoGroup_Request.video_path_list: string; 0..16 elements; each string is
    -- 0..128 bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayVideoGroup_Request_video_path_list :: [T.Text]
  ,
    -- | \@brief aimdk_msgs/srv/PlayVideoGroup_Request.mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayVideoGroup_Request_mode :: Word8
  ,
    -- | \@brief aimdk_msgs/srv/PlayVideoGroup_Request.priority: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayVideoGroup_Request_priority :: Int32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvPlayVideoGroup_Request :: Ros2Aimdk_msgsSrvPlayVideoGroup_Request
defaultRos2Aimdk_msgsSrvPlayVideoGroup_Request = Ros2Aimdk_msgsSrvPlayVideoGroup_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest) ([]) (0) (0)
ros2Aimdk_msgsSrvPlayVideoGroup_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvPlayVideoGroup_RequestCodecIdentity =
    "UWVMROS1_3c55649a41758dca0eeb22b090ae63a38bb4720d6b55342ac5204ec1a3696473"
ros2Aimdk_msgsSrvPlayVideoGroup_Request_EMOTION_MODE_ONCE :: Word8
ros2Aimdk_msgsSrvPlayVideoGroup_Request_EMOTION_MODE_ONCE = 1
ros2Aimdk_msgsSrvPlayVideoGroup_Request_EMOTION_MODE_LOOP :: Word8
ros2Aimdk_msgsSrvPlayVideoGroup_Request_EMOTION_MODE_LOOP = 2
encodeRos2Aimdk_msgsSrvPlayVideoGroup_Request :: Ros2Aimdk_msgsSrvPlayVideoGroup_Request -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvPlayVideoGroup_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvPlayVideoGroup_Request_header value)
  if length (ros2Aimdk_msgsSrvPlayVideoGroup_Request_video_path_list value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros2Aimdk_msgsSrvPlayVideoGroup_Request_video_path_list value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros2Aimdk_msgsSrvPlayVideoGroup_Request_video_path_list
      value)
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsSrvPlayVideoGroup_Request_mode value))
  b3 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsSrvPlayVideoGroup_Request_priority value))
  W.bounded 2129 [b0, prefix1, b1, b2, b3]
readRos2Aimdk_msgsSrvPlayVideoGroup_Request :: W.Decoder Ros2Aimdk_msgsSrvPlayVideoGroup_Request
readRos2Aimdk_msgsSrvPlayVideoGroup_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  count1 <- W.count 16
  a1 <- replicateM count1 (W.text 128 True)
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- fromIntegral <$> W.signed 4
  let value = Ros2Aimdk_msgsSrvPlayVideoGroup_Request a0 a1 a2 a3
  case encodeRos2Aimdk_msgsSrvPlayVideoGroup_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvPlayVideoGroup_Request :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvPlayVideoGroup_Request
decodeRos2Aimdk_msgsSrvPlayVideoGroup_Request = W.runDecoder 2129 readRos2Aimdk_msgsSrvPlayVideoGroup_Request
instance Canonical Ros2Aimdk_msgsSrvPlayVideoGroup_Request where
  maximumBytes _ = 2129
  encodeValue = encodeRos2Aimdk_msgsSrvPlayVideoGroup_Request
  readValue = readRos2Aimdk_msgsSrvPlayVideoGroup_Request
data Ros2Aimdk_msgsSrvPlayVideoGroup_Response = Ros2Aimdk_msgsSrvPlayVideoGroup_Response
  {
    -- | \@brief aimdk_msgs/srv/PlayVideoGroup_Response.header: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayVideoGroup_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayVideoGroup_Response_header :: Ros2Aimdk_msgsMsgCommonResponse
  ,
    -- | \@brief aimdk_msgs/srv/PlayVideoGroup_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayVideoGroup_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayVideoGroup_Response_success :: Bool
  ,
    -- | \@brief aimdk_msgs/srv/PlayVideoGroup_Response.message: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayVideoGroup_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayVideoGroup_Response_message :: T.Text
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvPlayVideoGroup_Response :: Ros2Aimdk_msgsSrvPlayVideoGroup_Response
defaultRos2Aimdk_msgsSrvPlayVideoGroup_Response = Ros2Aimdk_msgsSrvPlayVideoGroup_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse) (False) (T.empty)
ros2Aimdk_msgsSrvPlayVideoGroup_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvPlayVideoGroup_ResponseCodecIdentity =
    "UWVMROS1_eb57edaed02ddee9424ba10f7c783e9e6147fa0990043059f2b4102d0d0a5a19"
encodeRos2Aimdk_msgsSrvPlayVideoGroup_Response :: Ros2Aimdk_msgsSrvPlayVideoGroup_Response -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvPlayVideoGroup_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvPlayVideoGroup_Response_header value)
  b1 <- W.encodeBool (ros2Aimdk_msgsSrvPlayVideoGroup_Response_success value)
  b2 <- W.encodeText 128 True (ros2Aimdk_msgsSrvPlayVideoGroup_Response_message value)
  W.bounded 285 [b0, b1, b2]
readRos2Aimdk_msgsSrvPlayVideoGroup_Response :: W.Decoder Ros2Aimdk_msgsSrvPlayVideoGroup_Response
readRos2Aimdk_msgsSrvPlayVideoGroup_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  a1 <- W.boolean
  a2 <- W.text 128 True
  let value = Ros2Aimdk_msgsSrvPlayVideoGroup_Response a0 a1 a2
  case encodeRos2Aimdk_msgsSrvPlayVideoGroup_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvPlayVideoGroup_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvPlayVideoGroup_Response
decodeRos2Aimdk_msgsSrvPlayVideoGroup_Response = W.runDecoder 285 readRos2Aimdk_msgsSrvPlayVideoGroup_Response
instance Canonical Ros2Aimdk_msgsSrvPlayVideoGroup_Response where
  maximumBytes _ = 285
  encodeValue = encodeRos2Aimdk_msgsSrvPlayVideoGroup_Response
  readValue = readRos2Aimdk_msgsSrvPlayVideoGroup_Response
data Ros2Aimdk_msgsSrvRequestAudioFocus_Request = Ros2Aimdk_msgsSrvRequestAudioFocus_Request
  {
    -- | \@brief aimdk_msgs/srv/RequestAudioFocus_Request.request: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvRequestAudioFocus_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvRequestAudioFocus_Request_request :: Ros2Aimdk_msgsMsgCommonRequest
  ,
    -- | \@brief aimdk_msgs/srv/RequestAudioFocus_Request.focus_requester: aimdk_msgs/msg/FocusRequester.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvRequestAudioFocus_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvRequestAudioFocus_Request_focus_requester :: Ros2Aimdk_msgsMsgFocusRequester
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvRequestAudioFocus_Request :: Ros2Aimdk_msgsSrvRequestAudioFocus_Request
defaultRos2Aimdk_msgsSrvRequestAudioFocus_Request = Ros2Aimdk_msgsSrvRequestAudioFocus_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest) (defaultRos2Aimdk_msgsMsgFocusRequester)
ros2Aimdk_msgsSrvRequestAudioFocus_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvRequestAudioFocus_RequestCodecIdentity =
    "UWVMROS1_b6354e6109618f66c9c52fc67351c687e60ad1bf5f4b77a8e326755deca7ae8a"
encodeRos2Aimdk_msgsSrvRequestAudioFocus_Request :: Ros2Aimdk_msgsSrvRequestAudioFocus_Request -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvRequestAudioFocus_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvRequestAudioFocus_Request_request value)
  b1 <- encodeRos2Aimdk_msgsMsgFocusRequester (ros2Aimdk_msgsSrvRequestAudioFocus_Request_focus_requester value)
  W.bounded 148 [b0, b1]
readRos2Aimdk_msgsSrvRequestAudioFocus_Request :: W.Decoder Ros2Aimdk_msgsSrvRequestAudioFocus_Request
readRos2Aimdk_msgsSrvRequestAudioFocus_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  a1 <- readRos2Aimdk_msgsMsgFocusRequester
  let value = Ros2Aimdk_msgsSrvRequestAudioFocus_Request a0 a1
  case encodeRos2Aimdk_msgsSrvRequestAudioFocus_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvRequestAudioFocus_Request :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvRequestAudioFocus_Request
decodeRos2Aimdk_msgsSrvRequestAudioFocus_Request = W.runDecoder 148 readRos2Aimdk_msgsSrvRequestAudioFocus_Request
instance Canonical Ros2Aimdk_msgsSrvRequestAudioFocus_Request where
  maximumBytes _ = 148
  encodeValue = encodeRos2Aimdk_msgsSrvRequestAudioFocus_Request
  readValue = readRos2Aimdk_msgsSrvRequestAudioFocus_Request
data Ros2Aimdk_msgsSrvRequestAudioFocus_Response = Ros2Aimdk_msgsSrvRequestAudioFocus_Response
  {
    -- | \@brief aimdk_msgs/srv/RequestAudioFocus_Response.reponse: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvRequestAudioFocus_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvRequestAudioFocus_Response_reponse :: Ros2Aimdk_msgsMsgCommonResponse
  ,
    -- | \@brief aimdk_msgs/srv/RequestAudioFocus_Response.focus_response: aimdk_msgs/msg/FocusResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvRequestAudioFocus_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvRequestAudioFocus_Response_focus_response :: Ros2Aimdk_msgsMsgFocusResponse
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvRequestAudioFocus_Response :: Ros2Aimdk_msgsSrvRequestAudioFocus_Response
defaultRos2Aimdk_msgsSrvRequestAudioFocus_Response = Ros2Aimdk_msgsSrvRequestAudioFocus_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse) (defaultRos2Aimdk_msgsMsgFocusResponse)
ros2Aimdk_msgsSrvRequestAudioFocus_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvRequestAudioFocus_ResponseCodecIdentity =
    "UWVMROS1_41f9d4bcd2021b66e092897b1c587be4359d28b9bac69ea4058d429c5cf88180"
encodeRos2Aimdk_msgsSrvRequestAudioFocus_Response :: Ros2Aimdk_msgsSrvRequestAudioFocus_Response -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvRequestAudioFocus_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvRequestAudioFocus_Response_reponse value)
  b1 <- encodeRos2Aimdk_msgsMsgFocusResponse (ros2Aimdk_msgsSrvRequestAudioFocus_Response_focus_response value)
  W.bounded 285 [b0, b1]
readRos2Aimdk_msgsSrvRequestAudioFocus_Response :: W.Decoder Ros2Aimdk_msgsSrvRequestAudioFocus_Response
readRos2Aimdk_msgsSrvRequestAudioFocus_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  a1 <- readRos2Aimdk_msgsMsgFocusResponse
  let value = Ros2Aimdk_msgsSrvRequestAudioFocus_Response a0 a1
  case encodeRos2Aimdk_msgsSrvRequestAudioFocus_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvRequestAudioFocus_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvRequestAudioFocus_Response
decodeRos2Aimdk_msgsSrvRequestAudioFocus_Response = W.runDecoder 285 readRos2Aimdk_msgsSrvRequestAudioFocus_Response
instance Canonical Ros2Aimdk_msgsSrvRequestAudioFocus_Response where
  maximumBytes _ = 285
  encodeValue = encodeRos2Aimdk_msgsSrvRequestAudioFocus_Response
  readValue = readRos2Aimdk_msgsSrvRequestAudioFocus_Response
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
    "UWVMROS1_b05248c104afdd5331b9afb7a029923b03d3a984ba53633b0e42a70395f96fb8"
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
    -- | \@brief aimdk_msgs/srv/SetMcAction_Request.source: string; each string is 0..128 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMcAction_Request_source :: T.Text
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
    (defaultRos2Aimdk_msgsMsgRequestHeader) (T.empty) (defaultRos2Aimdk_msgsMsgMcActionCommand)
ros2Aimdk_msgsSrvSetMcAction_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvSetMcAction_RequestCodecIdentity =
    "UWVMROS1_ba4bc79d2f30a969feb655cc441955119aee8c5d0dc56be32639c9c3e682e246"
encodeRos2Aimdk_msgsSrvSetMcAction_Request :: Ros2Aimdk_msgsSrvSetMcAction_Request -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvSetMcAction_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgRequestHeader (ros2Aimdk_msgsSrvSetMcAction_Request_header value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsSrvSetMcAction_Request_source value)
  b2 <- encodeRos2Aimdk_msgsMsgMcActionCommand (ros2Aimdk_msgsSrvSetMcAction_Request_command value)
  W.bounded 276 [b0, b1, b2]
readRos2Aimdk_msgsSrvSetMcAction_Request :: W.Decoder Ros2Aimdk_msgsSrvSetMcAction_Request
readRos2Aimdk_msgsSrvSetMcAction_Request = do
  a0 <- readRos2Aimdk_msgsMsgRequestHeader
  a1 <- W.text 128 True
  a2 <- readRos2Aimdk_msgsMsgMcActionCommand
  let value = Ros2Aimdk_msgsSrvSetMcAction_Request a0 a1 a2
  case encodeRos2Aimdk_msgsSrvSetMcAction_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetMcAction_Request :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvSetMcAction_Request
decodeRos2Aimdk_msgsSrvSetMcAction_Request = W.runDecoder 276 readRos2Aimdk_msgsSrvSetMcAction_Request
instance Canonical Ros2Aimdk_msgsSrvSetMcAction_Request where
  maximumBytes _ = 276
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
  ,
    -- | \@brief aimdk_msgs/srv/SetMcPresetMotion_Request.play_timestamp: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMcPresetMotion_Request_play_timestamp :: Word64
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvSetMcPresetMotion_Request :: Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
defaultRos2Aimdk_msgsSrvSetMcPresetMotion_Request = Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
    (defaultRos2Aimdk_msgsMsgRequestHeader) (defaultRos2Aimdk_msgsMsgMcControlArea)
    (defaultRos2Aimdk_msgsMsgMcPresetMotion) (False) (T.empty) (0)
ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodecIdentity =
    "UWVMROS1_d16880d0ae7ae0801056a3e9632a8a272813d0e206420199c9463987586b2547"
encodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request :: Ros2Aimdk_msgsSrvSetMcPresetMotion_Request -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgRequestHeader (ros2Aimdk_msgsSrvSetMcPresetMotion_Request_header value)
  b1 <- encodeRos2Aimdk_msgsMsgMcControlArea (ros2Aimdk_msgsSrvSetMcPresetMotion_Request_area value)
  b2 <- encodeRos2Aimdk_msgsMsgMcPresetMotion (ros2Aimdk_msgsSrvSetMcPresetMotion_Request_motion value)
  b3 <- W.encodeBool (ros2Aimdk_msgsSrvSetMcPresetMotion_Request_interrupt value)
  b4 <- W.encodeText 128 True (ros2Aimdk_msgsSrvSetMcPresetMotion_Request_ani_path value)
  b5 <- W.encodeUnsigned 8 (fromIntegral (ros2Aimdk_msgsSrvSetMcPresetMotion_Request_play_timestamp value))
  W.bounded 157 [b0, b1, b2, b3, b4, b5]
readRos2Aimdk_msgsSrvSetMcPresetMotion_Request :: W.Decoder Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
readRos2Aimdk_msgsSrvSetMcPresetMotion_Request = do
  a0 <- readRos2Aimdk_msgsMsgRequestHeader
  a1 <- readRos2Aimdk_msgsMsgMcControlArea
  a2 <- readRos2Aimdk_msgsMsgMcPresetMotion
  a3 <- W.boolean
  a4 <- W.text 128 True
  a5 <- fromIntegral <$> W.unsigned 8
  let value = Ros2Aimdk_msgsSrvSetMcPresetMotion_Request a0 a1 a2 a3 a4 a5
  case encodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
decodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request = W.runDecoder 157 readRos2Aimdk_msgsSrvSetMcPresetMotion_Request
instance Canonical Ros2Aimdk_msgsSrvSetMcPresetMotion_Request where
  maximumBytes _ = 157
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
data Ros2Aimdk_msgsSrvSetMicSourceRequest_Request = Ros2Aimdk_msgsSrvSetMicSourceRequest_Request
  {
    -- | \@brief aimdk_msgs/srv/SetMicSourceRequest_Request.header: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMicSourceRequest_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMicSourceRequest_Request_header :: Ros2Aimdk_msgsMsgCommonRequest
  ,
    -- | \@brief aimdk_msgs/srv/SetMicSourceRequest_Request.mic_source: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMicSourceRequest_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMicSourceRequest_Request_mic_source :: Word32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvSetMicSourceRequest_Request :: Ros2Aimdk_msgsSrvSetMicSourceRequest_Request
defaultRos2Aimdk_msgsSrvSetMicSourceRequest_Request = Ros2Aimdk_msgsSrvSetMicSourceRequest_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest) (0)
ros2Aimdk_msgsSrvSetMicSourceRequest_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvSetMicSourceRequest_RequestCodecIdentity =
    "UWVMROS1_01f1bcb54c816c25f1a88eb4392e8bedc4943d39a5b09974d7859c20ad1ca5e5"
encodeRos2Aimdk_msgsSrvSetMicSourceRequest_Request :: Ros2Aimdk_msgsSrvSetMicSourceRequest_Request -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvSetMicSourceRequest_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvSetMicSourceRequest_Request_header value)
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsSrvSetMicSourceRequest_Request_mic_source value))
  W.bounded 12 [b0, b1]
readRos2Aimdk_msgsSrvSetMicSourceRequest_Request :: W.Decoder Ros2Aimdk_msgsSrvSetMicSourceRequest_Request
readRos2Aimdk_msgsSrvSetMicSourceRequest_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  a1 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Aimdk_msgsSrvSetMicSourceRequest_Request a0 a1
  case encodeRos2Aimdk_msgsSrvSetMicSourceRequest_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetMicSourceRequest_Request :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvSetMicSourceRequest_Request
decodeRos2Aimdk_msgsSrvSetMicSourceRequest_Request = W.runDecoder 12
    readRos2Aimdk_msgsSrvSetMicSourceRequest_Request
instance Canonical Ros2Aimdk_msgsSrvSetMicSourceRequest_Request where
  maximumBytes _ = 12
  encodeValue = encodeRos2Aimdk_msgsSrvSetMicSourceRequest_Request
  readValue = readRos2Aimdk_msgsSrvSetMicSourceRequest_Request
data Ros2Aimdk_msgsSrvSetMicSourceRequest_Response = Ros2Aimdk_msgsSrvSetMicSourceRequest_Response
  {
    -- | \@brief aimdk_msgs/srv/SetMicSourceRequest_Response.header: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMicSourceRequest_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMicSourceRequest_Response_header :: Ros2Aimdk_msgsMsgCommonResponse
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvSetMicSourceRequest_Response :: Ros2Aimdk_msgsSrvSetMicSourceRequest_Response
defaultRos2Aimdk_msgsSrvSetMicSourceRequest_Response = Ros2Aimdk_msgsSrvSetMicSourceRequest_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse)
ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseCodecIdentity =
    "UWVMROS1_ee6caccf202dae100928dacc71303c536144d76458cf7c9b4facc6b88405ba02"
encodeRos2Aimdk_msgsSrvSetMicSourceRequest_Response :: Ros2Aimdk_msgsSrvSetMicSourceRequest_Response -> Either
    Word32 B.ByteString
encodeRos2Aimdk_msgsSrvSetMicSourceRequest_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvSetMicSourceRequest_Response_header value)
  W.bounded 152 [b0]
readRos2Aimdk_msgsSrvSetMicSourceRequest_Response :: W.Decoder Ros2Aimdk_msgsSrvSetMicSourceRequest_Response
readRos2Aimdk_msgsSrvSetMicSourceRequest_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  let value = Ros2Aimdk_msgsSrvSetMicSourceRequest_Response a0
  case encodeRos2Aimdk_msgsSrvSetMicSourceRequest_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetMicSourceRequest_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvSetMicSourceRequest_Response
decodeRos2Aimdk_msgsSrvSetMicSourceRequest_Response = W.runDecoder 152
    readRos2Aimdk_msgsSrvSetMicSourceRequest_Response
instance Canonical Ros2Aimdk_msgsSrvSetMicSourceRequest_Response where
  maximumBytes _ = 152
  encodeValue = encodeRos2Aimdk_msgsSrvSetMicSourceRequest_Response
  readValue = readRos2Aimdk_msgsSrvSetMicSourceRequest_Response
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
data Ros2Aimdk_msgsSrvSetPmuLed_Request = Ros2Aimdk_msgsSrvSetPmuLed_Request
  {
    -- | \@brief aimdk_msgs/srv/SetPmuLed_Request.request: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetPmuLed_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetPmuLed_Request_request :: Ros2Aimdk_msgsMsgCommonRequest
  ,
    -- | \@brief aimdk_msgs/srv/SetPmuLed_Request.trace_id: string; each string is 0..128 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetPmuLed_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetPmuLed_Request_trace_id :: T.Text
  ,
    -- | \@brief aimdk_msgs/srv/SetPmuLed_Request.led_strip_mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetPmuLed_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetPmuLed_Request_led_strip_mode :: Word8
  ,
    -- | \@brief aimdk_msgs/srv/SetPmuLed_Request.r: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetPmuLed_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetPmuLed_Request_r :: Word8
  ,
    -- | \@brief aimdk_msgs/srv/SetPmuLed_Request.g: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetPmuLed_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetPmuLed_Request_g :: Word8
  ,
    -- | \@brief aimdk_msgs/srv/SetPmuLed_Request.b: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetPmuLed_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetPmuLed_Request_b :: Word8
  ,
    -- | \@brief aimdk_msgs/srv/SetPmuLed_Request.priority: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetPmuLed_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetPmuLed_Request_priority :: Int32
  ,
    -- | \@brief aimdk_msgs/srv/SetPmuLed_Request.reset_priority: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetPmuLed_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetPmuLed_Request_reset_priority :: Bool
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvSetPmuLed_Request :: Ros2Aimdk_msgsSrvSetPmuLed_Request
defaultRos2Aimdk_msgsSrvSetPmuLed_Request = Ros2Aimdk_msgsSrvSetPmuLed_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest) (T.empty) (0) (0) (0) (0) (0) (False)
ros2Aimdk_msgsSrvSetPmuLed_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvSetPmuLed_RequestCodecIdentity =
    "UWVMROS1_015ab71547b25baf5658c13781f8e78e5f6ed19692a6a30d191d7f39c962357e"
ros2Aimdk_msgsSrvSetPmuLed_Request_LED_STRIP_MODE_CONSTANT :: Word8
ros2Aimdk_msgsSrvSetPmuLed_Request_LED_STRIP_MODE_CONSTANT = 0
ros2Aimdk_msgsSrvSetPmuLed_Request_LED_STRIP_MODE_BREATH :: Word8
ros2Aimdk_msgsSrvSetPmuLed_Request_LED_STRIP_MODE_BREATH = 1
ros2Aimdk_msgsSrvSetPmuLed_Request_LED_STRIP_MODE_FLASH :: Word8
ros2Aimdk_msgsSrvSetPmuLed_Request_LED_STRIP_MODE_FLASH = 2
ros2Aimdk_msgsSrvSetPmuLed_Request_LED_STRIP_MODE_FLOW :: Word8
ros2Aimdk_msgsSrvSetPmuLed_Request_LED_STRIP_MODE_FLOW = 3
ros2Aimdk_msgsSrvSetPmuLed_Request_LED_STRIP_MODE_MAX :: Word8
ros2Aimdk_msgsSrvSetPmuLed_Request_LED_STRIP_MODE_MAX = 4
encodeRos2Aimdk_msgsSrvSetPmuLed_Request :: Ros2Aimdk_msgsSrvSetPmuLed_Request -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvSetPmuLed_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvSetPmuLed_Request_request value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsSrvSetPmuLed_Request_trace_id value)
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsSrvSetPmuLed_Request_led_strip_mode value))
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsSrvSetPmuLed_Request_r value))
  b4 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsSrvSetPmuLed_Request_g value))
  b5 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsSrvSetPmuLed_Request_b value))
  b6 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsSrvSetPmuLed_Request_priority value))
  b7 <- W.encodeBool (ros2Aimdk_msgsSrvSetPmuLed_Request_reset_priority value)
  W.bounded 149 [b0, b1, b2, b3, b4, b5, b6, b7]
readRos2Aimdk_msgsSrvSetPmuLed_Request :: W.Decoder Ros2Aimdk_msgsSrvSetPmuLed_Request
readRos2Aimdk_msgsSrvSetPmuLed_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  a1 <- W.text 128 True
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- fromIntegral <$> W.unsigned 1
  a4 <- fromIntegral <$> W.unsigned 1
  a5 <- fromIntegral <$> W.unsigned 1
  a6 <- fromIntegral <$> W.signed 4
  a7 <- W.boolean
  let value = Ros2Aimdk_msgsSrvSetPmuLed_Request a0 a1 a2 a3 a4 a5 a6 a7
  case encodeRos2Aimdk_msgsSrvSetPmuLed_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetPmuLed_Request :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvSetPmuLed_Request
decodeRos2Aimdk_msgsSrvSetPmuLed_Request = W.runDecoder 149 readRos2Aimdk_msgsSrvSetPmuLed_Request
instance Canonical Ros2Aimdk_msgsSrvSetPmuLed_Request where
  maximumBytes _ = 149
  encodeValue = encodeRos2Aimdk_msgsSrvSetPmuLed_Request
  readValue = readRos2Aimdk_msgsSrvSetPmuLed_Request
data Ros2Aimdk_msgsSrvSetPmuLed_Response = Ros2Aimdk_msgsSrvSetPmuLed_Response
  {
    -- | \@brief aimdk_msgs/srv/SetPmuLed_Response.header: aimdk_msgs/msg/ResponseHeader.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetPmuLed_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetPmuLed_Response_header :: Ros2Aimdk_msgsMsgResponseHeader
  ,
    -- | \@brief aimdk_msgs/srv/SetPmuLed_Response.status_code: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetPmuLed_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetPmuLed_Response_status_code :: Word16
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvSetPmuLed_Response :: Ros2Aimdk_msgsSrvSetPmuLed_Response
defaultRos2Aimdk_msgsSrvSetPmuLed_Response = Ros2Aimdk_msgsSrvSetPmuLed_Response
    (defaultRos2Aimdk_msgsMsgResponseHeader) (0)
ros2Aimdk_msgsSrvSetPmuLed_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvSetPmuLed_ResponseCodecIdentity =
    "UWVMROS1_0408d54ce93e19d7299d79ee7797dc9b3511b3f5c37fd97a3b3d7d193cefcd28"
encodeRos2Aimdk_msgsSrvSetPmuLed_Response :: Ros2Aimdk_msgsSrvSetPmuLed_Response -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvSetPmuLed_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgResponseHeader (ros2Aimdk_msgsSrvSetPmuLed_Response_header value)
  b1 <- W.encodeUnsigned 2 (fromIntegral (ros2Aimdk_msgsSrvSetPmuLed_Response_status_code value))
  W.bounded 18 [b0, b1]
readRos2Aimdk_msgsSrvSetPmuLed_Response :: W.Decoder Ros2Aimdk_msgsSrvSetPmuLed_Response
readRos2Aimdk_msgsSrvSetPmuLed_Response = do
  a0 <- readRos2Aimdk_msgsMsgResponseHeader
  a1 <- fromIntegral <$> W.unsigned 2
  let value = Ros2Aimdk_msgsSrvSetPmuLed_Response a0 a1
  case encodeRos2Aimdk_msgsSrvSetPmuLed_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetPmuLed_Response :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvSetPmuLed_Response
decodeRos2Aimdk_msgsSrvSetPmuLed_Response = W.runDecoder 18 readRos2Aimdk_msgsSrvSetPmuLed_Response
instance Canonical Ros2Aimdk_msgsSrvSetPmuLed_Response where
  maximumBytes _ = 18
  encodeValue = encodeRos2Aimdk_msgsSrvSetPmuLed_Response
  readValue = readRos2Aimdk_msgsSrvSetPmuLed_Response
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
