-- @file Records.hs
-- @brief Full agibot haskell codecs and original record metadata.
-- @details Complete agibot ros2_sdk_v1_0_0_rl values in haskell. 19 original records retain 71 fields and 19
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
data Ros2Aimdk_msgsMsgModuleChannelInfo = Ros2Aimdk_msgsMsgModuleChannelInfo
  {
    -- | \@brief aimdk_msgs/msg/ModuleChannelInfo.name: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleChannelInfo_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/ModuleChannelInfo.type: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleChannelInfo_type :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/ModuleChannelInfo.frequency: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleChannelInfo_frequency :: Double
  ,
    -- | \@brief aimdk_msgs/msg/ModuleChannelInfo.min_time_diff: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleChannelInfo_min_time_diff :: Double
  ,
    -- | \@brief aimdk_msgs/msg/ModuleChannelInfo.max_time_diff: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleChannelInfo_max_time_diff :: Double
  ,
    -- | \@brief aimdk_msgs/msg/ModuleChannelInfo.std_dev: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleChannelInfo_std_dev :: Double
  ,
    -- | \@brief aimdk_msgs/msg/ModuleChannelInfo.window_size: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleChannelInfo_window_size :: Int32
  ,
    -- | \@brief aimdk_msgs/msg/ModuleChannelInfo.timeout_threshold: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleChannelInfo_timeout_threshold :: Double
  ,
    -- | \@brief aimdk_msgs/msg/ModuleChannelInfo.is_active: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleChannelInfo_is_active :: Bool
  ,
    -- | \@brief aimdk_msgs/msg/ModuleChannelInfo.is_timeout: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleChannelInfo_is_timeout :: Bool
  ,
    -- | \@brief aimdk_msgs/msg/ModuleChannelInfo.backends: string; 0..4 elements; each string is 0..64 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleChannelInfo_backends :: [T.Text]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgModuleChannelInfo :: Ros2Aimdk_msgsMsgModuleChannelInfo
defaultRos2Aimdk_msgsMsgModuleChannelInfo = Ros2Aimdk_msgsMsgModuleChannelInfo (T.empty) (T.empty) (0) (0) (0) (0)
    (0) (0) (False) (False) ([])
ros2Aimdk_msgsMsgModuleChannelInfoCodecIdentity :: String
ros2Aimdk_msgsMsgModuleChannelInfoCodecIdentity =
    "UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696"
encodeRos2Aimdk_msgsMsgModuleChannelInfo :: Ros2Aimdk_msgsMsgModuleChannelInfo -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgModuleChannelInfo value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgModuleChannelInfo_name value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsMsgModuleChannelInfo_type value)
  b2 <- W.encodeFloat64 (ros2Aimdk_msgsMsgModuleChannelInfo_frequency value)
  b3 <- W.encodeFloat64 (ros2Aimdk_msgsMsgModuleChannelInfo_min_time_diff value)
  b4 <- W.encodeFloat64 (ros2Aimdk_msgsMsgModuleChannelInfo_max_time_diff value)
  b5 <- W.encodeFloat64 (ros2Aimdk_msgsMsgModuleChannelInfo_std_dev value)
  b6 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgModuleChannelInfo_window_size value))
  b7 <- W.encodeFloat64 (ros2Aimdk_msgsMsgModuleChannelInfo_timeout_threshold value)
  b8 <- W.encodeBool (ros2Aimdk_msgsMsgModuleChannelInfo_is_active value)
  b9 <- W.encodeBool (ros2Aimdk_msgsMsgModuleChannelInfo_is_timeout value)
  if length (ros2Aimdk_msgsMsgModuleChannelInfo_backends value) > 4 then Left 22 else Right ()
  prefix10 <- W.encodeCount 4 (length (ros2Aimdk_msgsMsgModuleChannelInfo_backends value))
  b10 <- B.concat <$> mapM (\e -> W.encodeText 64 True (e)) (ros2Aimdk_msgsMsgModuleChannelInfo_backends value)
  W.bounded 586 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, prefix10, b10]
