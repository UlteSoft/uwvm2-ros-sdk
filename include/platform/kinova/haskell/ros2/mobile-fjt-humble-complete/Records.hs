-- Generated complete canonical values; all field selectors are record-qualified.
module Kinova.Ros2Humble.Records where
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
    -- | \@brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
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
data Ros2Trajectory_msgsMsgJointTrajectoryPoint = Ros2Trajectory_msgsMsgJointTrajectoryPoint
  {
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.positions: float64; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_positions :: [Double]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.velocities: float64; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities :: [Double]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.accelerations: float64; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations :: [Double]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.effort: float64; 0..8 elements.
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
        "UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1"
encodeRos2Trajectory_msgsMsgJointTrajectoryPoint :: Ros2Trajectory_msgsMsgJointTrajectoryPoint -> Either Word32 B.ByteString
encodeRos2Trajectory_msgsMsgJointTrajectoryPoint value = do
  if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_positions value) > 8 then Left 22 else Right ()
  prefix0 <- W.encodeCount 8 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_positions value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Trajectory_msgsMsgJointTrajectoryPoint_positions value)
  if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities value) > 8 then Left 22 else Right ()
  prefix1 <- W.encodeCount 8 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities value)
  if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations value) > 8 then Left 22 else Right ()
  prefix2 <- W.encodeCount 8 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations value)
  if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_effort value) > 8 then Left 22 else Right ()
  prefix3 <- W.encodeCount 8 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_effort value))
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Trajectory_msgsMsgJointTrajectoryPoint_effort value)
  b4 <- encodeRos2Builtin_interfacesMsgDuration (ros2Trajectory_msgsMsgJointTrajectoryPoint_time_from_start value)
  W.bounded 280 [prefix0, b0, prefix1, b1, prefix2, b2, prefix3, b3, b4]
readRos2Trajectory_msgsMsgJointTrajectoryPoint :: W.Decoder Ros2Trajectory_msgsMsgJointTrajectoryPoint
readRos2Trajectory_msgsMsgJointTrajectoryPoint = do
  count0 <- W.count 8
  a0 <- replicateM count0 (W.float64)
  count1 <- W.count 8
  a1 <- replicateM count1 (W.float64)
  count2 <- W.count 8
  a2 <- replicateM count2 (W.float64)
  count3 <- W.count 8
  a3 <- replicateM count3 (W.float64)
  a4 <- readRos2Builtin_interfacesMsgDuration
  let value = Ros2Trajectory_msgsMsgJointTrajectoryPoint a0 a1 a2 a3 a4
  case encodeRos2Trajectory_msgsMsgJointTrajectoryPoint value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Trajectory_msgsMsgJointTrajectoryPoint :: B.ByteString -> Either Word32 Ros2Trajectory_msgsMsgJointTrajectoryPoint
