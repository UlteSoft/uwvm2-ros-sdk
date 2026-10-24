-- Generated complete canonical values; all field selectors are record-qualified.
module Flexiv.Controllercorehumble.Records where
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
data Ros2Builtin_interfacesMsgDuration = Ros2Builtin_interfacesMsgDuration
  {
    -- | \@brief builtin_interfaces/msg/Duration.sec: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Builtin_interfacesMsgDuration; share/platform/ros/haskell/API-CONTRACT.md
    ros2Builtin_interfacesMsgDuration_sec :: Int32
  ,
    -- | \@brief builtin_interfaces/msg/Duration.nanosec: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Builtin_interfacesMsgDuration; share/platform/ros/haskell/API-CONTRACT.md
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
    -- | \@brief std_msgs/msg/Header.frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
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
ros2Std_msgsMsgHeaderCodecIdentity = "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b"
encodeRos2Std_msgsMsgHeader :: Ros2Std_msgsMsgHeader -> Either Word32 B.ByteString
encodeRos2Std_msgsMsgHeader value = do
  b0 <- encodeRos2Builtin_interfacesMsgTime (ros2Std_msgsMsgHeader_stamp value)
  b1 <- W.encodeText 256 True (ros2Std_msgsMsgHeader_frame_id value)
  W.bounded 268 [b0, b1]
readRos2Std_msgsMsgHeader :: W.Decoder Ros2Std_msgsMsgHeader
readRos2Std_msgsMsgHeader = do
  a0 <- readRos2Builtin_interfacesMsgTime
  a1 <- W.text 256 True
  let value = Ros2Std_msgsMsgHeader a0 a1
  case encodeRos2Std_msgsMsgHeader value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Std_msgsMsgHeader :: B.ByteString -> Either Word32 Ros2Std_msgsMsgHeader
decodeRos2Std_msgsMsgHeader = W.runDecoder 268 readRos2Std_msgsMsgHeader
instance Canonical Ros2Std_msgsMsgHeader where
  maximumBytes _ = 268
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
    -- | \@brief sensor_msgs/msg/JointState.name: string; 0..32 elements; each string is 0..256 bytes; strict UTF-8 with
    -- | no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_name :: [T.Text]
  ,
    -- | \@brief sensor_msgs/msg/JointState.position: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_position :: [Double]
  ,
    -- | \@brief sensor_msgs/msg/JointState.velocity: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_velocity :: [Double]
  ,
    -- | \@brief sensor_msgs/msg/JointState.effort: float64; 0..32 elements.
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
ros2Sensor_msgsMsgJointStateCodecIdentity = "UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556"
encodeRos2Sensor_msgsMsgJointState :: Ros2Sensor_msgsMsgJointState -> Either Word32 B.ByteString
encodeRos2Sensor_msgsMsgJointState value = do
  if (length (ros2Sensor_msgsMsgJointState_name value) /= 0 && length (ros2Sensor_msgsMsgJointState_position value) /= 0 && length
          (ros2Sensor_msgsMsgJointState_name value) /= length (ros2Sensor_msgsMsgJointState_position value)) || (length
          (ros2Sensor_msgsMsgJointState_name value) /= 0 && length (ros2Sensor_msgsMsgJointState_velocity value) /= 0 && length
          (ros2Sensor_msgsMsgJointState_name value) /= length (ros2Sensor_msgsMsgJointState_velocity value)) || (length
          (ros2Sensor_msgsMsgJointState_name value) /= 0 && length (ros2Sensor_msgsMsgJointState_effort value) /= 0 && length
          (ros2Sensor_msgsMsgJointState_name value) /= length (ros2Sensor_msgsMsgJointState_effort value)) || (length
          (ros2Sensor_msgsMsgJointState_position value) /= 0 && length (ros2Sensor_msgsMsgJointState_velocity value) /= 0 && length
          (ros2Sensor_msgsMsgJointState_position value) /= length (ros2Sensor_msgsMsgJointState_velocity value)) || (length
          (ros2Sensor_msgsMsgJointState_position value) /= 0 && length (ros2Sensor_msgsMsgJointState_effort value) /= 0 && length
          (ros2Sensor_msgsMsgJointState_position value) /= length (ros2Sensor_msgsMsgJointState_effort value)) || (length
          (ros2Sensor_msgsMsgJointState_velocity value) /= 0 && length (ros2Sensor_msgsMsgJointState_effort value) /= 0 && length
          (ros2Sensor_msgsMsgJointState_velocity value) /= length (ros2Sensor_msgsMsgJointState_effort value)) then Left 22 else
          Right ()
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Sensor_msgsMsgJointState_header value)
  if length (ros2Sensor_msgsMsgJointState_name value) > 32 then Left 22 else Right ()
  prefix1 <- W.encodeCount 32 (length (ros2Sensor_msgsMsgJointState_name value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 256 True (e)) (ros2Sensor_msgsMsgJointState_name value)
  if length (ros2Sensor_msgsMsgJointState_position value) > 32 then Left 22 else Right ()
  prefix2 <- W.encodeCount 32 (length (ros2Sensor_msgsMsgJointState_position value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_position value)
  if length (ros2Sensor_msgsMsgJointState_velocity value) > 32 then Left 22 else Right ()
  prefix3 <- W.encodeCount 32 (length (ros2Sensor_msgsMsgJointState_velocity value))
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_velocity value)
  if length (ros2Sensor_msgsMsgJointState_effort value) > 32 then Left 22 else Right ()
  prefix4 <- W.encodeCount 32 (length (ros2Sensor_msgsMsgJointState_effort value))
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_effort value)
  W.bounded 9372 [b0, prefix1, b1, prefix2, b2, prefix3, b3, prefix4, b4]
