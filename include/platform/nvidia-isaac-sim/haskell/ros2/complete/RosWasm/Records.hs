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
data Ros2Sensor_msgsMsgJointState = Ros2Sensor_msgsMsgJointState
  {
    -- | \@brief sensor_msgs/msg/JointState.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief sensor_msgs/msg/JointState.name: string; 0..64 elements; each string is 0..64 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_name :: [T.Text]
  ,
    -- | \@brief sensor_msgs/msg/JointState.position: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_position :: [Double]
  ,
    -- | \@brief sensor_msgs/msg/JointState.velocity: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_velocity :: [Double]
  ,
    -- | \@brief sensor_msgs/msg/JointState.effort: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_effort :: [Double]
  } deriving (Eq, Show)
defaultRos2Sensor_msgsMsgJointState :: Ros2Sensor_msgsMsgJointState
defaultRos2Sensor_msgsMsgJointState = Ros2Sensor_msgsMsgJointState (defaultRos2Std_msgsMsgHeader) ([]) ([]) ([]) ([])
ros2Sensor_msgsMsgJointStateCodecIdentity :: String
ros2Sensor_msgsMsgJointStateCodecIdentity = "UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac"
encodeRos2Sensor_msgsMsgJointState :: Ros2Sensor_msgsMsgJointState -> Either Word32 B.ByteString
encodeRos2Sensor_msgsMsgJointState value = do
  if (length (ros2Sensor_msgsMsgJointState_name value) /= 0 && length (ros2Sensor_msgsMsgJointState_position value) /= 0
      && length (ros2Sensor_msgsMsgJointState_name value) /= length (ros2Sensor_msgsMsgJointState_position value)) || (
      length (ros2Sensor_msgsMsgJointState_name value) /= 0 && length (ros2Sensor_msgsMsgJointState_velocity value) /= 0
      && length (ros2Sensor_msgsMsgJointState_name value) /= length (ros2Sensor_msgsMsgJointState_velocity value)) || (
      length (ros2Sensor_msgsMsgJointState_name value) /= 0 && length (ros2Sensor_msgsMsgJointState_effort value) /= 0
      && length (ros2Sensor_msgsMsgJointState_name value) /= length (ros2Sensor_msgsMsgJointState_effort value)) || (
      length (ros2Sensor_msgsMsgJointState_position value) /= 0 && length (ros2Sensor_msgsMsgJointState_velocity value)
      /= 0 && length (ros2Sensor_msgsMsgJointState_position value) /= length (ros2Sensor_msgsMsgJointState_velocity
      value)) || (length (ros2Sensor_msgsMsgJointState_position value) /= 0 && length (
      ros2Sensor_msgsMsgJointState_effort value) /= 0 && length (ros2Sensor_msgsMsgJointState_position value) /= length
      (ros2Sensor_msgsMsgJointState_effort value)) || (length (ros2Sensor_msgsMsgJointState_velocity value) /= 0 &&
      length (ros2Sensor_msgsMsgJointState_effort value) /= 0 && length (ros2Sensor_msgsMsgJointState_velocity value) /=
      length (ros2Sensor_msgsMsgJointState_effort value)) then Left 22 else Right ()
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Sensor_msgsMsgJointState_header value)
  if length (ros2Sensor_msgsMsgJointState_name value) > 64 then Left 22 else Right ()
  prefix1 <- W.encodeCount 64 (length (ros2Sensor_msgsMsgJointState_name value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 64 True (e)) (ros2Sensor_msgsMsgJointState_name value)
  if length (ros2Sensor_msgsMsgJointState_position value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros2Sensor_msgsMsgJointState_position value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_position value)
  if length (ros2Sensor_msgsMsgJointState_velocity value) > 64 then Left 22 else Right ()
  prefix3 <- W.encodeCount 64 (length (ros2Sensor_msgsMsgJointState_velocity value))
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_velocity value)
  if length (ros2Sensor_msgsMsgJointState_effort value) > 64 then Left 22 else Right ()
  prefix4 <- W.encodeCount 64 (length (ros2Sensor_msgsMsgJointState_effort value))
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_effort value)
  W.bounded 5980 [b0, prefix1, b1, prefix2, b2, prefix3, b3, prefix4, b4]