decodeRos2Trajectory_msgsMsgJointTrajectoryPoint = W.runDecoder 280 readRos2Trajectory_msgsMsgJointTrajectoryPoint
instance Canonical Ros2Trajectory_msgsMsgJointTrajectoryPoint where
  maximumBytes _ = 280
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
    -- | \@brief trajectory_msgs/msg/JointTrajectory.joint_names: string; 0..8 elements; each string is 0..128 bytes;
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
    -- | \@brief trajectory_msgs/msg/JointTrajectory.points: trajectory_msgs/msg/JointTrajectoryPoint; 0..1 elements.
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
ros2Trajectory_msgsMsgJointTrajectoryCodecIdentity = "UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77"
encodeRos2Trajectory_msgsMsgJointTrajectory :: Ros2Trajectory_msgsMsgJointTrajectory -> Either Word32 B.ByteString
encodeRos2Trajectory_msgsMsgJointTrajectory value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Trajectory_msgsMsgJointTrajectory_header value)
  if length (ros2Trajectory_msgsMsgJointTrajectory_joint_names value) > 8 then Left 22 else Right ()
  prefix1 <- W.encodeCount 8 (length (ros2Trajectory_msgsMsgJointTrajectory_joint_names value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros2Trajectory_msgsMsgJointTrajectory_joint_names value)
  if length (ros2Trajectory_msgsMsgJointTrajectory_points value) > 1 then Left 22 else Right ()
  prefix2 <- W.encodeCount 1 (length (ros2Trajectory_msgsMsgJointTrajectory_points value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Trajectory_msgsMsgJointTrajectoryPoint (e)) (ros2Trajectory_msgsMsgJointTrajectory_points
          value)
  W.bounded 1484 [b0, prefix1, b1, prefix2, b2]
readRos2Trajectory_msgsMsgJointTrajectory :: W.Decoder Ros2Trajectory_msgsMsgJointTrajectory
readRos2Trajectory_msgsMsgJointTrajectory = do
  a0 <- readRos2Std_msgsMsgHeader
  count1 <- W.count 8
  a1 <- replicateM count1 (W.text 128 True)
  count2 <- W.count 1
  a2 <- replicateM count2 (readRos2Trajectory_msgsMsgJointTrajectoryPoint)
  let value = Ros2Trajectory_msgsMsgJointTrajectory a0 a1 a2
  case encodeRos2Trajectory_msgsMsgJointTrajectory value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Trajectory_msgsMsgJointTrajectory :: B.ByteString -> Either Word32 Ros2Trajectory_msgsMsgJointTrajectory
decodeRos2Trajectory_msgsMsgJointTrajectory = W.runDecoder 1484 readRos2Trajectory_msgsMsgJointTrajectory
instance Canonical Ros2Trajectory_msgsMsgJointTrajectory where
  maximumBytes _ = 1484
  encodeValue = encodeRos2Trajectory_msgsMsgJointTrajectory
  readValue = readRos2Trajectory_msgsMsgJointTrajectory
data Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3
  {
    -- | \@brief geometry_msgs/msg/Vector3.x: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgVector3; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgVector3_x :: Double
  ,
    -- | \@brief geometry_msgs/msg/Vector3.y: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgVector3; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgVector3_y :: Double
  ,
    -- | \@brief geometry_msgs/msg/Vector3.z: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgVector3; share/platform/ros/haskell/API-CONTRACT.md
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
data Ros2Geometry_msgsMsgTransform = Ros2Geometry_msgsMsgTransform
  {
    -- | \@brief geometry_msgs/msg/Transform.translation: geometry_msgs/msg/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTransform; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgTransform_translation :: Ros2Geometry_msgsMsgVector3
  ,
    -- | \@brief geometry_msgs/msg/Transform.rotation: geometry_msgs/msg/Quaternion.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTransform; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgTransform_rotation :: Ros2Geometry_msgsMsgQuaternion
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgTransform :: Ros2Geometry_msgsMsgTransform
defaultRos2Geometry_msgsMsgTransform = Ros2Geometry_msgsMsgTransform (defaultRos2Geometry_msgsMsgVector3)
        (defaultRos2Geometry_msgsMsgQuaternion)
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
data Ros2Geometry_msgsMsgTwist = Ros2Geometry_msgsMsgTwist
  {
    -- | \@brief geometry_msgs/msg/Twist.linear: geometry_msgs/msg/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTwist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgTwist_linear :: Ros2Geometry_msgsMsgVector3
  ,
    -- | \@brief geometry_msgs/msg/Twist.angular: geometry_msgs/msg/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTwist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgTwist_angular :: Ros2Geometry_msgsMsgVector3
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgTwist :: Ros2Geometry_msgsMsgTwist
defaultRos2Geometry_msgsMsgTwist = Ros2Geometry_msgsMsgTwist (defaultRos2Geometry_msgsMsgVector3)
        (defaultRos2Geometry_msgsMsgVector3)
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
data Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  {
    -- | \@brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms: geometry_msgs/msg/Transform; 0..1
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_transforms :: [Ros2Geometry_msgsMsgTransform]
  ,
    -- | \@brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities: geometry_msgs/msg/Twist; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_velocities :: [Ros2Geometry_msgsMsgTwist]
  ,
    -- | \@brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations: geometry_msgs/msg/Twist; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_accelerations :: [Ros2Geometry_msgsMsgTwist]
  ,
    -- | \@brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start: builtin_interfaces/msg/Duration.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_time_from_start :: Ros2Builtin_interfacesMsgDuration
  } deriving (Eq, Show)
defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint ([]) ([]) ([])
        (defaultRos2Builtin_interfacesMsgDuration)
ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodecIdentity :: String
ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodecIdentity =
        "UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf"
encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint -> Either Word32
        B.ByteString
encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value = do
  if length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_transforms value) > 1 then Left 22 else Right ()
  prefix0 <- W.encodeCount 1 (length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_transforms value))
  b0 <- B.concat <$> mapM (\e -> encodeRos2Geometry_msgsMsgTransform (e))
          (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_transforms value)
  if length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_velocities value) > 8 then Left 22 else Right ()
  prefix1 <- W.encodeCount 8 (length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_velocities value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2Geometry_msgsMsgTwist (e)) (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_velocities
          value)
  if length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_accelerations value) > 8 then Left 22 else Right ()
  prefix2 <- W.encodeCount 8 (length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_accelerations value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Geometry_msgsMsgTwist (e))
          (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_accelerations value)
  b3 <- encodeRos2Builtin_interfacesMsgDuration (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_time_from_start value)
  W.bounded 844 [prefix0, b0, prefix1, b1, prefix2, b2, b3]
readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: W.Decoder Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = do
  count0 <- W.count 1
  a0 <- replicateM count0 (readRos2Geometry_msgsMsgTransform)
  count1 <- W.count 8
  a1 <- replicateM count1 (readRos2Geometry_msgsMsgTwist)
  count2 <- W.count 8
  a2 <- replicateM count2 (readRos2Geometry_msgsMsgTwist)
  a3 <- readRos2Builtin_interfacesMsgDuration
  let value = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint a0 a1 a2 a3
  case encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: B.ByteString -> Either Word32
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = W.runDecoder 844 readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
instance Canonical Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint where
  maximumBytes _ = 844
  encodeValue = encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  readValue = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
data Ros2Trajectory_msgsMsgMultiDOFJointTrajectory = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
  {
    -- | \@brief trajectory_msgs/msg/MultiDOFJointTrajectory.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgMultiDOFJointTrajectory_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names: string; 0..8 elements; each string is 0..128
    -- | bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgMultiDOFJointTrajectory_joint_names :: [T.Text]
  ,
    -- | \@brief trajectory_msgs/msg/MultiDOFJointTrajectory.points: trajectory_msgs/msg/MultiDOFJointTrajectoryPoint;
    -- | 0..1 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgMultiDOFJointTrajectory_points :: [Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint]
  } deriving (Eq, Show)
defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectory :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectory = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory (defaultRos2Std_msgsMsgHeader)
        ([]) ([])
ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodecIdentity :: String
ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodecIdentity =
        "UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5"
encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory -> Either Word32 B.ByteString
encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_header value)
  if length (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_joint_names value) > 8 then Left 22 else Right ()
  prefix1 <- W.encodeCount 8 (length (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_joint_names value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_joint_names value)
  if length (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_points value) > 1 then Left 22 else Right ()
  prefix2 <- W.encodeCount 1 (length (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_points value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint (e))
          (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_points value)
  W.bounded 2048 [b0, prefix1, b1, prefix2, b2]
readRos2Trajectory_msgsMsgMultiDOFJointTrajectory :: W.Decoder Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
readRos2Trajectory_msgsMsgMultiDOFJointTrajectory = do
  a0 <- readRos2Std_msgsMsgHeader
  count1 <- W.count 8
  a1 <- replicateM count1 (W.text 128 True)
  count2 <- W.count 1
  a2 <- replicateM count2 (readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint)
  let value = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory a0 a1 a2
  case encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory :: B.ByteString -> Either Word32 Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory = W.runDecoder 2048 readRos2Trajectory_msgsMsgMultiDOFJointTrajectory
instance Canonical Ros2Trajectory_msgsMsgMultiDOFJointTrajectory where
  maximumBytes _ = 2048
  encodeValue = encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory
  readValue = readRos2Trajectory_msgsMsgMultiDOFJointTrajectory
data Ros2Control_msgsMsgJointTolerance = Ros2Control_msgsMsgJointTolerance
  {
    -- | \@brief control_msgs/msg/JointTolerance.name: string; each string is 0..128 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointTolerance_name :: T.Text
  ,
    -- | \@brief control_msgs/msg/JointTolerance.position: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointTolerance_position :: Double
  ,
    -- | \@brief control_msgs/msg/JointTolerance.velocity: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointTolerance_velocity :: Double
  ,
    -- | \@brief control_msgs/msg/JointTolerance.acceleration: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointTolerance_acceleration :: Double
  } deriving (Eq, Show)
defaultRos2Control_msgsMsgJointTolerance :: Ros2Control_msgsMsgJointTolerance
defaultRos2Control_msgsMsgJointTolerance = Ros2Control_msgsMsgJointTolerance (T.empty) (0) (0) (0)
ros2Control_msgsMsgJointToleranceCodecIdentity :: String
ros2Control_msgsMsgJointToleranceCodecIdentity = "UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a"
encodeRos2Control_msgsMsgJointTolerance :: Ros2Control_msgsMsgJointTolerance -> Either Word32 B.ByteString
encodeRos2Control_msgsMsgJointTolerance value = do
  b0 <- W.encodeText 128 True (ros2Control_msgsMsgJointTolerance_name value)
  b1 <- W.encodeFloat64 (ros2Control_msgsMsgJointTolerance_position value)
  b2 <- W.encodeFloat64 (ros2Control_msgsMsgJointTolerance_velocity value)
  b3 <- W.encodeFloat64 (ros2Control_msgsMsgJointTolerance_acceleration value)
  W.bounded 156 [b0, b1, b2, b3]
readRos2Control_msgsMsgJointTolerance :: W.Decoder Ros2Control_msgsMsgJointTolerance
readRos2Control_msgsMsgJointTolerance = do
  a0 <- W.text 128 True
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  let value = Ros2Control_msgsMsgJointTolerance a0 a1 a2 a3
  case encodeRos2Control_msgsMsgJointTolerance value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Control_msgsMsgJointTolerance :: B.ByteString -> Either Word32 Ros2Control_msgsMsgJointTolerance
decodeRos2Control_msgsMsgJointTolerance = W.runDecoder 156 readRos2Control_msgsMsgJointTolerance
instance Canonical Ros2Control_msgsMsgJointTolerance where
  maximumBytes _ = 156
  encodeValue = encodeRos2Control_msgsMsgJointTolerance
  readValue = readRos2Control_msgsMsgJointTolerance
data Ros2Control_msgsMsgJointComponentTolerance = Ros2Control_msgsMsgJointComponentTolerance
  {
    -- | \@brief control_msgs/msg/JointComponentTolerance.joint_name: string; each string is 0..128 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointComponentTolerance_joint_name :: T.Text
  ,
    -- | \@brief control_msgs/msg/JointComponentTolerance.component: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointComponentTolerance_component :: Word16
  ,
    -- | \@brief control_msgs/msg/JointComponentTolerance.position: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointComponentTolerance_position :: Double
  ,
    -- | \@brief control_msgs/msg/JointComponentTolerance.velocity: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointComponentTolerance_velocity :: Double
  ,
    -- | \@brief control_msgs/msg/JointComponentTolerance.acceleration: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointComponentTolerance_acceleration :: Double
  } deriving (Eq, Show)
defaultRos2Control_msgsMsgJointComponentTolerance :: Ros2Control_msgsMsgJointComponentTolerance
defaultRos2Control_msgsMsgJointComponentTolerance = Ros2Control_msgsMsgJointComponentTolerance (T.empty) (0) (0) (0) (0)
ros2Control_msgsMsgJointComponentToleranceCodecIdentity :: String
ros2Control_msgsMsgJointComponentToleranceCodecIdentity =
        "UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb"
ros2Control_msgsMsgJointComponentTolerance_X_AXIS :: Word16
ros2Control_msgsMsgJointComponentTolerance_X_AXIS = 1
ros2Control_msgsMsgJointComponentTolerance_Y_AXIS :: Word16
ros2Control_msgsMsgJointComponentTolerance_Y_AXIS = 2
ros2Control_msgsMsgJointComponentTolerance_Z_AXIS :: Word16
ros2Control_msgsMsgJointComponentTolerance_Z_AXIS = 3
ros2Control_msgsMsgJointComponentTolerance_TRANSLATION :: Word16
ros2Control_msgsMsgJointComponentTolerance_TRANSLATION = 4
ros2Control_msgsMsgJointComponentTolerance_ROTATION :: Word16
ros2Control_msgsMsgJointComponentTolerance_ROTATION = 5
encodeRos2Control_msgsMsgJointComponentTolerance :: Ros2Control_msgsMsgJointComponentTolerance -> Either Word32 B.ByteString
encodeRos2Control_msgsMsgJointComponentTolerance value = do
  b0 <- W.encodeText 128 True (ros2Control_msgsMsgJointComponentTolerance_joint_name value)
  b1 <- W.encodeUnsigned 2 (fromIntegral (ros2Control_msgsMsgJointComponentTolerance_component value))
  b2 <- W.encodeFloat64 (ros2Control_msgsMsgJointComponentTolerance_position value)
  b3 <- W.encodeFloat64 (ros2Control_msgsMsgJointComponentTolerance_velocity value)
  b4 <- W.encodeFloat64 (ros2Control_msgsMsgJointComponentTolerance_acceleration value)
  W.bounded 158 [b0, b1, b2, b3, b4]
readRos2Control_msgsMsgJointComponentTolerance :: W.Decoder Ros2Control_msgsMsgJointComponentTolerance
readRos2Control_msgsMsgJointComponentTolerance = do
  a0 <- W.text 128 True
  a1 <- fromIntegral <$> W.unsigned 2
  a2 <- W.float64
  a3 <- W.float64
  a4 <- W.float64
  let value = Ros2Control_msgsMsgJointComponentTolerance a0 a1 a2 a3 a4
  case encodeRos2Control_msgsMsgJointComponentTolerance value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Control_msgsMsgJointComponentTolerance :: B.ByteString -> Either Word32 Ros2Control_msgsMsgJointComponentTolerance
decodeRos2Control_msgsMsgJointComponentTolerance = W.runDecoder 158 readRos2Control_msgsMsgJointComponentTolerance
instance Canonical Ros2Control_msgsMsgJointComponentTolerance where
  maximumBytes _ = 158
  encodeValue = encodeRos2Control_msgsMsgJointComponentTolerance
  readValue = readRos2Control_msgsMsgJointComponentTolerance
data Ros2Control_msgsActionFollowJointTrajectory_Goal = Ros2Control_msgsActionFollowJointTrajectory_Goal
  {
    -- | \@brief control_msgs/action/FollowJointTrajectory_Goal.trajectory: trajectory_msgs/msg/JointTrajectory.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Goal_trajectory :: Ros2Trajectory_msgsMsgJointTrajectory
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory:
    -- | trajectory_msgs/msg/MultiDOFJointTrajectory.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Goal_multi_dof_trajectory :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Goal.path_tolerance: control_msgs/msg/JointTolerance; 0..8
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Goal_path_tolerance :: [Ros2Control_msgsMsgJointTolerance]
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance:
    -- | control_msgs/msg/JointComponentTolerance; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Goal_component_path_tolerance :: [Ros2Control_msgsMsgJointComponentTolerance]
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance: control_msgs/msg/JointTolerance; 0..8
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Goal_goal_tolerance :: [Ros2Control_msgsMsgJointTolerance]
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance:
    -- | control_msgs/msg/JointComponentTolerance; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Goal_component_goal_tolerance :: [Ros2Control_msgsMsgJointComponentTolerance]
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance: builtin_interfaces/msg/Duration.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Goal_goal_time_tolerance :: Ros2Builtin_interfacesMsgDuration
  } deriving (Eq, Show)
defaultRos2Control_msgsActionFollowJointTrajectory_Goal :: Ros2Control_msgsActionFollowJointTrajectory_Goal
defaultRos2Control_msgsActionFollowJointTrajectory_Goal = Ros2Control_msgsActionFollowJointTrajectory_Goal
        (defaultRos2Trajectory_msgsMsgJointTrajectory) (defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectory) ([]) ([]) ([]) ([])
        (defaultRos2Builtin_interfacesMsgDuration)
ros2Control_msgsActionFollowJointTrajectory_GoalCodecIdentity :: String
ros2Control_msgsActionFollowJointTrajectory_GoalCodecIdentity =
        "UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018"
encodeRos2Control_msgsActionFollowJointTrajectory_Goal :: Ros2Control_msgsActionFollowJointTrajectory_Goal -> Either Word32
        B.ByteString
encodeRos2Control_msgsActionFollowJointTrajectory_Goal value = do
  b0 <- encodeRos2Trajectory_msgsMsgJointTrajectory (ros2Control_msgsActionFollowJointTrajectory_Goal_trajectory value)
  b1 <- encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory (ros2Control_msgsActionFollowJointTrajectory_Goal_multi_dof_trajectory
          value)
  if length (ros2Control_msgsActionFollowJointTrajectory_Goal_path_tolerance value) > 8 then Left 22 else Right ()
  prefix2 <- W.encodeCount 8 (length (ros2Control_msgsActionFollowJointTrajectory_Goal_path_tolerance value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Control_msgsMsgJointTolerance (e))
          (ros2Control_msgsActionFollowJointTrajectory_Goal_path_tolerance value)
  if length (ros2Control_msgsActionFollowJointTrajectory_Goal_component_path_tolerance value) > 8 then Left 22 else Right ()
  prefix3 <- W.encodeCount 8 (length (ros2Control_msgsActionFollowJointTrajectory_Goal_component_path_tolerance value))
  b3 <- B.concat <$> mapM (\e -> encodeRos2Control_msgsMsgJointComponentTolerance (e))
          (ros2Control_msgsActionFollowJointTrajectory_Goal_component_path_tolerance value)
  if length (ros2Control_msgsActionFollowJointTrajectory_Goal_goal_tolerance value) > 8 then Left 22 else Right ()
  prefix4 <- W.encodeCount 8 (length (ros2Control_msgsActionFollowJointTrajectory_Goal_goal_tolerance value))
  b4 <- B.concat <$> mapM (\e -> encodeRos2Control_msgsMsgJointTolerance (e))
          (ros2Control_msgsActionFollowJointTrajectory_Goal_goal_tolerance value)
  if length (ros2Control_msgsActionFollowJointTrajectory_Goal_component_goal_tolerance value) > 8 then Left 22 else Right ()
  prefix5 <- W.encodeCount 8 (length (ros2Control_msgsActionFollowJointTrajectory_Goal_component_goal_tolerance value))
  b5 <- B.concat <$> mapM (\e -> encodeRos2Control_msgsMsgJointComponentTolerance (e))
          (ros2Control_msgsActionFollowJointTrajectory_Goal_component_goal_tolerance value)
  b6 <- encodeRos2Builtin_interfacesMsgDuration (ros2Control_msgsActionFollowJointTrajectory_Goal_goal_time_tolerance value)
  W.bounded 8580 [b0, b1, prefix2, b2, prefix3, b3, prefix4, b4, prefix5, b5, b6]
readRos2Control_msgsActionFollowJointTrajectory_Goal :: W.Decoder Ros2Control_msgsActionFollowJointTrajectory_Goal
readRos2Control_msgsActionFollowJointTrajectory_Goal = do
  a0 <- readRos2Trajectory_msgsMsgJointTrajectory
  a1 <- readRos2Trajectory_msgsMsgMultiDOFJointTrajectory
  count2 <- W.count 8
  a2 <- replicateM count2 (readRos2Control_msgsMsgJointTolerance)
  count3 <- W.count 8
  a3 <- replicateM count3 (readRos2Control_msgsMsgJointComponentTolerance)
  count4 <- W.count 8
  a4 <- replicateM count4 (readRos2Control_msgsMsgJointTolerance)
  count5 <- W.count 8
  a5 <- replicateM count5 (readRos2Control_msgsMsgJointComponentTolerance)
  a6 <- readRos2Builtin_interfacesMsgDuration
  let value = Ros2Control_msgsActionFollowJointTrajectory_Goal a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Control_msgsActionFollowJointTrajectory_Goal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Control_msgsActionFollowJointTrajectory_Goal :: B.ByteString -> Either Word32
        Ros2Control_msgsActionFollowJointTrajectory_Goal
decodeRos2Control_msgsActionFollowJointTrajectory_Goal = W.runDecoder 8580 readRos2Control_msgsActionFollowJointTrajectory_Goal
instance Canonical Ros2Control_msgsActionFollowJointTrajectory_Goal where
  maximumBytes _ = 8580
  encodeValue = encodeRos2Control_msgsActionFollowJointTrajectory_Goal
  readValue = readRos2Control_msgsActionFollowJointTrajectory_Goal
data Ros2Control_msgsActionFollowJointTrajectory_Result = Ros2Control_msgsActionFollowJointTrajectory_Result
  {
    -- | \@brief control_msgs/action/FollowJointTrajectory_Result.error_code: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Result_error_code :: Int32
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Result.error_string: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Result_error_string :: T.Text
  } deriving (Eq, Show)
defaultRos2Control_msgsActionFollowJointTrajectory_Result :: Ros2Control_msgsActionFollowJointTrajectory_Result
defaultRos2Control_msgsActionFollowJointTrajectory_Result = Ros2Control_msgsActionFollowJointTrajectory_Result (0) (T.empty)
ros2Control_msgsActionFollowJointTrajectory_ResultCodecIdentity :: String
ros2Control_msgsActionFollowJointTrajectory_ResultCodecIdentity =
        "UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649"
ros2Control_msgsActionFollowJointTrajectory_Result_SUCCESSFUL :: Int32
ros2Control_msgsActionFollowJointTrajectory_Result_SUCCESSFUL = 0
ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_GOAL :: Int32
ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_GOAL = -1
ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_JOINTS :: Int32
ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_JOINTS = -2
ros2Control_msgsActionFollowJointTrajectory_Result_OLD_HEADER_TIMESTAMP :: Int32
ros2Control_msgsActionFollowJointTrajectory_Result_OLD_HEADER_TIMESTAMP = -3
ros2Control_msgsActionFollowJointTrajectory_Result_PATH_TOLERANCE_VIOLATED :: Int32
ros2Control_msgsActionFollowJointTrajectory_Result_PATH_TOLERANCE_VIOLATED = -4
ros2Control_msgsActionFollowJointTrajectory_Result_GOAL_TOLERANCE_VIOLATED :: Int32
ros2Control_msgsActionFollowJointTrajectory_Result_GOAL_TOLERANCE_VIOLATED = -5
encodeRos2Control_msgsActionFollowJointTrajectory_Result :: Ros2Control_msgsActionFollowJointTrajectory_Result -> Either Word32
        B.ByteString
encodeRos2Control_msgsActionFollowJointTrajectory_Result value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Control_msgsActionFollowJointTrajectory_Result_error_code value))
  b1 <- W.encodeText 256 True (ros2Control_msgsActionFollowJointTrajectory_Result_error_string value)
  W.bounded 264 [b0, b1]
readRos2Control_msgsActionFollowJointTrajectory_Result :: W.Decoder Ros2Control_msgsActionFollowJointTrajectory_Result
readRos2Control_msgsActionFollowJointTrajectory_Result = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- W.text 256 True
  let value = Ros2Control_msgsActionFollowJointTrajectory_Result a0 a1
  case encodeRos2Control_msgsActionFollowJointTrajectory_Result value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Control_msgsActionFollowJointTrajectory_Result :: B.ByteString -> Either Word32
        Ros2Control_msgsActionFollowJointTrajectory_Result
decodeRos2Control_msgsActionFollowJointTrajectory_Result = W.runDecoder 264 readRos2Control_msgsActionFollowJointTrajectory_Result
instance Canonical Ros2Control_msgsActionFollowJointTrajectory_Result where
  maximumBytes _ = 264
  encodeValue = encodeRos2Control_msgsActionFollowJointTrajectory_Result
  readValue = readRos2Control_msgsActionFollowJointTrajectory_Result
data Ros2Control_msgsActionFollowJointTrajectory_Feedback = Ros2Control_msgsActionFollowJointTrajectory_Feedback
  {
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.joint_names: string; 0..8 elements; each string is
    -- | 0..128 bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_joint_names :: [T.Text]
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.desired: trajectory_msgs/msg/JointTrajectoryPoint.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_desired :: Ros2Trajectory_msgsMsgJointTrajectoryPoint
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.actual: trajectory_msgs/msg/JointTrajectoryPoint.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_actual :: Ros2Trajectory_msgsMsgJointTrajectoryPoint
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.error: trajectory_msgs/msg/JointTrajectoryPoint.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_error :: Ros2Trajectory_msgsMsgJointTrajectoryPoint
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names: string; 0..1 elements; each
    -- | string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_joint_names :: [T.Text]
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired:
    -- | trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_desired :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual:
    -- | trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_actual :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error:
    -- | trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_error :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  } deriving (Eq, Show)
defaultRos2Control_msgsActionFollowJointTrajectory_Feedback :: Ros2Control_msgsActionFollowJointTrajectory_Feedback
defaultRos2Control_msgsActionFollowJointTrajectory_Feedback = Ros2Control_msgsActionFollowJointTrajectory_Feedback
        (defaultRos2Std_msgsMsgHeader) ([]) (defaultRos2Trajectory_msgsMsgJointTrajectoryPoint)
        (defaultRos2Trajectory_msgsMsgJointTrajectoryPoint) (defaultRos2Trajectory_msgsMsgJointTrajectoryPoint) ([])
        (defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint) (defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint)
        (defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint)
ros2Control_msgsActionFollowJointTrajectory_FeedbackCodecIdentity :: String
ros2Control_msgsActionFollowJointTrajectory_FeedbackCodecIdentity =
        "UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529"
encodeRos2Control_msgsActionFollowJointTrajectory_Feedback :: Ros2Control_msgsActionFollowJointTrajectory_Feedback -> Either Word32
        B.ByteString
encodeRos2Control_msgsActionFollowJointTrajectory_Feedback value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Control_msgsActionFollowJointTrajectory_Feedback_header value)
  if length (ros2Control_msgsActionFollowJointTrajectory_Feedback_joint_names value) > 8 then Left 22 else Right ()
  prefix1 <- W.encodeCount 8 (length (ros2Control_msgsActionFollowJointTrajectory_Feedback_joint_names value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros2Control_msgsActionFollowJointTrajectory_Feedback_joint_names value)
  b2 <- encodeRos2Trajectory_msgsMsgJointTrajectoryPoint (ros2Control_msgsActionFollowJointTrajectory_Feedback_desired value)
  b3 <- encodeRos2Trajectory_msgsMsgJointTrajectoryPoint (ros2Control_msgsActionFollowJointTrajectory_Feedback_actual value)
  b4 <- encodeRos2Trajectory_msgsMsgJointTrajectoryPoint (ros2Control_msgsActionFollowJointTrajectory_Feedback_error value)
  if length (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_joint_names value) > 1 then Left 22 else Right ()
  prefix5 <- W.encodeCount 1 (length (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_joint_names value))
  b5 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e))
          (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_joint_names value)
  b6 <- encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
          (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_desired value)
  b7 <- encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
          (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_actual value)
  b8 <- encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
          (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_error value)
  W.bounded 4708 [b0, prefix1, b1, b2, b3, b4, prefix5, b5, b6, b7, b8]