readRos2Sensor_msgsMsgJointState :: W.Decoder Ros2Sensor_msgsMsgJointState
readRos2Sensor_msgsMsgJointState = do
  a0 <- readRos2Std_msgsMsgHeader
  count1 <- W.count 32
  a1 <- replicateM count1 (W.text 256 True)
  count2 <- W.count 32
  a2 <- replicateM count2 (W.float64)
  count3 <- W.count 32
  a3 <- replicateM count3 (W.float64)
  count4 <- W.count 32
  a4 <- replicateM count4 (W.float64)
  let value = Ros2Sensor_msgsMsgJointState a0 a1 a2 a3 a4
  case encodeRos2Sensor_msgsMsgJointState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Sensor_msgsMsgJointState :: B.ByteString -> Either Word32 Ros2Sensor_msgsMsgJointState
decodeRos2Sensor_msgsMsgJointState = W.runDecoder 9372 readRos2Sensor_msgsMsgJointState
instance Canonical Ros2Sensor_msgsMsgJointState where
  maximumBytes _ = 9372
  encodeValue = encodeRos2Sensor_msgsMsgJointState
  readValue = readRos2Sensor_msgsMsgJointState
data Ros2Trajectory_msgsMsgJointTrajectoryPoint = Ros2Trajectory_msgsMsgJointTrajectoryPoint
  {
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.positions: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_positions :: [Double]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.velocities: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities :: [Double]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.accelerations: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations :: [Double]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.effort: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_effort :: [Double]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.time_from_start: builtin_interfaces/msg/Duration.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_time_from_start :: Ros2Builtin_interfacesMsgDuration
  } deriving (Eq, Show)
defaultRos2Trajectory_msgsMsgJointTrajectoryPoint :: Ros2Trajectory_msgsMsgJointTrajectoryPoint
defaultRos2Trajectory_msgsMsgJointTrajectoryPoint = Ros2Trajectory_msgsMsgJointTrajectoryPoint ([]) ([]) ([]) ([])
        (defaultRos2Builtin_interfacesMsgDuration)
ros2Trajectory_msgsMsgJointTrajectoryPointCodecIdentity :: String
ros2Trajectory_msgsMsgJointTrajectoryPointCodecIdentity =
        "UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c"
encodeRos2Trajectory_msgsMsgJointTrajectoryPoint :: Ros2Trajectory_msgsMsgJointTrajectoryPoint -> Either Word32 B.ByteString
encodeRos2Trajectory_msgsMsgJointTrajectoryPoint value = do
  if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_positions value) > 32 then Left 22 else Right ()
  prefix0 <- W.encodeCount 32 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_positions value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Trajectory_msgsMsgJointTrajectoryPoint_positions value)
  if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities value) > 32 then Left 22 else Right ()
  prefix1 <- W.encodeCount 32 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities value)
  if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations value) > 32 then Left 22 else Right ()
  prefix2 <- W.encodeCount 32 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations value)
  if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_effort value) > 32 then Left 22 else Right ()
  prefix3 <- W.encodeCount 32 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_effort value))
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Trajectory_msgsMsgJointTrajectoryPoint_effort value)
  b4 <- encodeRos2Builtin_interfacesMsgDuration (ros2Trajectory_msgsMsgJointTrajectoryPoint_time_from_start value)
  W.bounded 1048 [prefix0, b0, prefix1, b1, prefix2, b2, prefix3, b3, b4]