readRos2Aimdk_msgsMsgModuleChannelInfo :: W.Decoder Ros2Aimdk_msgsMsgModuleChannelInfo
readRos2Aimdk_msgsMsgModuleChannelInfo = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- W.float64
  a3 <- W.float64
  a4 <- W.float64
  a5 <- W.float64
  a6 <- fromIntegral <$> W.signed 4
  a7 <- W.float64
  a8 <- W.boolean
  a9 <- W.boolean
  count10 <- W.count 4
  a10 <- replicateM count10 (W.text 64 True)
  let value = Ros2Aimdk_msgsMsgModuleChannelInfo a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
  case encodeRos2Aimdk_msgsMsgModuleChannelInfo value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgModuleChannelInfo :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgModuleChannelInfo
decodeRos2Aimdk_msgsMsgModuleChannelInfo = W.runDecoder 586 readRos2Aimdk_msgsMsgModuleChannelInfo
instance Canonical Ros2Aimdk_msgsMsgModuleChannelInfo where
  maximumBytes _ = 586
  encodeValue = encodeRos2Aimdk_msgsMsgModuleChannelInfo
  readValue = readRos2Aimdk_msgsMsgModuleChannelInfo
data Ros2Aimdk_msgsMsgModuleRpcInfo = Ros2Aimdk_msgsMsgModuleRpcInfo
  {
    -- | \@brief aimdk_msgs/msg/ModuleRpcInfo.name: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleRpcInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleRpcInfo_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/ModuleRpcInfo.req_type: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleRpcInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleRpcInfo_req_type :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/ModuleRpcInfo.res_type: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleRpcInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleRpcInfo_res_type :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/ModuleRpcInfo.backends: string; 0..4 elements; each string is 0..64 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleRpcInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleRpcInfo_backends :: [T.Text]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgModuleRpcInfo :: Ros2Aimdk_msgsMsgModuleRpcInfo
defaultRos2Aimdk_msgsMsgModuleRpcInfo = Ros2Aimdk_msgsMsgModuleRpcInfo (T.empty) (T.empty) (T.empty) ([])
ros2Aimdk_msgsMsgModuleRpcInfoCodecIdentity :: String
ros2Aimdk_msgsMsgModuleRpcInfoCodecIdentity =
    "UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8"
encodeRos2Aimdk_msgsMsgModuleRpcInfo :: Ros2Aimdk_msgsMsgModuleRpcInfo -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgModuleRpcInfo value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgModuleRpcInfo_name value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsMsgModuleRpcInfo_req_type value)
  b2 <- W.encodeText 128 True (ros2Aimdk_msgsMsgModuleRpcInfo_res_type value)
  if length (ros2Aimdk_msgsMsgModuleRpcInfo_backends value) > 4 then Left 22 else Right ()
  prefix3 <- W.encodeCount 4 (length (ros2Aimdk_msgsMsgModuleRpcInfo_backends value))
  b3 <- B.concat <$> mapM (\e -> W.encodeText 64 True (e)) (ros2Aimdk_msgsMsgModuleRpcInfo_backends value)
  W.bounded 672 [b0, b1, b2, prefix3, b3]
readRos2Aimdk_msgsMsgModuleRpcInfo :: W.Decoder Ros2Aimdk_msgsMsgModuleRpcInfo
readRos2Aimdk_msgsMsgModuleRpcInfo = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  count3 <- W.count 4
  a3 <- replicateM count3 (W.text 64 True)
  let value = Ros2Aimdk_msgsMsgModuleRpcInfo a0 a1 a2 a3
  case encodeRos2Aimdk_msgsMsgModuleRpcInfo value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgModuleRpcInfo :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgModuleRpcInfo
decodeRos2Aimdk_msgsMsgModuleRpcInfo = W.runDecoder 672 readRos2Aimdk_msgsMsgModuleRpcInfo
instance Canonical Ros2Aimdk_msgsMsgModuleRpcInfo where
  maximumBytes _ = 672
  encodeValue = encodeRos2Aimdk_msgsMsgModuleRpcInfo
  readValue = readRos2Aimdk_msgsMsgModuleRpcInfo