readRos2Control_msgsActionFollowJointTrajectory_Feedback :: W.Decoder Ros2Control_msgsActionFollowJointTrajectory_Feedback
readRos2Control_msgsActionFollowJointTrajectory_Feedback = do
  a0 <- readRos2Std_msgsMsgHeader
  count1 <- W.count 8
  a1 <- replicateM count1 (W.text 128 True)
  a2 <- readRos2Trajectory_msgsMsgJointTrajectoryPoint
  a3 <- readRos2Trajectory_msgsMsgJointTrajectoryPoint
  a4 <- readRos2Trajectory_msgsMsgJointTrajectoryPoint
  count5 <- W.count 1
  a5 <- replicateM count5 (W.text 128 True)
  a6 <- readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  a7 <- readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  a8 <- readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  let value = Ros2Control_msgsActionFollowJointTrajectory_Feedback a0 a1 a2 a3 a4 a5 a6 a7 a8
  case encodeRos2Control_msgsActionFollowJointTrajectory_Feedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Control_msgsActionFollowJointTrajectory_Feedback :: B.ByteString -> Either Word32
        Ros2Control_msgsActionFollowJointTrajectory_Feedback
decodeRos2Control_msgsActionFollowJointTrajectory_Feedback = W.runDecoder 4708
        readRos2Control_msgsActionFollowJointTrajectory_Feedback