readRos2Trajectory_msgsMsgJointTrajectoryPoint :: W.Decoder Ros2Trajectory_msgsMsgJointTrajectoryPoint
readRos2Trajectory_msgsMsgJointTrajectoryPoint = do
  count0 <- W.count 32
  a0 <- replicateM count0 (W.float64)
  count1 <- W.count 32
  a1 <- replicateM count1 (W.float64)
  count2 <- W.count 32
  a2 <- replicateM count2 (W.float64)
  count3 <- W.count 32
  a3 <- replicateM count3 (W.float64)
  a4 <- readRos2Builtin_interfacesMsgDuration
  let value = Ros2Trajectory_msgsMsgJointTrajectoryPoint a0 a1 a2 a3 a4
  case encodeRos2Trajectory_msgsMsgJointTrajectoryPoint value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Trajectory_msgsMsgJointTrajectoryPoint :: B.ByteString -> Either Word32 Ros2Trajectory_msgsMsgJointTrajectoryPoint
decodeRos2Trajectory_msgsMsgJointTrajectoryPoint = W.runDecoder 1048 readRos2Trajectory_msgsMsgJointTrajectoryPoint
instance Canonical Ros2Trajectory_msgsMsgJointTrajectoryPoint where
  maximumBytes _ = 1048
  encodeValue = encodeRos2Trajectory_msgsMsgJointTrajectoryPoint
  readValue = readRos2Trajectory_msgsMsgJointTrajectoryPoint
data Ros2Trajectory_msgsMsgJointTrajectory = Ros2Trajectory_msgsMsgJointTrajectory
  {
    -- | \@brief trajectory_msgs/msg/JointTrajectory.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectory_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectory.joint_names: string; 0..32 elements; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectory_joint_names :: [T.Text]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectory.points: trajectory_msgs/msg/JointTrajectoryPoint; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectory_points :: [Ros2Trajectory_msgsMsgJointTrajectoryPoint]
  } deriving (Eq, Show)
defaultRos2Trajectory_msgsMsgJointTrajectory :: Ros2Trajectory_msgsMsgJointTrajectory
defaultRos2Trajectory_msgsMsgJointTrajectory = Ros2Trajectory_msgsMsgJointTrajectory (defaultRos2Std_msgsMsgHeader) ([]) ([])
ros2Trajectory_msgsMsgJointTrajectoryCodecIdentity :: String
ros2Trajectory_msgsMsgJointTrajectoryCodecIdentity = "UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4"
encodeRos2Trajectory_msgsMsgJointTrajectory :: Ros2Trajectory_msgsMsgJointTrajectory -> Either Word32 B.ByteString
encodeRos2Trajectory_msgsMsgJointTrajectory value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Trajectory_msgsMsgJointTrajectory_header value)
  if length (ros2Trajectory_msgsMsgJointTrajectory_joint_names value) > 32 then Left 22 else Right ()
  prefix1 <- W.encodeCount 32 (length (ros2Trajectory_msgsMsgJointTrajectory_joint_names value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 256 True (e)) (ros2Trajectory_msgsMsgJointTrajectory_joint_names value)
  if length (ros2Trajectory_msgsMsgJointTrajectory_points value) > 8 then Left 22 else Right ()
  prefix2 <- W.encodeCount 8 (length (ros2Trajectory_msgsMsgJointTrajectory_points value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Trajectory_msgsMsgJointTrajectoryPoint (e)) (ros2Trajectory_msgsMsgJointTrajectory_points
          value)
  W.bounded 16980 [b0, prefix1, b1, prefix2, b2]
readRos2Trajectory_msgsMsgJointTrajectory :: W.Decoder Ros2Trajectory_msgsMsgJointTrajectory
readRos2Trajectory_msgsMsgJointTrajectory = do
  a0 <- readRos2Std_msgsMsgHeader
  count1 <- W.count 32
  a1 <- replicateM count1 (W.text 256 True)
  count2 <- W.count 8
  a2 <- replicateM count2 (readRos2Trajectory_msgsMsgJointTrajectoryPoint)
  let value = Ros2Trajectory_msgsMsgJointTrajectory a0 a1 a2
  case encodeRos2Trajectory_msgsMsgJointTrajectory value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Trajectory_msgsMsgJointTrajectory :: B.ByteString -> Either Word32 Ros2Trajectory_msgsMsgJointTrajectory
decodeRos2Trajectory_msgsMsgJointTrajectory = W.runDecoder 16980 readRos2Trajectory_msgsMsgJointTrajectory
instance Canonical Ros2Trajectory_msgsMsgJointTrajectory where
  maximumBytes _ = 16980
  encodeValue = encodeRos2Trajectory_msgsMsgJointTrajectory
  readValue = readRos2Trajectory_msgsMsgJointTrajectory
data Ros2Std_msgsMsgMultiArrayDimension = Ros2Std_msgsMsgMultiArrayDimension
  {
    -- | \@brief std_msgs/msg/MultiArrayDimension.label: string; each string is 0..256 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgMultiArrayDimension; share/platform/ros/haskell/API-CONTRACT.md
    ros2Std_msgsMsgMultiArrayDimension_label :: T.Text
  ,
    -- | \@brief std_msgs/msg/MultiArrayDimension.size: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgMultiArrayDimension; share/platform/ros/haskell/API-CONTRACT.md
    ros2Std_msgsMsgMultiArrayDimension_size :: Word32
  ,
    -- | \@brief std_msgs/msg/MultiArrayDimension.stride: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgMultiArrayDimension; share/platform/ros/haskell/API-CONTRACT.md
    ros2Std_msgsMsgMultiArrayDimension_stride :: Word32
  } deriving (Eq, Show)
defaultRos2Std_msgsMsgMultiArrayDimension :: Ros2Std_msgsMsgMultiArrayDimension
defaultRos2Std_msgsMsgMultiArrayDimension = Ros2Std_msgsMsgMultiArrayDimension (T.empty) (0) (0)
ros2Std_msgsMsgMultiArrayDimensionCodecIdentity :: String
ros2Std_msgsMsgMultiArrayDimensionCodecIdentity = "UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d"
encodeRos2Std_msgsMsgMultiArrayDimension :: Ros2Std_msgsMsgMultiArrayDimension -> Either Word32 B.ByteString
encodeRos2Std_msgsMsgMultiArrayDimension value = do
  b0 <- W.encodeText 256 True (ros2Std_msgsMsgMultiArrayDimension_label value)
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros2Std_msgsMsgMultiArrayDimension_size value))
  b2 <- W.encodeUnsigned 4 (fromIntegral (ros2Std_msgsMsgMultiArrayDimension_stride value))
  W.bounded 268 [b0, b1, b2]
