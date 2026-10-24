-- | @file Records.hs
-- @brief Complete original YASKAWA ROS 2 Haskell records and codecs.
-- @details Owned immutable values preserve all fields; constructing them grants no ROS authority.
module YASKAWA.Ros2.Records where
import Data.Int
import Data.Word
import Data.Bits
import GHC.Float
import Control.Monad (replicateM)
import qualified Ros.Wire as W

-- | @brief Complete original builtin_interfaces/msg/Duration value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Builtin_interfacesMsgDuration = Ros2Builtin_interfacesMsgDuration
    {
    -- | @brief Original builtin_interfaces/msg/Duration.sec field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Builtin_interfacesMsgDuration_sec :: Int32
    ,
    -- | @brief Original builtin_interfaces/msg/Duration.nanosec field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Builtin_interfacesMsgDuration_nanosec :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Builtin_interfacesMsgDurationCodecIdentity :: String
ros2Builtin_interfacesMsgDurationCodecIdentity = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"
-- | @brief Encode every field of complete builtin_interfaces/msg/Duration.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Builtin_interfacesMsgDuration :: Ros2Builtin_interfacesMsgDuration -> Either Word32 [Word8]
encodeRos2Builtin_interfacesMsgDuration value = do
    if ros2Builtin_interfacesMsgDuration_nanosec value >= 1000000000 then Left 22 else Right ()
    chunk0 <- Right (W.putNumber 4 (ros2Builtin_interfacesMsgDuration_sec value))
    chunk1 <- Right (W.putNumber 4 (ros2Builtin_interfacesMsgDuration_nanosec value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested builtin_interfaces/msg/Duration.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Builtin_interfacesMsgDuration :: W.Parser Ros2Builtin_interfacesMsgDuration
readRos2Builtin_interfacesMsgDuration = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value = Ros2Builtin_interfacesMsgDuration value0 value1
    case encodeRos2Builtin_interfacesMsgDuration value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete builtin_interfaces/msg/Duration.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Builtin_interfacesMsgDuration :: [Word8] -> Either Word32 Ros2Builtin_interfacesMsgDuration
decodeRos2Builtin_interfacesMsgDuration bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Builtin_interfacesMsgDuration bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original builtin_interfaces/msg/Time value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime
    {
    -- | @brief Original builtin_interfaces/msg/Time.sec field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Builtin_interfacesMsgTime_sec :: Int32
    ,
    -- | @brief Original builtin_interfaces/msg/Time.nanosec field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Builtin_interfacesMsgTime_nanosec :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Builtin_interfacesMsgTimeCodecIdentity :: String
ros2Builtin_interfacesMsgTimeCodecIdentity = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
-- | @brief Encode every field of complete builtin_interfaces/msg/Time.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Builtin_interfacesMsgTime :: Ros2Builtin_interfacesMsgTime -> Either Word32 [Word8]
encodeRos2Builtin_interfacesMsgTime value = do
    if ros2Builtin_interfacesMsgTime_nanosec value >= 1000000000 then Left 22 else Right ()
    chunk0 <- Right (W.putNumber 4 (ros2Builtin_interfacesMsgTime_sec value))
    chunk1 <- Right (W.putNumber 4 (ros2Builtin_interfacesMsgTime_nanosec value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested builtin_interfaces/msg/Time.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Builtin_interfacesMsgTime :: W.Parser Ros2Builtin_interfacesMsgTime
readRos2Builtin_interfacesMsgTime = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value = Ros2Builtin_interfacesMsgTime value0 value1
    case encodeRos2Builtin_interfacesMsgTime value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete builtin_interfaces/msg/Time.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Builtin_interfacesMsgTime :: [Word8] -> Either Word32 Ros2Builtin_interfacesMsgTime
decodeRos2Builtin_interfacesMsgTime bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Builtin_interfacesMsgTime bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original std_msgs/msg/Header value.
-- | @details Retain every original field in declaration order. Canonical extent 12..76 bytes.
data Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader
    {
    -- | @brief Original std_msgs/msg/Header.stamp field.
    -- | @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Std_msgsMsgHeader_stamp :: Ros2Builtin_interfacesMsgTime
    ,
    -- | @brief Original std_msgs/msg/Header.frame_id field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Std_msgsMsgHeader_frame_id :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Std_msgsMsgHeaderCodecIdentity :: String
ros2Std_msgsMsgHeaderCodecIdentity = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"
-- | @brief Encode every field of complete std_msgs/msg/Header.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Std_msgsMsgHeader :: Ros2Std_msgsMsgHeader -> Either Word32 [Word8]
encodeRos2Std_msgsMsgHeader value = do
    chunk0 <- encodeRos2Builtin_interfacesMsgTime (ros2Std_msgsMsgHeader_stamp value)
    chunk1 <- W.putText 64 (ros2Std_msgsMsgHeader_frame_id value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 76 then Left 22 else Right bytes
-- | @brief Read every field of nested std_msgs/msg/Header.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Std_msgsMsgHeader :: W.Parser Ros2Std_msgsMsgHeader
readRos2Std_msgsMsgHeader = do
    value0 <- readRos2Builtin_interfacesMsgTime
    value1 <- W.text 64
    let value = Ros2Std_msgsMsgHeader value0 value1
    case encodeRos2Std_msgsMsgHeader value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete std_msgs/msg/Header.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Std_msgsMsgHeader :: [Word8] -> Either Word32 Ros2Std_msgsMsgHeader
decodeRos2Std_msgsMsgHeader bytes
    | length bytes < 12 || length bytes > 76 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Std_msgsMsgHeader bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original trajectory_msgs/msg/JointTrajectoryPoint value.
-- | @details Retain every original field in declaration order. Canonical extent 24..408 bytes.
data Ros2Trajectory_msgsMsgJointTrajectoryPoint = Ros2Trajectory_msgsMsgJointTrajectoryPoint
    {
    -- | @brief Original trajectory_msgs/msg/JointTrajectoryPoint.positions field.
    -- | @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Trajectory_msgsMsgJointTrajectoryPoint_positions :: [Double]
    ,
    -- | @brief Original trajectory_msgs/msg/JointTrajectoryPoint.velocities field.
    -- | @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities :: [Double]
    ,
    -- | @brief Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations field.
    -- | @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations :: [Double]
    ,
    -- | @brief Original trajectory_msgs/msg/JointTrajectoryPoint.effort field.
    -- | @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Trajectory_msgsMsgJointTrajectoryPoint_effort :: [Double]
    ,
    -- | @brief Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start field.
    -- | @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Trajectory_msgsMsgJointTrajectoryPoint_time_from_start :: Ros2Builtin_interfacesMsgDuration
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Trajectory_msgsMsgJointTrajectoryPointCodecIdentity :: String
ros2Trajectory_msgsMsgJointTrajectoryPointCodecIdentity = "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5"
-- | @brief Encode every field of complete trajectory_msgs/msg/JointTrajectoryPoint.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Trajectory_msgsMsgJointTrajectoryPoint :: Ros2Trajectory_msgsMsgJointTrajectoryPoint -> Either Word32 [Word8]
encodeRos2Trajectory_msgsMsgJointTrajectoryPoint value = do
    if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_positions value) <= 12 then Right () else Left 22
    item0 <- concat <$> mapM
        (\element -> finite8 (element) castDoubleToWord64)
        (ros2Trajectory_msgsMsgJointTrajectoryPoint_positions value)
    chunk0 <- Right (W.putNumber 4 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_positions value)) ++ item0)
    if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities value) <= 12 then Right () else Left 22
    item1 <- concat <$> mapM
        (\element -> finite8 (element) castDoubleToWord64)
        (ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities value)
    chunk1 <- Right (W.putNumber 4 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities value)) ++ item1)
    if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations value) <= 12 then Right () else Left 22
    item2 <- concat <$> mapM
        (\element -> finite8 (element) castDoubleToWord64)
        (ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations value)
    chunk2 <- Right (W.putNumber 4 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations value)) ++ item2)
    if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_effort value) <= 12 then Right () else Left 22
    item3 <- concat <$> mapM
        (\element -> finite8 (element) castDoubleToWord64)
        (ros2Trajectory_msgsMsgJointTrajectoryPoint_effort value)
    chunk3 <- Right (W.putNumber 4 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_effort value)) ++ item3)
    chunk4 <- encodeRos2Builtin_interfacesMsgDuration (ros2Trajectory_msgsMsgJointTrajectoryPoint_time_from_start value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4]
    if length bytes > 408 then Left 22 else Right bytes
-- | @brief Read every field of nested trajectory_msgs/msg/JointTrajectoryPoint.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Trajectory_msgsMsgJointTrajectoryPoint :: W.Parser Ros2Trajectory_msgsMsgJointTrajectoryPoint
readRos2Trajectory_msgsMsgJointTrajectoryPoint = do
    count0 <- W.number 4
    if count0 > 12 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (castWord64ToDouble <$> W.number 8)
    count1 <- W.number 4
    if count1 > 12 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (castWord64ToDouble <$> W.number 8)
    count2 <- W.number 4
    if count2 > 12 then W.reject else pure ()
    value2 <- replicateM (fromIntegral count2) (castWord64ToDouble <$> W.number 8)
    count3 <- W.number 4
    if count3 > 12 then W.reject else pure ()
    value3 <- replicateM (fromIntegral count3) (castWord64ToDouble <$> W.number 8)
    value4 <- readRos2Builtin_interfacesMsgDuration
    let value = Ros2Trajectory_msgsMsgJointTrajectoryPoint value0 value1 value2 value3 value4
    case encodeRos2Trajectory_msgsMsgJointTrajectoryPoint value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectoryPoint.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Trajectory_msgsMsgJointTrajectoryPoint :: [Word8] -> Either Word32 Ros2Trajectory_msgsMsgJointTrajectoryPoint
decodeRos2Trajectory_msgsMsgJointTrajectoryPoint bytes
    | length bytes < 24 || length bytes > 408 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Trajectory_msgsMsgJointTrajectoryPoint bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original trajectory_msgs/msg/JointTrajectory value.
-- | @details Retain every original field in declaration order. Canonical extent 20..4164 bytes.
data Ros2Trajectory_msgsMsgJointTrajectory = Ros2Trajectory_msgsMsgJointTrajectory
    {
    -- | @brief Original trajectory_msgs/msg/JointTrajectory.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Trajectory_msgsMsgJointTrajectory_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original trajectory_msgs/msg/JointTrajectory.joint_names field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    -- | bound/count 12 elements. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Trajectory_msgsMsgJointTrajectory_joint_names :: [[Word8]]
    ,
    -- | @brief Original trajectory_msgs/msg/JointTrajectory.points field.
    -- | @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Shape sequence;
    -- | bound/count 8 elements. Preserve declared units, frame, signedness and field order. Backing
    -- | storage belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Trajectory_msgsMsgJointTrajectory_points :: [Ros2Trajectory_msgsMsgJointTrajectoryPoint]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Trajectory_msgsMsgJointTrajectoryCodecIdentity :: String
ros2Trajectory_msgsMsgJointTrajectoryCodecIdentity = "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0"
-- | @brief Encode every field of complete trajectory_msgs/msg/JointTrajectory.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Trajectory_msgsMsgJointTrajectory :: Ros2Trajectory_msgsMsgJointTrajectory -> Either Word32 [Word8]
encodeRos2Trajectory_msgsMsgJointTrajectory value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Trajectory_msgsMsgJointTrajectory_header value)
    if length (ros2Trajectory_msgsMsgJointTrajectory_joint_names value) <= 12 then Right () else Left 22
    item1 <- concat <$> mapM
        (\element -> W.putText 64 (element))
        (ros2Trajectory_msgsMsgJointTrajectory_joint_names value)
    chunk1 <- Right (W.putNumber 4 (length (ros2Trajectory_msgsMsgJointTrajectory_joint_names value)) ++ item1)
    if length (ros2Trajectory_msgsMsgJointTrajectory_points value) <= 8 then Right () else Left 22
    item2 <- concat <$> mapM
        (\element -> encodeRos2Trajectory_msgsMsgJointTrajectoryPoint (element))
        (ros2Trajectory_msgsMsgJointTrajectory_points value)
    chunk2 <- Right (W.putNumber 4 (length (ros2Trajectory_msgsMsgJointTrajectory_points value)) ++ item2)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 4164 then Left 22 else Right bytes
-- | @brief Read every field of nested trajectory_msgs/msg/JointTrajectory.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Trajectory_msgsMsgJointTrajectory :: W.Parser Ros2Trajectory_msgsMsgJointTrajectory
readRos2Trajectory_msgsMsgJointTrajectory = do
    value0 <- readRos2Std_msgsMsgHeader
    count1 <- W.number 4
    if count1 > 12 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (W.text 64)
    count2 <- W.number 4
    if count2 > 8 then W.reject else pure ()
    value2 <- replicateM (fromIntegral count2) (readRos2Trajectory_msgsMsgJointTrajectoryPoint)
    let value = Ros2Trajectory_msgsMsgJointTrajectory value0 value1 value2
    case encodeRos2Trajectory_msgsMsgJointTrajectory value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectory.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Trajectory_msgsMsgJointTrajectory :: [Word8] -> Either Word32 Ros2Trajectory_msgsMsgJointTrajectory
decodeRos2Trajectory_msgsMsgJointTrajectory bytes
    | length bytes < 20 || length bytes > 4164 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Trajectory_msgsMsgJointTrajectory bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original geometry_msgs/msg/Vector3 value.