instance Canonical Ros2Control_msgsActionFollowJointTrajectory_Feedback where
  maximumBytes _ = 4708
  encodeValue = encodeRos2Control_msgsActionFollowJointTrajectory_Feedback
  readValue = readRos2Control_msgsActionFollowJointTrajectory_Feedback
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
    -- | \@brief sensor_msgs/msg/JointState.name: string; 0..8 elements; each string is 0..128 bytes; strict UTF-8 with
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
    -- | \@brief sensor_msgs/msg/JointState.position: float64; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_position :: [Double]
  ,
    -- | \@brief sensor_msgs/msg/JointState.velocity: float64; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_velocity :: [Double]
  ,
    -- | \@brief sensor_msgs/msg/JointState.effort: float64; 0..8 elements.
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
ros2Sensor_msgsMsgJointStateCodecIdentity = "UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11"
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
  if length (ros2Sensor_msgsMsgJointState_name value) > 8 then Left 22 else Right ()
  prefix1 <- W.encodeCount 8 (length (ros2Sensor_msgsMsgJointState_name value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros2Sensor_msgsMsgJointState_name value)
  if length (ros2Sensor_msgsMsgJointState_position value) > 8 then Left 22 else Right ()
  prefix2 <- W.encodeCount 8 (length (ros2Sensor_msgsMsgJointState_position value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_position value)
  if length (ros2Sensor_msgsMsgJointState_velocity value) > 8 then Left 22 else Right ()
  prefix3 <- W.encodeCount 8 (length (ros2Sensor_msgsMsgJointState_velocity value))
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_velocity value)
  if length (ros2Sensor_msgsMsgJointState_effort value) > 8 then Left 22 else Right ()
  prefix4 <- W.encodeCount 8 (length (ros2Sensor_msgsMsgJointState_effort value))
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_effort value)
  W.bounded 1404 [b0, prefix1, b1, prefix2, b2, prefix3, b3, prefix4, b4]
readRos2Sensor_msgsMsgJointState :: W.Decoder Ros2Sensor_msgsMsgJointState
readRos2Sensor_msgsMsgJointState = do
  a0 <- readRos2Std_msgsMsgHeader
  count1 <- W.count 8
  a1 <- replicateM count1 (W.text 128 True)
  count2 <- W.count 8
  a2 <- replicateM count2 (W.float64)
  count3 <- W.count 8
  a3 <- replicateM count3 (W.float64)
  count4 <- W.count 8
  a4 <- replicateM count4 (W.float64)
  let value = Ros2Sensor_msgsMsgJointState a0 a1 a2 a3 a4
  case encodeRos2Sensor_msgsMsgJointState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Sensor_msgsMsgJointState :: B.ByteString -> Either Word32 Ros2Sensor_msgsMsgJointState
decodeRos2Sensor_msgsMsgJointState = W.runDecoder 1404 readRos2Sensor_msgsMsgJointState
instance Canonical Ros2Sensor_msgsMsgJointState where
  maximumBytes _ = 1404
  encodeValue = encodeRos2Sensor_msgsMsgJointState
  readValue = readRos2Sensor_msgsMsgJointState