readRos2Std_msgsMsgMultiArrayDimension :: W.Decoder Ros2Std_msgsMsgMultiArrayDimension
readRos2Std_msgsMsgMultiArrayDimension = do
  a0 <- W.text 256 True
  a1 <- fromIntegral <$> W.unsigned 4
  a2 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Std_msgsMsgMultiArrayDimension a0 a1 a2
  case encodeRos2Std_msgsMsgMultiArrayDimension value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Std_msgsMsgMultiArrayDimension :: B.ByteString -> Either Word32 Ros2Std_msgsMsgMultiArrayDimension
decodeRos2Std_msgsMsgMultiArrayDimension = W.runDecoder 268 readRos2Std_msgsMsgMultiArrayDimension
instance Canonical Ros2Std_msgsMsgMultiArrayDimension where
  maximumBytes _ = 268
  encodeValue = encodeRos2Std_msgsMsgMultiArrayDimension
  readValue = readRos2Std_msgsMsgMultiArrayDimension
data Ros2Std_msgsMsgMultiArrayLayout = Ros2Std_msgsMsgMultiArrayLayout
  {
    -- | \@brief std_msgs/msg/MultiArrayLayout.dim: std_msgs/msg/MultiArrayDimension; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgMultiArrayLayout; share/platform/ros/haskell/API-CONTRACT.md
    ros2Std_msgsMsgMultiArrayLayout_dim :: [Ros2Std_msgsMsgMultiArrayDimension]
  ,
    -- | \@brief std_msgs/msg/MultiArrayLayout.data_offset: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgMultiArrayLayout; share/platform/ros/haskell/API-CONTRACT.md
    ros2Std_msgsMsgMultiArrayLayout_data_offset :: Word32
  } deriving (Eq, Show)