readRos2Sensor_msgsMsgJointState :: W.Decoder Ros2Sensor_msgsMsgJointState
readRos2Sensor_msgsMsgJointState = do
  a0 <- readRos2Std_msgsMsgHeader
  count1 <- W.count 64
  a1 <- replicateM count1 (W.text 64 True)
  count2 <- W.count 64
  a2 <- replicateM count2 (W.float64)
  count3 <- W.count 64
  a3 <- replicateM count3 (W.float64)
  count4 <- W.count 64
  a4 <- replicateM count4 (W.float64)
  let value = Ros2Sensor_msgsMsgJointState a0 a1 a2 a3 a4
  case encodeRos2Sensor_msgsMsgJointState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Sensor_msgsMsgJointState :: B.ByteString -> Either Word32 Ros2Sensor_msgsMsgJointState
decodeRos2Sensor_msgsMsgJointState = W.runDecoder 5980 readRos2Sensor_msgsMsgJointState
instance Canonical Ros2Sensor_msgsMsgJointState where
  maximumBytes _ = 5980
  encodeValue = encodeRos2Sensor_msgsMsgJointState
  readValue = readRos2Sensor_msgsMsgJointState
data Ros2Uwvm_isaac_sim_bridgeMsgClockEvent = Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
  {
    -- | \@brief uwvm_isaac_sim_bridge/msg/ClockEvent.kind: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeMsgClockEvent_kind :: Word8
  ,
    -- | \@brief uwvm_isaac_sim_bridge/msg/ClockEvent.phase: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeMsgClockEvent_phase :: Word8
  ,
    -- | \@brief uwvm_isaac_sim_bridge/msg/ClockEvent.frame: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeMsgClockEvent_frame :: Word32
  ,
    -- | \@brief uwvm_isaac_sim_bridge/msg/ClockEvent.sec: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeMsgClockEvent_sec :: Int32
  ,
    -- | \@brief uwvm_isaac_sim_bridge/msg/ClockEvent.nanosec: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeMsgClockEvent_nanosec :: Word32
  } deriving (Eq, Show)
defaultRos2Uwvm_isaac_sim_bridgeMsgClockEvent :: Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
defaultRos2Uwvm_isaac_sim_bridgeMsgClockEvent = Ros2Uwvm_isaac_sim_bridgeMsgClockEvent (0) (0) (0) (0) (0)
ros2Uwvm_isaac_sim_bridgeMsgClockEventCodecIdentity :: String
ros2Uwvm_isaac_sim_bridgeMsgClockEventCodecIdentity =
    "UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6"
ros2Uwvm_isaac_sim_bridgeMsgClockEvent_AUTOMATIC :: Word8
ros2Uwvm_isaac_sim_bridgeMsgClockEvent_AUTOMATIC = 1
ros2Uwvm_isaac_sim_bridgeMsgClockEvent_MANUAL :: Word8
ros2Uwvm_isaac_sim_bridgeMsgClockEvent_MANUAL = 2
encodeRos2Uwvm_isaac_sim_bridgeMsgClockEvent :: Ros2Uwvm_isaac_sim_bridgeMsgClockEvent -> Either Word32 B.ByteString
encodeRos2Uwvm_isaac_sim_bridgeMsgClockEvent value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Uwvm_isaac_sim_bridgeMsgClockEvent_kind value))
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Uwvm_isaac_sim_bridgeMsgClockEvent_phase value))
  b2 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_isaac_sim_bridgeMsgClockEvent_frame value))
  b3 <- W.encodeSigned 4 (fromIntegral (ros2Uwvm_isaac_sim_bridgeMsgClockEvent_sec value))
  b4 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_isaac_sim_bridgeMsgClockEvent_nanosec value))
  W.bounded 14 [b0, b1, b2, b3, b4]
readRos2Uwvm_isaac_sim_bridgeMsgClockEvent :: W.Decoder Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
readRos2Uwvm_isaac_sim_bridgeMsgClockEvent = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- fromIntegral <$> W.unsigned 4
  a3 <- fromIntegral <$> W.signed 4
  a4 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Uwvm_isaac_sim_bridgeMsgClockEvent a0 a1 a2 a3 a4
  case encodeRos2Uwvm_isaac_sim_bridgeMsgClockEvent value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_isaac_sim_bridgeMsgClockEvent :: B.ByteString -> Either Word32 Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
decodeRos2Uwvm_isaac_sim_bridgeMsgClockEvent = W.runDecoder 14 readRos2Uwvm_isaac_sim_bridgeMsgClockEvent
instance Canonical Ros2Uwvm_isaac_sim_bridgeMsgClockEvent where
  maximumBytes _ = 14
  encodeValue = encodeRos2Uwvm_isaac_sim_bridgeMsgClockEvent
  readValue = readRos2Uwvm_isaac_sim_bridgeMsgClockEvent
data Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request
  {
    -- | \@brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.operation: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_operation :: Word8
  ,
    -- | \@brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.session_nonce: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_session_nonce :: Word64
  ,
    -- | \@brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.request_sequence: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_request_sequence :: Word32
  ,
    -- | \@brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.phase: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_phase :: Word8
  ,
    -- | \@brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.frame: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_frame :: Word32
  ,
    -- | \@brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.impulse: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_impulse :: Bool
  ,
    -- | \@brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.extra_update: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_extra_update :: Bool
  ,
    -- | \@brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.pacing_milliseconds: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_pacing_milliseconds :: Word16
  } deriving (Eq, Show)
defaultRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request :: Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request
defaultRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request (0) (0) (0) (
    0) (0) (False) (False) (0)
ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodecIdentity :: String
ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodecIdentity =
    "UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19"
ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_START :: Word8
ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_START = 1
ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_STEP :: Word8
ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_STEP = 2
ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_FINISH :: Word8
ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_FINISH = 3
ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_CANCEL :: Word8
ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_CANCEL = 4
encodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request :: Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request -> Either
    Word32 B.ByteString
encodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_operation value))
  b1 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_session_nonce value))
  b2 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_request_sequence value))
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_phase value))
  b4 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_frame value))
  b5 <- W.encodeBool (ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_impulse value)
  b6 <- W.encodeBool (ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_extra_update value)
  b7 <- W.encodeUnsigned 2 (fromIntegral (ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_pacing_milliseconds value))
  W.bounded 22 [b0, b1, b2, b3, b4, b5, b6, b7]
readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request :: W.Decoder Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request
readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- fromIntegral <$> W.unsigned 8
  a2 <- fromIntegral <$> W.unsigned 4
  a3 <- fromIntegral <$> W.unsigned 1
  a4 <- fromIntegral <$> W.unsigned 4
  a5 <- W.boolean
  a6 <- W.boolean
  a7 <- fromIntegral <$> W.unsigned 2
  let value = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request a0 a1 a2 a3 a4 a5 a6 a7
  case encodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request
decodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request = W.runDecoder 22
    readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request
instance Canonical Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request where
  maximumBytes _ = 22
  encodeValue = encodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request
  readValue = readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request
data Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response
  {
    -- | \@brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_status :: Word32
  ,
    -- | \@brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.session_nonce: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_session_nonce :: Word64
  ,
    -- | \@brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.request_sequence: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_request_sequence :: Word32
  ,
    -- | \@brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.state: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_state :: Word8
  ,
    -- | \@brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.actual_app_updates: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_actual_app_updates :: Word64
  ,
    -- | \@brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.completed_steps: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_completed_steps :: Word32
  ,
    -- | \@brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.has_event: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_has_event :: Bool
  ,
    -- | \@brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.event: uwvm_isaac_sim_bridge/msg/ClockEvent.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_event :: Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
  ,
    -- | \@brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.cleanup_status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_cleanup_status :: Word32
  } deriving (Eq, Show)
defaultRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response :: Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response
defaultRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response (0) (0) (0)
    (0) (0) (0) (False) (defaultRos2Uwvm_isaac_sim_bridgeMsgClockEvent) (0)
ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodecIdentity :: String
ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodecIdentity =
    "UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502"
encodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response :: Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response -> Either
    Word32 B.ByteString
encodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_status value))
  b1 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_session_nonce value))
  b2 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_request_sequence value))
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_state value))
  b4 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_actual_app_updates value))
  b5 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_completed_steps value))
  b6 <- W.encodeBool (ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_has_event value)
  b7 <- encodeRos2Uwvm_isaac_sim_bridgeMsgClockEvent (ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_event value)
  b8 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_cleanup_status value))
  W.bounded 48 [b0, b1, b2, b3, b4, b5, b6, b7, b8]
readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response :: W.Decoder Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response
readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- fromIntegral <$> W.unsigned 8
  a2 <- fromIntegral <$> W.unsigned 4
  a3 <- fromIntegral <$> W.unsigned 1
  a4 <- fromIntegral <$> W.unsigned 8
  a5 <- fromIntegral <$> W.unsigned 4
  a6 <- W.boolean
  a7 <- readRos2Uwvm_isaac_sim_bridgeMsgClockEvent
  a8 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response a0 a1 a2 a3 a4 a5 a6 a7 a8
  case encodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response
decodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response = W.runDecoder 48
    readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response
instance Canonical Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response where
  maximumBytes _ = 48
  encodeValue = encodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response
  readValue = readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response