-- | @details Retain every original field in declaration order. Canonical extent 24..24 bytes.
data Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3
    {
    -- | @brief Original geometry_msgs/msg/Vector3.x field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Geometry_msgsMsgVector3_x :: Double
    ,
    -- | @brief Original geometry_msgs/msg/Vector3.y field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Geometry_msgsMsgVector3_y :: Double
    ,
    -- | @brief Original geometry_msgs/msg/Vector3.z field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Geometry_msgsMsgVector3_z :: Double
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Geometry_msgsMsgVector3CodecIdentity :: String
ros2Geometry_msgsMsgVector3CodecIdentity = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"
-- | @brief Encode every field of complete geometry_msgs/msg/Vector3.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Geometry_msgsMsgVector3 :: Ros2Geometry_msgsMsgVector3 -> Either Word32 [Word8]
encodeRos2Geometry_msgsMsgVector3 value = do
    chunk0 <- finite8 (ros2Geometry_msgsMsgVector3_x value) castDoubleToWord64
    chunk1 <- finite8 (ros2Geometry_msgsMsgVector3_y value) castDoubleToWord64
    chunk2 <- finite8 (ros2Geometry_msgsMsgVector3_z value) castDoubleToWord64
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 24 then Left 22 else Right bytes
-- | @brief Read every field of nested geometry_msgs/msg/Vector3.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Geometry_msgsMsgVector3 :: W.Parser Ros2Geometry_msgsMsgVector3
readRos2Geometry_msgsMsgVector3 = do
    value0 <- castWord64ToDouble <$> W.number 8
    value1 <- castWord64ToDouble <$> W.number 8
    value2 <- castWord64ToDouble <$> W.number 8
    let value = Ros2Geometry_msgsMsgVector3 value0 value1 value2
    case encodeRos2Geometry_msgsMsgVector3 value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete geometry_msgs/msg/Vector3.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Geometry_msgsMsgVector3 :: [Word8] -> Either Word32 Ros2Geometry_msgsMsgVector3
decodeRos2Geometry_msgsMsgVector3 bytes
    | length bytes < 24 || length bytes > 24 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Geometry_msgsMsgVector3 bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original geometry_msgs/msg/Quaternion value.
-- | @details Retain every original field in declaration order. Canonical extent 32..32 bytes.
data Ros2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion
    {
    -- | @brief Original geometry_msgs/msg/Quaternion.x field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Geometry_msgsMsgQuaternion_x :: Double
    ,
    -- | @brief Original geometry_msgs/msg/Quaternion.y field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Geometry_msgsMsgQuaternion_y :: Double
    ,
    -- | @brief Original geometry_msgs/msg/Quaternion.z field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Geometry_msgsMsgQuaternion_z :: Double
    ,
    -- | @brief Original geometry_msgs/msg/Quaternion.w field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Geometry_msgsMsgQuaternion_w :: Double
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Geometry_msgsMsgQuaternionCodecIdentity :: String
ros2Geometry_msgsMsgQuaternionCodecIdentity = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
-- | @brief Encode every field of complete geometry_msgs/msg/Quaternion.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Geometry_msgsMsgQuaternion :: Ros2Geometry_msgsMsgQuaternion -> Either Word32 [Word8]
encodeRos2Geometry_msgsMsgQuaternion value = do
    chunk0 <- finite8 (ros2Geometry_msgsMsgQuaternion_x value) castDoubleToWord64
    chunk1 <- finite8 (ros2Geometry_msgsMsgQuaternion_y value) castDoubleToWord64
    chunk2 <- finite8 (ros2Geometry_msgsMsgQuaternion_z value) castDoubleToWord64
    chunk3 <- finite8 (ros2Geometry_msgsMsgQuaternion_w value) castDoubleToWord64
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 32 then Left 22 else Right bytes
-- | @brief Read every field of nested geometry_msgs/msg/Quaternion.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Geometry_msgsMsgQuaternion :: W.Parser Ros2Geometry_msgsMsgQuaternion
readRos2Geometry_msgsMsgQuaternion = do
    value0 <- castWord64ToDouble <$> W.number 8
    value1 <- castWord64ToDouble <$> W.number 8
    value2 <- castWord64ToDouble <$> W.number 8
    value3 <- castWord64ToDouble <$> W.number 8
    let value = Ros2Geometry_msgsMsgQuaternion value0 value1 value2 value3
    case encodeRos2Geometry_msgsMsgQuaternion value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete geometry_msgs/msg/Quaternion.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Geometry_msgsMsgQuaternion :: [Word8] -> Either Word32 Ros2Geometry_msgsMsgQuaternion
decodeRos2Geometry_msgsMsgQuaternion bytes
    | length bytes < 32 || length bytes > 32 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Geometry_msgsMsgQuaternion bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original geometry_msgs/msg/Transform value.
-- | @details Retain every original field in declaration order. Canonical extent 56..56 bytes.
data Ros2Geometry_msgsMsgTransform = Ros2Geometry_msgsMsgTransform
    {
    -- | @brief Original geometry_msgs/msg/Transform.translation field.
    -- | @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Geometry_msgsMsgTransform_translation :: Ros2Geometry_msgsMsgVector3
    ,
    -- | @brief Original geometry_msgs/msg/Transform.rotation field.
    -- | @details Original type geometry_msgs/msg/Quaternion. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Geometry_msgsMsgTransform_rotation :: Ros2Geometry_msgsMsgQuaternion
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Geometry_msgsMsgTransformCodecIdentity :: String
ros2Geometry_msgsMsgTransformCodecIdentity = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b"
-- | @brief Encode every field of complete geometry_msgs/msg/Transform.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Geometry_msgsMsgTransform :: Ros2Geometry_msgsMsgTransform -> Either Word32 [Word8]
encodeRos2Geometry_msgsMsgTransform value = do
    chunk0 <- encodeRos2Geometry_msgsMsgVector3 (ros2Geometry_msgsMsgTransform_translation value)
    chunk1 <- encodeRos2Geometry_msgsMsgQuaternion (ros2Geometry_msgsMsgTransform_rotation value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 56 then Left 22 else Right bytes
-- | @brief Read every field of nested geometry_msgs/msg/Transform.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Geometry_msgsMsgTransform :: W.Parser Ros2Geometry_msgsMsgTransform
readRos2Geometry_msgsMsgTransform = do
    value0 <- readRos2Geometry_msgsMsgVector3
    value1 <- readRos2Geometry_msgsMsgQuaternion
    let value = Ros2Geometry_msgsMsgTransform value0 value1
    case encodeRos2Geometry_msgsMsgTransform value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete geometry_msgs/msg/Transform.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Geometry_msgsMsgTransform :: [Word8] -> Either Word32 Ros2Geometry_msgsMsgTransform
decodeRos2Geometry_msgsMsgTransform bytes
    | length bytes < 56 || length bytes > 56 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Geometry_msgsMsgTransform bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original geometry_msgs/msg/Twist value.
-- | @details Retain every original field in declaration order. Canonical extent 48..48 bytes.
data Ros2Geometry_msgsMsgTwist = Ros2Geometry_msgsMsgTwist
    {
    -- | @brief Original geometry_msgs/msg/Twist.linear field.
    -- | @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Geometry_msgsMsgTwist_linear :: Ros2Geometry_msgsMsgVector3
    ,
    -- | @brief Original geometry_msgs/msg/Twist.angular field.
    -- | @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Geometry_msgsMsgTwist_angular :: Ros2Geometry_msgsMsgVector3
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Geometry_msgsMsgTwistCodecIdentity :: String
ros2Geometry_msgsMsgTwistCodecIdentity = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"
-- | @brief Encode every field of complete geometry_msgs/msg/Twist.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Geometry_msgsMsgTwist :: Ros2Geometry_msgsMsgTwist -> Either Word32 [Word8]
encodeRos2Geometry_msgsMsgTwist value = do
    chunk0 <- encodeRos2Geometry_msgsMsgVector3 (ros2Geometry_msgsMsgTwist_linear value)
    chunk1 <- encodeRos2Geometry_msgsMsgVector3 (ros2Geometry_msgsMsgTwist_angular value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 48 then Left 22 else Right bytes
-- | @brief Read every field of nested geometry_msgs/msg/Twist.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Geometry_msgsMsgTwist :: W.Parser Ros2Geometry_msgsMsgTwist
readRos2Geometry_msgsMsgTwist = do
    value0 <- readRos2Geometry_msgsMsgVector3
    value1 <- readRos2Geometry_msgsMsgVector3
    let value = Ros2Geometry_msgsMsgTwist value0 value1
    case encodeRos2Geometry_msgsMsgTwist value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete geometry_msgs/msg/Twist.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Geometry_msgsMsgTwist :: [Word8] -> Either Word32 Ros2Geometry_msgsMsgTwist
decodeRos2Geometry_msgsMsgTwist bytes
    | length bytes < 48 || length bytes > 48 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Geometry_msgsMsgTwist bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
-- | @details Retain every original field in declaration order. Canonical extent 20..324 bytes.
data Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
    {
    -- | @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms field.
    -- | @details Original type geometry_msgs/msg/Transform. Shape sequence; bound/count 2 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_transforms :: [Ros2Geometry_msgsMsgTransform]
    ,
    -- | @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities field.
    -- | @details Original type geometry_msgs/msg/Twist. Shape sequence; bound/count 2 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_velocities :: [Ros2Geometry_msgsMsgTwist]
    ,
    -- | @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations field.
    -- | @details Original type geometry_msgs/msg/Twist. Shape sequence; bound/count 2 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_accelerations :: [Ros2Geometry_msgsMsgTwist]
    ,
    -- | @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start field.
    -- | @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_time_from_start :: Ros2Builtin_interfacesMsgDuration
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodecIdentity :: String
ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodecIdentity = "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242"
-- | @brief Encode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint -> Either Word32 [Word8]
encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value = do
    if length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_transforms value) <= 2 then Right () else Left 22
    item0 <- concat <$> mapM
        (\element -> encodeRos2Geometry_msgsMsgTransform (element))
        (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_transforms value)
    chunk0 <- Right (W.putNumber 4 (length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_transforms value)) ++ item0)
    if length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_velocities value) <= 2 then Right () else Left 22
    item1 <- concat <$> mapM
        (\element -> encodeRos2Geometry_msgsMsgTwist (element))
        (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_velocities value)
    chunk1 <- Right (W.putNumber 4 (length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_velocities value)) ++ item1)
    if length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_accelerations value) <= 2 then Right () else Left 22
    item2 <- concat <$> mapM
        (\element -> encodeRos2Geometry_msgsMsgTwist (element))
        (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_accelerations value)
    chunk2 <- Right (W.putNumber 4 (length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_accelerations value)) ++ item2)
    chunk3 <- encodeRos2Builtin_interfacesMsgDuration (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_time_from_start value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 324 then Left 22 else Right bytes
-- | @brief Read every field of nested trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: W.Parser Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = do
    count0 <- W.number 4
    if count0 > 2 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (readRos2Geometry_msgsMsgTransform)
    count1 <- W.number 4
    if count1 > 2 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (readRos2Geometry_msgsMsgTwist)
    count2 <- W.number 4
    if count2 > 2 then W.reject else pure ()
    value2 <- replicateM (fromIntegral count2) (readRos2Geometry_msgsMsgTwist)
    value3 <- readRos2Builtin_interfacesMsgDuration
    let value = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value0 value1 value2 value3
    case encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: [Word8] -> Either Word32 Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint bytes
    | length bytes < 20 || length bytes > 324 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original trajectory_msgs/msg/MultiDOFJointTrajectory value.
-- | @details Retain every original field in declaration order. Canonical extent 20..1516 bytes.
data Ros2Trajectory_msgsMsgMultiDOFJointTrajectory = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
    {
    -- | @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Trajectory_msgsMsgMultiDOFJointTrajectory_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    -- | bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
    -- | storage belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Trajectory_msgsMsgMultiDOFJointTrajectory_joint_names :: [[Word8]]
    ,
    -- | @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.points field.
    -- | @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Shape sequence;
    -- | bound/count 4 elements. Preserve declared units, frame, signedness and field order. Backing
    -- | storage belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Trajectory_msgsMsgMultiDOFJointTrajectory_points :: [Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodecIdentity :: String
ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodecIdentity = "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401"
-- | @brief Encode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectory.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory -> Either Word32 [Word8]
encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_header value)
    if length (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_joint_names value) <= 2 then Right () else Left 22
    item1 <- concat <$> mapM
        (\element -> W.putText 64 (element))
        (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_joint_names value)
    chunk1 <- Right (W.putNumber 4 (length (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_joint_names value)) ++ item1)
    if length (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_points value) <= 4 then Right () else Left 22
    item2 <- concat <$> mapM
        (\element -> encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint (element))
        (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_points value)
    chunk2 <- Right (W.putNumber 4 (length (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_points value)) ++ item2)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 1516 then Left 22 else Right bytes
-- | @brief Read every field of nested trajectory_msgs/msg/MultiDOFJointTrajectory.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Trajectory_msgsMsgMultiDOFJointTrajectory :: W.Parser Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
readRos2Trajectory_msgsMsgMultiDOFJointTrajectory = do
    value0 <- readRos2Std_msgsMsgHeader
    count1 <- W.number 4
    if count1 > 2 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (W.text 64)
    count2 <- W.number 4
    if count2 > 4 then W.reject else pure ()
    value2 <- replicateM (fromIntegral count2) (readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint)
    let value = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value0 value1 value2
    case encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete trajectory_msgs/msg/MultiDOFJointTrajectory.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory :: [Word8] -> Either Word32 Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory bytes
    | length bytes < 20 || length bytes > 1516 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Trajectory_msgsMsgMultiDOFJointTrajectory bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original control_msgs/msg/JointTolerance value.
-- | @details Retain every original field in declaration order. Canonical extent 28..92 bytes.
data Ros2Control_msgsMsgJointTolerance = Ros2Control_msgsMsgJointTolerance
    {
    -- | @brief Original control_msgs/msg/JointTolerance.name field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Control_msgsMsgJointTolerance_name :: [Word8]
    ,
    -- | @brief Original control_msgs/msg/JointTolerance.position field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Control_msgsMsgJointTolerance_position :: Double
    ,
    -- | @brief Original control_msgs/msg/JointTolerance.velocity field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Control_msgsMsgJointTolerance_velocity :: Double
    ,
    -- | @brief Original control_msgs/msg/JointTolerance.acceleration field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Control_msgsMsgJointTolerance_acceleration :: Double
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Control_msgsMsgJointToleranceCodecIdentity :: String
ros2Control_msgsMsgJointToleranceCodecIdentity = "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2"
-- | @brief Encode every field of complete control_msgs/msg/JointTolerance.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Control_msgsMsgJointTolerance :: Ros2Control_msgsMsgJointTolerance -> Either Word32 [Word8]
encodeRos2Control_msgsMsgJointTolerance value = do
    chunk0 <- W.putText 64 (ros2Control_msgsMsgJointTolerance_name value)
    chunk1 <- finite8 (ros2Control_msgsMsgJointTolerance_position value) castDoubleToWord64
    chunk2 <- finite8 (ros2Control_msgsMsgJointTolerance_velocity value) castDoubleToWord64
    chunk3 <- finite8 (ros2Control_msgsMsgJointTolerance_acceleration value) castDoubleToWord64
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 92 then Left 22 else Right bytes
-- | @brief Read every field of nested control_msgs/msg/JointTolerance.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Control_msgsMsgJointTolerance :: W.Parser Ros2Control_msgsMsgJointTolerance
readRos2Control_msgsMsgJointTolerance = do
    value0 <- W.text 64
    value1 <- castWord64ToDouble <$> W.number 8
    value2 <- castWord64ToDouble <$> W.number 8
    value3 <- castWord64ToDouble <$> W.number 8
    let value = Ros2Control_msgsMsgJointTolerance value0 value1 value2 value3
    case encodeRos2Control_msgsMsgJointTolerance value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete control_msgs/msg/JointTolerance.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Control_msgsMsgJointTolerance :: [Word8] -> Either Word32 Ros2Control_msgsMsgJointTolerance
decodeRos2Control_msgsMsgJointTolerance bytes
    | length bytes < 28 || length bytes > 92 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Control_msgsMsgJointTolerance bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original control_msgs/msg/JointComponentTolerance value.
-- | @details Retain every original field in declaration order. Canonical extent 30..542 bytes.
data Ros2Control_msgsMsgJointComponentTolerance = Ros2Control_msgsMsgJointComponentTolerance
    {
    -- | @brief Original control_msgs/msg/JointComponentTolerance.joint_name field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Control_msgsMsgJointComponentTolerance_joint_name :: [Word8]
    ,
    -- | @brief Original control_msgs/msg/JointComponentTolerance.component field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Control_msgsMsgJointComponentTolerance_component :: Word16
    ,
    -- | @brief Original control_msgs/msg/JointComponentTolerance.position field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Control_msgsMsgJointComponentTolerance_position :: Double
    ,
    -- | @brief Original control_msgs/msg/JointComponentTolerance.velocity field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Control_msgsMsgJointComponentTolerance_velocity :: Double
    ,
    -- | @brief Original control_msgs/msg/JointComponentTolerance.acceleration field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Control_msgsMsgJointComponentTolerance_acceleration :: Double
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Control_msgsMsgJointComponentToleranceCodecIdentity :: String
ros2Control_msgsMsgJointComponentToleranceCodecIdentity = "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342"
-- | @brief Original control_msgs/msg/JointComponentTolerance.X_AXIS constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Control_msgsMsgJointComponentTolerance_X_AXIS :: Word16
ros2Control_msgsMsgJointComponentTolerance_X_AXIS = 1
-- | @brief Original control_msgs/msg/JointComponentTolerance.Y_AXIS constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Control_msgsMsgJointComponentTolerance_Y_AXIS :: Word16
ros2Control_msgsMsgJointComponentTolerance_Y_AXIS = 2
-- | @brief Original control_msgs/msg/JointComponentTolerance.Z_AXIS constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Control_msgsMsgJointComponentTolerance_Z_AXIS :: Word16
ros2Control_msgsMsgJointComponentTolerance_Z_AXIS = 3
-- | @brief Original control_msgs/msg/JointComponentTolerance.TRANSLATION constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Control_msgsMsgJointComponentTolerance_TRANSLATION :: Word16
ros2Control_msgsMsgJointComponentTolerance_TRANSLATION = 4
-- | @brief Original control_msgs/msg/JointComponentTolerance.ROTATION constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Control_msgsMsgJointComponentTolerance_ROTATION :: Word16
ros2Control_msgsMsgJointComponentTolerance_ROTATION = 5
-- | @brief Encode every field of complete control_msgs/msg/JointComponentTolerance.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Control_msgsMsgJointComponentTolerance :: Ros2Control_msgsMsgJointComponentTolerance -> Either Word32 [Word8]
encodeRos2Control_msgsMsgJointComponentTolerance value = do
    chunk0 <- W.putText 512 (ros2Control_msgsMsgJointComponentTolerance_joint_name value)
    chunk1 <- Right (W.putNumber 2 (ros2Control_msgsMsgJointComponentTolerance_component value))
    chunk2 <- finite8 (ros2Control_msgsMsgJointComponentTolerance_position value) castDoubleToWord64
    chunk3 <- finite8 (ros2Control_msgsMsgJointComponentTolerance_velocity value) castDoubleToWord64
    chunk4 <- finite8 (ros2Control_msgsMsgJointComponentTolerance_acceleration value) castDoubleToWord64
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4]
    if length bytes > 542 then Left 22 else Right bytes
-- | @brief Read every field of nested control_msgs/msg/JointComponentTolerance.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Control_msgsMsgJointComponentTolerance :: W.Parser Ros2Control_msgsMsgJointComponentTolerance
readRos2Control_msgsMsgJointComponentTolerance = do
    value0 <- W.text 512
    value1 <- fromIntegral <$> W.number 2
    value2 <- castWord64ToDouble <$> W.number 8
    value3 <- castWord64ToDouble <$> W.number 8
    value4 <- castWord64ToDouble <$> W.number 8
    let value = Ros2Control_msgsMsgJointComponentTolerance value0 value1 value2 value3 value4
    case encodeRos2Control_msgsMsgJointComponentTolerance value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete control_msgs/msg/JointComponentTolerance.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Control_msgsMsgJointComponentTolerance :: [Word8] -> Either Word32 Ros2Control_msgsMsgJointComponentTolerance
decodeRos2Control_msgsMsgJointComponentTolerance bytes
    | length bytes < 30 || length bytes > 542 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Control_msgsMsgJointComponentTolerance bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original control_msgs/action/FollowJointTrajectory_Goal value.
-- | @details Retain every original field in declaration order. Canonical extent 64..20920 bytes.
data Ros2Control_msgsActionFollowJointTrajectory_Goal = Ros2Control_msgsActionFollowJointTrajectory_Goal
    {
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Goal.trajectory field.
    -- | @details Original type trajectory_msgs/msg/JointTrajectory. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Control_msgsActionFollowJointTrajectory_Goal_trajectory :: Ros2Trajectory_msgsMsgJointTrajectory
    ,
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory field.
    -- | @details Original type trajectory_msgs/msg/MultiDOFJointTrajectory. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Control_msgsActionFollowJointTrajectory_Goal_multi_dof_trajectory :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
    ,
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Goal.path_tolerance field.
    -- | @details Original type control_msgs/msg/JointTolerance. Shape sequence; bound/count 12
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Control_msgsActionFollowJointTrajectory_Goal_path_tolerance :: [Ros2Control_msgsMsgJointTolerance]
    ,
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance
    -- | field.
    -- | @details Original type control_msgs/msg/JointComponentTolerance. Shape sequence;
    -- | bound/count 12 elements. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Control_msgsActionFollowJointTrajectory_Goal_component_path_tolerance :: [Ros2Control_msgsMsgJointComponentTolerance]
    ,
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance field.
    -- | @details Original type control_msgs/msg/JointTolerance. Shape sequence; bound/count 12
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Control_msgsActionFollowJointTrajectory_Goal_goal_tolerance :: [Ros2Control_msgsMsgJointTolerance]
    ,
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance
    -- | field.
    -- | @details Original type control_msgs/msg/JointComponentTolerance. Shape sequence;
    -- | bound/count 12 elements. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Control_msgsActionFollowJointTrajectory_Goal_component_goal_tolerance :: [Ros2Control_msgsMsgJointComponentTolerance]
    ,
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance field.
    -- | @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Control_msgsActionFollowJointTrajectory_Goal_goal_time_tolerance :: Ros2Builtin_interfacesMsgDuration
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Control_msgsActionFollowJointTrajectory_GoalCodecIdentity :: String
ros2Control_msgsActionFollowJointTrajectory_GoalCodecIdentity = "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16"
-- | @brief Encode every field of complete control_msgs/action/FollowJointTrajectory_Goal.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Control_msgsActionFollowJointTrajectory_Goal :: Ros2Control_msgsActionFollowJointTrajectory_Goal -> Either Word32 [Word8]
encodeRos2Control_msgsActionFollowJointTrajectory_Goal value = do
    chunk0 <- encodeRos2Trajectory_msgsMsgJointTrajectory (ros2Control_msgsActionFollowJointTrajectory_Goal_trajectory value)
    chunk1 <- encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory (ros2Control_msgsActionFollowJointTrajectory_Goal_multi_dof_trajectory value)
    if length (ros2Control_msgsActionFollowJointTrajectory_Goal_path_tolerance value) <= 12 then Right () else Left 22
    item2 <- concat <$> mapM
        (\element -> encodeRos2Control_msgsMsgJointTolerance (element))
        (ros2Control_msgsActionFollowJointTrajectory_Goal_path_tolerance value)
    chunk2 <- Right (W.putNumber 4 (length (ros2Control_msgsActionFollowJointTrajectory_Goal_path_tolerance value)) ++ item2)
    if length (ros2Control_msgsActionFollowJointTrajectory_Goal_component_path_tolerance value) <= 12 then Right () else Left 22
    item3 <- concat <$> mapM
        (\element -> encodeRos2Control_msgsMsgJointComponentTolerance (element))
        (ros2Control_msgsActionFollowJointTrajectory_Goal_component_path_tolerance value)
    chunk3 <- Right (W.putNumber 4 (length (ros2Control_msgsActionFollowJointTrajectory_Goal_component_path_tolerance value)) ++ item3)
    if length (ros2Control_msgsActionFollowJointTrajectory_Goal_goal_tolerance value) <= 12 then Right () else Left 22
    item4 <- concat <$> mapM
        (\element -> encodeRos2Control_msgsMsgJointTolerance (element))
        (ros2Control_msgsActionFollowJointTrajectory_Goal_goal_tolerance value)
    chunk4 <- Right (W.putNumber 4 (length (ros2Control_msgsActionFollowJointTrajectory_Goal_goal_tolerance value)) ++ item4)
    if length (ros2Control_msgsActionFollowJointTrajectory_Goal_component_goal_tolerance value) <= 12 then Right () else Left 22
    item5 <- concat <$> mapM
        (\element -> encodeRos2Control_msgsMsgJointComponentTolerance (element))
        (ros2Control_msgsActionFollowJointTrajectory_Goal_component_goal_tolerance value)
    chunk5 <- Right (W.putNumber 4 (length (ros2Control_msgsActionFollowJointTrajectory_Goal_component_goal_tolerance value)) ++ item5)
    chunk6 <- encodeRos2Builtin_interfacesMsgDuration (ros2Control_msgsActionFollowJointTrajectory_Goal_goal_time_tolerance value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5, chunk6]
    if length bytes > 20920 then Left 22 else Right bytes
-- | @brief Read every field of nested control_msgs/action/FollowJointTrajectory_Goal.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Control_msgsActionFollowJointTrajectory_Goal :: W.Parser Ros2Control_msgsActionFollowJointTrajectory_Goal
readRos2Control_msgsActionFollowJointTrajectory_Goal = do
    value0 <- readRos2Trajectory_msgsMsgJointTrajectory
    value1 <- readRos2Trajectory_msgsMsgMultiDOFJointTrajectory
    count2 <- W.number 4
    if count2 > 12 then W.reject else pure ()
    value2 <- replicateM (fromIntegral count2) (readRos2Control_msgsMsgJointTolerance)
    count3 <- W.number 4
    if count3 > 12 then W.reject else pure ()
    value3 <- replicateM (fromIntegral count3) (readRos2Control_msgsMsgJointComponentTolerance)
    count4 <- W.number 4
    if count4 > 12 then W.reject else pure ()
    value4 <- replicateM (fromIntegral count4) (readRos2Control_msgsMsgJointTolerance)
    count5 <- W.number 4
    if count5 > 12 then W.reject else pure ()
    value5 <- replicateM (fromIntegral count5) (readRos2Control_msgsMsgJointComponentTolerance)
    value6 <- readRos2Builtin_interfacesMsgDuration
    let value = Ros2Control_msgsActionFollowJointTrajectory_Goal value0 value1 value2 value3 value4 value5 value6
    case encodeRos2Control_msgsActionFollowJointTrajectory_Goal value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Goal.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Control_msgsActionFollowJointTrajectory_Goal :: [Word8] -> Either Word32 Ros2Control_msgsActionFollowJointTrajectory_Goal
decodeRos2Control_msgsActionFollowJointTrajectory_Goal bytes
    | length bytes < 64 || length bytes > 20920 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Control_msgsActionFollowJointTrajectory_Goal bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original control_msgs/action/FollowJointTrajectory_Result value.
-- | @details Retain every original field in declaration order. Canonical extent 8..4104 bytes.
data Ros2Control_msgsActionFollowJointTrajectory_Result = Ros2Control_msgsActionFollowJointTrajectory_Result
    {
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Result.error_code field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Control_msgsActionFollowJointTrajectory_Result_error_code :: Int32
    ,
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Result.error_string field.
    -- | @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Control_msgsActionFollowJointTrajectory_Result_error_string :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Control_msgsActionFollowJointTrajectory_ResultCodecIdentity :: String
ros2Control_msgsActionFollowJointTrajectory_ResultCodecIdentity = "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70"
-- | @brief Original control_msgs/action/FollowJointTrajectory_Result.SUCCESSFUL constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Control_msgsActionFollowJointTrajectory_Result_SUCCESSFUL :: Int32
ros2Control_msgsActionFollowJointTrajectory_Result_SUCCESSFUL = 0
-- | @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_GOAL constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_GOAL :: Int32
ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_GOAL = -1
-- | @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_JOINTS constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_JOINTS :: Int32
ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_JOINTS = -2
-- | @brief Original control_msgs/action/FollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Control_msgsActionFollowJointTrajectory_Result_OLD_HEADER_TIMESTAMP :: Int32
ros2Control_msgsActionFollowJointTrajectory_Result_OLD_HEADER_TIMESTAMP = -3
-- | @brief Original control_msgs/action/FollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Control_msgsActionFollowJointTrajectory_Result_PATH_TOLERANCE_VIOLATED :: Int32
ros2Control_msgsActionFollowJointTrajectory_Result_PATH_TOLERANCE_VIOLATED = -4
-- | @brief Original control_msgs/action/FollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Control_msgsActionFollowJointTrajectory_Result_GOAL_TOLERANCE_VIOLATED :: Int32
ros2Control_msgsActionFollowJointTrajectory_Result_GOAL_TOLERANCE_VIOLATED = -5
-- | @brief Encode every field of complete control_msgs/action/FollowJointTrajectory_Result.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Control_msgsActionFollowJointTrajectory_Result :: Ros2Control_msgsActionFollowJointTrajectory_Result -> Either Word32 [Word8]
encodeRos2Control_msgsActionFollowJointTrajectory_Result value = do
    chunk0 <- Right (W.putNumber 4 (ros2Control_msgsActionFollowJointTrajectory_Result_error_code value))
    chunk1 <- W.putText 4096 (ros2Control_msgsActionFollowJointTrajectory_Result_error_string value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 4104 then Left 22 else Right bytes
-- | @brief Read every field of nested control_msgs/action/FollowJointTrajectory_Result.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Control_msgsActionFollowJointTrajectory_Result :: W.Parser Ros2Control_msgsActionFollowJointTrajectory_Result
readRos2Control_msgsActionFollowJointTrajectory_Result = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- W.text 4096
    let value = Ros2Control_msgsActionFollowJointTrajectory_Result value0 value1
    case encodeRos2Control_msgsActionFollowJointTrajectory_Result value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Result.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Control_msgsActionFollowJointTrajectory_Result :: [Word8] -> Either Word32 Ros2Control_msgsActionFollowJointTrajectory_Result
decodeRos2Control_msgsActionFollowJointTrajectory_Result bytes
    | length bytes < 8 || length bytes > 4104 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Control_msgsActionFollowJointTrajectory_Result bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original control_msgs/action/FollowJointTrajectory_Feedback value.
-- | @details Retain every original field in declaration order. Canonical extent 152..4128 bytes.
data Ros2Control_msgsActionFollowJointTrajectory_Feedback = Ros2Control_msgsActionFollowJointTrajectory_Feedback
    {
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Feedback.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Control_msgsActionFollowJointTrajectory_Feedback_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Feedback.joint_names field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    -- | bound/count 12 elements. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Control_msgsActionFollowJointTrajectory_Feedback_joint_names :: [[Word8]]
    ,
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Feedback.desired field.
    -- | @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Control_msgsActionFollowJointTrajectory_Feedback_desired :: Ros2Trajectory_msgsMsgJointTrajectoryPoint
    ,
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Feedback.actual field.
    -- | @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Control_msgsActionFollowJointTrajectory_Feedback_actual :: Ros2Trajectory_msgsMsgJointTrajectoryPoint
    ,
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Feedback.error field.
    -- | @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Control_msgsActionFollowJointTrajectory_Feedback_error :: Ros2Trajectory_msgsMsgJointTrajectoryPoint
    ,
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names
    -- | field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Shape sequence;
    -- | bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
    -- | storage belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_joint_names :: [[Word8]]
    ,
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired field.
    -- | @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_desired :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
    ,
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual field.
    -- | @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_actual :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
    ,
    -- | @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error field.
    -- | @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_error :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Control_msgsActionFollowJointTrajectory_FeedbackCodecIdentity :: String
ros2Control_msgsActionFollowJointTrajectory_FeedbackCodecIdentity = "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb"
-- | @brief Encode every field of complete control_msgs/action/FollowJointTrajectory_Feedback.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Control_msgsActionFollowJointTrajectory_Feedback :: Ros2Control_msgsActionFollowJointTrajectory_Feedback -> Either Word32 [Word8]
encodeRos2Control_msgsActionFollowJointTrajectory_Feedback value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Control_msgsActionFollowJointTrajectory_Feedback_header value)
    if length (ros2Control_msgsActionFollowJointTrajectory_Feedback_joint_names value) <= 12 then Right () else Left 22
    item1 <- concat <$> mapM
        (\element -> W.putText 64 (element))
        (ros2Control_msgsActionFollowJointTrajectory_Feedback_joint_names value)
    chunk1 <- Right (W.putNumber 4 (length (ros2Control_msgsActionFollowJointTrajectory_Feedback_joint_names value)) ++ item1)
    chunk2 <- encodeRos2Trajectory_msgsMsgJointTrajectoryPoint (ros2Control_msgsActionFollowJointTrajectory_Feedback_desired value)
    chunk3 <- encodeRos2Trajectory_msgsMsgJointTrajectoryPoint (ros2Control_msgsActionFollowJointTrajectory_Feedback_actual value)
    chunk4 <- encodeRos2Trajectory_msgsMsgJointTrajectoryPoint (ros2Control_msgsActionFollowJointTrajectory_Feedback_error value)
    if length (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_joint_names value) <= 2 then Right () else Left 22
    item5 <- concat <$> mapM
        (\element -> W.putText 512 (element))
        (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_joint_names value)
    chunk5 <- Right (W.putNumber 4 (length (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_joint_names value)) ++ item5)
    chunk6 <- encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_desired value)
    chunk7 <- encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_actual value)
    chunk8 <- encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_error value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5, chunk6, chunk7, chunk8]
    if length bytes > 4128 then Left 22 else Right bytes
-- | @brief Read every field of nested control_msgs/action/FollowJointTrajectory_Feedback.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Control_msgsActionFollowJointTrajectory_Feedback :: W.Parser Ros2Control_msgsActionFollowJointTrajectory_Feedback
readRos2Control_msgsActionFollowJointTrajectory_Feedback = do
    value0 <- readRos2Std_msgsMsgHeader
    count1 <- W.number 4
    if count1 > 12 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (W.text 64)
    value2 <- readRos2Trajectory_msgsMsgJointTrajectoryPoint
    value3 <- readRos2Trajectory_msgsMsgJointTrajectoryPoint
    value4 <- readRos2Trajectory_msgsMsgJointTrajectoryPoint
    count5 <- W.number 4
    if count5 > 2 then W.reject else pure ()
    value5 <- replicateM (fromIntegral count5) (W.text 512)
    value6 <- readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
    value7 <- readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
    value8 <- readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
    let value = Ros2Control_msgsActionFollowJointTrajectory_Feedback
            value0 value1 value2 value3 value4 value5 value6 value7 value8
    case encodeRos2Control_msgsActionFollowJointTrajectory_Feedback value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Feedback.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Control_msgsActionFollowJointTrajectory_Feedback :: [Word8] -> Either Word32 Ros2Control_msgsActionFollowJointTrajectory_Feedback
decodeRos2Control_msgsActionFollowJointTrajectory_Feedback bytes
    | length bytes < 152 || length bytes > 4128 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Control_msgsActionFollowJointTrajectory_Feedback bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original geometry_msgs/msg/TransformStamped value.
-- | @details Retain every original field in declaration order. Canonical extent 72..648 bytes.
data Ros2Geometry_msgsMsgTransformStamped = Ros2Geometry_msgsMsgTransformStamped
    {
    -- | @brief Original geometry_msgs/msg/TransformStamped.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Geometry_msgsMsgTransformStamped_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original geometry_msgs/msg/TransformStamped.child_frame_id field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Geometry_msgsMsgTransformStamped_child_frame_id :: [Word8]
    ,
    -- | @brief Original geometry_msgs/msg/TransformStamped.transform field.
    -- | @details Original type geometry_msgs/msg/Transform. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Geometry_msgsMsgTransformStamped_transform :: Ros2Geometry_msgsMsgTransform
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Geometry_msgsMsgTransformStampedCodecIdentity :: String
ros2Geometry_msgsMsgTransformStampedCodecIdentity = "UWVMROS1_be553b5a9c73b687cde56ff1c381e3c67168fd2c0366830be3c65382c5bbd792"
-- | @brief Encode every field of complete geometry_msgs/msg/TransformStamped.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Geometry_msgsMsgTransformStamped :: Ros2Geometry_msgsMsgTransformStamped -> Either Word32 [Word8]
encodeRos2Geometry_msgsMsgTransformStamped value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Geometry_msgsMsgTransformStamped_header value)
    chunk1 <- W.putText 512 (ros2Geometry_msgsMsgTransformStamped_child_frame_id value)
    chunk2 <- encodeRos2Geometry_msgsMsgTransform (ros2Geometry_msgsMsgTransformStamped_transform value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 648 then Left 22 else Right bytes
-- | @brief Read every field of nested geometry_msgs/msg/TransformStamped.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Geometry_msgsMsgTransformStamped :: W.Parser Ros2Geometry_msgsMsgTransformStamped
readRos2Geometry_msgsMsgTransformStamped = do
    value0 <- readRos2Std_msgsMsgHeader
    value1 <- W.text 512
    value2 <- readRos2Geometry_msgsMsgTransform
    let value = Ros2Geometry_msgsMsgTransformStamped value0 value1 value2
    case encodeRos2Geometry_msgsMsgTransformStamped value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete geometry_msgs/msg/TransformStamped.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Geometry_msgsMsgTransformStamped :: [Word8] -> Either Word32 Ros2Geometry_msgsMsgTransformStamped
decodeRos2Geometry_msgsMsgTransformStamped bytes
    | length bytes < 72 || length bytes > 648 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Geometry_msgsMsgTransformStamped bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/msg/DebugLevel value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Industrial_msgsMsgDebugLevel = Ros2Industrial_msgsMsgDebugLevel
    {
    -- | @brief Original industrial_msgs/msg/DebugLevel.val field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Industrial_msgsMsgDebugLevel_val :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsMsgDebugLevelCodecIdentity :: String
ros2Industrial_msgsMsgDebugLevelCodecIdentity = "UWVMROS1_989475cc5d981d8c5ab91fb091235871f7a1c7d87d246eb2250086e6c3c37c79"
-- | @brief Original industrial_msgs/msg/DebugLevel.DEBUG constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgDebugLevel_DEBUG :: Word8
ros2Industrial_msgsMsgDebugLevel_DEBUG = 5
-- | @brief Original industrial_msgs/msg/DebugLevel.INFO constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgDebugLevel_INFO :: Word8
ros2Industrial_msgsMsgDebugLevel_INFO = 4
-- | @brief Original industrial_msgs/msg/DebugLevel.WARN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgDebugLevel_WARN :: Word8
ros2Industrial_msgsMsgDebugLevel_WARN = 3
-- | @brief Original industrial_msgs/msg/DebugLevel.ERROR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgDebugLevel_ERROR :: Word8
ros2Industrial_msgsMsgDebugLevel_ERROR = 2
-- | @brief Original industrial_msgs/msg/DebugLevel.FATAL constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgDebugLevel_FATAL :: Word8
ros2Industrial_msgsMsgDebugLevel_FATAL = 1
-- | @brief Original industrial_msgs/msg/DebugLevel.NONE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgDebugLevel_NONE :: Word8
ros2Industrial_msgsMsgDebugLevel_NONE = 0
-- | @brief Encode every field of complete industrial_msgs/msg/DebugLevel.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsMsgDebugLevel :: Ros2Industrial_msgsMsgDebugLevel -> Either Word32 [Word8]
encodeRos2Industrial_msgsMsgDebugLevel value = do
    chunk0 <- Right (W.putNumber 1 (ros2Industrial_msgsMsgDebugLevel_val value))
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/msg/DebugLevel.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsMsgDebugLevel :: W.Parser Ros2Industrial_msgsMsgDebugLevel
readRos2Industrial_msgsMsgDebugLevel = do
    value0 <- fromIntegral <$> W.number 1
    let value = Ros2Industrial_msgsMsgDebugLevel value0
    case encodeRos2Industrial_msgsMsgDebugLevel value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/msg/DebugLevel.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsMsgDebugLevel :: [Word8] -> Either Word32 Ros2Industrial_msgsMsgDebugLevel
decodeRos2Industrial_msgsMsgDebugLevel bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsMsgDebugLevel bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/msg/DeviceInfo value.
-- | @details Retain every original field in declaration order. Canonical extent 20..2580 bytes.
data Ros2Industrial_msgsMsgDeviceInfo = Ros2Industrial_msgsMsgDeviceInfo
    {
    -- | @brief Original industrial_msgs/msg/DeviceInfo.model field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Industrial_msgsMsgDeviceInfo_model :: [Word8]
    ,
    -- | @brief Original industrial_msgs/msg/DeviceInfo.serial_number field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Industrial_msgsMsgDeviceInfo_serial_number :: [Word8]
    ,
    -- | @brief Original industrial_msgs/msg/DeviceInfo.hw_version field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Industrial_msgsMsgDeviceInfo_hw_version :: [Word8]
    ,
    -- | @brief Original industrial_msgs/msg/DeviceInfo.sw_version field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Industrial_msgsMsgDeviceInfo_sw_version :: [Word8]
    ,
    -- | @brief Original industrial_msgs/msg/DeviceInfo.address field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Industrial_msgsMsgDeviceInfo_address :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsMsgDeviceInfoCodecIdentity :: String
ros2Industrial_msgsMsgDeviceInfoCodecIdentity = "UWVMROS1_f9a5962800e17495f34dbb73f37373df22f900e528c630497417f78cdecb283b"
-- | @brief Encode every field of complete industrial_msgs/msg/DeviceInfo.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsMsgDeviceInfo :: Ros2Industrial_msgsMsgDeviceInfo -> Either Word32 [Word8]
encodeRos2Industrial_msgsMsgDeviceInfo value = do
    chunk0 <- W.putText 512 (ros2Industrial_msgsMsgDeviceInfo_model value)
    chunk1 <- W.putText 512 (ros2Industrial_msgsMsgDeviceInfo_serial_number value)
    chunk2 <- W.putText 512 (ros2Industrial_msgsMsgDeviceInfo_hw_version value)
    chunk3 <- W.putText 512 (ros2Industrial_msgsMsgDeviceInfo_sw_version value)
    chunk4 <- W.putText 512 (ros2Industrial_msgsMsgDeviceInfo_address value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4]
    if length bytes > 2580 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/msg/DeviceInfo.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsMsgDeviceInfo :: W.Parser Ros2Industrial_msgsMsgDeviceInfo
readRos2Industrial_msgsMsgDeviceInfo = do
    value0 <- W.text 512
    value1 <- W.text 512
    value2 <- W.text 512
    value3 <- W.text 512
    value4 <- W.text 512
    let value = Ros2Industrial_msgsMsgDeviceInfo value0 value1 value2 value3 value4
    case encodeRos2Industrial_msgsMsgDeviceInfo value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/msg/DeviceInfo.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsMsgDeviceInfo :: [Word8] -> Either Word32 Ros2Industrial_msgsMsgDeviceInfo
decodeRos2Industrial_msgsMsgDeviceInfo bytes
    | length bytes < 20 || length bytes > 2580 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsMsgDeviceInfo bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/msg/RobotMode value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Industrial_msgsMsgRobotMode = Ros2Industrial_msgsMsgRobotMode
    {
    -- | @brief Original industrial_msgs/msg/RobotMode.val field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Industrial_msgsMsgRobotMode_val :: Int8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsMsgRobotModeCodecIdentity :: String
ros2Industrial_msgsMsgRobotModeCodecIdentity = "UWVMROS1_4f9173c5e27815ca33be603b8645a22420bda3ab308962127060d2413d092c4c"
-- | @brief Original industrial_msgs/msg/RobotMode.UNKNOWN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgRobotMode_UNKNOWN :: Int8
ros2Industrial_msgsMsgRobotMode_UNKNOWN = -1
-- | @brief Original industrial_msgs/msg/RobotMode.MANUAL constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgRobotMode_MANUAL :: Int8
ros2Industrial_msgsMsgRobotMode_MANUAL = 1
-- | @brief Original industrial_msgs/msg/RobotMode.AUTO constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgRobotMode_AUTO :: Int8
ros2Industrial_msgsMsgRobotMode_AUTO = 2
-- | @brief Encode every field of complete industrial_msgs/msg/RobotMode.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsMsgRobotMode :: Ros2Industrial_msgsMsgRobotMode -> Either Word32 [Word8]
encodeRos2Industrial_msgsMsgRobotMode value = do
    chunk0 <- Right (W.putNumber 1 (ros2Industrial_msgsMsgRobotMode_val value))
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/msg/RobotMode.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsMsgRobotMode :: W.Parser Ros2Industrial_msgsMsgRobotMode
readRos2Industrial_msgsMsgRobotMode = do
    value0 <- fromIntegral <$> W.number 1
    let value = Ros2Industrial_msgsMsgRobotMode value0
    case encodeRos2Industrial_msgsMsgRobotMode value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/msg/RobotMode.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsMsgRobotMode :: [Word8] -> Either Word32 Ros2Industrial_msgsMsgRobotMode
decodeRos2Industrial_msgsMsgRobotMode bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsMsgRobotMode bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/msg/TriState value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Industrial_msgsMsgTriState = Ros2Industrial_msgsMsgTriState
    {
    -- | @brief Original industrial_msgs/msg/TriState.val field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Industrial_msgsMsgTriState_val :: Int8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsMsgTriStateCodecIdentity :: String
ros2Industrial_msgsMsgTriStateCodecIdentity = "UWVMROS1_b7ae62ce19d642ad46e962ffb50cd76c43c96ac673ac36d690f99c1dd8d2a841"
-- | @brief Original industrial_msgs/msg/TriState.UNKNOWN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgTriState_UNKNOWN :: Int8
ros2Industrial_msgsMsgTriState_UNKNOWN = -1
-- | @brief Original industrial_msgs/msg/TriState.TRUE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgTriState_TRUE :: Int8
ros2Industrial_msgsMsgTriState_TRUE = 1
-- | @brief Original industrial_msgs/msg/TriState.ON constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgTriState_ON :: Int8
ros2Industrial_msgsMsgTriState_ON = 1
-- | @brief Original industrial_msgs/msg/TriState.ENABLED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgTriState_ENABLED :: Int8
ros2Industrial_msgsMsgTriState_ENABLED = 1
-- | @brief Original industrial_msgs/msg/TriState.HIGH constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgTriState_HIGH :: Int8
ros2Industrial_msgsMsgTriState_HIGH = 1
-- | @brief Original industrial_msgs/msg/TriState.CLOSED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgTriState_CLOSED :: Int8
ros2Industrial_msgsMsgTriState_CLOSED = 1
-- | @brief Original industrial_msgs/msg/TriState.FALSE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgTriState_FALSE :: Int8
ros2Industrial_msgsMsgTriState_FALSE = 0
-- | @brief Original industrial_msgs/msg/TriState.OFF constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgTriState_OFF :: Int8
ros2Industrial_msgsMsgTriState_OFF = 0
-- | @brief Original industrial_msgs/msg/TriState.DISABLED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgTriState_DISABLED :: Int8
ros2Industrial_msgsMsgTriState_DISABLED = 0
-- | @brief Original industrial_msgs/msg/TriState.LOW constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgTriState_LOW :: Int8
ros2Industrial_msgsMsgTriState_LOW = 0
-- | @brief Original industrial_msgs/msg/TriState.OPEN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgTriState_OPEN :: Int8
ros2Industrial_msgsMsgTriState_OPEN = 0
-- | @brief Encode every field of complete industrial_msgs/msg/TriState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsMsgTriState :: Ros2Industrial_msgsMsgTriState -> Either Word32 [Word8]
encodeRos2Industrial_msgsMsgTriState value = do
    chunk0 <- Right (W.putNumber 1 (ros2Industrial_msgsMsgTriState_val value))
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/msg/TriState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsMsgTriState :: W.Parser Ros2Industrial_msgsMsgTriState
readRos2Industrial_msgsMsgTriState = do
    value0 <- fromIntegral <$> W.number 1
    let value = Ros2Industrial_msgsMsgTriState value0
    case encodeRos2Industrial_msgsMsgTriState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/msg/TriState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsMsgTriState :: [Word8] -> Either Word32 Ros2Industrial_msgsMsgTriState
decodeRos2Industrial_msgsMsgTriState bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsMsgTriState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/msg/RobotStatus value.
-- | @details Retain every original field in declaration order. Canonical extent 22..150 bytes.
data Ros2Industrial_msgsMsgRobotStatus = Ros2Industrial_msgsMsgRobotStatus
    {
    -- | @brief Original industrial_msgs/msg/RobotStatus.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Industrial_msgsMsgRobotStatus_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original industrial_msgs/msg/RobotStatus.mode field.
    -- | @details Original type industrial_msgs/msg/RobotMode. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Industrial_msgsMsgRobotStatus_mode :: Ros2Industrial_msgsMsgRobotMode
    ,
    -- | @brief Original industrial_msgs/msg/RobotStatus.e_stopped field.
    -- | @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Industrial_msgsMsgRobotStatus_e_stopped :: Ros2Industrial_msgsMsgTriState
    ,
    -- | @brief Original industrial_msgs/msg/RobotStatus.drives_powered field.
    -- | @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Industrial_msgsMsgRobotStatus_drives_powered :: Ros2Industrial_msgsMsgTriState
    ,
    -- | @brief Original industrial_msgs/msg/RobotStatus.motion_possible field.
    -- | @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Industrial_msgsMsgRobotStatus_motion_possible :: Ros2Industrial_msgsMsgTriState
    ,
    -- | @brief Original industrial_msgs/msg/RobotStatus.in_motion field.
    -- | @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Industrial_msgsMsgRobotStatus_in_motion :: Ros2Industrial_msgsMsgTriState
    ,
    -- | @brief Original industrial_msgs/msg/RobotStatus.in_error field.
    -- | @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Industrial_msgsMsgRobotStatus_in_error :: Ros2Industrial_msgsMsgTriState
    ,
    -- | @brief Original industrial_msgs/msg/RobotStatus.error_codes field.
    -- | @details Original type int32. Shape sequence; bound/count 16 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Industrial_msgsMsgRobotStatus_error_codes :: [Int32]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsMsgRobotStatusCodecIdentity :: String
ros2Industrial_msgsMsgRobotStatusCodecIdentity = "UWVMROS1_1086f16ba5d614f3d87c3ab195240b5a0683ef490f2e92434e4ea3bdbe7554ba"
-- | @brief Encode every field of complete industrial_msgs/msg/RobotStatus.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsMsgRobotStatus :: Ros2Industrial_msgsMsgRobotStatus -> Either Word32 [Word8]
encodeRos2Industrial_msgsMsgRobotStatus value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Industrial_msgsMsgRobotStatus_header value)
    chunk1 <- encodeRos2Industrial_msgsMsgRobotMode (ros2Industrial_msgsMsgRobotStatus_mode value)
    chunk2 <- encodeRos2Industrial_msgsMsgTriState (ros2Industrial_msgsMsgRobotStatus_e_stopped value)
    chunk3 <- encodeRos2Industrial_msgsMsgTriState (ros2Industrial_msgsMsgRobotStatus_drives_powered value)
    chunk4 <- encodeRos2Industrial_msgsMsgTriState (ros2Industrial_msgsMsgRobotStatus_motion_possible value)
    chunk5 <- encodeRos2Industrial_msgsMsgTriState (ros2Industrial_msgsMsgRobotStatus_in_motion value)
    chunk6 <- encodeRos2Industrial_msgsMsgTriState (ros2Industrial_msgsMsgRobotStatus_in_error value)
    if length (ros2Industrial_msgsMsgRobotStatus_error_codes value) <= 16 then Right () else Left 22
    item7 <- concat <$> mapM
        (\element -> Right (W.putNumber 4 (element)))
        (ros2Industrial_msgsMsgRobotStatus_error_codes value)
    chunk7 <- Right (W.putNumber 4 (length (ros2Industrial_msgsMsgRobotStatus_error_codes value)) ++ item7)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5, chunk6, chunk7]
    if length bytes > 150 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/msg/RobotStatus.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsMsgRobotStatus :: W.Parser Ros2Industrial_msgsMsgRobotStatus
readRos2Industrial_msgsMsgRobotStatus = do
    value0 <- readRos2Std_msgsMsgHeader
    value1 <- readRos2Industrial_msgsMsgRobotMode
    value2 <- readRos2Industrial_msgsMsgTriState
    value3 <- readRos2Industrial_msgsMsgTriState
    value4 <- readRos2Industrial_msgsMsgTriState
    value5 <- readRos2Industrial_msgsMsgTriState
    value6 <- readRos2Industrial_msgsMsgTriState
    count7 <- W.number 4
    if count7 > 16 then W.reject else pure ()
    value7 <- replicateM (fromIntegral count7) (fromIntegral <$> W.number 4)
    let value = Ros2Industrial_msgsMsgRobotStatus value0 value1 value2 value3 value4 value5 value6 value7
    case encodeRos2Industrial_msgsMsgRobotStatus value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/msg/RobotStatus.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsMsgRobotStatus :: [Word8] -> Either Word32 Ros2Industrial_msgsMsgRobotStatus
decodeRos2Industrial_msgsMsgRobotStatus bytes
    | length bytes < 22 || length bytes > 150 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsMsgRobotStatus bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/msg/ServiceReturnCode value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Industrial_msgsMsgServiceReturnCode = Ros2Industrial_msgsMsgServiceReturnCode
    {
    -- | @brief Original industrial_msgs/msg/ServiceReturnCode.val field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Industrial_msgsMsgServiceReturnCode_val :: Int8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsMsgServiceReturnCodeCodecIdentity :: String
ros2Industrial_msgsMsgServiceReturnCodeCodecIdentity = "UWVMROS1_62eb4415a63d7686f16ea343193238838c78aa8e9b9786a65c92fb227e03d3e5"
-- | @brief Original industrial_msgs/msg/ServiceReturnCode.SUCCESS constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgServiceReturnCode_SUCCESS :: Int8
ros2Industrial_msgsMsgServiceReturnCode_SUCCESS = 1
-- | @brief Original industrial_msgs/msg/ServiceReturnCode.FAILURE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Industrial_msgsMsgServiceReturnCode_FAILURE :: Int8
ros2Industrial_msgsMsgServiceReturnCode_FAILURE = -1
-- | @brief Encode every field of complete industrial_msgs/msg/ServiceReturnCode.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsMsgServiceReturnCode :: Ros2Industrial_msgsMsgServiceReturnCode -> Either Word32 [Word8]
encodeRos2Industrial_msgsMsgServiceReturnCode value = do
    chunk0 <- Right (W.putNumber 1 (ros2Industrial_msgsMsgServiceReturnCode_val value))
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/msg/ServiceReturnCode.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsMsgServiceReturnCode :: W.Parser Ros2Industrial_msgsMsgServiceReturnCode
readRos2Industrial_msgsMsgServiceReturnCode = do
    value0 <- fromIntegral <$> W.number 1
    let value = Ros2Industrial_msgsMsgServiceReturnCode value0
    case encodeRos2Industrial_msgsMsgServiceReturnCode value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/msg/ServiceReturnCode.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsMsgServiceReturnCode :: [Word8] -> Either Word32 Ros2Industrial_msgsMsgServiceReturnCode
decodeRos2Industrial_msgsMsgServiceReturnCode bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsMsgServiceReturnCode bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/srv/CmdJointTrajectory_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 20..4164 bytes.
data Ros2Industrial_msgsSrvCmdJointTrajectory_Request = Ros2Industrial_msgsSrvCmdJointTrajectory_Request
    {
    -- | @brief Original industrial_msgs/srv/CmdJointTrajectory_Request.trajectory field.
    -- | @details Original type trajectory_msgs/msg/JointTrajectory. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Industrial_msgsSrvCmdJointTrajectory_Request_trajectory :: Ros2Trajectory_msgsMsgJointTrajectory
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsSrvCmdJointTrajectory_RequestCodecIdentity :: String
ros2Industrial_msgsSrvCmdJointTrajectory_RequestCodecIdentity = "UWVMROS1_1def3934b243546a4591b7be1ef2eb27002fbd9d3725302016e3b1846805149d"
-- | @brief Encode every field of complete industrial_msgs/srv/CmdJointTrajectory_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsSrvCmdJointTrajectory_Request :: Ros2Industrial_msgsSrvCmdJointTrajectory_Request -> Either Word32 [Word8]
encodeRos2Industrial_msgsSrvCmdJointTrajectory_Request value = do
    chunk0 <- encodeRos2Trajectory_msgsMsgJointTrajectory (ros2Industrial_msgsSrvCmdJointTrajectory_Request_trajectory value)
    let bytes = concat [chunk0]
    if length bytes > 4164 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/srv/CmdJointTrajectory_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsSrvCmdJointTrajectory_Request :: W.Parser Ros2Industrial_msgsSrvCmdJointTrajectory_Request
readRos2Industrial_msgsSrvCmdJointTrajectory_Request = do
    value0 <- readRos2Trajectory_msgsMsgJointTrajectory
    let value = Ros2Industrial_msgsSrvCmdJointTrajectory_Request value0
    case encodeRos2Industrial_msgsSrvCmdJointTrajectory_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/srv/CmdJointTrajectory_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsSrvCmdJointTrajectory_Request :: [Word8] -> Either Word32 Ros2Industrial_msgsSrvCmdJointTrajectory_Request
decodeRos2Industrial_msgsSrvCmdJointTrajectory_Request bytes
    | length bytes < 20 || length bytes > 4164 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsSrvCmdJointTrajectory_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/srv/CmdJointTrajectory_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Industrial_msgsSrvCmdJointTrajectory_Response = Ros2Industrial_msgsSrvCmdJointTrajectory_Response
    {
    -- | @brief Original industrial_msgs/srv/CmdJointTrajectory_Response.code field.
    -- | @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Industrial_msgsSrvCmdJointTrajectory_Response_code :: Ros2Industrial_msgsMsgServiceReturnCode
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsSrvCmdJointTrajectory_ResponseCodecIdentity :: String
ros2Industrial_msgsSrvCmdJointTrajectory_ResponseCodecIdentity = "UWVMROS1_1e4d064ef659e5d1cc73bdd90f82657a16087c96e0f75b632e2be2be884bca8b"
-- | @brief Encode every field of complete industrial_msgs/srv/CmdJointTrajectory_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsSrvCmdJointTrajectory_Response :: Ros2Industrial_msgsSrvCmdJointTrajectory_Response -> Either Word32 [Word8]
encodeRos2Industrial_msgsSrvCmdJointTrajectory_Response value = do
    chunk0 <- encodeRos2Industrial_msgsMsgServiceReturnCode (ros2Industrial_msgsSrvCmdJointTrajectory_Response_code value)
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/srv/CmdJointTrajectory_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsSrvCmdJointTrajectory_Response :: W.Parser Ros2Industrial_msgsSrvCmdJointTrajectory_Response
readRos2Industrial_msgsSrvCmdJointTrajectory_Response = do
    value0 <- readRos2Industrial_msgsMsgServiceReturnCode
    let value = Ros2Industrial_msgsSrvCmdJointTrajectory_Response value0
    case encodeRos2Industrial_msgsSrvCmdJointTrajectory_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/srv/CmdJointTrajectory_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsSrvCmdJointTrajectory_Response :: [Word8] -> Either Word32 Ros2Industrial_msgsSrvCmdJointTrajectory_Response
decodeRos2Industrial_msgsSrvCmdJointTrajectory_Response bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsSrvCmdJointTrajectory_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/srv/GetRobotInfo_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Industrial_msgsSrvGetRobotInfo_Request = Ros2Industrial_msgsSrvGetRobotInfo_Request
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsSrvGetRobotInfo_RequestCodecIdentity :: String
ros2Industrial_msgsSrvGetRobotInfo_RequestCodecIdentity = "UWVMROS1_688a272f6ee39921013c6c39a7b0b0c4e2cda5119787088234103518ba25c1d2"
-- | @brief Encode every field of complete industrial_msgs/srv/GetRobotInfo_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsSrvGetRobotInfo_Request :: Ros2Industrial_msgsSrvGetRobotInfo_Request -> Either Word32 [Word8]
encodeRos2Industrial_msgsSrvGetRobotInfo_Request value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/srv/GetRobotInfo_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsSrvGetRobotInfo_Request :: W.Parser Ros2Industrial_msgsSrvGetRobotInfo_Request
readRos2Industrial_msgsSrvGetRobotInfo_Request = do
    let value = Ros2Industrial_msgsSrvGetRobotInfo_Request 
    case encodeRos2Industrial_msgsSrvGetRobotInfo_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/srv/GetRobotInfo_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsSrvGetRobotInfo_Request :: [Word8] -> Either Word32 Ros2Industrial_msgsSrvGetRobotInfo_Request
decodeRos2Industrial_msgsSrvGetRobotInfo_Request bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsSrvGetRobotInfo_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/srv/GetRobotInfo_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 25..32768 bytes.
data Ros2Industrial_msgsSrvGetRobotInfo_Response = Ros2Industrial_msgsSrvGetRobotInfo_Response
    {
    -- | @brief Original industrial_msgs/srv/GetRobotInfo_Response.controller field.
    -- | @details Original type industrial_msgs/msg/DeviceInfo. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Industrial_msgsSrvGetRobotInfo_Response_controller :: Ros2Industrial_msgsMsgDeviceInfo
    ,
    -- | @brief Original industrial_msgs/srv/GetRobotInfo_Response.robots field.
    -- | @details Original type industrial_msgs/msg/DeviceInfo. Shape sequence; bound/count 16
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Industrial_msgsSrvGetRobotInfo_Response_robots :: [Ros2Industrial_msgsMsgDeviceInfo]
    ,
    -- | @brief Original industrial_msgs/srv/GetRobotInfo_Response.code field.
    -- | @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Industrial_msgsSrvGetRobotInfo_Response_code :: Ros2Industrial_msgsMsgServiceReturnCode
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsSrvGetRobotInfo_ResponseCodecIdentity :: String
ros2Industrial_msgsSrvGetRobotInfo_ResponseCodecIdentity = "UWVMROS1_6d37cdcd8afc918329d7856e682d7fcdae2931832474a9194143c21079ed4152"
-- | @brief Encode every field of complete industrial_msgs/srv/GetRobotInfo_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsSrvGetRobotInfo_Response :: Ros2Industrial_msgsSrvGetRobotInfo_Response -> Either Word32 [Word8]
encodeRos2Industrial_msgsSrvGetRobotInfo_Response value = do
    chunk0 <- encodeRos2Industrial_msgsMsgDeviceInfo (ros2Industrial_msgsSrvGetRobotInfo_Response_controller value)
    if length (ros2Industrial_msgsSrvGetRobotInfo_Response_robots value) <= 16 then Right () else Left 22
    item1 <- concat <$> mapM
        (\element -> encodeRos2Industrial_msgsMsgDeviceInfo (element))
        (ros2Industrial_msgsSrvGetRobotInfo_Response_robots value)
    chunk1 <- Right (W.putNumber 4 (length (ros2Industrial_msgsSrvGetRobotInfo_Response_robots value)) ++ item1)
    chunk2 <- encodeRos2Industrial_msgsMsgServiceReturnCode (ros2Industrial_msgsSrvGetRobotInfo_Response_code value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 32768 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/srv/GetRobotInfo_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsSrvGetRobotInfo_Response :: W.Parser Ros2Industrial_msgsSrvGetRobotInfo_Response
readRos2Industrial_msgsSrvGetRobotInfo_Response = do
    value0 <- readRos2Industrial_msgsMsgDeviceInfo
    count1 <- W.number 4
    if count1 > 16 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (readRos2Industrial_msgsMsgDeviceInfo)
    value2 <- readRos2Industrial_msgsMsgServiceReturnCode
    let value = Ros2Industrial_msgsSrvGetRobotInfo_Response value0 value1 value2
    case encodeRos2Industrial_msgsSrvGetRobotInfo_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/srv/GetRobotInfo_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsSrvGetRobotInfo_Response :: [Word8] -> Either Word32 Ros2Industrial_msgsSrvGetRobotInfo_Response
decodeRos2Industrial_msgsSrvGetRobotInfo_Response bytes
    | length bytes < 25 || length bytes > 32768 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsSrvGetRobotInfo_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/srv/SetDrivePower_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Industrial_msgsSrvSetDrivePower_Request = Ros2Industrial_msgsSrvSetDrivePower_Request
    {
    -- | @brief Original industrial_msgs/srv/SetDrivePower_Request.drive_power field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Industrial_msgsSrvSetDrivePower_Request_drive_power :: Bool
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsSrvSetDrivePower_RequestCodecIdentity :: String
ros2Industrial_msgsSrvSetDrivePower_RequestCodecIdentity = "UWVMROS1_b4fc5e109e131a97820ab5856b34839c572ac0b0c256d70457c176e401844f96"
-- | @brief Encode every field of complete industrial_msgs/srv/SetDrivePower_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsSrvSetDrivePower_Request :: Ros2Industrial_msgsSrvSetDrivePower_Request -> Either Word32 [Word8]
encodeRos2Industrial_msgsSrvSetDrivePower_Request value = do
    chunk0 <- Right (W.putBool (ros2Industrial_msgsSrvSetDrivePower_Request_drive_power value))
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/srv/SetDrivePower_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsSrvSetDrivePower_Request :: W.Parser Ros2Industrial_msgsSrvSetDrivePower_Request
readRos2Industrial_msgsSrvSetDrivePower_Request = do
    value0 <- W.boolean
    let value = Ros2Industrial_msgsSrvSetDrivePower_Request value0
    case encodeRos2Industrial_msgsSrvSetDrivePower_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/srv/SetDrivePower_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsSrvSetDrivePower_Request :: [Word8] -> Either Word32 Ros2Industrial_msgsSrvSetDrivePower_Request
decodeRos2Industrial_msgsSrvSetDrivePower_Request bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsSrvSetDrivePower_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/srv/SetDrivePower_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Industrial_msgsSrvSetDrivePower_Response = Ros2Industrial_msgsSrvSetDrivePower_Response
    {
    -- | @brief Original industrial_msgs/srv/SetDrivePower_Response.code field.
    -- | @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Industrial_msgsSrvSetDrivePower_Response_code :: Ros2Industrial_msgsMsgServiceReturnCode
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsSrvSetDrivePower_ResponseCodecIdentity :: String
ros2Industrial_msgsSrvSetDrivePower_ResponseCodecIdentity = "UWVMROS1_050fb9a727ebedd240e9023b9a2379a5d72e0d9fa335bead0c40d783abb22cff"
-- | @brief Encode every field of complete industrial_msgs/srv/SetDrivePower_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsSrvSetDrivePower_Response :: Ros2Industrial_msgsSrvSetDrivePower_Response -> Either Word32 [Word8]
encodeRos2Industrial_msgsSrvSetDrivePower_Response value = do
    chunk0 <- encodeRos2Industrial_msgsMsgServiceReturnCode (ros2Industrial_msgsSrvSetDrivePower_Response_code value)
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/srv/SetDrivePower_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsSrvSetDrivePower_Response :: W.Parser Ros2Industrial_msgsSrvSetDrivePower_Response
readRos2Industrial_msgsSrvSetDrivePower_Response = do
    value0 <- readRos2Industrial_msgsMsgServiceReturnCode
    let value = Ros2Industrial_msgsSrvSetDrivePower_Response value0
    case encodeRos2Industrial_msgsSrvSetDrivePower_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/srv/SetDrivePower_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsSrvSetDrivePower_Response :: [Word8] -> Either Word32 Ros2Industrial_msgsSrvSetDrivePower_Response
decodeRos2Industrial_msgsSrvSetDrivePower_Response bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsSrvSetDrivePower_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/srv/SetRemoteLoggerLevel_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request = Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request
    {
    -- | @brief Original industrial_msgs/srv/SetRemoteLoggerLevel_Request.level field.
    -- | @details Original type industrial_msgs/msg/DebugLevel. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request_level :: Ros2Industrial_msgsMsgDebugLevel
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsSrvSetRemoteLoggerLevel_RequestCodecIdentity :: String
ros2Industrial_msgsSrvSetRemoteLoggerLevel_RequestCodecIdentity = "UWVMROS1_bbadd39c05cab90b14f4b1fad23ff05ac83325f6cc57810cd649e04fa29fe014"
-- | @brief Encode every field of complete industrial_msgs/srv/SetRemoteLoggerLevel_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Request :: Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request -> Either Word32 [Word8]
encodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Request value = do
    chunk0 <- encodeRos2Industrial_msgsMsgDebugLevel (ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request_level value)
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/srv/SetRemoteLoggerLevel_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsSrvSetRemoteLoggerLevel_Request :: W.Parser Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request
readRos2Industrial_msgsSrvSetRemoteLoggerLevel_Request = do
    value0 <- readRos2Industrial_msgsMsgDebugLevel
    let value = Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request value0
    case encodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/srv/SetRemoteLoggerLevel_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Request :: [Word8] -> Either Word32 Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request
decodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Request bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsSrvSetRemoteLoggerLevel_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/srv/SetRemoteLoggerLevel_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response = Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response
    {
    -- | @brief Original industrial_msgs/srv/SetRemoteLoggerLevel_Response.code field.
    -- | @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response_code :: Ros2Industrial_msgsMsgServiceReturnCode
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsSrvSetRemoteLoggerLevel_ResponseCodecIdentity :: String
ros2Industrial_msgsSrvSetRemoteLoggerLevel_ResponseCodecIdentity = "UWVMROS1_b8681d031a4bb5a67b842277af2e2156e8339bdef23be88d2b64e296a7e3d63b"
-- | @brief Encode every field of complete industrial_msgs/srv/SetRemoteLoggerLevel_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Response :: Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response -> Either Word32 [Word8]
encodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Response value = do
    chunk0 <- encodeRos2Industrial_msgsMsgServiceReturnCode (ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response_code value)
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/srv/SetRemoteLoggerLevel_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsSrvSetRemoteLoggerLevel_Response :: W.Parser Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response
readRos2Industrial_msgsSrvSetRemoteLoggerLevel_Response = do
    value0 <- readRos2Industrial_msgsMsgServiceReturnCode
    let value = Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response value0
    case encodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/srv/SetRemoteLoggerLevel_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Response :: [Word8] -> Either Word32 Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response
decodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Response bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsSrvSetRemoteLoggerLevel_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/srv/StartMotion_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Industrial_msgsSrvStartMotion_Request = Ros2Industrial_msgsSrvStartMotion_Request
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsSrvStartMotion_RequestCodecIdentity :: String
ros2Industrial_msgsSrvStartMotion_RequestCodecIdentity = "UWVMROS1_0a96fb9489f863612a91bf82f995f2f28bcb7fb403bde74c617925c789e4dcd8"
-- | @brief Encode every field of complete industrial_msgs/srv/StartMotion_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsSrvStartMotion_Request :: Ros2Industrial_msgsSrvStartMotion_Request -> Either Word32 [Word8]
encodeRos2Industrial_msgsSrvStartMotion_Request value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/srv/StartMotion_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsSrvStartMotion_Request :: W.Parser Ros2Industrial_msgsSrvStartMotion_Request
readRos2Industrial_msgsSrvStartMotion_Request = do
    let value = Ros2Industrial_msgsSrvStartMotion_Request 
    case encodeRos2Industrial_msgsSrvStartMotion_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/srv/StartMotion_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsSrvStartMotion_Request :: [Word8] -> Either Word32 Ros2Industrial_msgsSrvStartMotion_Request
decodeRos2Industrial_msgsSrvStartMotion_Request bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsSrvStartMotion_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/srv/StartMotion_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Industrial_msgsSrvStartMotion_Response = Ros2Industrial_msgsSrvStartMotion_Response
    {
    -- | @brief Original industrial_msgs/srv/StartMotion_Response.code field.
    -- | @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Industrial_msgsSrvStartMotion_Response_code :: Ros2Industrial_msgsMsgServiceReturnCode
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsSrvStartMotion_ResponseCodecIdentity :: String
ros2Industrial_msgsSrvStartMotion_ResponseCodecIdentity = "UWVMROS1_3bb3650fbe638a6d300bcd9fcd5acf574bd54d00a7368edd3014bf44dcf66c16"
-- | @brief Encode every field of complete industrial_msgs/srv/StartMotion_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsSrvStartMotion_Response :: Ros2Industrial_msgsSrvStartMotion_Response -> Either Word32 [Word8]
encodeRos2Industrial_msgsSrvStartMotion_Response value = do
    chunk0 <- encodeRos2Industrial_msgsMsgServiceReturnCode (ros2Industrial_msgsSrvStartMotion_Response_code value)
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/srv/StartMotion_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsSrvStartMotion_Response :: W.Parser Ros2Industrial_msgsSrvStartMotion_Response
readRos2Industrial_msgsSrvStartMotion_Response = do
    value0 <- readRos2Industrial_msgsMsgServiceReturnCode
    let value = Ros2Industrial_msgsSrvStartMotion_Response value0
    case encodeRos2Industrial_msgsSrvStartMotion_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/srv/StartMotion_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsSrvStartMotion_Response :: [Word8] -> Either Word32 Ros2Industrial_msgsSrvStartMotion_Response
decodeRos2Industrial_msgsSrvStartMotion_Response bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsSrvStartMotion_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/srv/StopMotion_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Industrial_msgsSrvStopMotion_Request = Ros2Industrial_msgsSrvStopMotion_Request
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsSrvStopMotion_RequestCodecIdentity :: String
ros2Industrial_msgsSrvStopMotion_RequestCodecIdentity = "UWVMROS1_fe5a7cf0da30270eab5cfb1ab8c1fbd37d2b4c4f91ef29662a0ddcac39e6ef49"
-- | @brief Encode every field of complete industrial_msgs/srv/StopMotion_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsSrvStopMotion_Request :: Ros2Industrial_msgsSrvStopMotion_Request -> Either Word32 [Word8]
encodeRos2Industrial_msgsSrvStopMotion_Request value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/srv/StopMotion_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsSrvStopMotion_Request :: W.Parser Ros2Industrial_msgsSrvStopMotion_Request
readRos2Industrial_msgsSrvStopMotion_Request = do
    let value = Ros2Industrial_msgsSrvStopMotion_Request 
    case encodeRos2Industrial_msgsSrvStopMotion_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/srv/StopMotion_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsSrvStopMotion_Request :: [Word8] -> Either Word32 Ros2Industrial_msgsSrvStopMotion_Request
decodeRos2Industrial_msgsSrvStopMotion_Request bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsSrvStopMotion_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original industrial_msgs/srv/StopMotion_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Industrial_msgsSrvStopMotion_Response = Ros2Industrial_msgsSrvStopMotion_Response
    {
    -- | @brief Original industrial_msgs/srv/StopMotion_Response.code field.
    -- | @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Industrial_msgsSrvStopMotion_Response_code :: Ros2Industrial_msgsMsgServiceReturnCode
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Industrial_msgsSrvStopMotion_ResponseCodecIdentity :: String
ros2Industrial_msgsSrvStopMotion_ResponseCodecIdentity = "UWVMROS1_c26bda240d86becc5b8b4ea80380eba3602092a5ec4a06818dbfbd38c24015b5"
-- | @brief Encode every field of complete industrial_msgs/srv/StopMotion_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Industrial_msgsSrvStopMotion_Response :: Ros2Industrial_msgsSrvStopMotion_Response -> Either Word32 [Word8]
encodeRos2Industrial_msgsSrvStopMotion_Response value = do
    chunk0 <- encodeRos2Industrial_msgsMsgServiceReturnCode (ros2Industrial_msgsSrvStopMotion_Response_code value)
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested industrial_msgs/srv/StopMotion_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Industrial_msgsSrvStopMotion_Response :: W.Parser Ros2Industrial_msgsSrvStopMotion_Response
readRos2Industrial_msgsSrvStopMotion_Response = do
    value0 <- readRos2Industrial_msgsMsgServiceReturnCode
    let value = Ros2Industrial_msgsSrvStopMotion_Response value0
    case encodeRos2Industrial_msgsSrvStopMotion_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete industrial_msgs/srv/StopMotion_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Industrial_msgsSrvStopMotion_Response :: [Word8] -> Either Word32 Ros2Industrial_msgsSrvStopMotion_Response
decodeRos2Industrial_msgsSrvStopMotion_Response bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Industrial_msgsSrvStopMotion_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/msg/AlarmCauseRemedy value.
-- | @details Retain every original field in declaration order. Canonical extent 8..1032 bytes.
data Ros2Motoros2_interfacesMsgAlarmCauseRemedy = Ros2Motoros2_interfacesMsgAlarmCauseRemedy
    {
    -- | @brief Original motoros2_interfaces/msg/AlarmCauseRemedy.cause field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesMsgAlarmCauseRemedy_cause :: [Word8]
    ,
    -- | @brief Original motoros2_interfaces/msg/AlarmCauseRemedy.remedy field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesMsgAlarmCauseRemedy_remedy :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesMsgAlarmCauseRemedyCodecIdentity :: String
ros2Motoros2_interfacesMsgAlarmCauseRemedyCodecIdentity = "UWVMROS1_f977609022f4ca593b9089d0038d1c28d1bc4b533e272f38c3379495f326ddf5"
-- | @brief Encode every field of complete motoros2_interfaces/msg/AlarmCauseRemedy.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesMsgAlarmCauseRemedy :: Ros2Motoros2_interfacesMsgAlarmCauseRemedy -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesMsgAlarmCauseRemedy value = do
    chunk0 <- W.putText 512 (ros2Motoros2_interfacesMsgAlarmCauseRemedy_cause value)
    chunk1 <- W.putText 512 (ros2Motoros2_interfacesMsgAlarmCauseRemedy_remedy value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 1032 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/msg/AlarmCauseRemedy.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesMsgAlarmCauseRemedy :: W.Parser Ros2Motoros2_interfacesMsgAlarmCauseRemedy
readRos2Motoros2_interfacesMsgAlarmCauseRemedy = do
    value0 <- W.text 512
    value1 <- W.text 512
    let value = Ros2Motoros2_interfacesMsgAlarmCauseRemedy value0 value1
    case encodeRos2Motoros2_interfacesMsgAlarmCauseRemedy value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/msg/AlarmCauseRemedy.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesMsgAlarmCauseRemedy :: [Word8] -> Either Word32 Ros2Motoros2_interfacesMsgAlarmCauseRemedy
decodeRos2Motoros2_interfacesMsgAlarmCauseRemedy bytes
    | length bytes < 8 || length bytes > 1032 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesMsgAlarmCauseRemedy bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/msg/AlarmInfo value.
-- | @details Retain every original field in declaration order. Canonical extent 32..25248 bytes.
data Ros2Motoros2_interfacesMsgAlarmInfo = Ros2Motoros2_interfacesMsgAlarmInfo
    {
    -- | @brief Original motoros2_interfaces/msg/AlarmInfo.number field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesMsgAlarmInfo_number :: Word32
    ,
    -- | @brief Original motoros2_interfaces/msg/AlarmInfo.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesMsgAlarmInfo_message :: [Word8]
    ,
    -- | @brief Original motoros2_interfaces/msg/AlarmInfo.sub_code field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesMsgAlarmInfo_sub_code :: Int32
    ,
    -- | @brief Original motoros2_interfaces/msg/AlarmInfo.datetime field.
    -- | @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Motoros2_interfacesMsgAlarmInfo_datetime :: Ros2Builtin_interfacesMsgTime
    ,
    -- | @brief Original motoros2_interfaces/msg/AlarmInfo.contents field.
    -- | @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesMsgAlarmInfo_contents :: [Word8]
    ,
    -- | @brief Original motoros2_interfaces/msg/AlarmInfo.description field.
    -- | @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesMsgAlarmInfo_description :: [Word8]
    ,
    -- | @brief Original motoros2_interfaces/msg/AlarmInfo.help field.
    -- | @details Original type motoros2_interfaces/msg/AlarmCauseRemedy. Shape sequence;
    -- | bound/count 16 elements. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesMsgAlarmInfo_help :: [Ros2Motoros2_interfacesMsgAlarmCauseRemedy]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesMsgAlarmInfoCodecIdentity :: String
ros2Motoros2_interfacesMsgAlarmInfoCodecIdentity = "UWVMROS1_7cf3fa3037f28f295dd62009e708ea3e46a80f83471d0a0f9fb55af125c0c27f"
-- | @brief Encode every field of complete motoros2_interfaces/msg/AlarmInfo.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesMsgAlarmInfo :: Ros2Motoros2_interfacesMsgAlarmInfo -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesMsgAlarmInfo value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesMsgAlarmInfo_number value))
    chunk1 <- W.putText 512 (ros2Motoros2_interfacesMsgAlarmInfo_message value)
    chunk2 <- Right (W.putNumber 4 (ros2Motoros2_interfacesMsgAlarmInfo_sub_code value))
    chunk3 <- encodeRos2Builtin_interfacesMsgTime (ros2Motoros2_interfacesMsgAlarmInfo_datetime value)
    chunk4 <- W.putText 4096 (ros2Motoros2_interfacesMsgAlarmInfo_contents value)
    chunk5 <- W.putText 4096 (ros2Motoros2_interfacesMsgAlarmInfo_description value)
    if length (ros2Motoros2_interfacesMsgAlarmInfo_help value) <= 16 then Right () else Left 22
    item6 <- concat <$> mapM
        (\element -> encodeRos2Motoros2_interfacesMsgAlarmCauseRemedy (element))
        (ros2Motoros2_interfacesMsgAlarmInfo_help value)
    chunk6 <- Right (W.putNumber 4 (length (ros2Motoros2_interfacesMsgAlarmInfo_help value)) ++ item6)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5, chunk6]
    if length bytes > 25248 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/msg/AlarmInfo.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesMsgAlarmInfo :: W.Parser Ros2Motoros2_interfacesMsgAlarmInfo
readRos2Motoros2_interfacesMsgAlarmInfo = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- W.text 512
    value2 <- fromIntegral <$> W.number 4
    value3 <- readRos2Builtin_interfacesMsgTime
    value4 <- W.text 4096
    value5 <- W.text 4096
    count6 <- W.number 4
    if count6 > 16 then W.reject else pure ()
    value6 <- replicateM (fromIntegral count6) (readRos2Motoros2_interfacesMsgAlarmCauseRemedy)
    let value = Ros2Motoros2_interfacesMsgAlarmInfo value0 value1 value2 value3 value4 value5 value6
    case encodeRos2Motoros2_interfacesMsgAlarmInfo value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/msg/AlarmInfo.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesMsgAlarmInfo :: [Word8] -> Either Word32 Ros2Motoros2_interfacesMsgAlarmInfo
decodeRos2Motoros2_interfacesMsgAlarmInfo bytes
    | length bytes < 32 || length bytes > 25248 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesMsgAlarmInfo bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/msg/ErrorInfo value.
-- | @details Retain every original field in declaration order. Canonical extent 20..532 bytes.
data Ros2Motoros2_interfacesMsgErrorInfo = Ros2Motoros2_interfacesMsgErrorInfo
    {
    -- | @brief Original motoros2_interfaces/msg/ErrorInfo.number field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesMsgErrorInfo_number :: Word32
    ,
    -- | @brief Original motoros2_interfaces/msg/ErrorInfo.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesMsgErrorInfo_message :: [Word8]
    ,
    -- | @brief Original motoros2_interfaces/msg/ErrorInfo.sub_code field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesMsgErrorInfo_sub_code :: Int32
    ,
    -- | @brief Original motoros2_interfaces/msg/ErrorInfo.datetime field.
    -- | @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Motoros2_interfacesMsgErrorInfo_datetime :: Ros2Builtin_interfacesMsgTime
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesMsgErrorInfoCodecIdentity :: String
ros2Motoros2_interfacesMsgErrorInfoCodecIdentity = "UWVMROS1_1cfe60c0af6bc157db84c4d9e0b20a8f2e5c78fd4afd6908d32b3217f3734b67"
-- | @brief Encode every field of complete motoros2_interfaces/msg/ErrorInfo.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesMsgErrorInfo :: Ros2Motoros2_interfacesMsgErrorInfo -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesMsgErrorInfo value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesMsgErrorInfo_number value))
    chunk1 <- W.putText 512 (ros2Motoros2_interfacesMsgErrorInfo_message value)
    chunk2 <- Right (W.putNumber 4 (ros2Motoros2_interfacesMsgErrorInfo_sub_code value))
    chunk3 <- encodeRos2Builtin_interfacesMsgTime (ros2Motoros2_interfacesMsgErrorInfo_datetime value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 532 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/msg/ErrorInfo.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesMsgErrorInfo :: W.Parser Ros2Motoros2_interfacesMsgErrorInfo
readRos2Motoros2_interfacesMsgErrorInfo = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- W.text 512
    value2 <- fromIntegral <$> W.number 4
    value3 <- readRos2Builtin_interfacesMsgTime
    let value = Ros2Motoros2_interfacesMsgErrorInfo value0 value1 value2 value3
    case encodeRos2Motoros2_interfacesMsgErrorInfo value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/msg/ErrorInfo.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesMsgErrorInfo :: [Word8] -> Either Word32 Ros2Motoros2_interfacesMsgErrorInfo
decodeRos2Motoros2_interfacesMsgErrorInfo bytes
    | length bytes < 20 || length bytes > 532 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesMsgErrorInfo bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/msg/InformJobCrudResultCodes value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Motoros2_interfacesMsgInformJobCrudResultCodes = Ros2Motoros2_interfacesMsgInformJobCrudResultCodes
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodecIdentity :: String
ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodecIdentity = "UWVMROS1_f5ed037b83926b48a88fa486ed8db5f5d3e39e4a486d4a90190ffd6a70452613"
-- | @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_OK constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_OK :: Word32
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_OK = 1
-- | @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_OK constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_OK :: String
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_OK = "Success"
-- | @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_REFRESHING_JOB_LIST
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_REFRESHING_JOB_LIST :: Word32
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_REFRESHING_JOB_LIST = 10
-- | @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_REFRESHING_JOB_LIST
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_REFRESHING_JOB_LIST :: String
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_REFRESHING_JOB_LIST = "Error refreshing job list"
-- | @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_RETRIEVING_FILE_COUNT
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_RETRIEVING_FILE_COUNT :: Word32
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_RETRIEVING_FILE_COUNT = 11
-- | @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_RETRIEVING_FILE_COUNT
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_RETRIEVING_FILE_COUNT :: String
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_RETRIEVING_FILE_COUNT = "Error retrieving file count"
-- | @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_TOO_MANY_JOBS constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_TOO_MANY_JOBS :: Word32
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_TOO_MANY_JOBS = 12
-- | @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_TOO_MANY_JOBS
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_TOO_MANY_JOBS :: String
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_TOO_MANY_JOBS = "Too many jobs"
-- | @brief Original
-- | motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST :: Word32
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST = 13
-- | @brief Original
-- | motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST :: String
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST = "Failed retrieving job name from list"
-- | @brief Original
-- | motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE :: Word32
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE = 14
-- | @brief Original
-- | motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE :: String
ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE = "Error adding job name to service response"
-- | @brief Encode every field of complete motoros2_interfaces/msg/InformJobCrudResultCodes.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesMsgInformJobCrudResultCodes :: Ros2Motoros2_interfacesMsgInformJobCrudResultCodes -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesMsgInformJobCrudResultCodes value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/msg/InformJobCrudResultCodes.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesMsgInformJobCrudResultCodes :: W.Parser Ros2Motoros2_interfacesMsgInformJobCrudResultCodes
readRos2Motoros2_interfacesMsgInformJobCrudResultCodes = do
    let value = Ros2Motoros2_interfacesMsgInformJobCrudResultCodes 
    case encodeRos2Motoros2_interfacesMsgInformJobCrudResultCodes value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/msg/InformJobCrudResultCodes.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesMsgInformJobCrudResultCodes :: [Word8] -> Either Word32 Ros2Motoros2_interfacesMsgInformJobCrudResultCodes
decodeRos2Motoros2_interfacesMsgInformJobCrudResultCodes bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesMsgInformJobCrudResultCodes bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/msg/InitTrajEnum value.
-- | @details Retain every original field in declaration order. Canonical extent 2..2 bytes.
data Ros2Motoros2_interfacesMsgInitTrajEnum = Ros2Motoros2_interfacesMsgInitTrajEnum
    {
    -- | @brief Original motoros2_interfaces/msg/InitTrajEnum.value field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesMsgInitTrajEnum_value :: Word16
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesMsgInitTrajEnumCodecIdentity :: String
ros2Motoros2_interfacesMsgInitTrajEnumCodecIdentity = "UWVMROS1_9279979f9e3570f48d6e23bf812a4680e3deed9af3309019efdff5464d7b7763"
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_OK constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_OK :: Word16
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_OK = 0
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_OK_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_OK_STR :: String
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_OK_STR = "OK"
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_UNSPECIFIED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_UNSPECIFIED :: Word16
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_UNSPECIFIED = 200
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_UNSPECIFIED_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_UNSPECIFIED_STR :: String
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_UNSPECIFIED_STR = "Unspecified failure"
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_SMALL constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_TOO_SMALL :: Word16
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_TOO_SMALL = 201
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_SMALL_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_TOO_SMALL_STR :: String
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_TOO_SMALL_STR = "Trajectory must contain at least two points."
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_BIG constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_TOO_BIG :: Word16
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_TOO_BIG = 202
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_BIG_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_TOO_BIG_STR :: String
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_TOO_BIG_STR = "Trajectory contains too many points (Not enough memory)."
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_ALREADY_IN_MOTION constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_ALREADY_IN_MOTION :: Word16
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_ALREADY_IN_MOTION = 203
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_ALREADY_IN_MOTION_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_ALREADY_IN_MOTION_STR :: String
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_ALREADY_IN_MOTION_STR = "Already running a trajectory."
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_STARTING_POS constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_STARTING_POS :: Word16
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_STARTING_POS = 204
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_STARTING_POS_STR
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_STARTING_POS_STR :: String
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_STARTING_POS_STR = "The first point must match the robot's current position."
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_VELOCITY constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_VELOCITY :: Word16
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_VELOCITY = 205
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_VELOCITY_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_VELOCITY_STR :: String
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_VELOCITY_STR = "The commanded velocity is too high."
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_JOINTNAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_JOINTNAME :: Word16
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_JOINTNAME = 206
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_JOINTNAME_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_JOINTNAME_STR :: String
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_JOINTNAME_STR = "Invalid joint name specified. Check motoros2_config.yaml."
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INCOMPLETE_JOINTLIST constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INCOMPLETE_JOINTLIST :: Word16
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INCOMPLETE_JOINTLIST = 207
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INCOMPLETE_JOINTLIST_STR
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INCOMPLETE_JOINTLIST_STR :: String
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INCOMPLETE_JOINTLIST_STR = "Trajectory must contain data for all joints."
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_TIME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_TIME :: Word16
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_TIME = 208
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_TIME_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_TIME_STR :: String
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_TIME_STR = "Invalid time in trajectory."
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_MODE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_MODE :: Word16
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_MODE = 209
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_MODE_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_MODE_STR :: String
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_MODE_STR = "Must call start_traj_mode service"
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_BACKWARD_TIME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_BACKWARD_TIME :: Word16
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_BACKWARD_TIME = 210
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_BACKWARD_TIME_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_BACKWARD_TIME_STR :: String
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_BACKWARD_TIME_STR = "Trajectory message contains waypoints that are not strictly increasing in time."
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS :: Word16
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS = 211
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR :: String
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR = "Trajectory did not contain position data for all axes."
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES :: Word16
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES = 212
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR :: String
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR = "Trajectory did not contain velocity data for all axes."
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_VELOCITY
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_ENDING_VELOCITY :: Word16
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_ENDING_VELOCITY = 213
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_VELOCITY_STR
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_ENDING_VELOCITY_STR :: String
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_ENDING_VELOCITY_STR = "The final point in the trajectory must have zero velocity."
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_ACCELERATION
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_ENDING_ACCELERATION :: Word16
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_ENDING_ACCELERATION = 214
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR :: String
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR = "The final point in the trajectory must have zero acceleration."
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_DUPLICATE_JOINT_NAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_DUPLICATE_JOINT_NAME :: Word16
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_DUPLICATE_JOINT_NAME = 215
-- | @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_DUPLICATE_JOINT_NAME_STR
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_DUPLICATE_JOINT_NAME_STR :: String
ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_DUPLICATE_JOINT_NAME_STR = "The trajectory contains duplicate joint names."
-- | @brief Encode every field of complete motoros2_interfaces/msg/InitTrajEnum.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesMsgInitTrajEnum :: Ros2Motoros2_interfacesMsgInitTrajEnum -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesMsgInitTrajEnum value = do
    chunk0 <- Right (W.putNumber 2 (ros2Motoros2_interfacesMsgInitTrajEnum_value value))
    let bytes = concat [chunk0]
    if length bytes > 2 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/msg/InitTrajEnum.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesMsgInitTrajEnum :: W.Parser Ros2Motoros2_interfacesMsgInitTrajEnum
readRos2Motoros2_interfacesMsgInitTrajEnum = do
    value0 <- fromIntegral <$> W.number 2
    let value = Ros2Motoros2_interfacesMsgInitTrajEnum value0
    case encodeRos2Motoros2_interfacesMsgInitTrajEnum value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/msg/InitTrajEnum.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesMsgInitTrajEnum :: [Word8] -> Either Word32 Ros2Motoros2_interfacesMsgInitTrajEnum
decodeRos2Motoros2_interfacesMsgInitTrajEnum bytes
    | length bytes < 2 || length bytes > 2 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesMsgInitTrajEnum bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/msg/IoResultCodes value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Motoros2_interfacesMsgIoResultCodes = Ros2Motoros2_interfacesMsgIoResultCodes
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesMsgIoResultCodesCodecIdentity :: String
ros2Motoros2_interfacesMsgIoResultCodesCodecIdentity = "UWVMROS1_ef9ab829ae79d4e58336a56259b6beb2ad26a8b1b4070013d9004ac4ab269915"
-- | @brief Original motoros2_interfaces/msg/IoResultCodes.OK constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgIoResultCodes_OK :: Word32
ros2Motoros2_interfacesMsgIoResultCodes_OK = 0
-- | @brief Original motoros2_interfaces/msg/IoResultCodes.OK_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgIoResultCodes_OK_STR :: String
ros2Motoros2_interfacesMsgIoResultCodes_OK_STR = "Success"
-- | @brief Original motoros2_interfaces/msg/IoResultCodes.READ_ADDRESS_INVALID constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgIoResultCodes_READ_ADDRESS_INVALID :: Word32
ros2Motoros2_interfacesMsgIoResultCodes_READ_ADDRESS_INVALID = 1001
-- | @brief Original motoros2_interfaces/msg/IoResultCodes.READ_ADDRESS_INVALID_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgIoResultCodes_READ_ADDRESS_INVALID_STR :: String
ros2Motoros2_interfacesMsgIoResultCodes_READ_ADDRESS_INVALID_STR = "Address cannot be read from (out of readable range)"
-- | @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_ADDRESS_INVALID constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgIoResultCodes_WRITE_ADDRESS_INVALID :: Word32
ros2Motoros2_interfacesMsgIoResultCodes_WRITE_ADDRESS_INVALID = 1002
-- | @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_ADDRESS_INVALID_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgIoResultCodes_WRITE_ADDRESS_INVALID_STR :: String
ros2Motoros2_interfacesMsgIoResultCodes_WRITE_ADDRESS_INVALID_STR = "Address cannot be written to (out of writable range)"
-- | @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_VALUE_INVALID constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgIoResultCodes_WRITE_VALUE_INVALID :: Word32
ros2Motoros2_interfacesMsgIoResultCodes_WRITE_VALUE_INVALID = 1003
-- | @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_VALUE_INVALID_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgIoResultCodes_WRITE_VALUE_INVALID_STR :: String
ros2Motoros2_interfacesMsgIoResultCodes_WRITE_VALUE_INVALID_STR = "Illegal value for the type of IO element addressed"
-- | @brief Original motoros2_interfaces/msg/IoResultCodes.READ_API_ERROR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgIoResultCodes_READ_API_ERROR :: Word32
ros2Motoros2_interfacesMsgIoResultCodes_READ_API_ERROR = 1004
-- | @brief Original motoros2_interfaces/msg/IoResultCodes.READ_API_ERROR_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgIoResultCodes_READ_API_ERROR_STR :: String
ros2Motoros2_interfacesMsgIoResultCodes_READ_API_ERROR_STR = "The MotoPlus function mpReadIO returned -1. No further information is available"
-- | @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_API_ERROR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgIoResultCodes_WRITE_API_ERROR :: Word32
ros2Motoros2_interfacesMsgIoResultCodes_WRITE_API_ERROR = 1005
-- | @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_API_ERROR_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgIoResultCodes_WRITE_API_ERROR_STR :: String
ros2Motoros2_interfacesMsgIoResultCodes_WRITE_API_ERROR_STR = "The MotoPlus function mpWriteIO returned -1. No further information is available"
-- | @brief Original motoros2_interfaces/msg/IoResultCodes.UNKNOWN_API_ERROR_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgIoResultCodes_UNKNOWN_API_ERROR_STR :: String
ros2Motoros2_interfacesMsgIoResultCodes_UNKNOWN_API_ERROR_STR = "Unknown error accessing I/O. No further information is available"
-- | @brief Encode every field of complete motoros2_interfaces/msg/IoResultCodes.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesMsgIoResultCodes :: Ros2Motoros2_interfacesMsgIoResultCodes -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesMsgIoResultCodes value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/msg/IoResultCodes.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesMsgIoResultCodes :: W.Parser Ros2Motoros2_interfacesMsgIoResultCodes
readRos2Motoros2_interfacesMsgIoResultCodes = do
    let value = Ros2Motoros2_interfacesMsgIoResultCodes 
    case encodeRos2Motoros2_interfacesMsgIoResultCodes value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/msg/IoResultCodes.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesMsgIoResultCodes :: [Word8] -> Either Word32 Ros2Motoros2_interfacesMsgIoResultCodes
decodeRos2Motoros2_interfacesMsgIoResultCodes bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesMsgIoResultCodes bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/msg/MotionReadyEnum value.
-- | @details Retain every original field in declaration order. Canonical extent 2..2 bytes.
data Ros2Motoros2_interfacesMsgMotionReadyEnum = Ros2Motoros2_interfacesMsgMotionReadyEnum
    {
    -- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.value field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesMsgMotionReadyEnum_value :: Word16
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesMsgMotionReadyEnumCodecIdentity :: String
ros2Motoros2_interfacesMsgMotionReadyEnumCodecIdentity = "UWVMROS1_c8d4c2b0eba665e01cddc730421a3a42c5b344f4de35ae0a32204891603326d6"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.READY constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_READY :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_READY = 1
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.READY_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_READY_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_READY_STR = "Ready"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_UNSPECIFIED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_UNSPECIFIED :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_UNSPECIFIED = 100
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_UNSPECIFIED_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_UNSPECIFIED_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_UNSPECIFIED_STR = "Unspecified"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ALARM constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ALARM :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ALARM = 101
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ALARM_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ALARM_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ALARM_STR = "The controller has an active Alarm"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ERROR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ERROR :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ERROR = 102
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ERROR_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ERROR_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ERROR_STR = "The controller has an active Error"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ESTOP constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ESTOP :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ESTOP = 103
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ESTOP_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ESTOP_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ESTOP_STR = "The controller is in E-Stop"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_PLAY constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_PLAY :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_PLAY = 104
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_PLAY_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_PLAY_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_PLAY_STR = "The teach pendant must not be in TEACH mode"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_REMOTE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_REMOTE :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_REMOTE = 105
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_REMOTE_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_REMOTE_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_REMOTE_STR = "The teach pendant must be in REMOTE mode"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_OFF constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_SERVO_OFF :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_SERVO_OFF = 106
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_OFF_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_SERVO_OFF_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_SERVO_OFF_STR = "Servo power is OFF. Please call start_traj_mode or start_point_queue_mode service"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_HOLD constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_HOLD :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_HOLD = 107
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_HOLD_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_HOLD_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_HOLD_STR = "The controller is in HOLD"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_JOB_NOT_STARTED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_JOB_NOT_STARTED :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_JOB_NOT_STARTED = 108
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_JOB_NOT_STARTED_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_JOB_NOT_STARTED_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_JOB_NOT_STARTED_STR = "The INIT_ROS job has not started. Please call start_traj_mode or start_point_queue_mode service"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_ON_WAIT_CMD constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_ON_WAIT_CMD :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_ON_WAIT_CMD = 109
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_ON_WAIT_CMD_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_ON_WAIT_CMD_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_ON_WAIT_CMD_STR = "INFORM job is not on a WAIT command. Check the format of INIT_ROS"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_PFL_ACTIVE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_PFL_ACTIVE :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_PFL_ACTIVE = 111
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_PFL_ACTIVE_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_PFL_ACTIVE_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_PFL_ACTIVE_STR = "A PFL event has occurred. Please return the robot to a safe state"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_INC_MOVE_ERROR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_INC_MOVE_ERROR :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_INC_MOVE_ERROR = 112
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_INC_MOVE_ERROR_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_INC_MOVE_ERROR_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_INC_MOVE_ERROR_STR = "The controller is in an error state. Please call reset_error to attempt to clear the error"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_PROGRAM_RUNNING
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_OTHER_PROGRAM_RUNNING :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_OTHER_PROGRAM_RUNNING = 113
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_PROGRAM_RUNNING_STR
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_OTHER_PROGRAM_RUNNING_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_OTHER_PROGRAM_RUNNING_STR = "Controller is running another job"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_TRAJ_MODE_ACTIVE
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_OTHER_TRAJ_MODE_ACTIVE :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_OTHER_TRAJ_MODE_ACTIVE = 114
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR = "Another trajectory mode is already active. Please call stop_traj_mode service"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_CONT_CYCLE_MODE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_CONT_CYCLE_MODE :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_CONT_CYCLE_MODE = 115
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_CONT_CYCLE_MODE_STR
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_CONT_CYCLE_MODE_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_CONT_CYCLE_MODE_STR = "AUTO cycle mode not set. Please set the cycle mode to AUTO"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_MAJOR_ALARM constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_MAJOR_ALARM :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_MAJOR_ALARM = 116
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_MAJOR_ALARM_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_MAJOR_ALARM_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_MAJOR_ALARM_STR = "Major Alarms can't be reset. Please check the teach pendant"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ECO_MODE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ECO_MODE :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ECO_MODE = 117
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ECO_MODE_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ECO_MODE_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ECO_MODE_STR = "Couldn't disable eco mode"
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_ON_TIMEOUT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_SERVO_ON_TIMEOUT :: Word16
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_SERVO_ON_TIMEOUT = 118
-- | @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_ON_TIMEOUT_STR
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_SERVO_ON_TIMEOUT_STR :: String
ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_SERVO_ON_TIMEOUT_STR = "Timed out while waiting for servo on"
-- | @brief Encode every field of complete motoros2_interfaces/msg/MotionReadyEnum.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesMsgMotionReadyEnum :: Ros2Motoros2_interfacesMsgMotionReadyEnum -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesMsgMotionReadyEnum value = do
    chunk0 <- Right (W.putNumber 2 (ros2Motoros2_interfacesMsgMotionReadyEnum_value value))
    let bytes = concat [chunk0]
    if length bytes > 2 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/msg/MotionReadyEnum.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesMsgMotionReadyEnum :: W.Parser Ros2Motoros2_interfacesMsgMotionReadyEnum
readRos2Motoros2_interfacesMsgMotionReadyEnum = do
    value0 <- fromIntegral <$> W.number 2
    let value = Ros2Motoros2_interfacesMsgMotionReadyEnum value0
    case encodeRos2Motoros2_interfacesMsgMotionReadyEnum value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/msg/MotionReadyEnum.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesMsgMotionReadyEnum :: [Word8] -> Either Word32 Ros2Motoros2_interfacesMsgMotionReadyEnum
decodeRos2Motoros2_interfacesMsgMotionReadyEnum bytes
    | length bytes < 2 || length bytes > 2 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesMsgMotionReadyEnum bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/msg/QueueResultEnum value.
-- | @details Retain every original field in declaration order. Canonical extent 2..2 bytes.
data Ros2Motoros2_interfacesMsgQueueResultEnum = Ros2Motoros2_interfacesMsgQueueResultEnum
    {
    -- | @brief Original motoros2_interfaces/msg/QueueResultEnum.value field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesMsgQueueResultEnum_value :: Word16
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesMsgQueueResultEnumCodecIdentity :: String
ros2Motoros2_interfacesMsgQueueResultEnumCodecIdentity = "UWVMROS1_146c6ce3f275b9e4a81622d73cca3d2298cf9f7bb95a783c0dea6279cb5b4f23"
-- | @brief Original motoros2_interfaces/msg/QueueResultEnum.SUCCESS constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgQueueResultEnum_SUCCESS :: Word16
ros2Motoros2_interfacesMsgQueueResultEnum_SUCCESS = 1
-- | @brief Original motoros2_interfaces/msg/QueueResultEnum.SUCCESS_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgQueueResultEnum_SUCCESS_STR :: String
ros2Motoros2_interfacesMsgQueueResultEnum_SUCCESS_STR = ""
-- | @brief Original motoros2_interfaces/msg/QueueResultEnum.WRONG_MODE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgQueueResultEnum_WRONG_MODE :: Word16
ros2Motoros2_interfacesMsgQueueResultEnum_WRONG_MODE = 2
-- | @brief Original motoros2_interfaces/msg/QueueResultEnum.WRONG_MODE_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgQueueResultEnum_WRONG_MODE_STR :: String
ros2Motoros2_interfacesMsgQueueResultEnum_WRONG_MODE_STR = "Must call start_point_queue_mode service"
-- | @brief Original motoros2_interfaces/msg/QueueResultEnum.INIT_FAILURE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgQueueResultEnum_INIT_FAILURE :: Word16
ros2Motoros2_interfacesMsgQueueResultEnum_INIT_FAILURE = 3
-- | @brief Original motoros2_interfaces/msg/QueueResultEnum.INIT_FAILURE_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgQueueResultEnum_INIT_FAILURE_STR :: String
ros2Motoros2_interfacesMsgQueueResultEnum_INIT_FAILURE_STR = "Failed to initialize the streaming trajectory"
-- | @brief Original motoros2_interfaces/msg/QueueResultEnum.BUSY constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgQueueResultEnum_BUSY :: Word16
ros2Motoros2_interfacesMsgQueueResultEnum_BUSY = 4
-- | @brief Original motoros2_interfaces/msg/QueueResultEnum.BUSY_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgQueueResultEnum_BUSY_STR :: String
ros2Motoros2_interfacesMsgQueueResultEnum_BUSY_STR = "Busy processing the previous trajectory point. Please resend the next point shortly"
-- | @brief Original motoros2_interfaces/msg/QueueResultEnum.INVALID_JOINT_LIST constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgQueueResultEnum_INVALID_JOINT_LIST :: Word16
ros2Motoros2_interfacesMsgQueueResultEnum_INVALID_JOINT_LIST = 5
-- | @brief Original motoros2_interfaces/msg/QueueResultEnum.INVALID_JOINT_LIST_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgQueueResultEnum_INVALID_JOINT_LIST_STR :: String
ros2Motoros2_interfacesMsgQueueResultEnum_INVALID_JOINT_LIST_STR = "Point must contain data for all joints"
-- | @brief Original motoros2_interfaces/msg/QueueResultEnum.UNABLE_TO_PROCESS_POINT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgQueueResultEnum_UNABLE_TO_PROCESS_POINT :: Word16
ros2Motoros2_interfacesMsgQueueResultEnum_UNABLE_TO_PROCESS_POINT = 6
-- | @brief Original motoros2_interfaces/msg/QueueResultEnum.UNABLE_TO_PROCESS_POINT_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgQueueResultEnum_UNABLE_TO_PROCESS_POINT_STR :: String
ros2Motoros2_interfacesMsgQueueResultEnum_UNABLE_TO_PROCESS_POINT_STR = "Error while processing the trajectory point. Check debug log for more details"
-- | @brief Encode every field of complete motoros2_interfaces/msg/QueueResultEnum.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesMsgQueueResultEnum :: Ros2Motoros2_interfacesMsgQueueResultEnum -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesMsgQueueResultEnum value = do
    chunk0 <- Right (W.putNumber 2 (ros2Motoros2_interfacesMsgQueueResultEnum_value value))
    let bytes = concat [chunk0]
    if length bytes > 2 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/msg/QueueResultEnum.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesMsgQueueResultEnum :: W.Parser Ros2Motoros2_interfacesMsgQueueResultEnum
readRos2Motoros2_interfacesMsgQueueResultEnum = do
    value0 <- fromIntegral <$> W.number 2
    let value = Ros2Motoros2_interfacesMsgQueueResultEnum value0
    case encodeRos2Motoros2_interfacesMsgQueueResultEnum value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/msg/QueueResultEnum.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesMsgQueueResultEnum :: [Word8] -> Either Word32 Ros2Motoros2_interfacesMsgQueueResultEnum
decodeRos2Motoros2_interfacesMsgQueueResultEnum bytes
    | length bytes < 2 || length bytes > 2 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesMsgQueueResultEnum bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/msg/SelectionResultCodes value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Motoros2_interfacesMsgSelectionResultCodes = Ros2Motoros2_interfacesMsgSelectionResultCodes
    {
    -- | @brief Original motoros2_interfaces/msg/SelectionResultCodes.value field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesMsgSelectionResultCodes_value :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesMsgSelectionResultCodesCodecIdentity :: String
ros2Motoros2_interfacesMsgSelectionResultCodesCodecIdentity = "UWVMROS1_46168b1f851163985e75842d9d795c5715160864a7736e7f92f95818c9435602"
-- | @brief Original motoros2_interfaces/msg/SelectionResultCodes.OK constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgSelectionResultCodes_OK :: Word32
ros2Motoros2_interfacesMsgSelectionResultCodes_OK = 0
-- | @brief Original motoros2_interfaces/msg/SelectionResultCodes.OK_STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgSelectionResultCodes_OK_STR :: String
ros2Motoros2_interfacesMsgSelectionResultCodes_OK_STR = ""
-- | @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROLLER_STATE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_CONTROLLER_STATE :: Word32
ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_CONTROLLER_STATE = 400
-- | @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROLLER_STATE_STR
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_CONTROLLER_STATE_STR :: String
ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_CONTROLLER_STATE_STR = "Pendant is not in REMOTE mode"
-- | @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROL_GROUP constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_CONTROL_GROUP :: Word32
ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_CONTROL_GROUP = 401
-- | @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROL_GROUP_STR
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_CONTROL_GROUP_STR :: String
ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_CONTROL_GROUP_STR = "Invalid control group"
-- | @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_SELECTION_INDEX constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_SELECTION_INDEX :: Word32
ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_SELECTION_INDEX = 402
-- | @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_SELECTION_INDEX_STR
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_SELECTION_INDEX_STR :: String
ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_SELECTION_INDEX_STR = "Invalid tool selection"
-- | @brief Encode every field of complete motoros2_interfaces/msg/SelectionResultCodes.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesMsgSelectionResultCodes :: Ros2Motoros2_interfacesMsgSelectionResultCodes -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesMsgSelectionResultCodes value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesMsgSelectionResultCodes_value value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/msg/SelectionResultCodes.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesMsgSelectionResultCodes :: W.Parser Ros2Motoros2_interfacesMsgSelectionResultCodes
readRos2Motoros2_interfacesMsgSelectionResultCodes = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Motoros2_interfacesMsgSelectionResultCodes value0
    case encodeRos2Motoros2_interfacesMsgSelectionResultCodes value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/msg/SelectionResultCodes.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesMsgSelectionResultCodes :: [Word8] -> Either Word32 Ros2Motoros2_interfacesMsgSelectionResultCodes
decodeRos2Motoros2_interfacesMsgSelectionResultCodes bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesMsgSelectionResultCodes bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/GetActiveAlarmInfo_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request = Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvGetActiveAlarmInfo_RequestCodecIdentity :: String
ros2Motoros2_interfacesSrvGetActiveAlarmInfo_RequestCodecIdentity = "UWVMROS1_aadcd63f3bc47424c38767afdc1589561e3c90e8aeae9bdceef88b1033d57a7e"
-- | @brief Encode every field of complete motoros2_interfaces/srv/GetActiveAlarmInfo_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Request :: Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Request value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/GetActiveAlarmInfo_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Request :: W.Parser Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request
readRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Request = do
    let value = Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request 
    case encodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/GetActiveAlarmInfo_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Request :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request
decodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Request bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/GetActiveAlarmInfo_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 16..32768 bytes.
data Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response = Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response
    {
    -- | @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.result_code field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response_result_code :: Word32
    ,
    -- | @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.result_message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response_result_message :: [Word8]
    ,
    -- | @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.alarms field.
    -- | @details Original type motoros2_interfaces/msg/AlarmInfo. Shape sequence; bound/count 16
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response_alarms :: [Ros2Motoros2_interfacesMsgAlarmInfo]
    ,
    -- | @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.errors field.
    -- | @details Original type motoros2_interfaces/msg/ErrorInfo. Shape sequence; bound/count 16
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response_errors :: [Ros2Motoros2_interfacesMsgErrorInfo]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvGetActiveAlarmInfo_ResponseCodecIdentity :: String
ros2Motoros2_interfacesSrvGetActiveAlarmInfo_ResponseCodecIdentity = "UWVMROS1_e11bdbb95b6ded88d035696260c58dad32bcf3604aa4e89dd41c0dab26541567"
-- | @brief Encode every field of complete motoros2_interfaces/srv/GetActiveAlarmInfo_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Response :: Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response_result_message value)
    if length (ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response_alarms value) <= 16 then Right () else Left 22
    item2 <- concat <$> mapM
        (\element -> encodeRos2Motoros2_interfacesMsgAlarmInfo (element))
        (ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response_alarms value)
    chunk2 <- Right (W.putNumber 4 (length (ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response_alarms value)) ++ item2)
    if length (ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response_errors value) <= 16 then Right () else Left 22
    item3 <- concat <$> mapM
        (\element -> encodeRos2Motoros2_interfacesMsgErrorInfo (element))
        (ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response_errors value)
    chunk3 <- Right (W.putNumber 4 (length (ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response_errors value)) ++ item3)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 32768 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/GetActiveAlarmInfo_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Response :: W.Parser Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response
readRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- W.text 512
    count2 <- W.number 4
    if count2 > 16 then W.reject else pure ()
    value2 <- replicateM (fromIntegral count2) (readRos2Motoros2_interfacesMsgAlarmInfo)
    count3 <- W.number 4
    if count3 > 16 then W.reject else pure ()
    value3 <- replicateM (fromIntegral count3) (readRos2Motoros2_interfacesMsgErrorInfo)
    let value = Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response value0 value1 value2 value3
    case encodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/GetActiveAlarmInfo_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Response :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response
decodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Response bytes
    | length bytes < 16 || length bytes > 32768 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/ListInformJobs_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Motoros2_interfacesSrvListInformJobs_Request = Ros2Motoros2_interfacesSrvListInformJobs_Request
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvListInformJobs_RequestCodecIdentity :: String
ros2Motoros2_interfacesSrvListInformJobs_RequestCodecIdentity = "UWVMROS1_e77eedadef98d98321b1757b88284022afcdb1ffef52b98820b0c4ba596d643c"
-- | @brief Encode every field of complete motoros2_interfaces/srv/ListInformJobs_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvListInformJobs_Request :: Ros2Motoros2_interfacesSrvListInformJobs_Request -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvListInformJobs_Request value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/ListInformJobs_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvListInformJobs_Request :: W.Parser Ros2Motoros2_interfacesSrvListInformJobs_Request
readRos2Motoros2_interfacesSrvListInformJobs_Request = do
    let value = Ros2Motoros2_interfacesSrvListInformJobs_Request 
    case encodeRos2Motoros2_interfacesSrvListInformJobs_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/ListInformJobs_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvListInformJobs_Request :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvListInformJobs_Request
decodeRos2Motoros2_interfacesSrvListInformJobs_Request bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvListInformJobs_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/ListInformJobs_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 12..8780 bytes.
data Ros2Motoros2_interfacesSrvListInformJobs_Response = Ros2Motoros2_interfacesSrvListInformJobs_Response
    {
    -- | @brief Original motoros2_interfaces/srv/ListInformJobs_Response.result_code field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvListInformJobs_Response_result_code :: Word32
    ,
    -- | @brief Original motoros2_interfaces/srv/ListInformJobs_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvListInformJobs_Response_message :: [Word8]
    ,
    -- | @brief Original motoros2_interfaces/srv/ListInformJobs_Response.names field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Shape sequence;
    -- | bound/count 16 elements. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvListInformJobs_Response_names :: [[Word8]]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvListInformJobs_ResponseCodecIdentity :: String
ros2Motoros2_interfacesSrvListInformJobs_ResponseCodecIdentity = "UWVMROS1_49021f0abc00f8df1ef49605a244cb6bba8d8b45ece5365ae35d747d2506eadc"
-- | @brief Encode every field of complete motoros2_interfaces/srv/ListInformJobs_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvListInformJobs_Response :: Ros2Motoros2_interfacesSrvListInformJobs_Response -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvListInformJobs_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvListInformJobs_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Motoros2_interfacesSrvListInformJobs_Response_message value)
    if length (ros2Motoros2_interfacesSrvListInformJobs_Response_names value) <= 16 then Right () else Left 22
    item2 <- concat <$> mapM
        (\element -> W.putText 512 (element))
        (ros2Motoros2_interfacesSrvListInformJobs_Response_names value)
    chunk2 <- Right (W.putNumber 4 (length (ros2Motoros2_interfacesSrvListInformJobs_Response_names value)) ++ item2)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 8780 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/ListInformJobs_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvListInformJobs_Response :: W.Parser Ros2Motoros2_interfacesSrvListInformJobs_Response
readRos2Motoros2_interfacesSrvListInformJobs_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- W.text 512
    count2 <- W.number 4
    if count2 > 16 then W.reject else pure ()
    value2 <- replicateM (fromIntegral count2) (W.text 512)
    let value = Ros2Motoros2_interfacesSrvListInformJobs_Response value0 value1 value2
    case encodeRos2Motoros2_interfacesSrvListInformJobs_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/ListInformJobs_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvListInformJobs_Response :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvListInformJobs_Response
decodeRos2Motoros2_interfacesSrvListInformJobs_Response bytes
    | length bytes < 12 || length bytes > 8780 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvListInformJobs_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/QueueTrajPoint_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 28..1228 bytes.
data Ros2Motoros2_interfacesSrvQueueTrajPoint_Request = Ros2Motoros2_interfacesSrvQueueTrajPoint_Request
    {
    -- | @brief Original motoros2_interfaces/srv/QueueTrajPoint_Request.joint_names field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    -- | bound/count 12 elements. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvQueueTrajPoint_Request_joint_names :: [[Word8]]
    ,
    -- | @brief Original motoros2_interfaces/srv/QueueTrajPoint_Request.point field.
    -- | @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvQueueTrajPoint_Request_point :: Ros2Trajectory_msgsMsgJointTrajectoryPoint
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvQueueTrajPoint_RequestCodecIdentity :: String
ros2Motoros2_interfacesSrvQueueTrajPoint_RequestCodecIdentity = "UWVMROS1_3d37f9981d6abaca33ec0b5378fa3a1ac301791cc9be94d5bdcf4ea6aa81b8d0"
-- | @brief Encode every field of complete motoros2_interfaces/srv/QueueTrajPoint_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvQueueTrajPoint_Request :: Ros2Motoros2_interfacesSrvQueueTrajPoint_Request -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvQueueTrajPoint_Request value = do
    if length (ros2Motoros2_interfacesSrvQueueTrajPoint_Request_joint_names value) <= 12 then Right () else Left 22
    item0 <- concat <$> mapM
        (\element -> W.putText 64 (element))
        (ros2Motoros2_interfacesSrvQueueTrajPoint_Request_joint_names value)
    chunk0 <- Right (W.putNumber 4 (length (ros2Motoros2_interfacesSrvQueueTrajPoint_Request_joint_names value)) ++ item0)
    chunk1 <- encodeRos2Trajectory_msgsMsgJointTrajectoryPoint (ros2Motoros2_interfacesSrvQueueTrajPoint_Request_point value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 1228 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/QueueTrajPoint_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvQueueTrajPoint_Request :: W.Parser Ros2Motoros2_interfacesSrvQueueTrajPoint_Request
readRos2Motoros2_interfacesSrvQueueTrajPoint_Request = do
    count0 <- W.number 4
    if count0 > 12 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (W.text 64)
    value1 <- readRos2Trajectory_msgsMsgJointTrajectoryPoint
    let value = Ros2Motoros2_interfacesSrvQueueTrajPoint_Request value0 value1
    case encodeRos2Motoros2_interfacesSrvQueueTrajPoint_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/QueueTrajPoint_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvQueueTrajPoint_Request :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvQueueTrajPoint_Request
decodeRos2Motoros2_interfacesSrvQueueTrajPoint_Request bytes
    | length bytes < 28 || length bytes > 1228 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvQueueTrajPoint_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/QueueTrajPoint_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Motoros2_interfacesSrvQueueTrajPoint_Response = Ros2Motoros2_interfacesSrvQueueTrajPoint_Response
    {
    -- | @brief Original motoros2_interfaces/srv/QueueTrajPoint_Response.result_code field.
    -- | @details Original type motoros2_interfaces/msg/QueueResultEnum. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvQueueTrajPoint_Response_result_code :: Ros2Motoros2_interfacesMsgQueueResultEnum
    ,
    -- | @brief Original motoros2_interfaces/srv/QueueTrajPoint_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvQueueTrajPoint_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvQueueTrajPoint_ResponseCodecIdentity :: String
ros2Motoros2_interfacesSrvQueueTrajPoint_ResponseCodecIdentity = "UWVMROS1_d4887ed24d39332a5ccfd4a3d072004dd8f314fe5c166bf0bd57520a826cbccd"
-- | @brief Encode every field of complete motoros2_interfaces/srv/QueueTrajPoint_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvQueueTrajPoint_Response :: Ros2Motoros2_interfacesSrvQueueTrajPoint_Response -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvQueueTrajPoint_Response value = do
    chunk0 <- encodeRos2Motoros2_interfacesMsgQueueResultEnum (ros2Motoros2_interfacesSrvQueueTrajPoint_Response_result_code value)
    chunk1 <- W.putText 512 (ros2Motoros2_interfacesSrvQueueTrajPoint_Response_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/QueueTrajPoint_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvQueueTrajPoint_Response :: W.Parser Ros2Motoros2_interfacesSrvQueueTrajPoint_Response
readRos2Motoros2_interfacesSrvQueueTrajPoint_Response = do
    value0 <- readRos2Motoros2_interfacesMsgQueueResultEnum
    value1 <- W.text 512
    let value = Ros2Motoros2_interfacesSrvQueueTrajPoint_Response value0 value1
    case encodeRos2Motoros2_interfacesSrvQueueTrajPoint_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/QueueTrajPoint_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvQueueTrajPoint_Response :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvQueueTrajPoint_Response
decodeRos2Motoros2_interfacesSrvQueueTrajPoint_Response bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvQueueTrajPoint_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/ReadGroupIO_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Motoros2_interfacesSrvReadGroupIO_Request = Ros2Motoros2_interfacesSrvReadGroupIO_Request
    {
    -- | @brief Original motoros2_interfaces/srv/ReadGroupIO_Request.address field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvReadGroupIO_Request_address :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvReadGroupIO_RequestCodecIdentity :: String
ros2Motoros2_interfacesSrvReadGroupIO_RequestCodecIdentity = "UWVMROS1_6ee09ac379e169fc23b81a551e9a9ed21c3f82b5010859984e911b17152beb7f"
-- | @brief Encode every field of complete motoros2_interfaces/srv/ReadGroupIO_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvReadGroupIO_Request :: Ros2Motoros2_interfacesSrvReadGroupIO_Request -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvReadGroupIO_Request value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvReadGroupIO_Request_address value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/ReadGroupIO_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvReadGroupIO_Request :: W.Parser Ros2Motoros2_interfacesSrvReadGroupIO_Request
readRos2Motoros2_interfacesSrvReadGroupIO_Request = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Motoros2_interfacesSrvReadGroupIO_Request value0
    case encodeRos2Motoros2_interfacesSrvReadGroupIO_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/ReadGroupIO_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvReadGroupIO_Request :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvReadGroupIO_Request
decodeRos2Motoros2_interfacesSrvReadGroupIO_Request bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvReadGroupIO_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/ReadGroupIO_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 10..522 bytes.
data Ros2Motoros2_interfacesSrvReadGroupIO_Response = Ros2Motoros2_interfacesSrvReadGroupIO_Response
    {
    -- | @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.result_code field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvReadGroupIO_Response_result_code :: Word32
    ,
    -- | @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvReadGroupIO_Response_message :: [Word8]
    ,
    -- | @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.success field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvReadGroupIO_Response_success :: Bool
    ,
    -- | @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.value field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvReadGroupIO_Response_value :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvReadGroupIO_ResponseCodecIdentity :: String
ros2Motoros2_interfacesSrvReadGroupIO_ResponseCodecIdentity = "UWVMROS1_292fcf6e8c46a2509ee4cc5238d443157f37fed0de898367248b967e9001ea0d"
-- | @brief Encode every field of complete motoros2_interfaces/srv/ReadGroupIO_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvReadGroupIO_Response :: Ros2Motoros2_interfacesSrvReadGroupIO_Response -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvReadGroupIO_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvReadGroupIO_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Motoros2_interfacesSrvReadGroupIO_Response_message value)
    chunk2 <- Right (W.putBool (ros2Motoros2_interfacesSrvReadGroupIO_Response_success value))
    chunk3 <- Right (W.putNumber 1 (ros2Motoros2_interfacesSrvReadGroupIO_Response_value value))
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 522 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/ReadGroupIO_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvReadGroupIO_Response :: W.Parser Ros2Motoros2_interfacesSrvReadGroupIO_Response
readRos2Motoros2_interfacesSrvReadGroupIO_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- W.text 512
    value2 <- W.boolean
    value3 <- fromIntegral <$> W.number 1
    let value = Ros2Motoros2_interfacesSrvReadGroupIO_Response value0 value1 value2 value3
    case encodeRos2Motoros2_interfacesSrvReadGroupIO_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/ReadGroupIO_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvReadGroupIO_Response :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvReadGroupIO_Response
decodeRos2Motoros2_interfacesSrvReadGroupIO_Response bytes
    | length bytes < 10 || length bytes > 522 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvReadGroupIO_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/ReadMRegister_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Motoros2_interfacesSrvReadMRegister_Request = Ros2Motoros2_interfacesSrvReadMRegister_Request
    {
    -- | @brief Original motoros2_interfaces/srv/ReadMRegister_Request.address field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvReadMRegister_Request_address :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvReadMRegister_RequestCodecIdentity :: String
ros2Motoros2_interfacesSrvReadMRegister_RequestCodecIdentity = "UWVMROS1_f31f0983466054f5ac5dcb2ab80ab7721d606a681b833ebb376cc87f96054f6f"
-- | @brief Encode every field of complete motoros2_interfaces/srv/ReadMRegister_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvReadMRegister_Request :: Ros2Motoros2_interfacesSrvReadMRegister_Request -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvReadMRegister_Request value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvReadMRegister_Request_address value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/ReadMRegister_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvReadMRegister_Request :: W.Parser Ros2Motoros2_interfacesSrvReadMRegister_Request
readRos2Motoros2_interfacesSrvReadMRegister_Request = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Motoros2_interfacesSrvReadMRegister_Request value0
    case encodeRos2Motoros2_interfacesSrvReadMRegister_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/ReadMRegister_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvReadMRegister_Request :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvReadMRegister_Request
decodeRos2Motoros2_interfacesSrvReadMRegister_Request bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvReadMRegister_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/ReadMRegister_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 11..523 bytes.
data Ros2Motoros2_interfacesSrvReadMRegister_Response = Ros2Motoros2_interfacesSrvReadMRegister_Response
    {
    -- | @brief Original motoros2_interfaces/srv/ReadMRegister_Response.result_code field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvReadMRegister_Response_result_code :: Word32
    ,
    -- | @brief Original motoros2_interfaces/srv/ReadMRegister_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvReadMRegister_Response_message :: [Word8]
    ,
    -- | @brief Original motoros2_interfaces/srv/ReadMRegister_Response.success field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvReadMRegister_Response_success :: Bool
    ,
    -- | @brief Original motoros2_interfaces/srv/ReadMRegister_Response.value field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvReadMRegister_Response_value :: Word16
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvReadMRegister_ResponseCodecIdentity :: String
ros2Motoros2_interfacesSrvReadMRegister_ResponseCodecIdentity = "UWVMROS1_8d6ded2876adfa2079711205cb0110a82ead6f51db05f266bf285308cd815a04"
-- | @brief Encode every field of complete motoros2_interfaces/srv/ReadMRegister_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvReadMRegister_Response :: Ros2Motoros2_interfacesSrvReadMRegister_Response -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvReadMRegister_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvReadMRegister_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Motoros2_interfacesSrvReadMRegister_Response_message value)
    chunk2 <- Right (W.putBool (ros2Motoros2_interfacesSrvReadMRegister_Response_success value))
    chunk3 <- Right (W.putNumber 2 (ros2Motoros2_interfacesSrvReadMRegister_Response_value value))
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 523 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/ReadMRegister_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvReadMRegister_Response :: W.Parser Ros2Motoros2_interfacesSrvReadMRegister_Response
readRos2Motoros2_interfacesSrvReadMRegister_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- W.text 512
    value2 <- W.boolean
    value3 <- fromIntegral <$> W.number 2
    let value = Ros2Motoros2_interfacesSrvReadMRegister_Response value0 value1 value2 value3
    case encodeRos2Motoros2_interfacesSrvReadMRegister_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/ReadMRegister_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvReadMRegister_Response :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvReadMRegister_Response
decodeRos2Motoros2_interfacesSrvReadMRegister_Response bytes
    | length bytes < 11 || length bytes > 523 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvReadMRegister_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/ReadSingleIO_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Motoros2_interfacesSrvReadSingleIO_Request = Ros2Motoros2_interfacesSrvReadSingleIO_Request
    {
    -- | @brief Original motoros2_interfaces/srv/ReadSingleIO_Request.address field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvReadSingleIO_Request_address :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvReadSingleIO_RequestCodecIdentity :: String
ros2Motoros2_interfacesSrvReadSingleIO_RequestCodecIdentity = "UWVMROS1_30e28db303b772f26b2b3cf6165a0ff79037d037d60e8115b4ee8e177f17e8bb"
-- | @brief Encode every field of complete motoros2_interfaces/srv/ReadSingleIO_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvReadSingleIO_Request :: Ros2Motoros2_interfacesSrvReadSingleIO_Request -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvReadSingleIO_Request value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvReadSingleIO_Request_address value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/ReadSingleIO_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvReadSingleIO_Request :: W.Parser Ros2Motoros2_interfacesSrvReadSingleIO_Request
readRos2Motoros2_interfacesSrvReadSingleIO_Request = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Motoros2_interfacesSrvReadSingleIO_Request value0
    case encodeRos2Motoros2_interfacesSrvReadSingleIO_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/ReadSingleIO_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvReadSingleIO_Request :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvReadSingleIO_Request
decodeRos2Motoros2_interfacesSrvReadSingleIO_Request bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvReadSingleIO_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/ReadSingleIO_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 13..525 bytes.
data Ros2Motoros2_interfacesSrvReadSingleIO_Response = Ros2Motoros2_interfacesSrvReadSingleIO_Response
    {
    -- | @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.result_code field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvReadSingleIO_Response_result_code :: Word32
    ,
    -- | @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvReadSingleIO_Response_message :: [Word8]
    ,
    -- | @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.success field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvReadSingleIO_Response_success :: Bool
    ,
    -- | @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.value field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvReadSingleIO_Response_value :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvReadSingleIO_ResponseCodecIdentity :: String
ros2Motoros2_interfacesSrvReadSingleIO_ResponseCodecIdentity = "UWVMROS1_b42013571274e85769ffac4d47129de8b76e4a675bdef3efefebc9ee19e92082"
-- | @brief Encode every field of complete motoros2_interfaces/srv/ReadSingleIO_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvReadSingleIO_Response :: Ros2Motoros2_interfacesSrvReadSingleIO_Response -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvReadSingleIO_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvReadSingleIO_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Motoros2_interfacesSrvReadSingleIO_Response_message value)
    chunk2 <- Right (W.putBool (ros2Motoros2_interfacesSrvReadSingleIO_Response_success value))
    chunk3 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvReadSingleIO_Response_value value))
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 525 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/ReadSingleIO_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvReadSingleIO_Response :: W.Parser Ros2Motoros2_interfacesSrvReadSingleIO_Response
readRos2Motoros2_interfacesSrvReadSingleIO_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- W.text 512
    value2 <- W.boolean
    value3 <- fromIntegral <$> W.number 4
    let value = Ros2Motoros2_interfacesSrvReadSingleIO_Response value0 value1 value2 value3
    case encodeRos2Motoros2_interfacesSrvReadSingleIO_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/ReadSingleIO_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvReadSingleIO_Response :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvReadSingleIO_Response
decodeRos2Motoros2_interfacesSrvReadSingleIO_Response bytes
    | length bytes < 13 || length bytes > 525 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvReadSingleIO_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/ResetError_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Motoros2_interfacesSrvResetError_Request = Ros2Motoros2_interfacesSrvResetError_Request
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvResetError_RequestCodecIdentity :: String
ros2Motoros2_interfacesSrvResetError_RequestCodecIdentity = "UWVMROS1_2737855d0608478946e2d9ab7f06c92585199c1082ec8406a012f50ad56beae3"
-- | @brief Encode every field of complete motoros2_interfaces/srv/ResetError_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvResetError_Request :: Ros2Motoros2_interfacesSrvResetError_Request -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvResetError_Request value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/ResetError_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvResetError_Request :: W.Parser Ros2Motoros2_interfacesSrvResetError_Request
readRos2Motoros2_interfacesSrvResetError_Request = do
    let value = Ros2Motoros2_interfacesSrvResetError_Request 
    case encodeRos2Motoros2_interfacesSrvResetError_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/ResetError_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvResetError_Request :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvResetError_Request
decodeRos2Motoros2_interfacesSrvResetError_Request bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvResetError_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/ResetError_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Motoros2_interfacesSrvResetError_Response = Ros2Motoros2_interfacesSrvResetError_Response
    {
    -- | @brief Original motoros2_interfaces/srv/ResetError_Response.result_code field.
    -- | @details Original type motoros2_interfaces/msg/MotionReadyEnum. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvResetError_Response_result_code :: Ros2Motoros2_interfacesMsgMotionReadyEnum
    ,
    -- | @brief Original motoros2_interfaces/srv/ResetError_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvResetError_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvResetError_ResponseCodecIdentity :: String
ros2Motoros2_interfacesSrvResetError_ResponseCodecIdentity = "UWVMROS1_0af14ee02c157ecc39b143225a580e475473306389ccc3ba198cf22ca47d82f3"
-- | @brief Encode every field of complete motoros2_interfaces/srv/ResetError_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvResetError_Response :: Ros2Motoros2_interfacesSrvResetError_Response -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvResetError_Response value = do
    chunk0 <- encodeRos2Motoros2_interfacesMsgMotionReadyEnum (ros2Motoros2_interfacesSrvResetError_Response_result_code value)
    chunk1 <- W.putText 512 (ros2Motoros2_interfacesSrvResetError_Response_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/ResetError_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvResetError_Response :: W.Parser Ros2Motoros2_interfacesSrvResetError_Response
readRos2Motoros2_interfacesSrvResetError_Response = do
    value0 <- readRos2Motoros2_interfacesMsgMotionReadyEnum
    value1 <- W.text 512
    let value = Ros2Motoros2_interfacesSrvResetError_Response value0 value1
    case encodeRos2Motoros2_interfacesSrvResetError_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/ResetError_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvResetError_Response :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvResetError_Response
decodeRos2Motoros2_interfacesSrvResetError_Response bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvResetError_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/SelectMotionTool_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Motoros2_interfacesSrvSelectMotionTool_Request = Ros2Motoros2_interfacesSrvSelectMotionTool_Request
    {
    -- | @brief Original motoros2_interfaces/srv/SelectMotionTool_Request.group_number field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvSelectMotionTool_Request_group_number :: Word32
    ,
    -- | @brief Original motoros2_interfaces/srv/SelectMotionTool_Request.tool_number field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvSelectMotionTool_Request_tool_number :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvSelectMotionTool_RequestCodecIdentity :: String
ros2Motoros2_interfacesSrvSelectMotionTool_RequestCodecIdentity = "UWVMROS1_e6c884ae0a97337c1e441efe099b7869dc95205fcbca0a8082d4d9b06f5b438c"
-- | @brief Encode every field of complete motoros2_interfaces/srv/SelectMotionTool_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvSelectMotionTool_Request :: Ros2Motoros2_interfacesSrvSelectMotionTool_Request -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvSelectMotionTool_Request value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvSelectMotionTool_Request_group_number value))
    chunk1 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvSelectMotionTool_Request_tool_number value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/SelectMotionTool_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvSelectMotionTool_Request :: W.Parser Ros2Motoros2_interfacesSrvSelectMotionTool_Request
readRos2Motoros2_interfacesSrvSelectMotionTool_Request = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value = Ros2Motoros2_interfacesSrvSelectMotionTool_Request value0 value1
    case encodeRos2Motoros2_interfacesSrvSelectMotionTool_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/SelectMotionTool_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvSelectMotionTool_Request :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvSelectMotionTool_Request
decodeRos2Motoros2_interfacesSrvSelectMotionTool_Request bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvSelectMotionTool_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/SelectMotionTool_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 9..521 bytes.
data Ros2Motoros2_interfacesSrvSelectMotionTool_Response = Ros2Motoros2_interfacesSrvSelectMotionTool_Response
    {
    -- | @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.result_code field.
    -- | @details Original type motoros2_interfaces/msg/SelectionResultCodes. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvSelectMotionTool_Response_result_code :: Ros2Motoros2_interfacesMsgSelectionResultCodes
    ,
    -- | @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvSelectMotionTool_Response_message :: [Word8]
    ,
    -- | @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.success field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvSelectMotionTool_Response_success :: Bool
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvSelectMotionTool_ResponseCodecIdentity :: String
ros2Motoros2_interfacesSrvSelectMotionTool_ResponseCodecIdentity = "UWVMROS1_088349a49c14c52282c25b428628462c48618c3b5202df560dcc5c9bed742640"
-- | @brief Encode every field of complete motoros2_interfaces/srv/SelectMotionTool_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvSelectMotionTool_Response :: Ros2Motoros2_interfacesSrvSelectMotionTool_Response -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvSelectMotionTool_Response value = do
    chunk0 <- encodeRos2Motoros2_interfacesMsgSelectionResultCodes (ros2Motoros2_interfacesSrvSelectMotionTool_Response_result_code value)
    chunk1 <- W.putText 512 (ros2Motoros2_interfacesSrvSelectMotionTool_Response_message value)
    chunk2 <- Right (W.putBool (ros2Motoros2_interfacesSrvSelectMotionTool_Response_success value))
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 521 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/SelectMotionTool_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvSelectMotionTool_Response :: W.Parser Ros2Motoros2_interfacesSrvSelectMotionTool_Response
readRos2Motoros2_interfacesSrvSelectMotionTool_Response = do
    value0 <- readRos2Motoros2_interfacesMsgSelectionResultCodes
    value1 <- W.text 512
    value2 <- W.boolean
    let value = Ros2Motoros2_interfacesSrvSelectMotionTool_Response value0 value1 value2
    case encodeRos2Motoros2_interfacesSrvSelectMotionTool_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/SelectMotionTool_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvSelectMotionTool_Response :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvSelectMotionTool_Response
decodeRos2Motoros2_interfacesSrvSelectMotionTool_Response bytes
    | length bytes < 9 || length bytes > 521 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvSelectMotionTool_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/StartPointQueueMode_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Motoros2_interfacesSrvStartPointQueueMode_Request = Ros2Motoros2_interfacesSrvStartPointQueueMode_Request
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvStartPointQueueMode_RequestCodecIdentity :: String
ros2Motoros2_interfacesSrvStartPointQueueMode_RequestCodecIdentity = "UWVMROS1_58a4827fc6535ef0ffc64ee25c5c4af75aa0fe199fa0350a88a95d2e991164a1"
-- | @brief Encode every field of complete motoros2_interfaces/srv/StartPointQueueMode_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvStartPointQueueMode_Request :: Ros2Motoros2_interfacesSrvStartPointQueueMode_Request -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvStartPointQueueMode_Request value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/StartPointQueueMode_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvStartPointQueueMode_Request :: W.Parser Ros2Motoros2_interfacesSrvStartPointQueueMode_Request
readRos2Motoros2_interfacesSrvStartPointQueueMode_Request = do
    let value = Ros2Motoros2_interfacesSrvStartPointQueueMode_Request 
    case encodeRos2Motoros2_interfacesSrvStartPointQueueMode_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/StartPointQueueMode_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvStartPointQueueMode_Request :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvStartPointQueueMode_Request
decodeRos2Motoros2_interfacesSrvStartPointQueueMode_Request bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvStartPointQueueMode_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/StartPointQueueMode_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Motoros2_interfacesSrvStartPointQueueMode_Response = Ros2Motoros2_interfacesSrvStartPointQueueMode_Response
    {
    -- | @brief Original motoros2_interfaces/srv/StartPointQueueMode_Response.result_code field.
    -- | @details Original type motoros2_interfaces/msg/MotionReadyEnum. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvStartPointQueueMode_Response_result_code :: Ros2Motoros2_interfacesMsgMotionReadyEnum
    ,
    -- | @brief Original motoros2_interfaces/srv/StartPointQueueMode_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvStartPointQueueMode_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvStartPointQueueMode_ResponseCodecIdentity :: String
ros2Motoros2_interfacesSrvStartPointQueueMode_ResponseCodecIdentity = "UWVMROS1_bc553d5640e1c4644a5d5bdc2dfcefc9dbe789ef1e2a23dd620f08963467b6ff"
-- | @brief Encode every field of complete motoros2_interfaces/srv/StartPointQueueMode_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvStartPointQueueMode_Response :: Ros2Motoros2_interfacesSrvStartPointQueueMode_Response -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvStartPointQueueMode_Response value = do
    chunk0 <- encodeRos2Motoros2_interfacesMsgMotionReadyEnum (ros2Motoros2_interfacesSrvStartPointQueueMode_Response_result_code value)
    chunk1 <- W.putText 512 (ros2Motoros2_interfacesSrvStartPointQueueMode_Response_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/StartPointQueueMode_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvStartPointQueueMode_Response :: W.Parser Ros2Motoros2_interfacesSrvStartPointQueueMode_Response
readRos2Motoros2_interfacesSrvStartPointQueueMode_Response = do
    value0 <- readRos2Motoros2_interfacesMsgMotionReadyEnum
    value1 <- W.text 512
    let value = Ros2Motoros2_interfacesSrvStartPointQueueMode_Response value0 value1
    case encodeRos2Motoros2_interfacesSrvStartPointQueueMode_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/StartPointQueueMode_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvStartPointQueueMode_Response :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvStartPointQueueMode_Response
decodeRos2Motoros2_interfacesSrvStartPointQueueMode_Response bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvStartPointQueueMode_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/StartTrajMode_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Motoros2_interfacesSrvStartTrajMode_Request = Ros2Motoros2_interfacesSrvStartTrajMode_Request
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvStartTrajMode_RequestCodecIdentity :: String
ros2Motoros2_interfacesSrvStartTrajMode_RequestCodecIdentity = "UWVMROS1_0b8b2ad5db5901047035e1070b675618afc516a1ae8c3308cfdcad1174d34789"
-- | @brief Encode every field of complete motoros2_interfaces/srv/StartTrajMode_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvStartTrajMode_Request :: Ros2Motoros2_interfacesSrvStartTrajMode_Request -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvStartTrajMode_Request value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/StartTrajMode_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvStartTrajMode_Request :: W.Parser Ros2Motoros2_interfacesSrvStartTrajMode_Request
readRos2Motoros2_interfacesSrvStartTrajMode_Request = do
    let value = Ros2Motoros2_interfacesSrvStartTrajMode_Request 
    case encodeRos2Motoros2_interfacesSrvStartTrajMode_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/StartTrajMode_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvStartTrajMode_Request :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvStartTrajMode_Request
decodeRos2Motoros2_interfacesSrvStartTrajMode_Request bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvStartTrajMode_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/StartTrajMode_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Motoros2_interfacesSrvStartTrajMode_Response = Ros2Motoros2_interfacesSrvStartTrajMode_Response
    {
    -- | @brief Original motoros2_interfaces/srv/StartTrajMode_Response.result_code field.
    -- | @details Original type motoros2_interfaces/msg/MotionReadyEnum. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvStartTrajMode_Response_result_code :: Ros2Motoros2_interfacesMsgMotionReadyEnum
    ,
    -- | @brief Original motoros2_interfaces/srv/StartTrajMode_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvStartTrajMode_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvStartTrajMode_ResponseCodecIdentity :: String
ros2Motoros2_interfacesSrvStartTrajMode_ResponseCodecIdentity = "UWVMROS1_170e25737e6a2b06f5d5d9f331d748c97cf0306284271757953a4a801c722939"
-- | @brief Encode every field of complete motoros2_interfaces/srv/StartTrajMode_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvStartTrajMode_Response :: Ros2Motoros2_interfacesSrvStartTrajMode_Response -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvStartTrajMode_Response value = do
    chunk0 <- encodeRos2Motoros2_interfacesMsgMotionReadyEnum (ros2Motoros2_interfacesSrvStartTrajMode_Response_result_code value)
    chunk1 <- W.putText 512 (ros2Motoros2_interfacesSrvStartTrajMode_Response_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/StartTrajMode_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvStartTrajMode_Response :: W.Parser Ros2Motoros2_interfacesSrvStartTrajMode_Response
readRos2Motoros2_interfacesSrvStartTrajMode_Response = do
    value0 <- readRos2Motoros2_interfacesMsgMotionReadyEnum
    value1 <- W.text 512
    let value = Ros2Motoros2_interfacesSrvStartTrajMode_Response value0 value1
    case encodeRos2Motoros2_interfacesSrvStartTrajMode_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/StartTrajMode_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvStartTrajMode_Response :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvStartTrajMode_Response
decodeRos2Motoros2_interfacesSrvStartTrajMode_Response bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvStartTrajMode_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/WriteGroupIO_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 5..5 bytes.
data Ros2Motoros2_interfacesSrvWriteGroupIO_Request = Ros2Motoros2_interfacesSrvWriteGroupIO_Request
    {
    -- | @brief Original motoros2_interfaces/srv/WriteGroupIO_Request.address field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvWriteGroupIO_Request_address :: Word32
    ,
    -- | @brief Original motoros2_interfaces/srv/WriteGroupIO_Request.value field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvWriteGroupIO_Request_value :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvWriteGroupIO_RequestCodecIdentity :: String
ros2Motoros2_interfacesSrvWriteGroupIO_RequestCodecIdentity = "UWVMROS1_2d348ed71408a0dd1dd28ee2ed2ca1db56bb07a14546d0fe13ccf64e8553d52c"
-- | @brief Encode every field of complete motoros2_interfaces/srv/WriteGroupIO_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvWriteGroupIO_Request :: Ros2Motoros2_interfacesSrvWriteGroupIO_Request -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvWriteGroupIO_Request value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvWriteGroupIO_Request_address value))
    chunk1 <- Right (W.putNumber 1 (ros2Motoros2_interfacesSrvWriteGroupIO_Request_value value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 5 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/WriteGroupIO_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvWriteGroupIO_Request :: W.Parser Ros2Motoros2_interfacesSrvWriteGroupIO_Request
readRos2Motoros2_interfacesSrvWriteGroupIO_Request = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 1
    let value = Ros2Motoros2_interfacesSrvWriteGroupIO_Request value0 value1
    case encodeRos2Motoros2_interfacesSrvWriteGroupIO_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/WriteGroupIO_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvWriteGroupIO_Request :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvWriteGroupIO_Request
decodeRos2Motoros2_interfacesSrvWriteGroupIO_Request bytes
    | length bytes < 5 || length bytes > 5 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvWriteGroupIO_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/WriteGroupIO_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 9..521 bytes.
data Ros2Motoros2_interfacesSrvWriteGroupIO_Response = Ros2Motoros2_interfacesSrvWriteGroupIO_Response
    {
    -- | @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.result_code field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvWriteGroupIO_Response_result_code :: Word32
    ,
    -- | @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvWriteGroupIO_Response_message :: [Word8]
    ,
    -- | @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.success field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvWriteGroupIO_Response_success :: Bool
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvWriteGroupIO_ResponseCodecIdentity :: String
ros2Motoros2_interfacesSrvWriteGroupIO_ResponseCodecIdentity = "UWVMROS1_06769934711b27fd32cdcbf849504e160189ee82ea32e0e71a2903af47c5d766"
-- | @brief Encode every field of complete motoros2_interfaces/srv/WriteGroupIO_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvWriteGroupIO_Response :: Ros2Motoros2_interfacesSrvWriteGroupIO_Response -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvWriteGroupIO_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvWriteGroupIO_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Motoros2_interfacesSrvWriteGroupIO_Response_message value)
    chunk2 <- Right (W.putBool (ros2Motoros2_interfacesSrvWriteGroupIO_Response_success value))
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 521 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/WriteGroupIO_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvWriteGroupIO_Response :: W.Parser Ros2Motoros2_interfacesSrvWriteGroupIO_Response
readRos2Motoros2_interfacesSrvWriteGroupIO_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- W.text 512
    value2 <- W.boolean
    let value = Ros2Motoros2_interfacesSrvWriteGroupIO_Response value0 value1 value2
    case encodeRos2Motoros2_interfacesSrvWriteGroupIO_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/WriteGroupIO_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvWriteGroupIO_Response :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvWriteGroupIO_Response
decodeRos2Motoros2_interfacesSrvWriteGroupIO_Response bytes
    | length bytes < 9 || length bytes > 521 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvWriteGroupIO_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/WriteMRegister_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 6..6 bytes.
data Ros2Motoros2_interfacesSrvWriteMRegister_Request = Ros2Motoros2_interfacesSrvWriteMRegister_Request
    {
    -- | @brief Original motoros2_interfaces/srv/WriteMRegister_Request.address field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvWriteMRegister_Request_address :: Word32
    ,
    -- | @brief Original motoros2_interfaces/srv/WriteMRegister_Request.value field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvWriteMRegister_Request_value :: Word16
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvWriteMRegister_RequestCodecIdentity :: String
ros2Motoros2_interfacesSrvWriteMRegister_RequestCodecIdentity = "UWVMROS1_8df4536be27f0632052725d5616fd5b047f49fc306fc7735854d9de4fb15d4ef"
-- | @brief Encode every field of complete motoros2_interfaces/srv/WriteMRegister_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvWriteMRegister_Request :: Ros2Motoros2_interfacesSrvWriteMRegister_Request -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvWriteMRegister_Request value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvWriteMRegister_Request_address value))
    chunk1 <- Right (W.putNumber 2 (ros2Motoros2_interfacesSrvWriteMRegister_Request_value value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 6 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/WriteMRegister_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvWriteMRegister_Request :: W.Parser Ros2Motoros2_interfacesSrvWriteMRegister_Request
readRos2Motoros2_interfacesSrvWriteMRegister_Request = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 2
    let value = Ros2Motoros2_interfacesSrvWriteMRegister_Request value0 value1
    case encodeRos2Motoros2_interfacesSrvWriteMRegister_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/WriteMRegister_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvWriteMRegister_Request :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvWriteMRegister_Request
decodeRos2Motoros2_interfacesSrvWriteMRegister_Request bytes
    | length bytes < 6 || length bytes > 6 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvWriteMRegister_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/WriteMRegister_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 9..521 bytes.
data Ros2Motoros2_interfacesSrvWriteMRegister_Response = Ros2Motoros2_interfacesSrvWriteMRegister_Response
    {
    -- | @brief Original motoros2_interfaces/srv/WriteMRegister_Response.result_code field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvWriteMRegister_Response_result_code :: Word32
    ,
    -- | @brief Original motoros2_interfaces/srv/WriteMRegister_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvWriteMRegister_Response_message :: [Word8]
    ,
    -- | @brief Original motoros2_interfaces/srv/WriteMRegister_Response.success field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvWriteMRegister_Response_success :: Bool
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvWriteMRegister_ResponseCodecIdentity :: String
ros2Motoros2_interfacesSrvWriteMRegister_ResponseCodecIdentity = "UWVMROS1_a61cc0596a7545ef4836bdc64dc9d6b4ed99b0abd18a726eb37e6215f51c729a"
-- | @brief Encode every field of complete motoros2_interfaces/srv/WriteMRegister_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvWriteMRegister_Response :: Ros2Motoros2_interfacesSrvWriteMRegister_Response -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvWriteMRegister_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvWriteMRegister_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Motoros2_interfacesSrvWriteMRegister_Response_message value)
    chunk2 <- Right (W.putBool (ros2Motoros2_interfacesSrvWriteMRegister_Response_success value))
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 521 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/WriteMRegister_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvWriteMRegister_Response :: W.Parser Ros2Motoros2_interfacesSrvWriteMRegister_Response
readRos2Motoros2_interfacesSrvWriteMRegister_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- W.text 512
    value2 <- W.boolean
    let value = Ros2Motoros2_interfacesSrvWriteMRegister_Response value0 value1 value2
    case encodeRos2Motoros2_interfacesSrvWriteMRegister_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/WriteMRegister_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvWriteMRegister_Response :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvWriteMRegister_Response
decodeRos2Motoros2_interfacesSrvWriteMRegister_Response bytes
    | length bytes < 9 || length bytes > 521 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvWriteMRegister_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/WriteSingleIO_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Motoros2_interfacesSrvWriteSingleIO_Request = Ros2Motoros2_interfacesSrvWriteSingleIO_Request
    {
    -- | @brief Original motoros2_interfaces/srv/WriteSingleIO_Request.address field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvWriteSingleIO_Request_address :: Word32
    ,
    -- | @brief Original motoros2_interfaces/srv/WriteSingleIO_Request.value field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvWriteSingleIO_Request_value :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvWriteSingleIO_RequestCodecIdentity :: String
ros2Motoros2_interfacesSrvWriteSingleIO_RequestCodecIdentity = "UWVMROS1_6361affcd8b7ebaaa1fe6b5806e64a7c18f7a96a1178614cfce487de813a6392"
-- | @brief Encode every field of complete motoros2_interfaces/srv/WriteSingleIO_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvWriteSingleIO_Request :: Ros2Motoros2_interfacesSrvWriteSingleIO_Request -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvWriteSingleIO_Request value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvWriteSingleIO_Request_address value))
    chunk1 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvWriteSingleIO_Request_value value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/WriteSingleIO_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvWriteSingleIO_Request :: W.Parser Ros2Motoros2_interfacesSrvWriteSingleIO_Request
readRos2Motoros2_interfacesSrvWriteSingleIO_Request = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value = Ros2Motoros2_interfacesSrvWriteSingleIO_Request value0 value1
    case encodeRos2Motoros2_interfacesSrvWriteSingleIO_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/WriteSingleIO_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvWriteSingleIO_Request :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvWriteSingleIO_Request
decodeRos2Motoros2_interfacesSrvWriteSingleIO_Request bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvWriteSingleIO_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original motoros2_interfaces/srv/WriteSingleIO_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 9..521 bytes.
data Ros2Motoros2_interfacesSrvWriteSingleIO_Response = Ros2Motoros2_interfacesSrvWriteSingleIO_Response
    {
    -- | @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.result_code field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvWriteSingleIO_Response_result_code :: Word32
    ,
    -- | @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Motoros2_interfacesSrvWriteSingleIO_Response_message :: [Word8]
    ,
    -- | @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.success field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Motoros2_interfacesSrvWriteSingleIO_Response_success :: Bool
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Motoros2_interfacesSrvWriteSingleIO_ResponseCodecIdentity :: String
ros2Motoros2_interfacesSrvWriteSingleIO_ResponseCodecIdentity = "UWVMROS1_12328db372a572fe9b0c7207331a7971d5d7c9033376e3be410db579b85fb794"
-- | @brief Encode every field of complete motoros2_interfaces/srv/WriteSingleIO_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Motoros2_interfacesSrvWriteSingleIO_Response :: Ros2Motoros2_interfacesSrvWriteSingleIO_Response -> Either Word32 [Word8]
encodeRos2Motoros2_interfacesSrvWriteSingleIO_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Motoros2_interfacesSrvWriteSingleIO_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Motoros2_interfacesSrvWriteSingleIO_Response_message value)
    chunk2 <- Right (W.putBool (ros2Motoros2_interfacesSrvWriteSingleIO_Response_success value))
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 521 then Left 22 else Right bytes
-- | @brief Read every field of nested motoros2_interfaces/srv/WriteSingleIO_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Motoros2_interfacesSrvWriteSingleIO_Response :: W.Parser Ros2Motoros2_interfacesSrvWriteSingleIO_Response
readRos2Motoros2_interfacesSrvWriteSingleIO_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- W.text 512
    value2 <- W.boolean
    let value = Ros2Motoros2_interfacesSrvWriteSingleIO_Response value0 value1 value2
    case encodeRos2Motoros2_interfacesSrvWriteSingleIO_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete motoros2_interfaces/srv/WriteSingleIO_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Motoros2_interfacesSrvWriteSingleIO_Response :: [Word8] -> Either Word32 Ros2Motoros2_interfacesSrvWriteSingleIO_Response
decodeRos2Motoros2_interfacesSrvWriteSingleIO_Response bytes
    | length bytes < 9 || length bytes > 521 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Motoros2_interfacesSrvWriteSingleIO_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original sensor_msgs/msg/JointState value.
-- | @details Retain every original field in declaration order. Canonical extent 28..1196 bytes.
data Ros2Sensor_msgsMsgJointState = Ros2Sensor_msgsMsgJointState
    {
    -- | @brief Original sensor_msgs/msg/JointState.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Sensor_msgsMsgJointState_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original sensor_msgs/msg/JointState.name field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    -- | bound/count 12 elements. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Sensor_msgsMsgJointState_name :: [[Word8]]
    ,
    -- | @brief Original sensor_msgs/msg/JointState.position field.
    -- | @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Sensor_msgsMsgJointState_position :: [Double]
    ,
    -- | @brief Original sensor_msgs/msg/JointState.velocity field.
    -- | @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Sensor_msgsMsgJointState_velocity :: [Double]
    ,
    -- | @brief Original sensor_msgs/msg/JointState.effort field.
    -- | @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Sensor_msgsMsgJointState_effort :: [Double]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Sensor_msgsMsgJointStateCodecIdentity :: String
ros2Sensor_msgsMsgJointStateCodecIdentity = "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884"
-- | @brief Encode every field of complete sensor_msgs/msg/JointState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Sensor_msgsMsgJointState :: Ros2Sensor_msgsMsgJointState -> Either Word32 [Word8]
encodeRos2Sensor_msgsMsgJointState value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Sensor_msgsMsgJointState_header value)
    if length (ros2Sensor_msgsMsgJointState_name value) <= 12 then Right () else Left 22
    item1 <- concat <$> mapM (\element -> W.putText 64 (element)) (ros2Sensor_msgsMsgJointState_name value)
    chunk1 <- Right (W.putNumber 4 (length (ros2Sensor_msgsMsgJointState_name value)) ++ item1)
    if length (ros2Sensor_msgsMsgJointState_position value) <= 12 then Right () else Left 22
    item2 <- concat <$> mapM
        (\element -> finite8 (element) castDoubleToWord64)
        (ros2Sensor_msgsMsgJointState_position value)
    chunk2 <- Right (W.putNumber 4 (length (ros2Sensor_msgsMsgJointState_position value)) ++ item2)
    if length (ros2Sensor_msgsMsgJointState_velocity value) <= 12 then Right () else Left 22
    item3 <- concat <$> mapM
        (\element -> finite8 (element) castDoubleToWord64)
        (ros2Sensor_msgsMsgJointState_velocity value)
    chunk3 <- Right (W.putNumber 4 (length (ros2Sensor_msgsMsgJointState_velocity value)) ++ item3)
    if length (ros2Sensor_msgsMsgJointState_effort value) <= 12 then Right () else Left 22
    item4 <- concat <$> mapM
        (\element -> finite8 (element) castDoubleToWord64)
        (ros2Sensor_msgsMsgJointState_effort value)
    chunk4 <- Right (W.putNumber 4 (length (ros2Sensor_msgsMsgJointState_effort value)) ++ item4)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4]
    if length bytes > 1196 then Left 22 else Right bytes
-- | @brief Read every field of nested sensor_msgs/msg/JointState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Sensor_msgsMsgJointState :: W.Parser Ros2Sensor_msgsMsgJointState
readRos2Sensor_msgsMsgJointState = do
    value0 <- readRos2Std_msgsMsgHeader
    count1 <- W.number 4
    if count1 > 12 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (W.text 64)
    count2 <- W.number 4
    if count2 > 12 then W.reject else pure ()
    value2 <- replicateM (fromIntegral count2) (castWord64ToDouble <$> W.number 8)
    count3 <- W.number 4
    if count3 > 12 then W.reject else pure ()
    value3 <- replicateM (fromIntegral count3) (castWord64ToDouble <$> W.number 8)
    count4 <- W.number 4
    if count4 > 12 then W.reject else pure ()
    value4 <- replicateM (fromIntegral count4) (castWord64ToDouble <$> W.number 8)
    let value = Ros2Sensor_msgsMsgJointState value0 value1 value2 value3 value4
    case encodeRos2Sensor_msgsMsgJointState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete sensor_msgs/msg/JointState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Sensor_msgsMsgJointState :: [Word8] -> Either Word32 Ros2Sensor_msgsMsgJointState
decodeRos2Sensor_msgsMsgJointState bytes
    | length bytes < 28 || length bytes > 1196 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Sensor_msgsMsgJointState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original std_srvs/srv/Trigger_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Std_srvsSrvTrigger_Request = Ros2Std_srvsSrvTrigger_Request
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Std_srvsSrvTrigger_RequestCodecIdentity :: String
ros2Std_srvsSrvTrigger_RequestCodecIdentity = "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77"
-- | @brief Encode every field of complete std_srvs/srv/Trigger_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Std_srvsSrvTrigger_Request :: Ros2Std_srvsSrvTrigger_Request -> Either Word32 [Word8]
encodeRos2Std_srvsSrvTrigger_Request value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested std_srvs/srv/Trigger_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Std_srvsSrvTrigger_Request :: W.Parser Ros2Std_srvsSrvTrigger_Request
readRos2Std_srvsSrvTrigger_Request = do
    let value = Ros2Std_srvsSrvTrigger_Request 
    case encodeRos2Std_srvsSrvTrigger_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete std_srvs/srv/Trigger_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Std_srvsSrvTrigger_Request :: [Word8] -> Either Word32 Ros2Std_srvsSrvTrigger_Request
decodeRos2Std_srvsSrvTrigger_Request bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Std_srvsSrvTrigger_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original std_srvs/srv/Trigger_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 5..517 bytes.
data Ros2Std_srvsSrvTrigger_Response = Ros2Std_srvsSrvTrigger_Response
    {
    -- | @brief Original std_srvs/srv/Trigger_Response.success field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Std_srvsSrvTrigger_Response_success :: Bool
    ,
    -- | @brief Original std_srvs/srv/Trigger_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Std_srvsSrvTrigger_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Std_srvsSrvTrigger_ResponseCodecIdentity :: String
ros2Std_srvsSrvTrigger_ResponseCodecIdentity = "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d"
-- | @brief Encode every field of complete std_srvs/srv/Trigger_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Std_srvsSrvTrigger_Response :: Ros2Std_srvsSrvTrigger_Response -> Either Word32 [Word8]
encodeRos2Std_srvsSrvTrigger_Response value = do
    chunk0 <- Right (W.putBool (ros2Std_srvsSrvTrigger_Response_success value))
    chunk1 <- W.putText 512 (ros2Std_srvsSrvTrigger_Response_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 517 then Left 22 else Right bytes
-- | @brief Read every field of nested std_srvs/srv/Trigger_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Std_srvsSrvTrigger_Response :: W.Parser Ros2Std_srvsSrvTrigger_Response
readRos2Std_srvsSrvTrigger_Response = do
    value0 <- W.boolean
    value1 <- W.text 512
    let value = Ros2Std_srvsSrvTrigger_Response value0 value1
    case encodeRos2Std_srvsSrvTrigger_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete std_srvs/srv/Trigger_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Std_srvsSrvTrigger_Response :: [Word8] -> Either Word32 Ros2Std_srvsSrvTrigger_Response
decodeRos2Std_srvsSrvTrigger_Response bytes
    | length bytes < 5 || length bytes > 517 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Std_srvsSrvTrigger_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original tf2_msgs/msg/TFMessage value.
-- | @details Retain every original field in declaration order. Canonical extent 4..10372 bytes.
data Ros2Tf2_msgsMsgTFMessage = Ros2Tf2_msgsMsgTFMessage
    {
    -- | @brief Original tf2_msgs/msg/TFMessage.transforms field.
    -- | @details Original type geometry_msgs/msg/TransformStamped. Shape sequence; bound/count 16
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Tf2_msgsMsgTFMessage_transforms :: [Ros2Geometry_msgsMsgTransformStamped]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Tf2_msgsMsgTFMessageCodecIdentity :: String
ros2Tf2_msgsMsgTFMessageCodecIdentity = "UWVMROS1_4428597a9c2783fd8f0f083a16e8fd1b3d286487f4800c55fcc5571e7f79e65a"
-- | @brief Encode every field of complete tf2_msgs/msg/TFMessage.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Tf2_msgsMsgTFMessage :: Ros2Tf2_msgsMsgTFMessage -> Either Word32 [Word8]
encodeRos2Tf2_msgsMsgTFMessage value = do
    if length (ros2Tf2_msgsMsgTFMessage_transforms value) <= 16 then Right () else Left 22
    item0 <- concat <$> mapM
        (\element -> encodeRos2Geometry_msgsMsgTransformStamped (element))
        (ros2Tf2_msgsMsgTFMessage_transforms value)
    chunk0 <- Right (W.putNumber 4 (length (ros2Tf2_msgsMsgTFMessage_transforms value)) ++ item0)
    let bytes = concat [chunk0]
    if length bytes > 10372 then Left 22 else Right bytes
-- | @brief Read every field of nested tf2_msgs/msg/TFMessage.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Tf2_msgsMsgTFMessage :: W.Parser Ros2Tf2_msgsMsgTFMessage
readRos2Tf2_msgsMsgTFMessage = do
    count0 <- W.number 4
    if count0 > 16 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (readRos2Geometry_msgsMsgTransformStamped)
    let value = Ros2Tf2_msgsMsgTFMessage value0
    case encodeRos2Tf2_msgsMsgTFMessage value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete tf2_msgs/msg/TFMessage.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Tf2_msgsMsgTFMessage :: [Word8] -> Either Word32 Ros2Tf2_msgsMsgTFMessage
decodeRos2Tf2_msgsMsgTFMessage bytes
    | length bytes < 4 || length bytes > 10372 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Tf2_msgsMsgTFMessage bytes
        if null remaining then Right value else Left 22

-- | @brief Preserve a raw-byte string domain. @param capacity Finite bound.
-- @param bytes Owned original bytes. @return Count and bytes or error 22.
rawText :: Int -> [Word8] -> Either Word32 [Word8]
rawText capacity bytes = if length bytes > capacity then Left 22
    else Right (W.putNumber 4 (length bytes) ++ bytes)
-- | @brief Read bounded raw text without Unicode coercion. @return Owned parser value.
readRaw :: Int -> W.Parser [Word8]
readRaw capacity = do
    count <- W.number 4
    if count > fromIntegral capacity then W.reject else W.takeBytes (fromIntegral count)
-- | @brief Encode finite Float32 bits unchanged. @return Four bytes or error 22.
finite4 :: Float -> (Float -> Word32) -> Either Word32 [Word8]
finite4 value cast = if isNaN value || isInfinite value then Left 22
    else Right (W.putNumber 4 (cast value))
-- | @brief Encode finite Float64 bits unchanged. @return Eight bytes or error 22.
finite8 :: Double -> (Double -> Word64) -> Either Word32 [Word8]
finite8 value cast = if isNaN value || isInfinite value then Left 22
    else Right (W.putNumber 8 (cast value))


-- DEFAULT_FACTORIES_BEGIN

-- | @brief Construct complete original builtin_interfaces/msg/Duration defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Builtin_interfacesMsgDuration :: Either Word32 Ros2Builtin_interfacesMsgDuration
defaultRos2Builtin_interfacesMsgDuration = decodeRos2Builtin_interfacesMsgDuration
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original builtin_interfaces/msg/Time defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Builtin_interfacesMsgTime :: Either Word32 Ros2Builtin_interfacesMsgTime
defaultRos2Builtin_interfacesMsgTime = decodeRos2Builtin_interfacesMsgTime
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original std_msgs/msg/Header defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Std_msgsMsgHeader :: Either Word32 Ros2Std_msgsMsgHeader
defaultRos2Std_msgsMsgHeader = decodeRos2Std_msgsMsgHeader
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original trajectory_msgs/msg/JointTrajectoryPoint defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Trajectory_msgsMsgJointTrajectoryPoint :: Either Word32 Ros2Trajectory_msgsMsgJointTrajectoryPoint
defaultRos2Trajectory_msgsMsgJointTrajectoryPoint = decodeRos2Trajectory_msgsMsgJointTrajectoryPoint
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original trajectory_msgs/msg/JointTrajectory defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Trajectory_msgsMsgJointTrajectory :: Either Word32 Ros2Trajectory_msgsMsgJointTrajectory
defaultRos2Trajectory_msgsMsgJointTrajectory = decodeRos2Trajectory_msgsMsgJointTrajectory
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original geometry_msgs/msg/Vector3 defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Geometry_msgsMsgVector3 :: Either Word32 Ros2Geometry_msgsMsgVector3
defaultRos2Geometry_msgsMsgVector3 = decodeRos2Geometry_msgsMsgVector3
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original geometry_msgs/msg/Quaternion defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Geometry_msgsMsgQuaternion :: Either Word32 Ros2Geometry_msgsMsgQuaternion
defaultRos2Geometry_msgsMsgQuaternion = decodeRos2Geometry_msgsMsgQuaternion
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 240, 63
    ]

-- | @brief Construct complete original geometry_msgs/msg/Transform defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Geometry_msgsMsgTransform :: Either Word32 Ros2Geometry_msgsMsgTransform
defaultRos2Geometry_msgsMsgTransform = decodeRos2Geometry_msgsMsgTransform
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 240, 63
    ]

-- | @brief Construct complete original geometry_msgs/msg/Twist defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Geometry_msgsMsgTwist :: Either Word32 Ros2Geometry_msgsMsgTwist
defaultRos2Geometry_msgsMsgTwist = decodeRos2Geometry_msgsMsgTwist
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: Either Word32 Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original trajectory_msgs/msg/MultiDOFJointTrajectory defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectory :: Either Word32 Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectory = decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original control_msgs/msg/JointTolerance defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Control_msgsMsgJointTolerance :: Either Word32 Ros2Control_msgsMsgJointTolerance
defaultRos2Control_msgsMsgJointTolerance = decodeRos2Control_msgsMsgJointTolerance
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0
    ]

-- | @brief Construct complete original control_msgs/msg/JointComponentTolerance defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Control_msgsMsgJointComponentTolerance :: Either Word32 Ros2Control_msgsMsgJointComponentTolerance
defaultRos2Control_msgsMsgJointComponentTolerance = decodeRos2Control_msgsMsgJointComponentTolerance
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original control_msgs/action/FollowJointTrajectory_Goal defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Control_msgsActionFollowJointTrajectory_Goal :: Either Word32 Ros2Control_msgsActionFollowJointTrajectory_Goal
defaultRos2Control_msgsActionFollowJointTrajectory_Goal = decodeRos2Control_msgsActionFollowJointTrajectory_Goal
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0
    ]

-- | @brief Construct complete original control_msgs/action/FollowJointTrajectory_Result defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Control_msgsActionFollowJointTrajectory_Result :: Either Word32 Ros2Control_msgsActionFollowJointTrajectory_Result
defaultRos2Control_msgsActionFollowJointTrajectory_Result = decodeRos2Control_msgsActionFollowJointTrajectory_Result
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original control_msgs/action/FollowJointTrajectory_Feedback defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Control_msgsActionFollowJointTrajectory_Feedback :: Either Word32 Ros2Control_msgsActionFollowJointTrajectory_Feedback
defaultRos2Control_msgsActionFollowJointTrajectory_Feedback = decodeRos2Control_msgsActionFollowJointTrajectory_Feedback
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original geometry_msgs/msg/TransformStamped defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Geometry_msgsMsgTransformStamped :: Either Word32 Ros2Geometry_msgsMsgTransformStamped
defaultRos2Geometry_msgsMsgTransformStamped = decodeRos2Geometry_msgsMsgTransformStamped
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 240, 63
    ]

-- | @brief Construct complete original industrial_msgs/msg/DebugLevel defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsMsgDebugLevel :: Either Word32 Ros2Industrial_msgsMsgDebugLevel
defaultRos2Industrial_msgsMsgDebugLevel = decodeRos2Industrial_msgsMsgDebugLevel
    [0]

-- | @brief Construct complete original industrial_msgs/msg/DeviceInfo defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsMsgDeviceInfo :: Either Word32 Ros2Industrial_msgsMsgDeviceInfo
defaultRos2Industrial_msgsMsgDeviceInfo = decodeRos2Industrial_msgsMsgDeviceInfo
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original industrial_msgs/msg/RobotMode defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsMsgRobotMode :: Either Word32 Ros2Industrial_msgsMsgRobotMode
defaultRos2Industrial_msgsMsgRobotMode = decodeRos2Industrial_msgsMsgRobotMode
    [0]

-- | @brief Construct complete original industrial_msgs/msg/TriState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsMsgTriState :: Either Word32 Ros2Industrial_msgsMsgTriState
defaultRos2Industrial_msgsMsgTriState = decodeRos2Industrial_msgsMsgTriState
    [0]

-- | @brief Construct complete original industrial_msgs/msg/RobotStatus defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsMsgRobotStatus :: Either Word32 Ros2Industrial_msgsMsgRobotStatus
defaultRos2Industrial_msgsMsgRobotStatus = decodeRos2Industrial_msgsMsgRobotStatus
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original industrial_msgs/msg/ServiceReturnCode defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsMsgServiceReturnCode :: Either Word32 Ros2Industrial_msgsMsgServiceReturnCode
defaultRos2Industrial_msgsMsgServiceReturnCode = decodeRos2Industrial_msgsMsgServiceReturnCode
    [0]

-- | @brief Construct complete original industrial_msgs/srv/CmdJointTrajectory_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsSrvCmdJointTrajectory_Request :: Either Word32 Ros2Industrial_msgsSrvCmdJointTrajectory_Request
defaultRos2Industrial_msgsSrvCmdJointTrajectory_Request = decodeRos2Industrial_msgsSrvCmdJointTrajectory_Request
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original industrial_msgs/srv/CmdJointTrajectory_Response defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsSrvCmdJointTrajectory_Response :: Either Word32 Ros2Industrial_msgsSrvCmdJointTrajectory_Response
defaultRos2Industrial_msgsSrvCmdJointTrajectory_Response = decodeRos2Industrial_msgsSrvCmdJointTrajectory_Response
    [0]

-- | @brief Construct complete original industrial_msgs/srv/GetRobotInfo_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsSrvGetRobotInfo_Request :: Either Word32 Ros2Industrial_msgsSrvGetRobotInfo_Request
defaultRos2Industrial_msgsSrvGetRobotInfo_Request = decodeRos2Industrial_msgsSrvGetRobotInfo_Request
    []

-- | @brief Construct complete original industrial_msgs/srv/GetRobotInfo_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsSrvGetRobotInfo_Response :: Either Word32 Ros2Industrial_msgsSrvGetRobotInfo_Response
defaultRos2Industrial_msgsSrvGetRobotInfo_Response = decodeRos2Industrial_msgsSrvGetRobotInfo_Response
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0
    ]

-- | @brief Construct complete original industrial_msgs/srv/SetDrivePower_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsSrvSetDrivePower_Request :: Either Word32 Ros2Industrial_msgsSrvSetDrivePower_Request
defaultRos2Industrial_msgsSrvSetDrivePower_Request = decodeRos2Industrial_msgsSrvSetDrivePower_Request
    [0]

-- | @brief Construct complete original industrial_msgs/srv/SetDrivePower_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsSrvSetDrivePower_Response :: Either Word32 Ros2Industrial_msgsSrvSetDrivePower_Response
defaultRos2Industrial_msgsSrvSetDrivePower_Response = decodeRos2Industrial_msgsSrvSetDrivePower_Response
    [0]

-- | @brief Construct complete original industrial_msgs/srv/SetRemoteLoggerLevel_Request defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsSrvSetRemoteLoggerLevel_Request :: Either Word32 Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request
defaultRos2Industrial_msgsSrvSetRemoteLoggerLevel_Request = decodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Request
    [0]

-- | @brief Construct complete original industrial_msgs/srv/SetRemoteLoggerLevel_Response defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsSrvSetRemoteLoggerLevel_Response :: Either Word32 Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response
defaultRos2Industrial_msgsSrvSetRemoteLoggerLevel_Response = decodeRos2Industrial_msgsSrvSetRemoteLoggerLevel_Response
    [0]

-- | @brief Construct complete original industrial_msgs/srv/StartMotion_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsSrvStartMotion_Request :: Either Word32 Ros2Industrial_msgsSrvStartMotion_Request
defaultRos2Industrial_msgsSrvStartMotion_Request = decodeRos2Industrial_msgsSrvStartMotion_Request
    []

-- | @brief Construct complete original industrial_msgs/srv/StartMotion_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsSrvStartMotion_Response :: Either Word32 Ros2Industrial_msgsSrvStartMotion_Response
defaultRos2Industrial_msgsSrvStartMotion_Response = decodeRos2Industrial_msgsSrvStartMotion_Response
    [0]

-- | @brief Construct complete original industrial_msgs/srv/StopMotion_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsSrvStopMotion_Request :: Either Word32 Ros2Industrial_msgsSrvStopMotion_Request
defaultRos2Industrial_msgsSrvStopMotion_Request = decodeRos2Industrial_msgsSrvStopMotion_Request
    []

-- | @brief Construct complete original industrial_msgs/srv/StopMotion_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Industrial_msgsSrvStopMotion_Response :: Either Word32 Ros2Industrial_msgsSrvStopMotion_Response
defaultRos2Industrial_msgsSrvStopMotion_Response = decodeRos2Industrial_msgsSrvStopMotion_Response
    [0]

-- | @brief Construct complete original motoros2_interfaces/msg/AlarmCauseRemedy defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesMsgAlarmCauseRemedy :: Either Word32 Ros2Motoros2_interfacesMsgAlarmCauseRemedy
defaultRos2Motoros2_interfacesMsgAlarmCauseRemedy = decodeRos2Motoros2_interfacesMsgAlarmCauseRemedy
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/msg/AlarmInfo defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesMsgAlarmInfo :: Either Word32 Ros2Motoros2_interfacesMsgAlarmInfo
defaultRos2Motoros2_interfacesMsgAlarmInfo = decodeRos2Motoros2_interfacesMsgAlarmInfo
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original motoros2_interfaces/msg/ErrorInfo defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesMsgErrorInfo :: Either Word32 Ros2Motoros2_interfacesMsgErrorInfo
defaultRos2Motoros2_interfacesMsgErrorInfo = decodeRos2Motoros2_interfacesMsgErrorInfo
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original motoros2_interfaces/msg/InformJobCrudResultCodes defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesMsgInformJobCrudResultCodes :: Either Word32 Ros2Motoros2_interfacesMsgInformJobCrudResultCodes
defaultRos2Motoros2_interfacesMsgInformJobCrudResultCodes = decodeRos2Motoros2_interfacesMsgInformJobCrudResultCodes
    []

-- | @brief Construct complete original motoros2_interfaces/msg/InitTrajEnum defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesMsgInitTrajEnum :: Either Word32 Ros2Motoros2_interfacesMsgInitTrajEnum
defaultRos2Motoros2_interfacesMsgInitTrajEnum = decodeRos2Motoros2_interfacesMsgInitTrajEnum
    [0, 0]

-- | @brief Construct complete original motoros2_interfaces/msg/IoResultCodes defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesMsgIoResultCodes :: Either Word32 Ros2Motoros2_interfacesMsgIoResultCodes
defaultRos2Motoros2_interfacesMsgIoResultCodes = decodeRos2Motoros2_interfacesMsgIoResultCodes
    []

-- | @brief Construct complete original motoros2_interfaces/msg/MotionReadyEnum defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesMsgMotionReadyEnum :: Either Word32 Ros2Motoros2_interfacesMsgMotionReadyEnum
defaultRos2Motoros2_interfacesMsgMotionReadyEnum = decodeRos2Motoros2_interfacesMsgMotionReadyEnum
    [0, 0]

-- | @brief Construct complete original motoros2_interfaces/msg/QueueResultEnum defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesMsgQueueResultEnum :: Either Word32 Ros2Motoros2_interfacesMsgQueueResultEnum
defaultRos2Motoros2_interfacesMsgQueueResultEnum = decodeRos2Motoros2_interfacesMsgQueueResultEnum
    [0, 0]

-- | @brief Construct complete original motoros2_interfaces/msg/SelectionResultCodes defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesMsgSelectionResultCodes :: Either Word32 Ros2Motoros2_interfacesMsgSelectionResultCodes
defaultRos2Motoros2_interfacesMsgSelectionResultCodes = decodeRos2Motoros2_interfacesMsgSelectionResultCodes
    [0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/GetActiveAlarmInfo_Request defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Request :: Either Word32 Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request
defaultRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Request = decodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Request
    []

-- | @brief Construct complete original motoros2_interfaces/srv/GetActiveAlarmInfo_Response defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Response :: Either Word32 Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response
defaultRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Response = decodeRos2Motoros2_interfacesSrvGetActiveAlarmInfo_Response
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/ListInformJobs_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvListInformJobs_Request :: Either Word32 Ros2Motoros2_interfacesSrvListInformJobs_Request
defaultRos2Motoros2_interfacesSrvListInformJobs_Request = decodeRos2Motoros2_interfacesSrvListInformJobs_Request
    []

-- | @brief Construct complete original motoros2_interfaces/srv/ListInformJobs_Response defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvListInformJobs_Response :: Either Word32 Ros2Motoros2_interfacesSrvListInformJobs_Response
defaultRos2Motoros2_interfacesSrvListInformJobs_Response = decodeRos2Motoros2_interfacesSrvListInformJobs_Response
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/QueueTrajPoint_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvQueueTrajPoint_Request :: Either Word32 Ros2Motoros2_interfacesSrvQueueTrajPoint_Request
defaultRos2Motoros2_interfacesSrvQueueTrajPoint_Request = decodeRos2Motoros2_interfacesSrvQueueTrajPoint_Request
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0
    ]

-- | @brief Construct complete original motoros2_interfaces/srv/QueueTrajPoint_Response defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvQueueTrajPoint_Response :: Either Word32 Ros2Motoros2_interfacesSrvQueueTrajPoint_Response
defaultRos2Motoros2_interfacesSrvQueueTrajPoint_Response = decodeRos2Motoros2_interfacesSrvQueueTrajPoint_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/ReadGroupIO_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvReadGroupIO_Request :: Either Word32 Ros2Motoros2_interfacesSrvReadGroupIO_Request
defaultRos2Motoros2_interfacesSrvReadGroupIO_Request = decodeRos2Motoros2_interfacesSrvReadGroupIO_Request
    [0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/ReadGroupIO_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvReadGroupIO_Response :: Either Word32 Ros2Motoros2_interfacesSrvReadGroupIO_Response
defaultRos2Motoros2_interfacesSrvReadGroupIO_Response = decodeRos2Motoros2_interfacesSrvReadGroupIO_Response
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/ReadMRegister_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvReadMRegister_Request :: Either Word32 Ros2Motoros2_interfacesSrvReadMRegister_Request
defaultRos2Motoros2_interfacesSrvReadMRegister_Request = decodeRos2Motoros2_interfacesSrvReadMRegister_Request
    [0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/ReadMRegister_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvReadMRegister_Response :: Either Word32 Ros2Motoros2_interfacesSrvReadMRegister_Response
defaultRos2Motoros2_interfacesSrvReadMRegister_Response = decodeRos2Motoros2_interfacesSrvReadMRegister_Response
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/ReadSingleIO_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvReadSingleIO_Request :: Either Word32 Ros2Motoros2_interfacesSrvReadSingleIO_Request
defaultRos2Motoros2_interfacesSrvReadSingleIO_Request = decodeRos2Motoros2_interfacesSrvReadSingleIO_Request
    [0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/ReadSingleIO_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvReadSingleIO_Response :: Either Word32 Ros2Motoros2_interfacesSrvReadSingleIO_Response
defaultRos2Motoros2_interfacesSrvReadSingleIO_Response = decodeRos2Motoros2_interfacesSrvReadSingleIO_Response
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/ResetError_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvResetError_Request :: Either Word32 Ros2Motoros2_interfacesSrvResetError_Request
defaultRos2Motoros2_interfacesSrvResetError_Request = decodeRos2Motoros2_interfacesSrvResetError_Request
    []

-- | @brief Construct complete original motoros2_interfaces/srv/ResetError_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvResetError_Response :: Either Word32 Ros2Motoros2_interfacesSrvResetError_Response
defaultRos2Motoros2_interfacesSrvResetError_Response = decodeRos2Motoros2_interfacesSrvResetError_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/SelectMotionTool_Request defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvSelectMotionTool_Request :: Either Word32 Ros2Motoros2_interfacesSrvSelectMotionTool_Request
defaultRos2Motoros2_interfacesSrvSelectMotionTool_Request = decodeRos2Motoros2_interfacesSrvSelectMotionTool_Request
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/SelectMotionTool_Response defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvSelectMotionTool_Response :: Either Word32 Ros2Motoros2_interfacesSrvSelectMotionTool_Response
defaultRos2Motoros2_interfacesSrvSelectMotionTool_Response = decodeRos2Motoros2_interfacesSrvSelectMotionTool_Response
    [0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/StartPointQueueMode_Request defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvStartPointQueueMode_Request :: Either Word32 Ros2Motoros2_interfacesSrvStartPointQueueMode_Request
defaultRos2Motoros2_interfacesSrvStartPointQueueMode_Request = decodeRos2Motoros2_interfacesSrvStartPointQueueMode_Request
    []

-- | @brief Construct complete original motoros2_interfaces/srv/StartPointQueueMode_Response defaults without
-- | ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvStartPointQueueMode_Response :: Either Word32 Ros2Motoros2_interfacesSrvStartPointQueueMode_Response
defaultRos2Motoros2_interfacesSrvStartPointQueueMode_Response = decodeRos2Motoros2_interfacesSrvStartPointQueueMode_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/StartTrajMode_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvStartTrajMode_Request :: Either Word32 Ros2Motoros2_interfacesSrvStartTrajMode_Request
defaultRos2Motoros2_interfacesSrvStartTrajMode_Request = decodeRos2Motoros2_interfacesSrvStartTrajMode_Request
    []

-- | @brief Construct complete original motoros2_interfaces/srv/StartTrajMode_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvStartTrajMode_Response :: Either Word32 Ros2Motoros2_interfacesSrvStartTrajMode_Response
defaultRos2Motoros2_interfacesSrvStartTrajMode_Response = decodeRos2Motoros2_interfacesSrvStartTrajMode_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/WriteGroupIO_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvWriteGroupIO_Request :: Either Word32 Ros2Motoros2_interfacesSrvWriteGroupIO_Request
defaultRos2Motoros2_interfacesSrvWriteGroupIO_Request = decodeRos2Motoros2_interfacesSrvWriteGroupIO_Request
    [0, 0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/WriteGroupIO_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvWriteGroupIO_Response :: Either Word32 Ros2Motoros2_interfacesSrvWriteGroupIO_Response
defaultRos2Motoros2_interfacesSrvWriteGroupIO_Response = decodeRos2Motoros2_interfacesSrvWriteGroupIO_Response
    [0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/WriteMRegister_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvWriteMRegister_Request :: Either Word32 Ros2Motoros2_interfacesSrvWriteMRegister_Request
defaultRos2Motoros2_interfacesSrvWriteMRegister_Request = decodeRos2Motoros2_interfacesSrvWriteMRegister_Request
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/WriteMRegister_Response defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvWriteMRegister_Response :: Either Word32 Ros2Motoros2_interfacesSrvWriteMRegister_Response
defaultRos2Motoros2_interfacesSrvWriteMRegister_Response = decodeRos2Motoros2_interfacesSrvWriteMRegister_Response
    [0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/WriteSingleIO_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvWriteSingleIO_Request :: Either Word32 Ros2Motoros2_interfacesSrvWriteSingleIO_Request
defaultRos2Motoros2_interfacesSrvWriteSingleIO_Request = decodeRos2Motoros2_interfacesSrvWriteSingleIO_Request
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original motoros2_interfaces/srv/WriteSingleIO_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Motoros2_interfacesSrvWriteSingleIO_Response :: Either Word32 Ros2Motoros2_interfacesSrvWriteSingleIO_Response
defaultRos2Motoros2_interfacesSrvWriteSingleIO_Response = decodeRos2Motoros2_interfacesSrvWriteSingleIO_Response
    [0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original sensor_msgs/msg/JointState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Sensor_msgsMsgJointState :: Either Word32 Ros2Sensor_msgsMsgJointState
defaultRos2Sensor_msgsMsgJointState = decodeRos2Sensor_msgsMsgJointState
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0
    ]

-- | @brief Construct complete original std_srvs/srv/Trigger_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Std_srvsSrvTrigger_Request :: Either Word32 Ros2Std_srvsSrvTrigger_Request
defaultRos2Std_srvsSrvTrigger_Request = decodeRos2Std_srvsSrvTrigger_Request
    []

-- | @brief Construct complete original std_srvs/srv/Trigger_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Std_srvsSrvTrigger_Response :: Either Word32 Ros2Std_srvsSrvTrigger_Response
defaultRos2Std_srvsSrvTrigger_Response = decodeRos2Std_srvsSrvTrigger_Response
    [0, 0, 0, 0, 0]

-- | @brief Construct complete original tf2_msgs/msg/TFMessage defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Tf2_msgsMsgTFMessage :: Either Word32 Ros2Tf2_msgsMsgTFMessage
defaultRos2Tf2_msgsMsgTFMessage = decodeRos2Tf2_msgsMsgTFMessage
    [0, 0, 0, 0]