defaultRos2Std_msgsMsgMultiArrayLayout :: Ros2Std_msgsMsgMultiArrayLayout
defaultRos2Std_msgsMsgMultiArrayLayout = Ros2Std_msgsMsgMultiArrayLayout ([]) (0)
ros2Std_msgsMsgMultiArrayLayoutCodecIdentity :: String
ros2Std_msgsMsgMultiArrayLayoutCodecIdentity = "UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40"
encodeRos2Std_msgsMsgMultiArrayLayout :: Ros2Std_msgsMsgMultiArrayLayout -> Either Word32 B.ByteString
encodeRos2Std_msgsMsgMultiArrayLayout value = do
  if length (ros2Std_msgsMsgMultiArrayLayout_dim value) > 8 then Left 22 else Right ()
  prefix0 <- W.encodeCount 8 (length (ros2Std_msgsMsgMultiArrayLayout_dim value))
  b0 <- B.concat <$> mapM (\e -> encodeRos2Std_msgsMsgMultiArrayDimension (e)) (ros2Std_msgsMsgMultiArrayLayout_dim value)
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros2Std_msgsMsgMultiArrayLayout_data_offset value))
  W.bounded 2152 [prefix0, b0, b1]
readRos2Std_msgsMsgMultiArrayLayout :: W.Decoder Ros2Std_msgsMsgMultiArrayLayout
readRos2Std_msgsMsgMultiArrayLayout = do
  count0 <- W.count 8
  a0 <- replicateM count0 (readRos2Std_msgsMsgMultiArrayDimension)
  a1 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Std_msgsMsgMultiArrayLayout a0 a1
  case encodeRos2Std_msgsMsgMultiArrayLayout value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Std_msgsMsgMultiArrayLayout :: B.ByteString -> Either Word32 Ros2Std_msgsMsgMultiArrayLayout
decodeRos2Std_msgsMsgMultiArrayLayout = W.runDecoder 2152 readRos2Std_msgsMsgMultiArrayLayout
instance Canonical Ros2Std_msgsMsgMultiArrayLayout where
  maximumBytes _ = 2152
  encodeValue = encodeRos2Std_msgsMsgMultiArrayLayout
  readValue = readRos2Std_msgsMsgMultiArrayLayout
data Ros2Std_msgsMsgFloat64MultiArray = Ros2Std_msgsMsgFloat64MultiArray
  {
    -- | \@brief std_msgs/msg/Float64MultiArray.layout: std_msgs/msg/MultiArrayLayout.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgFloat64MultiArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Std_msgsMsgFloat64MultiArray_layout :: Ros2Std_msgsMsgMultiArrayLayout
  ,
    -- | \@brief std_msgs/msg/Float64MultiArray.data: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgFloat64MultiArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Std_msgsMsgFloat64MultiArray_data :: [Double]
  } deriving (Eq, Show)
defaultRos2Std_msgsMsgFloat64MultiArray :: Ros2Std_msgsMsgFloat64MultiArray
defaultRos2Std_msgsMsgFloat64MultiArray = Ros2Std_msgsMsgFloat64MultiArray (defaultRos2Std_msgsMsgMultiArrayLayout) ([])
ros2Std_msgsMsgFloat64MultiArrayCodecIdentity :: String
ros2Std_msgsMsgFloat64MultiArrayCodecIdentity = "UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2"
encodeRos2Std_msgsMsgFloat64MultiArray :: Ros2Std_msgsMsgFloat64MultiArray -> Either Word32 B.ByteString
encodeRos2Std_msgsMsgFloat64MultiArray value = do
  b0 <- encodeRos2Std_msgsMsgMultiArrayLayout (ros2Std_msgsMsgFloat64MultiArray_layout value)
  if length (ros2Std_msgsMsgFloat64MultiArray_data value) > 32 then Left 22 else Right ()
  prefix1 <- W.encodeCount 32 (length (ros2Std_msgsMsgFloat64MultiArray_data value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Std_msgsMsgFloat64MultiArray_data value)
  W.bounded 2412 [b0, prefix1, b1]
readRos2Std_msgsMsgFloat64MultiArray :: W.Decoder Ros2Std_msgsMsgFloat64MultiArray
readRos2Std_msgsMsgFloat64MultiArray = do
  a0 <- readRos2Std_msgsMsgMultiArrayLayout
  count1 <- W.count 32
  a1 <- replicateM count1 (W.float64)
  let value = Ros2Std_msgsMsgFloat64MultiArray a0 a1
  case encodeRos2Std_msgsMsgFloat64MultiArray value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Std_msgsMsgFloat64MultiArray :: B.ByteString -> Either Word32 Ros2Std_msgsMsgFloat64MultiArray
decodeRos2Std_msgsMsgFloat64MultiArray = W.runDecoder 2412 readRos2Std_msgsMsgFloat64MultiArray
instance Canonical Ros2Std_msgsMsgFloat64MultiArray where
  maximumBytes _ = 2412
  encodeValue = encodeRos2Std_msgsMsgFloat64MultiArray
  readValue = readRos2Std_msgsMsgFloat64MultiArray