data Ros2Aimdk_msgsMsgModuleResourceInfo = Ros2Aimdk_msgsMsgModuleResourceInfo
  {
    -- | \@brief aimdk_msgs/msg/ModuleResourceInfo.module_name: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleResourceInfo_module_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/ModuleResourceInfo.rpc_clients: aimdk_msgs/msg/ModuleRpcInfo; 0..2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleResourceInfo_rpc_clients :: [Ros2Aimdk_msgsMsgModuleRpcInfo]
  ,
    -- | \@brief aimdk_msgs/msg/ModuleResourceInfo.rpc_services: aimdk_msgs/msg/ModuleRpcInfo; 0..2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleResourceInfo_rpc_services :: [Ros2Aimdk_msgsMsgModuleRpcInfo]
  ,
    -- | \@brief aimdk_msgs/msg/ModuleResourceInfo.pub_channels: aimdk_msgs/msg/ModuleChannelInfo; 0..2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleResourceInfo_pub_channels :: [Ros2Aimdk_msgsMsgModuleChannelInfo]
  ,
    -- | \@brief aimdk_msgs/msg/ModuleResourceInfo.sub_channels: aimdk_msgs/msg/ModuleChannelInfo; 0..2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgModuleResourceInfo_sub_channels :: [Ros2Aimdk_msgsMsgModuleChannelInfo]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgModuleResourceInfo :: Ros2Aimdk_msgsMsgModuleResourceInfo
defaultRos2Aimdk_msgsMsgModuleResourceInfo = Ros2Aimdk_msgsMsgModuleResourceInfo (T.empty) ([]) ([]) ([]) ([])
ros2Aimdk_msgsMsgModuleResourceInfoCodecIdentity :: String
ros2Aimdk_msgsMsgModuleResourceInfoCodecIdentity =
    "UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f"
encodeRos2Aimdk_msgsMsgModuleResourceInfo :: Ros2Aimdk_msgsMsgModuleResourceInfo -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgModuleResourceInfo value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgModuleResourceInfo_module_name value)
  if length (ros2Aimdk_msgsMsgModuleResourceInfo_rpc_clients value) > 2 then Left 22 else Right ()
  prefix1 <- W.encodeCount 2 (length (ros2Aimdk_msgsMsgModuleResourceInfo_rpc_clients value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgModuleRpcInfo (e))
      (ros2Aimdk_msgsMsgModuleResourceInfo_rpc_clients value)
  if length (ros2Aimdk_msgsMsgModuleResourceInfo_rpc_services value) > 2 then Left 22 else Right ()
  prefix2 <- W.encodeCount 2 (length (ros2Aimdk_msgsMsgModuleResourceInfo_rpc_services value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgModuleRpcInfo (e))
      (ros2Aimdk_msgsMsgModuleResourceInfo_rpc_services value)
  if length (ros2Aimdk_msgsMsgModuleResourceInfo_pub_channels value) > 2 then Left 22 else Right ()
  prefix3 <- W.encodeCount 2 (length (ros2Aimdk_msgsMsgModuleResourceInfo_pub_channels value))
  b3 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgModuleChannelInfo (e))
      (ros2Aimdk_msgsMsgModuleResourceInfo_pub_channels value)
  if length (ros2Aimdk_msgsMsgModuleResourceInfo_sub_channels value) > 2 then Left 22 else Right ()
  prefix4 <- W.encodeCount 2 (length (ros2Aimdk_msgsMsgModuleResourceInfo_sub_channels value))
  b4 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgModuleChannelInfo (e))
      (ros2Aimdk_msgsMsgModuleResourceInfo_sub_channels value)
  W.bounded 5180 [b0, prefix1, b1, prefix2, b2, prefix3, b3, prefix4, b4]
readRos2Aimdk_msgsMsgModuleResourceInfo :: W.Decoder Ros2Aimdk_msgsMsgModuleResourceInfo
readRos2Aimdk_msgsMsgModuleResourceInfo = do
  a0 <- W.text 128 True
  count1 <- W.count 2
  a1 <- replicateM count1 (readRos2Aimdk_msgsMsgModuleRpcInfo)
  count2 <- W.count 2
  a2 <- replicateM count2 (readRos2Aimdk_msgsMsgModuleRpcInfo)
  count3 <- W.count 2
  a3 <- replicateM count3 (readRos2Aimdk_msgsMsgModuleChannelInfo)
  count4 <- W.count 2
  a4 <- replicateM count4 (readRos2Aimdk_msgsMsgModuleChannelInfo)
  let value = Ros2Aimdk_msgsMsgModuleResourceInfo a0 a1 a2 a3 a4
  case encodeRos2Aimdk_msgsMsgModuleResourceInfo value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgModuleResourceInfo :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgModuleResourceInfo
decodeRos2Aimdk_msgsMsgModuleResourceInfo = W.runDecoder 5180 readRos2Aimdk_msgsMsgModuleResourceInfo
instance Canonical Ros2Aimdk_msgsMsgModuleResourceInfo where
  maximumBytes _ = 5180
  encodeValue = encodeRos2Aimdk_msgsMsgModuleResourceInfo
  readValue = readRos2Aimdk_msgsMsgModuleResourceInfo
data Ros2Aimdk_msgsMsgThreadResourceInfo = Ros2Aimdk_msgsMsgThreadResourceInfo
  {
    -- | \@brief aimdk_msgs/msg/ThreadResourceInfo.thread_id: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgThreadResourceInfo_thread_id :: Word64
  ,
    -- | \@brief aimdk_msgs/msg/ThreadResourceInfo.thread_name: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgThreadResourceInfo_thread_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/ThreadResourceInfo.cpu_usage_ratio: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgThreadResourceInfo_cpu_usage_ratio :: Double
  ,
    -- | \@brief aimdk_msgs/msg/ThreadResourceInfo.cpu_sched_policy: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgThreadResourceInfo_cpu_sched_policy :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/ThreadResourceInfo.cpu_sched_priority: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgThreadResourceInfo_cpu_sched_priority :: Int32
  ,
    -- | \@brief aimdk_msgs/msg/ThreadResourceInfo.bounding_cpus: int32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgThreadResourceInfo_bounding_cpus :: [Int32]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgThreadResourceInfo :: Ros2Aimdk_msgsMsgThreadResourceInfo
defaultRos2Aimdk_msgsMsgThreadResourceInfo = Ros2Aimdk_msgsMsgThreadResourceInfo (0) (T.empty) (0) (T.empty) (0)
    ([])
ros2Aimdk_msgsMsgThreadResourceInfoCodecIdentity :: String
ros2Aimdk_msgsMsgThreadResourceInfoCodecIdentity =
    "UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15"
encodeRos2Aimdk_msgsMsgThreadResourceInfo :: Ros2Aimdk_msgsMsgThreadResourceInfo -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgThreadResourceInfo value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Aimdk_msgsMsgThreadResourceInfo_thread_id value))
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsMsgThreadResourceInfo_thread_name value)
  b2 <- W.encodeFloat64 (ros2Aimdk_msgsMsgThreadResourceInfo_cpu_usage_ratio value)
  b3 <- W.encodeText 128 True (ros2Aimdk_msgsMsgThreadResourceInfo_cpu_sched_policy value)
  b4 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgThreadResourceInfo_cpu_sched_priority value))
  if length (ros2Aimdk_msgsMsgThreadResourceInfo_bounding_cpus value) > 16 then Left 22 else Right ()
  prefix5 <- W.encodeCount 16 (length (ros2Aimdk_msgsMsgThreadResourceInfo_bounding_cpus value))
  b5 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e)))
      (ros2Aimdk_msgsMsgThreadResourceInfo_bounding_cpus value)
  W.bounded 352 [b0, b1, b2, b3, b4, prefix5, b5]
readRos2Aimdk_msgsMsgThreadResourceInfo :: W.Decoder Ros2Aimdk_msgsMsgThreadResourceInfo
readRos2Aimdk_msgsMsgThreadResourceInfo = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.text 128 True
  a2 <- W.float64
  a3 <- W.text 128 True
  a4 <- fromIntegral <$> W.signed 4
  count5 <- W.count 16
  a5 <- replicateM count5 (fromIntegral <$> W.signed 4)
  let value = Ros2Aimdk_msgsMsgThreadResourceInfo a0 a1 a2 a3 a4 a5
  case encodeRos2Aimdk_msgsMsgThreadResourceInfo value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgThreadResourceInfo :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgThreadResourceInfo
decodeRos2Aimdk_msgsMsgThreadResourceInfo = W.runDecoder 352 readRos2Aimdk_msgsMsgThreadResourceInfo
instance Canonical Ros2Aimdk_msgsMsgThreadResourceInfo where
  maximumBytes _ = 352
  encodeValue = encodeRos2Aimdk_msgsMsgThreadResourceInfo
  readValue = readRos2Aimdk_msgsMsgThreadResourceInfo
data Ros2Aimdk_msgsMsgProcessResourceInfo = Ros2Aimdk_msgsMsgProcessResourceInfo
  {
    -- | \@brief aimdk_msgs/msg/ProcessResourceInfo.process_id: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgProcessResourceInfo_process_id :: Word64
  ,
    -- | \@brief aimdk_msgs/msg/ProcessResourceInfo.process_name: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgProcessResourceInfo_process_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/ProcessResourceInfo.process_mem_usage: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgProcessResourceInfo_process_mem_usage :: Word64
  ,
    -- | \@brief aimdk_msgs/msg/ProcessResourceInfo.process_mem_usage_ratio: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgProcessResourceInfo_process_mem_usage_ratio :: Double
  ,
    -- | \@brief aimdk_msgs/msg/ProcessResourceInfo.process_cpu_usage_ratio: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgProcessResourceInfo_process_cpu_usage_ratio :: Double
  ,
    -- | \@brief aimdk_msgs/msg/ProcessResourceInfo.thread_count: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgProcessResourceInfo_thread_count :: Word64
  ,
    -- | \@brief aimdk_msgs/msg/ProcessResourceInfo.threads: aimdk_msgs/msg/ThreadResourceInfo; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgProcessResourceInfo_threads :: [Ros2Aimdk_msgsMsgThreadResourceInfo]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgProcessResourceInfo :: Ros2Aimdk_msgsMsgProcessResourceInfo
defaultRos2Aimdk_msgsMsgProcessResourceInfo = Ros2Aimdk_msgsMsgProcessResourceInfo (0) (T.empty) (0) (0) (0) (0)
    ([])
ros2Aimdk_msgsMsgProcessResourceInfoCodecIdentity :: String
ros2Aimdk_msgsMsgProcessResourceInfoCodecIdentity =
    "UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550"
encodeRos2Aimdk_msgsMsgProcessResourceInfo :: Ros2Aimdk_msgsMsgProcessResourceInfo -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgProcessResourceInfo value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Aimdk_msgsMsgProcessResourceInfo_process_id value))
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsMsgProcessResourceInfo_process_name value)
  b2 <- W.encodeUnsigned 8 (fromIntegral (ros2Aimdk_msgsMsgProcessResourceInfo_process_mem_usage value))
  b3 <- W.encodeFloat64 (ros2Aimdk_msgsMsgProcessResourceInfo_process_mem_usage_ratio value)
  b4 <- W.encodeFloat64 (ros2Aimdk_msgsMsgProcessResourceInfo_process_cpu_usage_ratio value)
  b5 <- W.encodeUnsigned 8 (fromIntegral (ros2Aimdk_msgsMsgProcessResourceInfo_thread_count value))
  if length (ros2Aimdk_msgsMsgProcessResourceInfo_threads value) > 4 then Left 22 else Right ()
  prefix6 <- W.encodeCount 4 (length (ros2Aimdk_msgsMsgProcessResourceInfo_threads value))
  b6 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgThreadResourceInfo (e))
      (ros2Aimdk_msgsMsgProcessResourceInfo_threads value)
  W.bounded 1584 [b0, b1, b2, b3, b4, b5, prefix6, b6]
readRos2Aimdk_msgsMsgProcessResourceInfo :: W.Decoder Ros2Aimdk_msgsMsgProcessResourceInfo
readRos2Aimdk_msgsMsgProcessResourceInfo = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.text 128 True
  a2 <- fromIntegral <$> W.unsigned 8
  a3 <- W.float64
  a4 <- W.float64
  a5 <- fromIntegral <$> W.unsigned 8
  count6 <- W.count 4
  a6 <- replicateM count6 (readRos2Aimdk_msgsMsgThreadResourceInfo)
  let value = Ros2Aimdk_msgsMsgProcessResourceInfo a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Aimdk_msgsMsgProcessResourceInfo value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgProcessResourceInfo :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgProcessResourceInfo
decodeRos2Aimdk_msgsMsgProcessResourceInfo = W.runDecoder 1584 readRos2Aimdk_msgsMsgProcessResourceInfo
instance Canonical Ros2Aimdk_msgsMsgProcessResourceInfo where
  maximumBytes _ = 1584
  encodeValue = encodeRos2Aimdk_msgsMsgProcessResourceInfo
  readValue = readRos2Aimdk_msgsMsgProcessResourceInfo
data Ros2Aimdk_msgsMsgProcessInfo = Ros2Aimdk_msgsMsgProcessInfo
  {
    -- | \@brief aimdk_msgs/msg/ProcessInfo.header: aimdk_msgs/msg/MessageHeader.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgProcessInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgProcessInfo_header :: Ros2Aimdk_msgsMsgMessageHeader
  ,
    -- | \@brief aimdk_msgs/msg/ProcessInfo.app_name: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgProcessInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgProcessInfo_app_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/ProcessInfo.resource: aimdk_msgs/msg/ProcessResourceInfo.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgProcessInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgProcessInfo_resource :: Ros2Aimdk_msgsMsgProcessResourceInfo
  ,
    -- | \@brief aimdk_msgs/msg/ProcessInfo.modules: aimdk_msgs/msg/ModuleResourceInfo; 0..2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgProcessInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgProcessInfo_modules :: [Ros2Aimdk_msgsMsgModuleResourceInfo]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgProcessInfo :: Ros2Aimdk_msgsMsgProcessInfo
defaultRos2Aimdk_msgsMsgProcessInfo = Ros2Aimdk_msgsMsgProcessInfo (defaultRos2Aimdk_msgsMsgMessageHeader) (T.empty)
    (defaultRos2Aimdk_msgsMsgProcessResourceInfo) ([])
ros2Aimdk_msgsMsgProcessInfoCodecIdentity :: String
ros2Aimdk_msgsMsgProcessInfoCodecIdentity =
    "UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996"
encodeRos2Aimdk_msgsMsgProcessInfo :: Ros2Aimdk_msgsMsgProcessInfo -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgProcessInfo value = do
  b0 <- encodeRos2Aimdk_msgsMsgMessageHeader (ros2Aimdk_msgsMsgProcessInfo_header value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsMsgProcessInfo_app_name value)
  b2 <- encodeRos2Aimdk_msgsMsgProcessResourceInfo (ros2Aimdk_msgsMsgProcessInfo_resource value)
  if length (ros2Aimdk_msgsMsgProcessInfo_modules value) > 2 then Left 22 else Right ()
  prefix3 <- W.encodeCount 2 (length (ros2Aimdk_msgsMsgProcessInfo_modules value))
  b3 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgModuleResourceInfo (e))
      (ros2Aimdk_msgsMsgProcessInfo_modules value)
  W.bounded 12232 [b0, b1, b2, prefix3, b3]
readRos2Aimdk_msgsMsgProcessInfo :: W.Decoder Ros2Aimdk_msgsMsgProcessInfo
readRos2Aimdk_msgsMsgProcessInfo = do
  a0 <- readRos2Aimdk_msgsMsgMessageHeader
  a1 <- W.text 128 True
  a2 <- readRos2Aimdk_msgsMsgProcessResourceInfo
  count3 <- W.count 2
  a3 <- replicateM count3 (readRos2Aimdk_msgsMsgModuleResourceInfo)
  let value = Ros2Aimdk_msgsMsgProcessInfo a0 a1 a2 a3
  case encodeRos2Aimdk_msgsMsgProcessInfo value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgProcessInfo :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgProcessInfo
decodeRos2Aimdk_msgsMsgProcessInfo = W.runDecoder 12232 readRos2Aimdk_msgsMsgProcessInfo
instance Canonical Ros2Aimdk_msgsMsgProcessInfo where
  maximumBytes _ = 12232
  encodeValue = encodeRos2Aimdk_msgsMsgProcessInfo
  readValue = readRos2Aimdk_msgsMsgProcessInfo
