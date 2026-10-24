-- | @file Records.hs
-- @brief Complete original FANUC ROS 2 Haskell records and codecs.
-- @details Owned immutable values preserve all fields; constructing them grants no ROS authority.
module FANUC.Ros2.Records where
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

-- | @brief Complete original fanuc_msgs/msg/IOType value.
-- | @details Retain every original field in declaration order. Canonical extent 4..68 bytes.
data Ros2Fanuc_msgsMsgIOType = Ros2Fanuc_msgsMsgIOType
    {
    -- | @brief Original fanuc_msgs/msg/IOType.type field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Fanuc_msgsMsgIOType_type :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsMsgIOTypeCodecIdentity :: String
ros2Fanuc_msgsMsgIOTypeCodecIdentity = "UWVMROS1_1815aa6b1bcab1efe21de0e31570ca650553b5c70f0793301f82c0ca7934c586"
-- | @brief Original fanuc_msgs/msg/IOType.AI constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_AI :: String
ros2Fanuc_msgsMsgIOType_AI = "AI"
-- | @brief Original fanuc_msgs/msg/IOType.AO constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_AO :: String
ros2Fanuc_msgsMsgIOType_AO = "AO"
-- | @brief Original fanuc_msgs/msg/IOType.DI constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_DI :: String
ros2Fanuc_msgsMsgIOType_DI = "DI"
-- | @brief Original fanuc_msgs/msg/IOType.DO constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_DO :: String
ros2Fanuc_msgsMsgIOType_DO = "DO"
-- | @brief Original fanuc_msgs/msg/IOType.RI constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_RI :: String
ros2Fanuc_msgsMsgIOType_RI = "RI"
-- | @brief Original fanuc_msgs/msg/IOType.RO constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_RO :: String
ros2Fanuc_msgsMsgIOType_RO = "RO"
-- | @brief Original fanuc_msgs/msg/IOType.SI constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_SI :: String
ros2Fanuc_msgsMsgIOType_SI = "SI"
-- | @brief Original fanuc_msgs/msg/IOType.SO constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_SO :: String
ros2Fanuc_msgsMsgIOType_SO = "SO"
-- | @brief Original fanuc_msgs/msg/IOType.WI constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_WI :: String
ros2Fanuc_msgsMsgIOType_WI = "WI"
-- | @brief Original fanuc_msgs/msg/IOType.WO constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_WO :: String
ros2Fanuc_msgsMsgIOType_WO = "WO"
-- | @brief Original fanuc_msgs/msg/IOType.UI constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_UI :: String
ros2Fanuc_msgsMsgIOType_UI = "UI"
-- | @brief Original fanuc_msgs/msg/IOType.UO constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_UO :: String
ros2Fanuc_msgsMsgIOType_UO = "UO"
-- | @brief Original fanuc_msgs/msg/IOType.WSI constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_WSI :: String
ros2Fanuc_msgsMsgIOType_WSI = "WSI"
-- | @brief Original fanuc_msgs/msg/IOType.WSO constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_WSO :: String
ros2Fanuc_msgsMsgIOType_WSO = "WSO"
-- | @brief Original fanuc_msgs/msg/IOType.F constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_F :: String
ros2Fanuc_msgsMsgIOType_F = "F"
-- | @brief Original fanuc_msgs/msg/IOType.M constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_M :: String
ros2Fanuc_msgsMsgIOType_M = "M"
-- | @brief Original fanuc_msgs/msg/IOType.GI constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_GI :: String
ros2Fanuc_msgsMsgIOType_GI = "GI"
-- | @brief Original fanuc_msgs/msg/IOType.GO constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgIOType_GO :: String
ros2Fanuc_msgsMsgIOType_GO = "GO"
-- | @brief Encode every field of complete fanuc_msgs/msg/IOType.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsMsgIOType :: Ros2Fanuc_msgsMsgIOType -> Either Word32 [Word8]
encodeRos2Fanuc_msgsMsgIOType value = do
    chunk0 <- W.putText 64 (ros2Fanuc_msgsMsgIOType_type value)
    let bytes = concat [chunk0]
    if length bytes > 68 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/msg/IOType.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsMsgIOType :: W.Parser Ros2Fanuc_msgsMsgIOType
readRos2Fanuc_msgsMsgIOType = do
    value0 <- W.text 64
    let value = Ros2Fanuc_msgsMsgIOType value0
    case encodeRos2Fanuc_msgsMsgIOType value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/msg/IOType.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsMsgIOType :: [Word8] -> Either Word32 Ros2Fanuc_msgsMsgIOType
decodeRos2Fanuc_msgsMsgIOType bytes
    | length bytes < 4 || length bytes > 68 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsMsgIOType bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/msg/AnalogIO value.
-- | @details Retain every original field in declaration order. Canonical extent 10..74 bytes.
data Ros2Fanuc_msgsMsgAnalogIO = Ros2Fanuc_msgsMsgAnalogIO
    {
    -- | @brief Original fanuc_msgs/msg/AnalogIO.io_type field.
    -- | @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Fanuc_msgsMsgAnalogIO_io_type :: Ros2Fanuc_msgsMsgIOType
    ,
    -- | @brief Original fanuc_msgs/msg/AnalogIO.index field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgAnalogIO_index :: Word16
    ,
    -- | @brief Original fanuc_msgs/msg/AnalogIO.value field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgAnalogIO_value :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsMsgAnalogIOCodecIdentity :: String
ros2Fanuc_msgsMsgAnalogIOCodecIdentity = "UWVMROS1_d62097527ba99bf6e803283350161cd1415173a22eb3cb20331a232366076d00"
-- | @brief Encode every field of complete fanuc_msgs/msg/AnalogIO.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsMsgAnalogIO :: Ros2Fanuc_msgsMsgAnalogIO -> Either Word32 [Word8]
encodeRos2Fanuc_msgsMsgAnalogIO value = do
    chunk0 <- encodeRos2Fanuc_msgsMsgIOType (ros2Fanuc_msgsMsgAnalogIO_io_type value)
    chunk1 <- Right (W.putNumber 2 (ros2Fanuc_msgsMsgAnalogIO_index value))
    chunk2 <- finite4 (ros2Fanuc_msgsMsgAnalogIO_value value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 74 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/msg/AnalogIO.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsMsgAnalogIO :: W.Parser Ros2Fanuc_msgsMsgAnalogIO
readRos2Fanuc_msgsMsgAnalogIO = do
    value0 <- readRos2Fanuc_msgsMsgIOType
    value1 <- fromIntegral <$> W.number 2
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsMsgAnalogIO value0 value1 value2
    case encodeRos2Fanuc_msgsMsgAnalogIO value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/msg/AnalogIO.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsMsgAnalogIO :: [Word8] -> Either Word32 Ros2Fanuc_msgsMsgAnalogIO
decodeRos2Fanuc_msgsMsgAnalogIO bytes
    | length bytes < 10 || length bytes > 74 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsMsgAnalogIO bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/msg/AnalogIOCmd value.
-- | @details Retain every original field in declaration order. Canonical extent 4..2372 bytes.
data Ros2Fanuc_msgsMsgAnalogIOCmd = Ros2Fanuc_msgsMsgAnalogIOCmd
    {
    -- | @brief Original fanuc_msgs/msg/AnalogIOCmd.values field.
    -- | @details Original type fanuc_msgs/msg/AnalogIO. Shape sequence; bound/count 32 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Fanuc_msgsMsgAnalogIOCmd_values :: [Ros2Fanuc_msgsMsgAnalogIO]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsMsgAnalogIOCmdCodecIdentity :: String
ros2Fanuc_msgsMsgAnalogIOCmdCodecIdentity = "UWVMROS1_62f38a088ed23f8daf7163f26514ae1aabd7b1b64845ccdbc281cb7839d857ba"
-- | @brief Encode every field of complete fanuc_msgs/msg/AnalogIOCmd.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsMsgAnalogIOCmd :: Ros2Fanuc_msgsMsgAnalogIOCmd -> Either Word32 [Word8]
encodeRos2Fanuc_msgsMsgAnalogIOCmd value = do
    if length (ros2Fanuc_msgsMsgAnalogIOCmd_values value) <= 32 then Right () else Left 22
    item0 <- concat <$> mapM
        (\element -> encodeRos2Fanuc_msgsMsgAnalogIO (element))
        (ros2Fanuc_msgsMsgAnalogIOCmd_values value)
    chunk0 <- Right (W.putNumber 4 (length (ros2Fanuc_msgsMsgAnalogIOCmd_values value)) ++ item0)
    let bytes = concat [chunk0]
    if length bytes > 2372 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/msg/AnalogIOCmd.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsMsgAnalogIOCmd :: W.Parser Ros2Fanuc_msgsMsgAnalogIOCmd
readRos2Fanuc_msgsMsgAnalogIOCmd = do
    count0 <- W.number 4
    if count0 > 32 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (readRos2Fanuc_msgsMsgAnalogIO)
    let value = Ros2Fanuc_msgsMsgAnalogIOCmd value0
    case encodeRos2Fanuc_msgsMsgAnalogIOCmd value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/msg/AnalogIOCmd.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsMsgAnalogIOCmd :: [Word8] -> Either Word32 Ros2Fanuc_msgsMsgAnalogIOCmd
decodeRos2Fanuc_msgsMsgAnalogIOCmd bytes
    | length bytes < 4 || length bytes > 2372 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsMsgAnalogIOCmd bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/msg/AnalogIOState value.
-- | @details Retain every original field in declaration order. Canonical extent 4..2372 bytes.
data Ros2Fanuc_msgsMsgAnalogIOState = Ros2Fanuc_msgsMsgAnalogIOState
    {
    -- | @brief Original fanuc_msgs/msg/AnalogIOState.values field.
    -- | @details Original type fanuc_msgs/msg/AnalogIO. Shape sequence; bound/count 32 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Fanuc_msgsMsgAnalogIOState_values :: [Ros2Fanuc_msgsMsgAnalogIO]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsMsgAnalogIOStateCodecIdentity :: String
ros2Fanuc_msgsMsgAnalogIOStateCodecIdentity = "UWVMROS1_820b41fecbf6db8e2b2e67d60cd1167cf474b22ca6c489f4d2d64dd33eaac9a4"
-- | @brief Encode every field of complete fanuc_msgs/msg/AnalogIOState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsMsgAnalogIOState :: Ros2Fanuc_msgsMsgAnalogIOState -> Either Word32 [Word8]
encodeRos2Fanuc_msgsMsgAnalogIOState value = do
    if length (ros2Fanuc_msgsMsgAnalogIOState_values value) <= 32 then Right () else Left 22
    item0 <- concat <$> mapM
        (\element -> encodeRos2Fanuc_msgsMsgAnalogIO (element))
        (ros2Fanuc_msgsMsgAnalogIOState_values value)
    chunk0 <- Right (W.putNumber 4 (length (ros2Fanuc_msgsMsgAnalogIOState_values value)) ++ item0)
    let bytes = concat [chunk0]
    if length bytes > 2372 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/msg/AnalogIOState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsMsgAnalogIOState :: W.Parser Ros2Fanuc_msgsMsgAnalogIOState
readRos2Fanuc_msgsMsgAnalogIOState = do
    count0 <- W.number 4
    if count0 > 32 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (readRos2Fanuc_msgsMsgAnalogIO)
    let value = Ros2Fanuc_msgsMsgAnalogIOState value0
    case encodeRos2Fanuc_msgsMsgAnalogIOState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/msg/AnalogIOState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsMsgAnalogIOState :: [Word8] -> Either Word32 Ros2Fanuc_msgsMsgAnalogIOState
decodeRos2Fanuc_msgsMsgAnalogIOState bytes
    | length bytes < 4 || length bytes > 2372 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsMsgAnalogIOState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/msg/BoolIO value.
-- | @details Retain every original field in declaration order. Canonical extent 7..71 bytes.
data Ros2Fanuc_msgsMsgBoolIO = Ros2Fanuc_msgsMsgBoolIO
    {
    -- | @brief Original fanuc_msgs/msg/BoolIO.io_type field.
    -- | @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Fanuc_msgsMsgBoolIO_io_type :: Ros2Fanuc_msgsMsgIOType
    ,
    -- | @brief Original fanuc_msgs/msg/BoolIO.index field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgBoolIO_index :: Word16
    ,
    -- | @brief Original fanuc_msgs/msg/BoolIO.value field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgBoolIO_value :: Bool
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsMsgBoolIOCodecIdentity :: String
ros2Fanuc_msgsMsgBoolIOCodecIdentity = "UWVMROS1_9209ae1b8f5407a31beface0a3286f58bd823aabdc560c2a4bf4a9b1ca125aa7"
-- | @brief Encode every field of complete fanuc_msgs/msg/BoolIO.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsMsgBoolIO :: Ros2Fanuc_msgsMsgBoolIO -> Either Word32 [Word8]
encodeRos2Fanuc_msgsMsgBoolIO value = do
    chunk0 <- encodeRos2Fanuc_msgsMsgIOType (ros2Fanuc_msgsMsgBoolIO_io_type value)
    chunk1 <- Right (W.putNumber 2 (ros2Fanuc_msgsMsgBoolIO_index value))
    chunk2 <- Right (W.putBool (ros2Fanuc_msgsMsgBoolIO_value value))
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 71 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/msg/BoolIO.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsMsgBoolIO :: W.Parser Ros2Fanuc_msgsMsgBoolIO
readRos2Fanuc_msgsMsgBoolIO = do
    value0 <- readRos2Fanuc_msgsMsgIOType
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.boolean
    let value = Ros2Fanuc_msgsMsgBoolIO value0 value1 value2
    case encodeRos2Fanuc_msgsMsgBoolIO value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/msg/BoolIO.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsMsgBoolIO :: [Word8] -> Either Word32 Ros2Fanuc_msgsMsgBoolIO
decodeRos2Fanuc_msgsMsgBoolIO bytes
    | length bytes < 7 || length bytes > 71 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsMsgBoolIO bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/msg/CollaborativeSpeedScaling value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Fanuc_msgsMsgCollaborativeSpeedScaling = Ros2Fanuc_msgsMsgCollaborativeSpeedScaling
    {
    -- | @brief Original fanuc_msgs/msg/CollaborativeSpeedScaling.collaborative_speed_scaling field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgCollaborativeSpeedScaling_collaborative_speed_scaling :: Double
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsMsgCollaborativeSpeedScalingCodecIdentity :: String
ros2Fanuc_msgsMsgCollaborativeSpeedScalingCodecIdentity = "UWVMROS1_693a3b581527d2eaf0f697f31e87ca2da428d1f51b821d42d6b06af387a2fb45"
-- | @brief Encode every field of complete fanuc_msgs/msg/CollaborativeSpeedScaling.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsMsgCollaborativeSpeedScaling :: Ros2Fanuc_msgsMsgCollaborativeSpeedScaling -> Either Word32 [Word8]
encodeRos2Fanuc_msgsMsgCollaborativeSpeedScaling value = do
    chunk0 <- finite8 (ros2Fanuc_msgsMsgCollaborativeSpeedScaling_collaborative_speed_scaling value) castDoubleToWord64
    let bytes = concat [chunk0]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/msg/CollaborativeSpeedScaling.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsMsgCollaborativeSpeedScaling :: W.Parser Ros2Fanuc_msgsMsgCollaborativeSpeedScaling
readRos2Fanuc_msgsMsgCollaborativeSpeedScaling = do
    value0 <- castWord64ToDouble <$> W.number 8
    let value = Ros2Fanuc_msgsMsgCollaborativeSpeedScaling value0
    case encodeRos2Fanuc_msgsMsgCollaborativeSpeedScaling value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/msg/CollaborativeSpeedScaling.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsMsgCollaborativeSpeedScaling :: [Word8] -> Either Word32 Ros2Fanuc_msgsMsgCollaborativeSpeedScaling
decodeRos2Fanuc_msgsMsgCollaborativeSpeedScaling bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsMsgCollaborativeSpeedScaling bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/msg/ConnectionStatus value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Fanuc_msgsMsgConnectionStatus = Ros2Fanuc_msgsMsgConnectionStatus
    {
    -- | @brief Original fanuc_msgs/msg/ConnectionStatus.is_connected field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgConnectionStatus_is_connected :: Bool
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsMsgConnectionStatusCodecIdentity :: String
ros2Fanuc_msgsMsgConnectionStatusCodecIdentity = "UWVMROS1_8ce24fb87538922b1f3c0ae856eb223d716143064eb46a6cfce5fec01b45b078"
-- | @brief Encode every field of complete fanuc_msgs/msg/ConnectionStatus.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsMsgConnectionStatus :: Ros2Fanuc_msgsMsgConnectionStatus -> Either Word32 [Word8]
encodeRos2Fanuc_msgsMsgConnectionStatus value = do
    chunk0 <- Right (W.putBool (ros2Fanuc_msgsMsgConnectionStatus_is_connected value))
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/msg/ConnectionStatus.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsMsgConnectionStatus :: W.Parser Ros2Fanuc_msgsMsgConnectionStatus
readRos2Fanuc_msgsMsgConnectionStatus = do
    value0 <- W.boolean
    let value = Ros2Fanuc_msgsMsgConnectionStatus value0
    case encodeRos2Fanuc_msgsMsgConnectionStatus value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/msg/ConnectionStatus.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsMsgConnectionStatus :: [Word8] -> Either Word32 Ros2Fanuc_msgsMsgConnectionStatus
decodeRos2Fanuc_msgsMsgConnectionStatus bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsMsgConnectionStatus bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/msg/ForceSensor value.
-- | @details Retain every original field in declaration order. Canonical extent 28..28 bytes.
data Ros2Fanuc_msgsMsgForceSensor = Ros2Fanuc_msgsMsgForceSensor
    {
    -- | @brief Original fanuc_msgs/msg/ForceSensor.force_x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgForceSensor_force_x :: Float
    ,
    -- | @brief Original fanuc_msgs/msg/ForceSensor.force_y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgForceSensor_force_y :: Float
    ,
    -- | @brief Original fanuc_msgs/msg/ForceSensor.force_z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgForceSensor_force_z :: Float
    ,
    -- | @brief Original fanuc_msgs/msg/ForceSensor.moment_x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgForceSensor_moment_x :: Float
    ,
    -- | @brief Original fanuc_msgs/msg/ForceSensor.moment_y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgForceSensor_moment_y :: Float
    ,
    -- | @brief Original fanuc_msgs/msg/ForceSensor.moment_z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgForceSensor_moment_z :: Float
    ,
    -- | @brief Original fanuc_msgs/msg/ForceSensor.fs_type field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgForceSensor_fs_type :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsMsgForceSensorCodecIdentity :: String
ros2Fanuc_msgsMsgForceSensorCodecIdentity = "UWVMROS1_06c99b43d7347646179850f3ba79192da7ce71296667d93d88659efbc1004032"
-- | @brief Encode every field of complete fanuc_msgs/msg/ForceSensor.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsMsgForceSensor :: Ros2Fanuc_msgsMsgForceSensor -> Either Word32 [Word8]
encodeRos2Fanuc_msgsMsgForceSensor value = do
    chunk0 <- finite4 (ros2Fanuc_msgsMsgForceSensor_force_x value) castFloatToWord32
    chunk1 <- finite4 (ros2Fanuc_msgsMsgForceSensor_force_y value) castFloatToWord32
    chunk2 <- finite4 (ros2Fanuc_msgsMsgForceSensor_force_z value) castFloatToWord32
    chunk3 <- finite4 (ros2Fanuc_msgsMsgForceSensor_moment_x value) castFloatToWord32
    chunk4 <- finite4 (ros2Fanuc_msgsMsgForceSensor_moment_y value) castFloatToWord32
    chunk5 <- finite4 (ros2Fanuc_msgsMsgForceSensor_moment_z value) castFloatToWord32
    chunk6 <- Right (W.putNumber 4 (ros2Fanuc_msgsMsgForceSensor_fs_type value))
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5, chunk6]
    if length bytes > 28 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/msg/ForceSensor.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsMsgForceSensor :: W.Parser Ros2Fanuc_msgsMsgForceSensor
readRos2Fanuc_msgsMsgForceSensor = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsMsgForceSensor value0 value1 value2 value3 value4 value5 value6
    case encodeRos2Fanuc_msgsMsgForceSensor value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/msg/ForceSensor.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsMsgForceSensor :: [Word8] -> Either Word32 Ros2Fanuc_msgsMsgForceSensor
decodeRos2Fanuc_msgsMsgForceSensor bytes
    | length bytes < 28 || length bytes > 28 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsMsgForceSensor bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/msg/Frame value.
-- | @details Retain every original field in declaration order. Canonical extent 24..24 bytes.
data Ros2Fanuc_msgsMsgFrame = Ros2Fanuc_msgsMsgFrame
    {
    -- | @brief Original fanuc_msgs/msg/Frame.x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgFrame_x :: Float
    ,
    -- | @brief Original fanuc_msgs/msg/Frame.y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgFrame_y :: Float
    ,
    -- | @brief Original fanuc_msgs/msg/Frame.z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgFrame_z :: Float
    ,
    -- | @brief Original fanuc_msgs/msg/Frame.w field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgFrame_w :: Float
    ,
    -- | @brief Original fanuc_msgs/msg/Frame.p field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgFrame_p :: Float
    ,
    -- | @brief Original fanuc_msgs/msg/Frame.r field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgFrame_r :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsMsgFrameCodecIdentity :: String
ros2Fanuc_msgsMsgFrameCodecIdentity = "UWVMROS1_609d1b7e49315f7f0a0fe86fa997673acd0d009e57b563690f36624b59b9effb"
-- | @brief Encode every field of complete fanuc_msgs/msg/Frame.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsMsgFrame :: Ros2Fanuc_msgsMsgFrame -> Either Word32 [Word8]
encodeRos2Fanuc_msgsMsgFrame value = do
    chunk0 <- finite4 (ros2Fanuc_msgsMsgFrame_x value) castFloatToWord32
    chunk1 <- finite4 (ros2Fanuc_msgsMsgFrame_y value) castFloatToWord32
    chunk2 <- finite4 (ros2Fanuc_msgsMsgFrame_z value) castFloatToWord32
    chunk3 <- finite4 (ros2Fanuc_msgsMsgFrame_w value) castFloatToWord32
    chunk4 <- finite4 (ros2Fanuc_msgsMsgFrame_p value) castFloatToWord32
    chunk5 <- finite4 (ros2Fanuc_msgsMsgFrame_r value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5]
    if length bytes > 24 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/msg/Frame.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsMsgFrame :: W.Parser Ros2Fanuc_msgsMsgFrame
readRos2Fanuc_msgsMsgFrame = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsMsgFrame value0 value1 value2 value3 value4 value5
    case encodeRos2Fanuc_msgsMsgFrame value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/msg/Frame.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsMsgFrame :: [Word8] -> Either Word32 Ros2Fanuc_msgsMsgFrame
decodeRos2Fanuc_msgsMsgFrame bytes
    | length bytes < 24 || length bytes > 24 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsMsgFrame bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/msg/IOCmd value.
-- | @details Retain every original field in declaration order. Canonical extent 4..2276 bytes.
data Ros2Fanuc_msgsMsgIOCmd = Ros2Fanuc_msgsMsgIOCmd
    {
    -- | @brief Original fanuc_msgs/msg/IOCmd.values field.
    -- | @details Original type fanuc_msgs/msg/BoolIO. Shape sequence; bound/count 32 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Fanuc_msgsMsgIOCmd_values :: [Ros2Fanuc_msgsMsgBoolIO]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsMsgIOCmdCodecIdentity :: String
ros2Fanuc_msgsMsgIOCmdCodecIdentity = "UWVMROS1_462552bbaa3c9ed4caaf3108960d514e4ab61fcf2d6a84f0465b485bec1de45d"
-- | @brief Encode every field of complete fanuc_msgs/msg/IOCmd.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsMsgIOCmd :: Ros2Fanuc_msgsMsgIOCmd -> Either Word32 [Word8]
encodeRos2Fanuc_msgsMsgIOCmd value = do
    if length (ros2Fanuc_msgsMsgIOCmd_values value) <= 32 then Right () else Left 22
    item0 <- concat <$> mapM (\element -> encodeRos2Fanuc_msgsMsgBoolIO (element)) (ros2Fanuc_msgsMsgIOCmd_values value)
    chunk0 <- Right (W.putNumber 4 (length (ros2Fanuc_msgsMsgIOCmd_values value)) ++ item0)
    let bytes = concat [chunk0]
    if length bytes > 2276 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/msg/IOCmd.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsMsgIOCmd :: W.Parser Ros2Fanuc_msgsMsgIOCmd
readRos2Fanuc_msgsMsgIOCmd = do
    count0 <- W.number 4
    if count0 > 32 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (readRos2Fanuc_msgsMsgBoolIO)
    let value = Ros2Fanuc_msgsMsgIOCmd value0
    case encodeRos2Fanuc_msgsMsgIOCmd value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/msg/IOCmd.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsMsgIOCmd :: [Word8] -> Either Word32 Ros2Fanuc_msgsMsgIOCmd
decodeRos2Fanuc_msgsMsgIOCmd bytes
    | length bytes < 4 || length bytes > 2276 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsMsgIOCmd bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/msg/IOState value.
-- | @details Retain every original field in declaration order. Canonical extent 4..2276 bytes.
data Ros2Fanuc_msgsMsgIOState = Ros2Fanuc_msgsMsgIOState
    {
    -- | @brief Original fanuc_msgs/msg/IOState.values field.
    -- | @details Original type fanuc_msgs/msg/BoolIO. Shape sequence; bound/count 32 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Fanuc_msgsMsgIOState_values :: [Ros2Fanuc_msgsMsgBoolIO]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsMsgIOStateCodecIdentity :: String
ros2Fanuc_msgsMsgIOStateCodecIdentity = "UWVMROS1_332533445014c03d626a2c4dbdffd9421748aa6b73f49d407441fd6b9f2b24d8"
-- | @brief Encode every field of complete fanuc_msgs/msg/IOState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsMsgIOState :: Ros2Fanuc_msgsMsgIOState -> Either Word32 [Word8]
encodeRos2Fanuc_msgsMsgIOState value = do
    if length (ros2Fanuc_msgsMsgIOState_values value) <= 32 then Right () else Left 22
    item0 <- concat <$> mapM
        (\element -> encodeRos2Fanuc_msgsMsgBoolIO (element))
        (ros2Fanuc_msgsMsgIOState_values value)
    chunk0 <- Right (W.putNumber 4 (length (ros2Fanuc_msgsMsgIOState_values value)) ++ item0)
    let bytes = concat [chunk0]
    if length bytes > 2276 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/msg/IOState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsMsgIOState :: W.Parser Ros2Fanuc_msgsMsgIOState
readRos2Fanuc_msgsMsgIOState = do
    count0 <- W.number 4
    if count0 > 32 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (readRos2Fanuc_msgsMsgBoolIO)
    let value = Ros2Fanuc_msgsMsgIOState value0
    case encodeRos2Fanuc_msgsMsgIOState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/msg/IOState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsMsgIOState :: [Word8] -> Either Word32 Ros2Fanuc_msgsMsgIOState
decodeRos2Fanuc_msgsMsgIOState bytes
    | length bytes < 4 || length bytes > 2276 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsMsgIOState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/msg/NumReg value.
-- | @details Retain every original field in declaration order. Canonical extent 6..6 bytes.
data Ros2Fanuc_msgsMsgNumReg = Ros2Fanuc_msgsMsgNumReg
    {
    -- | @brief Original fanuc_msgs/msg/NumReg.index field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgNumReg_index :: Word16
    ,
    -- | @brief Original fanuc_msgs/msg/NumReg.value field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgNumReg_value :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsMsgNumRegCodecIdentity :: String
ros2Fanuc_msgsMsgNumRegCodecIdentity = "UWVMROS1_0fb9344c5768ea52ab072939f368f1e73dcc0ff83e74b4cb6d35fca47c1d29cc"
-- | @brief Encode every field of complete fanuc_msgs/msg/NumReg.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsMsgNumReg :: Ros2Fanuc_msgsMsgNumReg -> Either Word32 [Word8]
encodeRos2Fanuc_msgsMsgNumReg value = do
    chunk0 <- Right (W.putNumber 2 (ros2Fanuc_msgsMsgNumReg_index value))
    chunk1 <- finite4 (ros2Fanuc_msgsMsgNumReg_value value) castFloatToWord32
    let bytes = concat [chunk0, chunk1]
    if length bytes > 6 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/msg/NumReg.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsMsgNumReg :: W.Parser Ros2Fanuc_msgsMsgNumReg
readRos2Fanuc_msgsMsgNumReg = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsMsgNumReg value0 value1
    case encodeRos2Fanuc_msgsMsgNumReg value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/msg/NumReg.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsMsgNumReg :: [Word8] -> Either Word32 Ros2Fanuc_msgsMsgNumReg
decodeRos2Fanuc_msgsMsgNumReg bytes
    | length bytes < 6 || length bytes > 6 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsMsgNumReg bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/msg/NumRegCmd value.
-- | @details Retain every original field in declaration order. Canonical extent 4..196 bytes.
data Ros2Fanuc_msgsMsgNumRegCmd = Ros2Fanuc_msgsMsgNumRegCmd
    {
    -- | @brief Original fanuc_msgs/msg/NumRegCmd.values field.
    -- | @details Original type fanuc_msgs/msg/NumReg. Shape sequence; bound/count 32 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Fanuc_msgsMsgNumRegCmd_values :: [Ros2Fanuc_msgsMsgNumReg]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsMsgNumRegCmdCodecIdentity :: String
ros2Fanuc_msgsMsgNumRegCmdCodecIdentity = "UWVMROS1_9c76500073889377525a0802c46bd96589a2639dd9534cf7ad2b9956cd95b5b6"
-- | @brief Encode every field of complete fanuc_msgs/msg/NumRegCmd.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsMsgNumRegCmd :: Ros2Fanuc_msgsMsgNumRegCmd -> Either Word32 [Word8]
encodeRos2Fanuc_msgsMsgNumRegCmd value = do
    if length (ros2Fanuc_msgsMsgNumRegCmd_values value) <= 32 then Right () else Left 22
    item0 <- concat <$> mapM
        (\element -> encodeRos2Fanuc_msgsMsgNumReg (element))
        (ros2Fanuc_msgsMsgNumRegCmd_values value)
    chunk0 <- Right (W.putNumber 4 (length (ros2Fanuc_msgsMsgNumRegCmd_values value)) ++ item0)
    let bytes = concat [chunk0]
    if length bytes > 196 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/msg/NumRegCmd.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsMsgNumRegCmd :: W.Parser Ros2Fanuc_msgsMsgNumRegCmd
readRos2Fanuc_msgsMsgNumRegCmd = do
    count0 <- W.number 4
    if count0 > 32 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (readRos2Fanuc_msgsMsgNumReg)
    let value = Ros2Fanuc_msgsMsgNumRegCmd value0
    case encodeRos2Fanuc_msgsMsgNumRegCmd value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/msg/NumRegCmd.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsMsgNumRegCmd :: [Word8] -> Either Word32 Ros2Fanuc_msgsMsgNumRegCmd
decodeRos2Fanuc_msgsMsgNumRegCmd bytes
    | length bytes < 4 || length bytes > 196 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsMsgNumRegCmd bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/msg/NumRegState value.
-- | @details Retain every original field in declaration order. Canonical extent 4..196 bytes.
data Ros2Fanuc_msgsMsgNumRegState = Ros2Fanuc_msgsMsgNumRegState
    {
    -- | @brief Original fanuc_msgs/msg/NumRegState.values field.
    -- | @details Original type fanuc_msgs/msg/NumReg. Shape sequence; bound/count 32 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Fanuc_msgsMsgNumRegState_values :: [Ros2Fanuc_msgsMsgNumReg]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsMsgNumRegStateCodecIdentity :: String
ros2Fanuc_msgsMsgNumRegStateCodecIdentity = "UWVMROS1_9c8ff4917a6dd033e6a6776ae8525e93c2924d776f05fd54e7e8d2251fc48b3a"
-- | @brief Encode every field of complete fanuc_msgs/msg/NumRegState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsMsgNumRegState :: Ros2Fanuc_msgsMsgNumRegState -> Either Word32 [Word8]
encodeRos2Fanuc_msgsMsgNumRegState value = do
    if length (ros2Fanuc_msgsMsgNumRegState_values value) <= 32 then Right () else Left 22
    item0 <- concat <$> mapM
        (\element -> encodeRos2Fanuc_msgsMsgNumReg (element))
        (ros2Fanuc_msgsMsgNumRegState_values value)
    chunk0 <- Right (W.putNumber 4 (length (ros2Fanuc_msgsMsgNumRegState_values value)) ++ item0)
    let bytes = concat [chunk0]
    if length bytes > 196 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/msg/NumRegState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsMsgNumRegState :: W.Parser Ros2Fanuc_msgsMsgNumRegState
readRos2Fanuc_msgsMsgNumRegState = do
    count0 <- W.number 4
    if count0 > 32 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (readRos2Fanuc_msgsMsgNumReg)
    let value = Ros2Fanuc_msgsMsgNumRegState value0
    case encodeRos2Fanuc_msgsMsgNumRegState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/msg/NumRegState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsMsgNumRegState :: [Word8] -> Either Word32 Ros2Fanuc_msgsMsgNumRegState
decodeRos2Fanuc_msgsMsgNumRegState bytes
    | length bytes < 4 || length bytes > 196 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsMsgNumRegState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/msg/RMIStatus value.
-- | @details Retain every original field in declaration order. Canonical extent 24..1048 bytes.
data Ros2Fanuc_msgsMsgRMIStatus = Ros2Fanuc_msgsMsgRMIStatus
    {
    -- | @brief Original fanuc_msgs/msg/RMIStatus.program_status field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgRMIStatus_program_status :: Word32
    ,
    -- | @brief Original fanuc_msgs/msg/RMIStatus.next_sequence field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgRMIStatus_next_sequence :: Word32
    ,
    -- | @brief Original fanuc_msgs/msg/RMIStatus.last_sequence field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgRMIStatus_last_sequence :: Word32
    ,
    -- | @brief Original fanuc_msgs/msg/RMIStatus.last_sequence_error field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgRMIStatus_last_sequence_error :: Int32
    ,
    -- | @brief Original fanuc_msgs/msg/RMIStatus.last_sequence_instruction field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Fanuc_msgsMsgRMIStatus_last_sequence_instruction :: [Word8]
    ,
    -- | @brief Original fanuc_msgs/msg/RMIStatus.last_sequence_error_message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Fanuc_msgsMsgRMIStatus_last_sequence_error_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsMsgRMIStatusCodecIdentity :: String
ros2Fanuc_msgsMsgRMIStatusCodecIdentity = "UWVMROS1_dc2e7eaabf44807142581905838f8951653682a6c6d61ebcf56494b16a10d5e8"
-- | @brief Encode every field of complete fanuc_msgs/msg/RMIStatus.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsMsgRMIStatus :: Ros2Fanuc_msgsMsgRMIStatus -> Either Word32 [Word8]
encodeRos2Fanuc_msgsMsgRMIStatus value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsMsgRMIStatus_program_status value))
    chunk1 <- Right (W.putNumber 4 (ros2Fanuc_msgsMsgRMIStatus_next_sequence value))
    chunk2 <- Right (W.putNumber 4 (ros2Fanuc_msgsMsgRMIStatus_last_sequence value))
    chunk3 <- Right (W.putNumber 4 (ros2Fanuc_msgsMsgRMIStatus_last_sequence_error value))
    chunk4 <- W.putText 512 (ros2Fanuc_msgsMsgRMIStatus_last_sequence_instruction value)
    chunk5 <- W.putText 512 (ros2Fanuc_msgsMsgRMIStatus_last_sequence_error_message value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5]
    if length bytes > 1048 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/msg/RMIStatus.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsMsgRMIStatus :: W.Parser Ros2Fanuc_msgsMsgRMIStatus
readRos2Fanuc_msgsMsgRMIStatus = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    value2 <- fromIntegral <$> W.number 4
    value3 <- fromIntegral <$> W.number 4
    value4 <- W.text 512
    value5 <- W.text 512
    let value = Ros2Fanuc_msgsMsgRMIStatus value0 value1 value2 value3 value4 value5
    case encodeRos2Fanuc_msgsMsgRMIStatus value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/msg/RMIStatus.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsMsgRMIStatus :: [Word8] -> Either Word32 Ros2Fanuc_msgsMsgRMIStatus
decodeRos2Fanuc_msgsMsgRMIStatus bytes
    | length bytes < 24 || length bytes > 1048 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsMsgRMIStatus bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/msg/RobotStatus value.
-- | @details Retain every original field in declaration order. Canonical extent 5..5 bytes.
data Ros2Fanuc_msgsMsgRobotStatus = Ros2Fanuc_msgsMsgRobotStatus
    {
    -- | @brief Original fanuc_msgs/msg/RobotStatus.in_error field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgRobotStatus_in_error :: Bool
    ,
    -- | @brief Original fanuc_msgs/msg/RobotStatus.tp_enabled field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgRobotStatus_tp_enabled :: Bool
    ,
    -- | @brief Original fanuc_msgs/msg/RobotStatus.e_stopped field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgRobotStatus_e_stopped :: Bool
    ,
    -- | @brief Original fanuc_msgs/msg/RobotStatus.motion_possible field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgRobotStatus_motion_possible :: Bool
    ,
    -- | @brief Original fanuc_msgs/msg/RobotStatus.contact_stop_mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgRobotStatus_contact_stop_mode :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsMsgRobotStatusCodecIdentity :: String
ros2Fanuc_msgsMsgRobotStatusCodecIdentity = "UWVMROS1_3f31ee3631dc6f4c90eb5ded6209ccebf0f4193ddfe5f5032bdd2bcd71f8cc31"
-- | @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_NONE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgRobotStatus_CONTACT_STOP_MODE_NONE :: Word8
ros2Fanuc_msgsMsgRobotStatus_CONTACT_STOP_MODE_NONE = 0
-- | @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_SAFE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgRobotStatus_CONTACT_STOP_MODE_SAFE :: Word8
ros2Fanuc_msgsMsgRobotStatus_CONTACT_STOP_MODE_SAFE = 1
-- | @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_STOP constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgRobotStatus_CONTACT_STOP_MODE_STOP :: Word8
ros2Fanuc_msgsMsgRobotStatus_CONTACT_STOP_MODE_STOP = 2
-- | @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_DSBL constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgRobotStatus_CONTACT_STOP_MODE_DSBL :: Word8
ros2Fanuc_msgsMsgRobotStatus_CONTACT_STOP_MODE_DSBL = 3
-- | @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_ESCP constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsMsgRobotStatus_CONTACT_STOP_MODE_ESCP :: Word8
ros2Fanuc_msgsMsgRobotStatus_CONTACT_STOP_MODE_ESCP = 4
-- | @brief Encode every field of complete fanuc_msgs/msg/RobotStatus.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsMsgRobotStatus :: Ros2Fanuc_msgsMsgRobotStatus -> Either Word32 [Word8]
encodeRos2Fanuc_msgsMsgRobotStatus value = do
    chunk0 <- Right (W.putBool (ros2Fanuc_msgsMsgRobotStatus_in_error value))
    chunk1 <- Right (W.putBool (ros2Fanuc_msgsMsgRobotStatus_tp_enabled value))
    chunk2 <- Right (W.putBool (ros2Fanuc_msgsMsgRobotStatus_e_stopped value))
    chunk3 <- Right (W.putBool (ros2Fanuc_msgsMsgRobotStatus_motion_possible value))
    chunk4 <- Right (W.putNumber 1 (ros2Fanuc_msgsMsgRobotStatus_contact_stop_mode value))
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4]
    if length bytes > 5 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/msg/RobotStatus.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsMsgRobotStatus :: W.Parser Ros2Fanuc_msgsMsgRobotStatus
readRos2Fanuc_msgsMsgRobotStatus = do
    value0 <- W.boolean
    value1 <- W.boolean
    value2 <- W.boolean
    value3 <- W.boolean
    value4 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsMsgRobotStatus value0 value1 value2 value3 value4
    case encodeRos2Fanuc_msgsMsgRobotStatus value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/msg/RobotStatus.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsMsgRobotStatus :: [Word8] -> Either Word32 Ros2Fanuc_msgsMsgRobotStatus
decodeRos2Fanuc_msgsMsgRobotStatus bytes
    | length bytes < 5 || length bytes > 5 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsMsgRobotStatus bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/msg/RobotStatusExt value.
-- | @details Retain every original field in declaration order. Canonical extent 18..1042 bytes.
data Ros2Fanuc_msgsMsgRobotStatusExt = Ros2Fanuc_msgsMsgRobotStatusExt
    {
    -- | @brief Original fanuc_msgs/msg/RobotStatusExt.error_code field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Fanuc_msgsMsgRobotStatusExt_error_code :: [Word8]
    ,
    -- | @brief Original fanuc_msgs/msg/RobotStatusExt.in_motion field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgRobotStatusExt_in_motion :: Bool
    ,
    -- | @brief Original fanuc_msgs/msg/RobotStatusExt.drives_powered field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgRobotStatusExt_drives_powered :: Bool
    ,
    -- | @brief Original fanuc_msgs/msg/RobotStatusExt.gen_override field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgRobotStatusExt_gen_override :: Int32
    ,
    -- | @brief Original fanuc_msgs/msg/RobotStatusExt.speed_clamp_limit field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsMsgRobotStatusExt_speed_clamp_limit :: Float
    ,
    -- | @brief Original fanuc_msgs/msg/RobotStatusExt.control_mode field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Fanuc_msgsMsgRobotStatusExt_control_mode :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsMsgRobotStatusExtCodecIdentity :: String
ros2Fanuc_msgsMsgRobotStatusExtCodecIdentity = "UWVMROS1_8ba47a11bfbe02026fe79b32e1ed02e5f609499ea55bb57c9f09af9fba389648"
-- | @brief Encode every field of complete fanuc_msgs/msg/RobotStatusExt.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsMsgRobotStatusExt :: Ros2Fanuc_msgsMsgRobotStatusExt -> Either Word32 [Word8]
encodeRos2Fanuc_msgsMsgRobotStatusExt value = do
    chunk0 <- W.putText 512 (ros2Fanuc_msgsMsgRobotStatusExt_error_code value)
    chunk1 <- Right (W.putBool (ros2Fanuc_msgsMsgRobotStatusExt_in_motion value))
    chunk2 <- Right (W.putBool (ros2Fanuc_msgsMsgRobotStatusExt_drives_powered value))
    chunk3 <- Right (W.putNumber 4 (ros2Fanuc_msgsMsgRobotStatusExt_gen_override value))
    chunk4 <- finite4 (ros2Fanuc_msgsMsgRobotStatusExt_speed_clamp_limit value) castFloatToWord32
    chunk5 <- W.putText 512 (ros2Fanuc_msgsMsgRobotStatusExt_control_mode value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5]
    if length bytes > 1042 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/msg/RobotStatusExt.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsMsgRobotStatusExt :: W.Parser Ros2Fanuc_msgsMsgRobotStatusExt
readRos2Fanuc_msgsMsgRobotStatusExt = do
    value0 <- W.text 512
    value1 <- W.boolean
    value2 <- W.boolean
    value3 <- fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- W.text 512
    let value = Ros2Fanuc_msgsMsgRobotStatusExt value0 value1 value2 value3 value4 value5
    case encodeRos2Fanuc_msgsMsgRobotStatusExt value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/msg/RobotStatusExt.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsMsgRobotStatusExt :: [Word8] -> Either Word32 Ros2Fanuc_msgsMsgRobotStatusExt
decodeRos2Fanuc_msgsMsgRobotStatusExt bytes
    | length bytes < 18 || length bytes > 1042 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsMsgRobotStatusExt bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/CfgForceSensor_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Fanuc_msgsSrvCfgForceSensor_Request = Ros2Fanuc_msgsSrvCfgForceSensor_Request
    {
    -- | @brief Original fanuc_msgs/srv/CfgForceSensor_Request.do_reset field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvCfgForceSensor_Request_do_reset :: Word32
    ,
    -- | @brief Original fanuc_msgs/srv/CfgForceSensor_Request.fs_type field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvCfgForceSensor_Request_fs_type :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvCfgForceSensor_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvCfgForceSensor_RequestCodecIdentity = "UWVMROS1_01973ed21546cb747ad2ce2a990a8ec4e70efb66e1c8fc8856cf1082870984ff"
-- | @brief Encode every field of complete fanuc_msgs/srv/CfgForceSensor_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvCfgForceSensor_Request :: Ros2Fanuc_msgsSrvCfgForceSensor_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvCfgForceSensor_Request value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvCfgForceSensor_Request_do_reset value))
    chunk1 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvCfgForceSensor_Request_fs_type value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/CfgForceSensor_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvCfgForceSensor_Request :: W.Parser Ros2Fanuc_msgsSrvCfgForceSensor_Request
readRos2Fanuc_msgsSrvCfgForceSensor_Request = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvCfgForceSensor_Request value0 value1
    case encodeRos2Fanuc_msgsSrvCfgForceSensor_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/CfgForceSensor_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvCfgForceSensor_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvCfgForceSensor_Request
decodeRos2Fanuc_msgsSrvCfgForceSensor_Request bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvCfgForceSensor_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/CfgForceSensor_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Fanuc_msgsSrvCfgForceSensor_Response = Ros2Fanuc_msgsSrvCfgForceSensor_Response
    {
    -- | @brief Original fanuc_msgs/srv/CfgForceSensor_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvCfgForceSensor_Response_result :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvCfgForceSensor_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvCfgForceSensor_ResponseCodecIdentity = "UWVMROS1_41799ce44c937b1524889391db61e2b4d35795055cb4bbacfe5cc8bbd5b9a37b"
-- | @brief Encode every field of complete fanuc_msgs/srv/CfgForceSensor_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvCfgForceSensor_Response :: Ros2Fanuc_msgsSrvCfgForceSensor_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvCfgForceSensor_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvCfgForceSensor_Response_result value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/CfgForceSensor_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvCfgForceSensor_Response :: W.Parser Ros2Fanuc_msgsSrvCfgForceSensor_Response
readRos2Fanuc_msgsSrvCfgForceSensor_Response = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvCfgForceSensor_Response value0
    case encodeRos2Fanuc_msgsSrvCfgForceSensor_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/CfgForceSensor_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvCfgForceSensor_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvCfgForceSensor_Response
decodeRos2Fanuc_msgsSrvCfgForceSensor_Response bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvCfgForceSensor_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetAnalogIO_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 6..70 bytes.
data Ros2Fanuc_msgsSrvGetAnalogIO_Request = Ros2Fanuc_msgsSrvGetAnalogIO_Request
    {
    -- | @brief Original fanuc_msgs/srv/GetAnalogIO_Request.io_type field.
    -- | @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Fanuc_msgsSrvGetAnalogIO_Request_io_type :: Ros2Fanuc_msgsMsgIOType
    ,
    -- | @brief Original fanuc_msgs/srv/GetAnalogIO_Request.index field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetAnalogIO_Request_index :: Word16
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetAnalogIO_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvGetAnalogIO_RequestCodecIdentity = "UWVMROS1_cd567f97de2de581975c3d4f280eec545dea37c941d316fc3708bbc4d3af94d9"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetAnalogIO_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetAnalogIO_Request :: Ros2Fanuc_msgsSrvGetAnalogIO_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetAnalogIO_Request value = do
    chunk0 <- encodeRos2Fanuc_msgsMsgIOType (ros2Fanuc_msgsSrvGetAnalogIO_Request_io_type value)
    chunk1 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvGetAnalogIO_Request_index value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 70 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetAnalogIO_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetAnalogIO_Request :: W.Parser Ros2Fanuc_msgsSrvGetAnalogIO_Request
readRos2Fanuc_msgsSrvGetAnalogIO_Request = do
    value0 <- readRos2Fanuc_msgsMsgIOType
    value1 <- fromIntegral <$> W.number 2
    let value = Ros2Fanuc_msgsSrvGetAnalogIO_Request value0 value1
    case encodeRos2Fanuc_msgsSrvGetAnalogIO_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetAnalogIO_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetAnalogIO_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetAnalogIO_Request
decodeRos2Fanuc_msgsSrvGetAnalogIO_Request bytes
    | length bytes < 6 || length bytes > 70 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetAnalogIO_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetAnalogIO_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Fanuc_msgsSrvGetAnalogIO_Response = Ros2Fanuc_msgsSrvGetAnalogIO_Response
    {
    -- | @brief Original fanuc_msgs/srv/GetAnalogIO_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetAnalogIO_Response_result :: Int32
    ,
    -- | @brief Original fanuc_msgs/srv/GetAnalogIO_Response.value field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetAnalogIO_Response_value :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetAnalogIO_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvGetAnalogIO_ResponseCodecIdentity = "UWVMROS1_3b53d3ce95d95454a782778c160fcc102ead869c5681c9c67224c373fef1b217"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetAnalogIO_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetAnalogIO_Response :: Ros2Fanuc_msgsSrvGetAnalogIO_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetAnalogIO_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvGetAnalogIO_Response_result value))
    chunk1 <- finite4 (ros2Fanuc_msgsSrvGetAnalogIO_Response_value value) castFloatToWord32
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetAnalogIO_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetAnalogIO_Response :: W.Parser Ros2Fanuc_msgsSrvGetAnalogIO_Response
readRos2Fanuc_msgsSrvGetAnalogIO_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvGetAnalogIO_Response value0 value1
    case encodeRos2Fanuc_msgsSrvGetAnalogIO_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetAnalogIO_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetAnalogIO_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetAnalogIO_Response
decodeRos2Fanuc_msgsSrvGetAnalogIO_Response bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetAnalogIO_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetBoolIO_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 6..70 bytes.
data Ros2Fanuc_msgsSrvGetBoolIO_Request = Ros2Fanuc_msgsSrvGetBoolIO_Request
    {
    -- | @brief Original fanuc_msgs/srv/GetBoolIO_Request.io_type field.
    -- | @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Fanuc_msgsSrvGetBoolIO_Request_io_type :: Ros2Fanuc_msgsMsgIOType
    ,
    -- | @brief Original fanuc_msgs/srv/GetBoolIO_Request.index field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetBoolIO_Request_index :: Word16
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetBoolIO_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvGetBoolIO_RequestCodecIdentity = "UWVMROS1_ce8c4b1efd2828e92656e897baf041e8965367a236079231101807c898d4b50c"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetBoolIO_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetBoolIO_Request :: Ros2Fanuc_msgsSrvGetBoolIO_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetBoolIO_Request value = do
    chunk0 <- encodeRos2Fanuc_msgsMsgIOType (ros2Fanuc_msgsSrvGetBoolIO_Request_io_type value)
    chunk1 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvGetBoolIO_Request_index value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 70 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetBoolIO_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetBoolIO_Request :: W.Parser Ros2Fanuc_msgsSrvGetBoolIO_Request
readRos2Fanuc_msgsSrvGetBoolIO_Request = do
    value0 <- readRos2Fanuc_msgsMsgIOType
    value1 <- fromIntegral <$> W.number 2
    let value = Ros2Fanuc_msgsSrvGetBoolIO_Request value0 value1
    case encodeRos2Fanuc_msgsSrvGetBoolIO_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetBoolIO_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetBoolIO_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetBoolIO_Request
decodeRos2Fanuc_msgsSrvGetBoolIO_Request bytes
    | length bytes < 6 || length bytes > 70 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetBoolIO_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetBoolIO_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 5..5 bytes.
data Ros2Fanuc_msgsSrvGetBoolIO_Response = Ros2Fanuc_msgsSrvGetBoolIO_Response
    {
    -- | @brief Original fanuc_msgs/srv/GetBoolIO_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetBoolIO_Response_result :: Int32
    ,
    -- | @brief Original fanuc_msgs/srv/GetBoolIO_Response.value field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetBoolIO_Response_value :: Bool
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetBoolIO_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvGetBoolIO_ResponseCodecIdentity = "UWVMROS1_7dbdcdde8d76c4ef422ea158551dd912273220c25a08f28fc8d19fdf8bc8a01c"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetBoolIO_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetBoolIO_Response :: Ros2Fanuc_msgsSrvGetBoolIO_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetBoolIO_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvGetBoolIO_Response_result value))
    chunk1 <- Right (W.putBool (ros2Fanuc_msgsSrvGetBoolIO_Response_value value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 5 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetBoolIO_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetBoolIO_Response :: W.Parser Ros2Fanuc_msgsSrvGetBoolIO_Response
readRos2Fanuc_msgsSrvGetBoolIO_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- W.boolean
    let value = Ros2Fanuc_msgsSrvGetBoolIO_Response value0 value1
    case encodeRos2Fanuc_msgsSrvGetBoolIO_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetBoolIO_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetBoolIO_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetBoolIO_Response
decodeRos2Fanuc_msgsSrvGetBoolIO_Response bytes
    | length bytes < 5 || length bytes > 5 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetBoolIO_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetCartesianPosition_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Fanuc_msgsSrvGetCartesianPosition_Request = Ros2Fanuc_msgsSrvGetCartesianPosition_Request
    {
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Request.group field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Request_group :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetCartesianPosition_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvGetCartesianPosition_RequestCodecIdentity = "UWVMROS1_a694a17bde88131efcadac4f134464a7777beab4b09e17624ae7b173ab62c3e4"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetCartesianPosition_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetCartesianPosition_Request :: Ros2Fanuc_msgsSrvGetCartesianPosition_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetCartesianPosition_Request value = do
    chunk0 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetCartesianPosition_Request_group value))
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetCartesianPosition_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetCartesianPosition_Request :: W.Parser Ros2Fanuc_msgsSrvGetCartesianPosition_Request
readRos2Fanuc_msgsSrvGetCartesianPosition_Request = do
    value0 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvGetCartesianPosition_Request value0
    case encodeRos2Fanuc_msgsSrvGetCartesianPosition_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetCartesianPosition_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetCartesianPosition_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetCartesianPosition_Request
decodeRos2Fanuc_msgsSrvGetCartesianPosition_Request bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetCartesianPosition_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetCartesianPosition_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 54..54 bytes.
data Ros2Fanuc_msgsSrvGetCartesianPosition_Response = Ros2Fanuc_msgsSrvGetCartesianPosition_Response
    {
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_result :: Int32
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.timetag field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_timetag :: Int32
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.utool field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_utool :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.uframe field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_uframe :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.front field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_front :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.up field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_up :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.left field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_left :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.flip field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_flip :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.turn4 field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_turn4 :: Int8
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.turn5 field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_turn5 :: Int8
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.turn6 field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_turn6 :: Int8
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_x :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_y :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_z :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.w field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_w :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.p field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_p :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.r field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_r :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.ext1 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_ext1 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.ext2 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_ext2 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.ext3 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_ext3 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.group field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetCartesianPosition_Response_group :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetCartesianPosition_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvGetCartesianPosition_ResponseCodecIdentity = "UWVMROS1_0516f0145717b06550674e02f0b9c47f9b312f4f361c791f56257fbb79e67329"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetCartesianPosition_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetCartesianPosition_Response :: Ros2Fanuc_msgsSrvGetCartesianPosition_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetCartesianPosition_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_result value))
    chunk1 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_timetag value))
    chunk2 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_utool value))
    chunk3 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_uframe value))
    chunk4 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_front value))
    chunk5 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_up value))
    chunk6 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_left value))
    chunk7 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_flip value))
    chunk8 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_turn4 value))
    chunk9 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_turn5 value))
    chunk10 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_turn6 value))
    chunk11 <- finite4 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_x value) castFloatToWord32
    chunk12 <- finite4 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_y value) castFloatToWord32
    chunk13 <- finite4 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_z value) castFloatToWord32
    chunk14 <- finite4 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_w value) castFloatToWord32
    chunk15 <- finite4 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_p value) castFloatToWord32
    chunk16 <- finite4 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_r value) castFloatToWord32
    chunk17 <- finite4 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_ext1 value) castFloatToWord32
    chunk18 <- finite4 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_ext2 value) castFloatToWord32
    chunk19 <- finite4 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_ext3 value) castFloatToWord32
    chunk20 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetCartesianPosition_Response_group value))
    let bytes = concat
        [ chunk0
        , chunk1
        , chunk2
        , chunk3
        , chunk4
        , chunk5
        , chunk6
        , chunk7
        , chunk8
        , chunk9
        , chunk10
        , chunk11
        , chunk12
        , chunk13
        , chunk14
        , chunk15
        , chunk16
        , chunk17
        , chunk18
        , chunk19
        , chunk20]
    if length bytes > 54 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetCartesianPosition_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetCartesianPosition_Response :: W.Parser Ros2Fanuc_msgsSrvGetCartesianPosition_Response
readRos2Fanuc_msgsSrvGetCartesianPosition_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    value2 <- fromIntegral <$> W.number 1
    value3 <- fromIntegral <$> W.number 1
    value4 <- fromIntegral <$> W.number 1
    value5 <- fromIntegral <$> W.number 1
    value6 <- fromIntegral <$> W.number 1
    value7 <- fromIntegral <$> W.number 1
    value8 <- fromIntegral <$> W.number 1
    value9 <- fromIntegral <$> W.number 1
    value10 <- fromIntegral <$> W.number 1
    value11 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value12 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value13 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value14 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value15 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value16 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value17 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value18 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value19 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value20 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvGetCartesianPosition_Response
            value0 value1 value2 value3 value4 value5 value6 value7 value8 value9 value10 value11
            value12 value13 value14 value15 value16 value17 value18 value19 value20
    case encodeRos2Fanuc_msgsSrvGetCartesianPosition_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetCartesianPosition_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetCartesianPosition_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetCartesianPosition_Response
decodeRos2Fanuc_msgsSrvGetCartesianPosition_Response bytes
    | length bytes < 54 || length bytes > 54 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetCartesianPosition_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetGroupIO_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 6..70 bytes.
data Ros2Fanuc_msgsSrvGetGroupIO_Request = Ros2Fanuc_msgsSrvGetGroupIO_Request
    {
    -- | @brief Original fanuc_msgs/srv/GetGroupIO_Request.io_type field.
    -- | @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Fanuc_msgsSrvGetGroupIO_Request_io_type :: Ros2Fanuc_msgsMsgIOType
    ,
    -- | @brief Original fanuc_msgs/srv/GetGroupIO_Request.index field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetGroupIO_Request_index :: Word16
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetGroupIO_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvGetGroupIO_RequestCodecIdentity = "UWVMROS1_dbd2e8e791e8debc745843827ed296b51bf84159f4c4fe5d912c231d621de216"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetGroupIO_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetGroupIO_Request :: Ros2Fanuc_msgsSrvGetGroupIO_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetGroupIO_Request value = do
    chunk0 <- encodeRos2Fanuc_msgsMsgIOType (ros2Fanuc_msgsSrvGetGroupIO_Request_io_type value)
    chunk1 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvGetGroupIO_Request_index value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 70 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetGroupIO_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetGroupIO_Request :: W.Parser Ros2Fanuc_msgsSrvGetGroupIO_Request
readRos2Fanuc_msgsSrvGetGroupIO_Request = do
    value0 <- readRos2Fanuc_msgsMsgIOType
    value1 <- fromIntegral <$> W.number 2
    let value = Ros2Fanuc_msgsSrvGetGroupIO_Request value0 value1
    case encodeRos2Fanuc_msgsSrvGetGroupIO_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetGroupIO_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetGroupIO_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetGroupIO_Request
decodeRos2Fanuc_msgsSrvGetGroupIO_Request bytes
    | length bytes < 6 || length bytes > 70 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetGroupIO_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetGroupIO_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..6 bytes.
data Ros2Fanuc_msgsSrvGetGroupIO_Response = Ros2Fanuc_msgsSrvGetGroupIO_Response
    {
    -- | @brief Original fanuc_msgs/srv/GetGroupIO_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetGroupIO_Response_result :: Int32
    ,
    -- | @brief Original fanuc_msgs/srv/GetGroupIO_Response.value field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetGroupIO_Response_value :: Word16
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetGroupIO_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvGetGroupIO_ResponseCodecIdentity = "UWVMROS1_9e131b91f36badc90ddae54a9855095241ab86c51b419b684d62879fae0bda7f"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetGroupIO_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetGroupIO_Response :: Ros2Fanuc_msgsSrvGetGroupIO_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetGroupIO_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvGetGroupIO_Response_result value))
    chunk1 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvGetGroupIO_Response_value value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 6 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetGroupIO_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetGroupIO_Response :: W.Parser Ros2Fanuc_msgsSrvGetGroupIO_Response
readRos2Fanuc_msgsSrvGetGroupIO_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 2
    let value = Ros2Fanuc_msgsSrvGetGroupIO_Response value0 value1
    case encodeRos2Fanuc_msgsSrvGetGroupIO_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetGroupIO_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetGroupIO_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetGroupIO_Response
decodeRos2Fanuc_msgsSrvGetGroupIO_Response bytes
    | length bytes < 6 || length bytes > 6 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetGroupIO_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetNumReg_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 2..2 bytes.
data Ros2Fanuc_msgsSrvGetNumReg_Request = Ros2Fanuc_msgsSrvGetNumReg_Request
    {
    -- | @brief Original fanuc_msgs/srv/GetNumReg_Request.index field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetNumReg_Request_index :: Word16
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetNumReg_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvGetNumReg_RequestCodecIdentity = "UWVMROS1_727b5ff4ab9c8976280df12e80d3aee03b31288087adb94ee82161574fc8dcb5"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetNumReg_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetNumReg_Request :: Ros2Fanuc_msgsSrvGetNumReg_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetNumReg_Request value = do
    chunk0 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvGetNumReg_Request_index value))
    let bytes = concat [chunk0]
    if length bytes > 2 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetNumReg_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetNumReg_Request :: W.Parser Ros2Fanuc_msgsSrvGetNumReg_Request
readRos2Fanuc_msgsSrvGetNumReg_Request = do
    value0 <- fromIntegral <$> W.number 2
    let value = Ros2Fanuc_msgsSrvGetNumReg_Request value0
    case encodeRos2Fanuc_msgsSrvGetNumReg_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetNumReg_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetNumReg_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetNumReg_Request
decodeRos2Fanuc_msgsSrvGetNumReg_Request bytes
    | length bytes < 2 || length bytes > 2 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetNumReg_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetNumReg_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Fanuc_msgsSrvGetNumReg_Response = Ros2Fanuc_msgsSrvGetNumReg_Response
    {
    -- | @brief Original fanuc_msgs/srv/GetNumReg_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetNumReg_Response_result :: Int32
    ,
    -- | @brief Original fanuc_msgs/srv/GetNumReg_Response.value field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetNumReg_Response_value :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetNumReg_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvGetNumReg_ResponseCodecIdentity = "UWVMROS1_78ae7ff82b3b2cd7d512fee8335f14a0759a71425fcf3d1b150dbe5e2a0179b3"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetNumReg_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetNumReg_Response :: Ros2Fanuc_msgsSrvGetNumReg_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetNumReg_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvGetNumReg_Response_result value))
    chunk1 <- finite4 (ros2Fanuc_msgsSrvGetNumReg_Response_value value) castFloatToWord32
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetNumReg_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetNumReg_Response :: W.Parser Ros2Fanuc_msgsSrvGetNumReg_Response
readRos2Fanuc_msgsSrvGetNumReg_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvGetNumReg_Response value0 value1
    case encodeRos2Fanuc_msgsSrvGetNumReg_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetNumReg_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetNumReg_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetNumReg_Response
decodeRos2Fanuc_msgsSrvGetNumReg_Response bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetNumReg_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetPayloadComp_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 2..2 bytes.
data Ros2Fanuc_msgsSrvGetPayloadComp_Request = Ros2Fanuc_msgsSrvGetPayloadComp_Request
    {
    -- | @brief Original fanuc_msgs/srv/GetPayloadComp_Request.payload_schedule_id field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadComp_Request_payload_schedule_id :: Word16
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetPayloadComp_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvGetPayloadComp_RequestCodecIdentity = "UWVMROS1_d48b88619f4a68ceeed02336e9ef078c27905707a21d977448fbbfbd560f398d"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetPayloadComp_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetPayloadComp_Request :: Ros2Fanuc_msgsSrvGetPayloadComp_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetPayloadComp_Request value = do
    chunk0 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvGetPayloadComp_Request_payload_schedule_id value))
    let bytes = concat [chunk0]
    if length bytes > 2 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetPayloadComp_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetPayloadComp_Request :: W.Parser Ros2Fanuc_msgsSrvGetPayloadComp_Request
readRos2Fanuc_msgsSrvGetPayloadComp_Request = do
    value0 <- fromIntegral <$> W.number 2
    let value = Ros2Fanuc_msgsSrvGetPayloadComp_Request value0
    case encodeRos2Fanuc_msgsSrvGetPayloadComp_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetPayloadComp_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetPayloadComp_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetPayloadComp_Request
decodeRos2Fanuc_msgsSrvGetPayloadComp_Request bytes
    | length bytes < 2 || length bytes > 2 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetPayloadComp_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetPayloadComp_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 32..32 bytes.
data Ros2Fanuc_msgsSrvGetPayloadComp_Response = Ros2Fanuc_msgsSrvGetPayloadComp_Response
    {
    -- | @brief Original fanuc_msgs/srv/GetPayloadComp_Response.mass field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadComp_Response_mass :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPayloadComp_Response.cg_x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadComp_Response_cg_x :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPayloadComp_Response.cg_y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadComp_Response_cg_y :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPayloadComp_Response.cg_z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadComp_Response_cg_z :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPayloadComp_Response.in_x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadComp_Response_in_x :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPayloadComp_Response.in_y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadComp_Response_in_y :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPayloadComp_Response.in_z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadComp_Response_in_z :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPayloadComp_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadComp_Response_result :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetPayloadComp_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvGetPayloadComp_ResponseCodecIdentity = "UWVMROS1_012b216c949f99755a36678b6be28d032f698b472ce4fa9ba975bc6d453ae4e4"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetPayloadComp_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetPayloadComp_Response :: Ros2Fanuc_msgsSrvGetPayloadComp_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetPayloadComp_Response value = do
    chunk0 <- finite4 (ros2Fanuc_msgsSrvGetPayloadComp_Response_mass value) castFloatToWord32
    chunk1 <- finite4 (ros2Fanuc_msgsSrvGetPayloadComp_Response_cg_x value) castFloatToWord32
    chunk2 <- finite4 (ros2Fanuc_msgsSrvGetPayloadComp_Response_cg_y value) castFloatToWord32
    chunk3 <- finite4 (ros2Fanuc_msgsSrvGetPayloadComp_Response_cg_z value) castFloatToWord32
    chunk4 <- finite4 (ros2Fanuc_msgsSrvGetPayloadComp_Response_in_x value) castFloatToWord32
    chunk5 <- finite4 (ros2Fanuc_msgsSrvGetPayloadComp_Response_in_y value) castFloatToWord32
    chunk6 <- finite4 (ros2Fanuc_msgsSrvGetPayloadComp_Response_in_z value) castFloatToWord32
    chunk7 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvGetPayloadComp_Response_result value))
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5, chunk6, chunk7]
    if length bytes > 32 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetPayloadComp_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetPayloadComp_Response :: W.Parser Ros2Fanuc_msgsSrvGetPayloadComp_Response
readRos2Fanuc_msgsSrvGetPayloadComp_Response = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value7 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvGetPayloadComp_Response value0 value1 value2 value3 value4 value5 value6 value7
    case encodeRos2Fanuc_msgsSrvGetPayloadComp_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetPayloadComp_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetPayloadComp_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetPayloadComp_Response
decodeRos2Fanuc_msgsSrvGetPayloadComp_Response bytes
    | length bytes < 32 || length bytes > 32 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetPayloadComp_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetPayloadID_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Fanuc_msgsSrvGetPayloadID_Request = Ros2Fanuc_msgsSrvGetPayloadID_Request
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetPayloadID_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvGetPayloadID_RequestCodecIdentity = "UWVMROS1_6c943659905c8adc7aa4b73832584994c83bfe009d18dc30a11d99b9fc0d6eef"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetPayloadID_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetPayloadID_Request :: Ros2Fanuc_msgsSrvGetPayloadID_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetPayloadID_Request value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetPayloadID_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetPayloadID_Request :: W.Parser Ros2Fanuc_msgsSrvGetPayloadID_Request
readRos2Fanuc_msgsSrvGetPayloadID_Request = do
    let value = Ros2Fanuc_msgsSrvGetPayloadID_Request 
    case encodeRos2Fanuc_msgsSrvGetPayloadID_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetPayloadID_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetPayloadID_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetPayloadID_Request
decodeRos2Fanuc_msgsSrvGetPayloadID_Request bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetPayloadID_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetPayloadID_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..6 bytes.
data Ros2Fanuc_msgsSrvGetPayloadID_Response = Ros2Fanuc_msgsSrvGetPayloadID_Response
    {
    -- | @brief Original fanuc_msgs/srv/GetPayloadID_Response.payload_schedule_id field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadID_Response_payload_schedule_id :: Word16
    ,
    -- | @brief Original fanuc_msgs/srv/GetPayloadID_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadID_Response_result :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetPayloadID_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvGetPayloadID_ResponseCodecIdentity = "UWVMROS1_5551f4eab590c87fd7679d593c9c446903bdaa02aa1ed2512b146768122a950c"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetPayloadID_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetPayloadID_Response :: Ros2Fanuc_msgsSrvGetPayloadID_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetPayloadID_Response value = do
    chunk0 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvGetPayloadID_Response_payload_schedule_id value))
    chunk1 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvGetPayloadID_Response_result value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 6 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetPayloadID_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetPayloadID_Response :: W.Parser Ros2Fanuc_msgsSrvGetPayloadID_Response
readRos2Fanuc_msgsSrvGetPayloadID_Response = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvGetPayloadID_Response value0 value1
    case encodeRos2Fanuc_msgsSrvGetPayloadID_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetPayloadID_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetPayloadID_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetPayloadID_Response
decodeRos2Fanuc_msgsSrvGetPayloadID_Response bytes
    | length bytes < 6 || length bytes > 6 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetPayloadID_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetPayloadValue_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 2..2 bytes.
data Ros2Fanuc_msgsSrvGetPayloadValue_Request = Ros2Fanuc_msgsSrvGetPayloadValue_Request
    {
    -- | @brief Original fanuc_msgs/srv/GetPayloadValue_Request.payload_schedule_id field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadValue_Request_payload_schedule_id :: Word16
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetPayloadValue_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvGetPayloadValue_RequestCodecIdentity = "UWVMROS1_d82667bd644873ae4fa5de0289ed94791eb2a7af49c1b8f86ed7f91cf875407a"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetPayloadValue_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetPayloadValue_Request :: Ros2Fanuc_msgsSrvGetPayloadValue_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetPayloadValue_Request value = do
    chunk0 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvGetPayloadValue_Request_payload_schedule_id value))
    let bytes = concat [chunk0]
    if length bytes > 2 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetPayloadValue_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetPayloadValue_Request :: W.Parser Ros2Fanuc_msgsSrvGetPayloadValue_Request
readRos2Fanuc_msgsSrvGetPayloadValue_Request = do
    value0 <- fromIntegral <$> W.number 2
    let value = Ros2Fanuc_msgsSrvGetPayloadValue_Request value0
    case encodeRos2Fanuc_msgsSrvGetPayloadValue_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetPayloadValue_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetPayloadValue_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetPayloadValue_Request
decodeRos2Fanuc_msgsSrvGetPayloadValue_Request bytes
    | length bytes < 2 || length bytes > 2 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetPayloadValue_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetPayloadValue_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 32..32 bytes.
data Ros2Fanuc_msgsSrvGetPayloadValue_Response = Ros2Fanuc_msgsSrvGetPayloadValue_Response
    {
    -- | @brief Original fanuc_msgs/srv/GetPayloadValue_Response.mass field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadValue_Response_mass :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPayloadValue_Response.cg_x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadValue_Response_cg_x :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPayloadValue_Response.cg_y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadValue_Response_cg_y :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPayloadValue_Response.cg_z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadValue_Response_cg_z :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPayloadValue_Response.in_x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadValue_Response_in_x :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPayloadValue_Response.in_y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadValue_Response_in_y :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPayloadValue_Response.in_z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadValue_Response_in_z :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPayloadValue_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPayloadValue_Response_result :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetPayloadValue_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvGetPayloadValue_ResponseCodecIdentity = "UWVMROS1_c3361ceec2ccd5b4d3ef566cbd885f8cddba75b4f1dc1712144147827689f06d"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetPayloadValue_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetPayloadValue_Response :: Ros2Fanuc_msgsSrvGetPayloadValue_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetPayloadValue_Response value = do
    chunk0 <- finite4 (ros2Fanuc_msgsSrvGetPayloadValue_Response_mass value) castFloatToWord32
    chunk1 <- finite4 (ros2Fanuc_msgsSrvGetPayloadValue_Response_cg_x value) castFloatToWord32
    chunk2 <- finite4 (ros2Fanuc_msgsSrvGetPayloadValue_Response_cg_y value) castFloatToWord32
    chunk3 <- finite4 (ros2Fanuc_msgsSrvGetPayloadValue_Response_cg_z value) castFloatToWord32
    chunk4 <- finite4 (ros2Fanuc_msgsSrvGetPayloadValue_Response_in_x value) castFloatToWord32
    chunk5 <- finite4 (ros2Fanuc_msgsSrvGetPayloadValue_Response_in_y value) castFloatToWord32
    chunk6 <- finite4 (ros2Fanuc_msgsSrvGetPayloadValue_Response_in_z value) castFloatToWord32
    chunk7 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvGetPayloadValue_Response_result value))
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5, chunk6, chunk7]
    if length bytes > 32 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetPayloadValue_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetPayloadValue_Response :: W.Parser Ros2Fanuc_msgsSrvGetPayloadValue_Response
readRos2Fanuc_msgsSrvGetPayloadValue_Response = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value7 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvGetPayloadValue_Response value0 value1 value2 value3 value4 value5 value6 value7
    case encodeRos2Fanuc_msgsSrvGetPayloadValue_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetPayloadValue_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetPayloadValue_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetPayloadValue_Response
decodeRos2Fanuc_msgsSrvGetPayloadValue_Response bytes
    | length bytes < 32 || length bytes > 32 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetPayloadValue_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetPosReg_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 2..2 bytes.
data Ros2Fanuc_msgsSrvGetPosReg_Request = Ros2Fanuc_msgsSrvGetPosReg_Request
    {
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Request.index field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Request_index :: Word16
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetPosReg_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvGetPosReg_RequestCodecIdentity = "UWVMROS1_f7f1391c5ea385bff615d95c5e38f01a809828b142112829dc436916b063505a"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetPosReg_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetPosReg_Request :: Ros2Fanuc_msgsSrvGetPosReg_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetPosReg_Request value = do
    chunk0 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvGetPosReg_Request_index value))
    let bytes = concat [chunk0]
    if length bytes > 2 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetPosReg_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetPosReg_Request :: W.Parser Ros2Fanuc_msgsSrvGetPosReg_Request
readRos2Fanuc_msgsSrvGetPosReg_Request = do
    value0 <- fromIntegral <$> W.number 2
    let value = Ros2Fanuc_msgsSrvGetPosReg_Request value0
    case encodeRos2Fanuc_msgsSrvGetPosReg_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetPosReg_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetPosReg_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetPosReg_Request
decodeRos2Fanuc_msgsSrvGetPosReg_Request bytes
    | length bytes < 2 || length bytes > 2 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetPosReg_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetPosReg_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 89..601 bytes.
data Ros2Fanuc_msgsSrvGetPosReg_Response = Ros2Fanuc_msgsSrvGetPosReg_Response
    {
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_result :: Int32
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.representation field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_representation :: [Word8]
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.utool field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_utool :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.uframe field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_uframe :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.front field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_front :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.up field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_up :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.left field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_left :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.flip field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_flip :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.turn4 field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_turn4 :: Int8
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.turn5 field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_turn5 :: Int8
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.turn6 field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_turn6 :: Int8
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_x :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_y :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_z :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.w field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_w :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.p field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_p :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.r field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_r :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.ext1 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_ext1 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.ext2 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_ext2 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.ext3 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_ext3 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.j1 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_j1 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.j2 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_j2 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.j3 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_j3 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.j4 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_j4 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.j5 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_j5 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.j6 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_j6 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.j7 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_j7 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.j8 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_j8 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetPosReg_Response.j9 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetPosReg_Response_j9 :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetPosReg_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvGetPosReg_ResponseCodecIdentity = "UWVMROS1_e540225b0d532c460905582ad99ee175dd771e971c7e75f5dfb9325d39ed6b27"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetPosReg_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetPosReg_Response :: Ros2Fanuc_msgsSrvGetPosReg_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetPosReg_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvGetPosReg_Response_result value))
    chunk1 <- W.putText 512 (ros2Fanuc_msgsSrvGetPosReg_Response_representation value)
    chunk2 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetPosReg_Response_utool value))
    chunk3 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetPosReg_Response_uframe value))
    chunk4 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetPosReg_Response_front value))
    chunk5 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetPosReg_Response_up value))
    chunk6 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetPosReg_Response_left value))
    chunk7 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetPosReg_Response_flip value))
    chunk8 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetPosReg_Response_turn4 value))
    chunk9 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetPosReg_Response_turn5 value))
    chunk10 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetPosReg_Response_turn6 value))
    chunk11 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_x value) castFloatToWord32
    chunk12 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_y value) castFloatToWord32
    chunk13 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_z value) castFloatToWord32
    chunk14 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_w value) castFloatToWord32
    chunk15 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_p value) castFloatToWord32
    chunk16 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_r value) castFloatToWord32
    chunk17 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_ext1 value) castFloatToWord32
    chunk18 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_ext2 value) castFloatToWord32
    chunk19 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_ext3 value) castFloatToWord32
    chunk20 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_j1 value) castFloatToWord32
    chunk21 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_j2 value) castFloatToWord32
    chunk22 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_j3 value) castFloatToWord32
    chunk23 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_j4 value) castFloatToWord32
    chunk24 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_j5 value) castFloatToWord32
    chunk25 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_j6 value) castFloatToWord32
    chunk26 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_j7 value) castFloatToWord32
    chunk27 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_j8 value) castFloatToWord32
    chunk28 <- finite4 (ros2Fanuc_msgsSrvGetPosReg_Response_j9 value) castFloatToWord32
    let bytes = concat
        [ chunk0
        , chunk1
        , chunk2
        , chunk3
        , chunk4
        , chunk5
        , chunk6
        , chunk7
        , chunk8
        , chunk9
        , chunk10
        , chunk11
        , chunk12
        , chunk13
        , chunk14
        , chunk15
        , chunk16
        , chunk17
        , chunk18
        , chunk19
        , chunk20
        , chunk21
        , chunk22
        , chunk23
        , chunk24
        , chunk25
        , chunk26
        , chunk27
        , chunk28]
    if length bytes > 601 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetPosReg_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetPosReg_Response :: W.Parser Ros2Fanuc_msgsSrvGetPosReg_Response
readRos2Fanuc_msgsSrvGetPosReg_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- W.text 512
    value2 <- fromIntegral <$> W.number 1
    value3 <- fromIntegral <$> W.number 1
    value4 <- fromIntegral <$> W.number 1
    value5 <- fromIntegral <$> W.number 1
    value6 <- fromIntegral <$> W.number 1
    value7 <- fromIntegral <$> W.number 1
    value8 <- fromIntegral <$> W.number 1
    value9 <- fromIntegral <$> W.number 1
    value10 <- fromIntegral <$> W.number 1
    value11 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value12 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value13 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value14 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value15 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value16 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value17 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value18 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value19 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value20 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value21 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value22 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value23 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value24 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value25 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value26 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value27 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value28 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvGetPosReg_Response
            value0 value1 value2 value3 value4 value5 value6 value7 value8 value9 value10 value11
            value12 value13 value14 value15 value16 value17 value18 value19 value20 value21 value22
            value23 value24 value25 value26 value27 value28
    case encodeRos2Fanuc_msgsSrvGetPosReg_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetPosReg_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetPosReg_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetPosReg_Response
decodeRos2Fanuc_msgsSrvGetPosReg_Response bytes
    | length bytes < 89 || length bytes > 601 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetPosReg_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetTCPSpeed_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Fanuc_msgsSrvGetTCPSpeed_Request = Ros2Fanuc_msgsSrvGetTCPSpeed_Request
    {
    -- | @brief Original fanuc_msgs/srv/GetTCPSpeed_Request.group field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetTCPSpeed_Request_group :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetTCPSpeed_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvGetTCPSpeed_RequestCodecIdentity = "UWVMROS1_6bdfd44465b75bbd4e232f802dbd3c0bfa28e90a93f9a28b3c15fb150bce7ac7"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetTCPSpeed_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetTCPSpeed_Request :: Ros2Fanuc_msgsSrvGetTCPSpeed_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetTCPSpeed_Request value = do
    chunk0 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetTCPSpeed_Request_group value))
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetTCPSpeed_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetTCPSpeed_Request :: W.Parser Ros2Fanuc_msgsSrvGetTCPSpeed_Request
readRos2Fanuc_msgsSrvGetTCPSpeed_Request = do
    value0 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvGetTCPSpeed_Request value0
    case encodeRos2Fanuc_msgsSrvGetTCPSpeed_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetTCPSpeed_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetTCPSpeed_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetTCPSpeed_Request
decodeRos2Fanuc_msgsSrvGetTCPSpeed_Request bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetTCPSpeed_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetTCPSpeed_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 13..13 bytes.
data Ros2Fanuc_msgsSrvGetTCPSpeed_Response = Ros2Fanuc_msgsSrvGetTCPSpeed_Response
    {
    -- | @brief Original fanuc_msgs/srv/GetTCPSpeed_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetTCPSpeed_Response_result :: Int32
    ,
    -- | @brief Original fanuc_msgs/srv/GetTCPSpeed_Response.timetag field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetTCPSpeed_Response_timetag :: Int32
    ,
    -- | @brief Original fanuc_msgs/srv/GetTCPSpeed_Response.speed field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetTCPSpeed_Response_speed :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/GetTCPSpeed_Response.group field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetTCPSpeed_Response_group :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetTCPSpeed_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvGetTCPSpeed_ResponseCodecIdentity = "UWVMROS1_3ec07d99342f275506452f32076f9e1ea01bf32f43662311708a9b44ca951147"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetTCPSpeed_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetTCPSpeed_Response :: Ros2Fanuc_msgsSrvGetTCPSpeed_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetTCPSpeed_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvGetTCPSpeed_Response_result value))
    chunk1 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvGetTCPSpeed_Response_timetag value))
    chunk2 <- finite4 (ros2Fanuc_msgsSrvGetTCPSpeed_Response_speed value) castFloatToWord32
    chunk3 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetTCPSpeed_Response_group value))
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 13 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetTCPSpeed_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetTCPSpeed_Response :: W.Parser Ros2Fanuc_msgsSrvGetTCPSpeed_Response
readRos2Fanuc_msgsSrvGetTCPSpeed_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvGetTCPSpeed_Response value0 value1 value2 value3
    case encodeRos2Fanuc_msgsSrvGetTCPSpeed_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetTCPSpeed_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetTCPSpeed_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetTCPSpeed_Response
decodeRos2Fanuc_msgsSrvGetTCPSpeed_Response bytes
    | length bytes < 13 || length bytes > 13 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetTCPSpeed_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetUFrameData_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 2..2 bytes.
data Ros2Fanuc_msgsSrvGetUFrameData_Request = Ros2Fanuc_msgsSrvGetUFrameData_Request
    {
    -- | @brief Original fanuc_msgs/srv/GetUFrameData_Request.uframe_number field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetUFrameData_Request_uframe_number :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetUFrameData_Request.group field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetUFrameData_Request_group :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetUFrameData_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvGetUFrameData_RequestCodecIdentity = "UWVMROS1_c1ef7077fd7f61ed8ff46931c8e39c5950658cfe1d36cffac10083ab304307be"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetUFrameData_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetUFrameData_Request :: Ros2Fanuc_msgsSrvGetUFrameData_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetUFrameData_Request value = do
    chunk0 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetUFrameData_Request_uframe_number value))
    chunk1 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetUFrameData_Request_group value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 2 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetUFrameData_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetUFrameData_Request :: W.Parser Ros2Fanuc_msgsSrvGetUFrameData_Request
readRos2Fanuc_msgsSrvGetUFrameData_Request = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvGetUFrameData_Request value0 value1
    case encodeRos2Fanuc_msgsSrvGetUFrameData_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetUFrameData_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetUFrameData_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetUFrameData_Request
decodeRos2Fanuc_msgsSrvGetUFrameData_Request bytes
    | length bytes < 2 || length bytes > 2 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetUFrameData_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetUFrameData_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 30..30 bytes.
data Ros2Fanuc_msgsSrvGetUFrameData_Response = Ros2Fanuc_msgsSrvGetUFrameData_Response
    {
    -- | @brief Original fanuc_msgs/srv/GetUFrameData_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetUFrameData_Response_result :: Int32
    ,
    -- | @brief Original fanuc_msgs/srv/GetUFrameData_Response.uframe_number field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetUFrameData_Response_uframe_number :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetUFrameData_Response.frame field.
    -- | @details Original type fanuc_msgs/msg/Frame. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Fanuc_msgsSrvGetUFrameData_Response_frame :: Ros2Fanuc_msgsMsgFrame
    ,
    -- | @brief Original fanuc_msgs/srv/GetUFrameData_Response.group field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetUFrameData_Response_group :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetUFrameData_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvGetUFrameData_ResponseCodecIdentity = "UWVMROS1_f956e1447bd4a15f547fdf5d6775836018d50153270fe8863c4b30d83422fd2e"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetUFrameData_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetUFrameData_Response :: Ros2Fanuc_msgsSrvGetUFrameData_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetUFrameData_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvGetUFrameData_Response_result value))
    chunk1 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetUFrameData_Response_uframe_number value))
    chunk2 <- encodeRos2Fanuc_msgsMsgFrame (ros2Fanuc_msgsSrvGetUFrameData_Response_frame value)
    chunk3 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetUFrameData_Response_group value))
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 30 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetUFrameData_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetUFrameData_Response :: W.Parser Ros2Fanuc_msgsSrvGetUFrameData_Response
readRos2Fanuc_msgsSrvGetUFrameData_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 1
    value2 <- readRos2Fanuc_msgsMsgFrame
    value3 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvGetUFrameData_Response value0 value1 value2 value3
    case encodeRos2Fanuc_msgsSrvGetUFrameData_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetUFrameData_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetUFrameData_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetUFrameData_Response
decodeRos2Fanuc_msgsSrvGetUFrameData_Response bytes
    | length bytes < 30 || length bytes > 30 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetUFrameData_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetUFrameUTool_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Fanuc_msgsSrvGetUFrameUTool_Request = Ros2Fanuc_msgsSrvGetUFrameUTool_Request
    {
    -- | @brief Original fanuc_msgs/srv/GetUFrameUTool_Request.group field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetUFrameUTool_Request_group :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetUFrameUTool_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvGetUFrameUTool_RequestCodecIdentity = "UWVMROS1_3d57da6f8003b33b2a079d4f284eb0f182d7e088074112b7f4ee25d3113bd443"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetUFrameUTool_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetUFrameUTool_Request :: Ros2Fanuc_msgsSrvGetUFrameUTool_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetUFrameUTool_Request value = do
    chunk0 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetUFrameUTool_Request_group value))
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetUFrameUTool_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetUFrameUTool_Request :: W.Parser Ros2Fanuc_msgsSrvGetUFrameUTool_Request
readRos2Fanuc_msgsSrvGetUFrameUTool_Request = do
    value0 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvGetUFrameUTool_Request value0
    case encodeRos2Fanuc_msgsSrvGetUFrameUTool_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetUFrameUTool_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetUFrameUTool_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetUFrameUTool_Request
decodeRos2Fanuc_msgsSrvGetUFrameUTool_Request bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetUFrameUTool_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetUFrameUTool_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 7..7 bytes.
data Ros2Fanuc_msgsSrvGetUFrameUTool_Response = Ros2Fanuc_msgsSrvGetUFrameUTool_Response
    {
    -- | @brief Original fanuc_msgs/srv/GetUFrameUTool_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetUFrameUTool_Response_result :: Int32
    ,
    -- | @brief Original fanuc_msgs/srv/GetUFrameUTool_Response.uframe_number field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetUFrameUTool_Response_uframe_number :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetUFrameUTool_Response.utool_number field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetUFrameUTool_Response_utool_number :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetUFrameUTool_Response.group field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetUFrameUTool_Response_group :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetUFrameUTool_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvGetUFrameUTool_ResponseCodecIdentity = "UWVMROS1_f9cb64b89f17b6811e4073b9f94d0fd6844d21ec4b846f78bfd13cb14a35a6b3"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetUFrameUTool_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetUFrameUTool_Response :: Ros2Fanuc_msgsSrvGetUFrameUTool_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetUFrameUTool_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvGetUFrameUTool_Response_result value))
    chunk1 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetUFrameUTool_Response_uframe_number value))
    chunk2 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetUFrameUTool_Response_utool_number value))
    chunk3 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetUFrameUTool_Response_group value))
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 7 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetUFrameUTool_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetUFrameUTool_Response :: W.Parser Ros2Fanuc_msgsSrvGetUFrameUTool_Response
readRos2Fanuc_msgsSrvGetUFrameUTool_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvGetUFrameUTool_Response value0 value1 value2 value3
    case encodeRos2Fanuc_msgsSrvGetUFrameUTool_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetUFrameUTool_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetUFrameUTool_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetUFrameUTool_Response
decodeRos2Fanuc_msgsSrvGetUFrameUTool_Response bytes
    | length bytes < 7 || length bytes > 7 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetUFrameUTool_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetUToolData_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 2..2 bytes.
data Ros2Fanuc_msgsSrvGetUToolData_Request = Ros2Fanuc_msgsSrvGetUToolData_Request
    {
    -- | @brief Original fanuc_msgs/srv/GetUToolData_Request.utool_number field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetUToolData_Request_utool_number :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetUToolData_Request.group field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetUToolData_Request_group :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetUToolData_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvGetUToolData_RequestCodecIdentity = "UWVMROS1_10c3799dcb1b09dbcb6d1b794a00ecfaf69a8f457d95eeb92855f79dba7be1bc"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetUToolData_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetUToolData_Request :: Ros2Fanuc_msgsSrvGetUToolData_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetUToolData_Request value = do
    chunk0 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetUToolData_Request_utool_number value))
    chunk1 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetUToolData_Request_group value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 2 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetUToolData_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetUToolData_Request :: W.Parser Ros2Fanuc_msgsSrvGetUToolData_Request
readRos2Fanuc_msgsSrvGetUToolData_Request = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvGetUToolData_Request value0 value1
    case encodeRos2Fanuc_msgsSrvGetUToolData_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetUToolData_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetUToolData_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetUToolData_Request
decodeRos2Fanuc_msgsSrvGetUToolData_Request bytes
    | length bytes < 2 || length bytes > 2 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetUToolData_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/GetUToolData_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 30..30 bytes.
data Ros2Fanuc_msgsSrvGetUToolData_Response = Ros2Fanuc_msgsSrvGetUToolData_Response
    {
    -- | @brief Original fanuc_msgs/srv/GetUToolData_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetUToolData_Response_result :: Int32
    ,
    -- | @brief Original fanuc_msgs/srv/GetUToolData_Response.utool_number field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetUToolData_Response_utool_number :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/GetUToolData_Response.frame field.
    -- | @details Original type fanuc_msgs/msg/Frame. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Fanuc_msgsSrvGetUToolData_Response_frame :: Ros2Fanuc_msgsMsgFrame
    ,
    -- | @brief Original fanuc_msgs/srv/GetUToolData_Response.group field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvGetUToolData_Response_group :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvGetUToolData_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvGetUToolData_ResponseCodecIdentity = "UWVMROS1_f3a2b94f337cec9c58156b803675f38885350cc3fc3171234c0d361afc800d81"
-- | @brief Encode every field of complete fanuc_msgs/srv/GetUToolData_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvGetUToolData_Response :: Ros2Fanuc_msgsSrvGetUToolData_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvGetUToolData_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvGetUToolData_Response_result value))
    chunk1 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetUToolData_Response_utool_number value))
    chunk2 <- encodeRos2Fanuc_msgsMsgFrame (ros2Fanuc_msgsSrvGetUToolData_Response_frame value)
    chunk3 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvGetUToolData_Response_group value))
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 30 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/GetUToolData_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvGetUToolData_Response :: W.Parser Ros2Fanuc_msgsSrvGetUToolData_Response
readRos2Fanuc_msgsSrvGetUToolData_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 1
    value2 <- readRos2Fanuc_msgsMsgFrame
    value3 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvGetUToolData_Response value0 value1 value2 value3
    case encodeRos2Fanuc_msgsSrvGetUToolData_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/GetUToolData_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvGetUToolData_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvGetUToolData_Response
decodeRos2Fanuc_msgsSrvGetUToolData_Response bytes
    | length bytes < 30 || length bytes > 30 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvGetUToolData_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/ReadError_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Fanuc_msgsSrvReadError_Request = Ros2Fanuc_msgsSrvReadError_Request
    {
    -- | @brief Original fanuc_msgs/srv/ReadError_Request.count field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvReadError_Request_count :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvReadError_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvReadError_RequestCodecIdentity = "UWVMROS1_4b67ed8e2ecccefb6bdead80249f5916e6ea192d822183292db43351839fb6f9"
-- | @brief Encode every field of complete fanuc_msgs/srv/ReadError_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvReadError_Request :: Ros2Fanuc_msgsSrvReadError_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvReadError_Request value = do
    chunk0 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvReadError_Request_count value))
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/ReadError_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvReadError_Request :: W.Parser Ros2Fanuc_msgsSrvReadError_Request
readRos2Fanuc_msgsSrvReadError_Request = do
    value0 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvReadError_Request value0
    case encodeRos2Fanuc_msgsSrvReadError_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/ReadError_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvReadError_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvReadError_Request
decodeRos2Fanuc_msgsSrvReadError_Request bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvReadError_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/ReadError_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 25..2585 bytes.
data Ros2Fanuc_msgsSrvReadError_Response = Ros2Fanuc_msgsSrvReadError_Response
    {
    -- | @brief Original fanuc_msgs/srv/ReadError_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvReadError_Response_result :: Int32
    ,
    -- | @brief Original fanuc_msgs/srv/ReadError_Response.count field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvReadError_Response_count :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/ReadError_Response.error_data field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Shape array;
    -- | bound/count 5 elements. Preserve declared units, frame, signedness and field order. Backing
    -- | storage belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Fanuc_msgsSrvReadError_Response_error_data :: [[Word8]]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvReadError_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvReadError_ResponseCodecIdentity = "UWVMROS1_6e28db10c7afb06cb1256f6d74a43e26c5efa6c13fec8826ae0e623a5eb954b6"
-- | @brief Encode every field of complete fanuc_msgs/srv/ReadError_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvReadError_Response :: Ros2Fanuc_msgsSrvReadError_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvReadError_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvReadError_Response_result value))
    chunk1 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvReadError_Response_count value))
    if length (ros2Fanuc_msgsSrvReadError_Response_error_data value) == 5 then Right () else Left 22
    item2 <- concat <$> mapM
        (\element -> W.putText 512 (element))
        (ros2Fanuc_msgsSrvReadError_Response_error_data value)
    chunk2 <- Right (item2)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 2585 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/ReadError_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvReadError_Response :: W.Parser Ros2Fanuc_msgsSrvReadError_Response
readRos2Fanuc_msgsSrvReadError_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 1
    value2 <- replicateM 5 (W.text 512)
    let value = Ros2Fanuc_msgsSrvReadError_Response value0 value1 value2
    case encodeRos2Fanuc_msgsSrvReadError_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/ReadError_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvReadError_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvReadError_Response
decodeRos2Fanuc_msgsSrvReadError_Response bytes
    | length bytes < 25 || length bytes > 2585 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvReadError_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/Reset_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Fanuc_msgsSrvReset_Request = Ros2Fanuc_msgsSrvReset_Request
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvReset_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvReset_RequestCodecIdentity = "UWVMROS1_b73f661d569f6af8dad1cd6625f4c0c55ef2c14c79b3e9af0f17fdc02736abc4"
-- | @brief Encode every field of complete fanuc_msgs/srv/Reset_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvReset_Request :: Ros2Fanuc_msgsSrvReset_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvReset_Request value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/Reset_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvReset_Request :: W.Parser Ros2Fanuc_msgsSrvReset_Request
readRos2Fanuc_msgsSrvReset_Request = do
    let value = Ros2Fanuc_msgsSrvReset_Request 
    case encodeRos2Fanuc_msgsSrvReset_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/Reset_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvReset_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvReset_Request
decodeRos2Fanuc_msgsSrvReset_Request bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvReset_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/Reset_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Fanuc_msgsSrvReset_Response = Ros2Fanuc_msgsSrvReset_Response
    {
    -- | @brief Original fanuc_msgs/srv/Reset_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvReset_Response_result :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvReset_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvReset_ResponseCodecIdentity = "UWVMROS1_5e9b92e5a112b4934ce0893afaa09156fdb47c26b0aa6ae9a27d61920d308ab8"
-- | @brief Encode every field of complete fanuc_msgs/srv/Reset_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvReset_Response :: Ros2Fanuc_msgsSrvReset_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvReset_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvReset_Response_result value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/Reset_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvReset_Response :: W.Parser Ros2Fanuc_msgsSrvReset_Response
readRos2Fanuc_msgsSrvReset_Response = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvReset_Response value0
    case encodeRos2Fanuc_msgsSrvReset_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/Reset_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvReset_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvReset_Response
decodeRos2Fanuc_msgsSrvReset_Response bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvReset_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetAnalogIO_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 10..74 bytes.
data Ros2Fanuc_msgsSrvSetAnalogIO_Request = Ros2Fanuc_msgsSrvSetAnalogIO_Request
    {
    -- | @brief Original fanuc_msgs/srv/SetAnalogIO_Request.io_type field.
    -- | @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Fanuc_msgsSrvSetAnalogIO_Request_io_type :: Ros2Fanuc_msgsMsgIOType
    ,
    -- | @brief Original fanuc_msgs/srv/SetAnalogIO_Request.index field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetAnalogIO_Request_index :: Word16
    ,
    -- | @brief Original fanuc_msgs/srv/SetAnalogIO_Request.value field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetAnalogIO_Request_value :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetAnalogIO_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvSetAnalogIO_RequestCodecIdentity = "UWVMROS1_a6bb4acfae23db79464faff849f359657537026d7c79f8a6c60259caec5e87f4"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetAnalogIO_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetAnalogIO_Request :: Ros2Fanuc_msgsSrvSetAnalogIO_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetAnalogIO_Request value = do
    chunk0 <- encodeRos2Fanuc_msgsMsgIOType (ros2Fanuc_msgsSrvSetAnalogIO_Request_io_type value)
    chunk1 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvSetAnalogIO_Request_index value))
    chunk2 <- finite4 (ros2Fanuc_msgsSrvSetAnalogIO_Request_value value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 74 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetAnalogIO_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetAnalogIO_Request :: W.Parser Ros2Fanuc_msgsSrvSetAnalogIO_Request
readRos2Fanuc_msgsSrvSetAnalogIO_Request = do
    value0 <- readRos2Fanuc_msgsMsgIOType
    value1 <- fromIntegral <$> W.number 2
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvSetAnalogIO_Request value0 value1 value2
    case encodeRos2Fanuc_msgsSrvSetAnalogIO_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetAnalogIO_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetAnalogIO_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetAnalogIO_Request
decodeRos2Fanuc_msgsSrvSetAnalogIO_Request bytes
    | length bytes < 10 || length bytes > 74 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetAnalogIO_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetAnalogIO_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Fanuc_msgsSrvSetAnalogIO_Response = Ros2Fanuc_msgsSrvSetAnalogIO_Response
    {
    -- | @brief Original fanuc_msgs/srv/SetAnalogIO_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetAnalogIO_Response_result :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetAnalogIO_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvSetAnalogIO_ResponseCodecIdentity = "UWVMROS1_aeac383e2c4a292f1237494bff5b261cd0197542e00456b4ee0edf9b7fe8a39b"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetAnalogIO_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetAnalogIO_Response :: Ros2Fanuc_msgsSrvSetAnalogIO_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetAnalogIO_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvSetAnalogIO_Response_result value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetAnalogIO_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetAnalogIO_Response :: W.Parser Ros2Fanuc_msgsSrvSetAnalogIO_Response
readRos2Fanuc_msgsSrvSetAnalogIO_Response = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvSetAnalogIO_Response value0
    case encodeRos2Fanuc_msgsSrvSetAnalogIO_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetAnalogIO_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetAnalogIO_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetAnalogIO_Response
decodeRos2Fanuc_msgsSrvSetAnalogIO_Response bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetAnalogIO_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetBoolIO_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 7..71 bytes.
data Ros2Fanuc_msgsSrvSetBoolIO_Request = Ros2Fanuc_msgsSrvSetBoolIO_Request
    {
    -- | @brief Original fanuc_msgs/srv/SetBoolIO_Request.io_type field.
    -- | @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Fanuc_msgsSrvSetBoolIO_Request_io_type :: Ros2Fanuc_msgsMsgIOType
    ,
    -- | @brief Original fanuc_msgs/srv/SetBoolIO_Request.index field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetBoolIO_Request_index :: Word16
    ,
    -- | @brief Original fanuc_msgs/srv/SetBoolIO_Request.value field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetBoolIO_Request_value :: Bool
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetBoolIO_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvSetBoolIO_RequestCodecIdentity = "UWVMROS1_0e8ace58c769670a2519e733d020a3ca902bff99982514d5cd9ecda391c1a4cf"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetBoolIO_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetBoolIO_Request :: Ros2Fanuc_msgsSrvSetBoolIO_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetBoolIO_Request value = do
    chunk0 <- encodeRos2Fanuc_msgsMsgIOType (ros2Fanuc_msgsSrvSetBoolIO_Request_io_type value)
    chunk1 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvSetBoolIO_Request_index value))
    chunk2 <- Right (W.putBool (ros2Fanuc_msgsSrvSetBoolIO_Request_value value))
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 71 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetBoolIO_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetBoolIO_Request :: W.Parser Ros2Fanuc_msgsSrvSetBoolIO_Request
readRos2Fanuc_msgsSrvSetBoolIO_Request = do
    value0 <- readRos2Fanuc_msgsMsgIOType
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.boolean
    let value = Ros2Fanuc_msgsSrvSetBoolIO_Request value0 value1 value2
    case encodeRos2Fanuc_msgsSrvSetBoolIO_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetBoolIO_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetBoolIO_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetBoolIO_Request
decodeRos2Fanuc_msgsSrvSetBoolIO_Request bytes
    | length bytes < 7 || length bytes > 71 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetBoolIO_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetBoolIO_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Fanuc_msgsSrvSetBoolIO_Response = Ros2Fanuc_msgsSrvSetBoolIO_Response
    {
    -- | @brief Original fanuc_msgs/srv/SetBoolIO_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetBoolIO_Response_result :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetBoolIO_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvSetBoolIO_ResponseCodecIdentity = "UWVMROS1_c9c68ca577dd6e4d1743385d9c69c8f1c6e0780ae247877d823ab97a68e675a0"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetBoolIO_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetBoolIO_Response :: Ros2Fanuc_msgsSrvSetBoolIO_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetBoolIO_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvSetBoolIO_Response_result value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetBoolIO_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetBoolIO_Response :: W.Parser Ros2Fanuc_msgsSrvSetBoolIO_Response
readRos2Fanuc_msgsSrvSetBoolIO_Response = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvSetBoolIO_Response value0
    case encodeRos2Fanuc_msgsSrvSetBoolIO_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetBoolIO_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetBoolIO_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetBoolIO_Response
decodeRos2Fanuc_msgsSrvSetBoolIO_Response bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetBoolIO_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetGenOverride_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Fanuc_msgsSrvSetGenOverride_Request = Ros2Fanuc_msgsSrvSetGenOverride_Request
    {
    -- | @brief Original fanuc_msgs/srv/SetGenOverride_Request.value field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetGenOverride_Request_value :: Int8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetGenOverride_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvSetGenOverride_RequestCodecIdentity = "UWVMROS1_7d321e33aaf6f58013c33ffc012c1ddbd27aefff3f21d7456030a1d590362039"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetGenOverride_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetGenOverride_Request :: Ros2Fanuc_msgsSrvSetGenOverride_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetGenOverride_Request value = do
    chunk0 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetGenOverride_Request_value value))
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetGenOverride_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetGenOverride_Request :: W.Parser Ros2Fanuc_msgsSrvSetGenOverride_Request
readRos2Fanuc_msgsSrvSetGenOverride_Request = do
    value0 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvSetGenOverride_Request value0
    case encodeRos2Fanuc_msgsSrvSetGenOverride_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetGenOverride_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetGenOverride_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetGenOverride_Request
decodeRos2Fanuc_msgsSrvSetGenOverride_Request bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetGenOverride_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetGenOverride_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Fanuc_msgsSrvSetGenOverride_Response = Ros2Fanuc_msgsSrvSetGenOverride_Response
    {
    -- | @brief Original fanuc_msgs/srv/SetGenOverride_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetGenOverride_Response_result :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetGenOverride_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvSetGenOverride_ResponseCodecIdentity = "UWVMROS1_1ffcb25cad7dbf51c216753dac2c117a191fb081a5a562e63d34d447e61f0a59"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetGenOverride_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetGenOverride_Response :: Ros2Fanuc_msgsSrvSetGenOverride_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetGenOverride_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvSetGenOverride_Response_result value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetGenOverride_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetGenOverride_Response :: W.Parser Ros2Fanuc_msgsSrvSetGenOverride_Response
readRos2Fanuc_msgsSrvSetGenOverride_Response = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvSetGenOverride_Response value0
    case encodeRos2Fanuc_msgsSrvSetGenOverride_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetGenOverride_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetGenOverride_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetGenOverride_Response
decodeRos2Fanuc_msgsSrvSetGenOverride_Response bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetGenOverride_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetGroupIO_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 8..72 bytes.
data Ros2Fanuc_msgsSrvSetGroupIO_Request = Ros2Fanuc_msgsSrvSetGroupIO_Request
    {
    -- | @brief Original fanuc_msgs/srv/SetGroupIO_Request.io_type field.
    -- | @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Fanuc_msgsSrvSetGroupIO_Request_io_type :: Ros2Fanuc_msgsMsgIOType
    ,
    -- | @brief Original fanuc_msgs/srv/SetGroupIO_Request.index field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetGroupIO_Request_index :: Word16
    ,
    -- | @brief Original fanuc_msgs/srv/SetGroupIO_Request.value field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetGroupIO_Request_value :: Word16
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetGroupIO_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvSetGroupIO_RequestCodecIdentity = "UWVMROS1_42a76aec283e26e3a2c99bb27a23778e34effb6c3328754793f783038a2b84bd"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetGroupIO_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetGroupIO_Request :: Ros2Fanuc_msgsSrvSetGroupIO_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetGroupIO_Request value = do
    chunk0 <- encodeRos2Fanuc_msgsMsgIOType (ros2Fanuc_msgsSrvSetGroupIO_Request_io_type value)
    chunk1 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvSetGroupIO_Request_index value))
    chunk2 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvSetGroupIO_Request_value value))
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 72 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetGroupIO_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetGroupIO_Request :: W.Parser Ros2Fanuc_msgsSrvSetGroupIO_Request
readRos2Fanuc_msgsSrvSetGroupIO_Request = do
    value0 <- readRos2Fanuc_msgsMsgIOType
    value1 <- fromIntegral <$> W.number 2
    value2 <- fromIntegral <$> W.number 2
    let value = Ros2Fanuc_msgsSrvSetGroupIO_Request value0 value1 value2
    case encodeRos2Fanuc_msgsSrvSetGroupIO_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetGroupIO_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetGroupIO_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetGroupIO_Request
decodeRos2Fanuc_msgsSrvSetGroupIO_Request bytes
    | length bytes < 8 || length bytes > 72 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetGroupIO_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetGroupIO_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Fanuc_msgsSrvSetGroupIO_Response = Ros2Fanuc_msgsSrvSetGroupIO_Response
    {
    -- | @brief Original fanuc_msgs/srv/SetGroupIO_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetGroupIO_Response_result :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetGroupIO_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvSetGroupIO_ResponseCodecIdentity = "UWVMROS1_aa6d2c99e8817273f8f2ab179df61d60efd8ee2cee0e1ec76c647956e22bff17"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetGroupIO_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetGroupIO_Response :: Ros2Fanuc_msgsSrvSetGroupIO_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetGroupIO_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvSetGroupIO_Response_result value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetGroupIO_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetGroupIO_Response :: W.Parser Ros2Fanuc_msgsSrvSetGroupIO_Response
readRos2Fanuc_msgsSrvSetGroupIO_Response = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvSetGroupIO_Response value0
    case encodeRos2Fanuc_msgsSrvSetGroupIO_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetGroupIO_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetGroupIO_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetGroupIO_Response
decodeRos2Fanuc_msgsSrvSetGroupIO_Response bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetGroupIO_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetNumReg_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 6..6 bytes.
data Ros2Fanuc_msgsSrvSetNumReg_Request = Ros2Fanuc_msgsSrvSetNumReg_Request
    {
    -- | @brief Original fanuc_msgs/srv/SetNumReg_Request.index field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetNumReg_Request_index :: Word16
    ,
    -- | @brief Original fanuc_msgs/srv/SetNumReg_Request.value field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetNumReg_Request_value :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetNumReg_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvSetNumReg_RequestCodecIdentity = "UWVMROS1_7e362b671b8770db33f3876308c41a930863a0805771fa05fcbb170782207e36"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetNumReg_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetNumReg_Request :: Ros2Fanuc_msgsSrvSetNumReg_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetNumReg_Request value = do
    chunk0 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvSetNumReg_Request_index value))
    chunk1 <- finite4 (ros2Fanuc_msgsSrvSetNumReg_Request_value value) castFloatToWord32
    let bytes = concat [chunk0, chunk1]
    if length bytes > 6 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetNumReg_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetNumReg_Request :: W.Parser Ros2Fanuc_msgsSrvSetNumReg_Request
readRos2Fanuc_msgsSrvSetNumReg_Request = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvSetNumReg_Request value0 value1
    case encodeRos2Fanuc_msgsSrvSetNumReg_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetNumReg_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetNumReg_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetNumReg_Request
decodeRos2Fanuc_msgsSrvSetNumReg_Request bytes
    | length bytes < 6 || length bytes > 6 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetNumReg_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetNumReg_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Fanuc_msgsSrvSetNumReg_Response = Ros2Fanuc_msgsSrvSetNumReg_Response
    {
    -- | @brief Original fanuc_msgs/srv/SetNumReg_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetNumReg_Response_result :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetNumReg_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvSetNumReg_ResponseCodecIdentity = "UWVMROS1_7c7850ad8bb5c861d9b436311a8cf985e2e029d362877be80c5a6cb19021e482"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetNumReg_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetNumReg_Response :: Ros2Fanuc_msgsSrvSetNumReg_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetNumReg_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvSetNumReg_Response_result value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetNumReg_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetNumReg_Response :: W.Parser Ros2Fanuc_msgsSrvSetNumReg_Response
readRos2Fanuc_msgsSrvSetNumReg_Response = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvSetNumReg_Response value0
    case encodeRos2Fanuc_msgsSrvSetNumReg_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetNumReg_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetNumReg_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetNumReg_Response
decodeRos2Fanuc_msgsSrvSetNumReg_Response bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetNumReg_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetPayloadComp_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 30..30 bytes.
data Ros2Fanuc_msgsSrvSetPayloadComp_Request = Ros2Fanuc_msgsSrvSetPayloadComp_Request
    {
    -- | @brief Original fanuc_msgs/srv/SetPayloadComp_Request.payload_schedule_id field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadComp_Request_payload_schedule_id :: Word16
    ,
    -- | @brief Original fanuc_msgs/srv/SetPayloadComp_Request.mass field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadComp_Request_mass :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPayloadComp_Request.cg_x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadComp_Request_cg_x :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPayloadComp_Request.cg_y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadComp_Request_cg_y :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPayloadComp_Request.cg_z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadComp_Request_cg_z :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPayloadComp_Request.in_x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadComp_Request_in_x :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPayloadComp_Request.in_y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadComp_Request_in_y :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPayloadComp_Request.in_z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadComp_Request_in_z :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetPayloadComp_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvSetPayloadComp_RequestCodecIdentity = "UWVMROS1_92c495d71657249e15c172e850aa91869929a25817437567778df1b01d9037a8"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetPayloadComp_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetPayloadComp_Request :: Ros2Fanuc_msgsSrvSetPayloadComp_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetPayloadComp_Request value = do
    chunk0 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvSetPayloadComp_Request_payload_schedule_id value))
    chunk1 <- finite4 (ros2Fanuc_msgsSrvSetPayloadComp_Request_mass value) castFloatToWord32
    chunk2 <- finite4 (ros2Fanuc_msgsSrvSetPayloadComp_Request_cg_x value) castFloatToWord32
    chunk3 <- finite4 (ros2Fanuc_msgsSrvSetPayloadComp_Request_cg_y value) castFloatToWord32
    chunk4 <- finite4 (ros2Fanuc_msgsSrvSetPayloadComp_Request_cg_z value) castFloatToWord32
    chunk5 <- finite4 (ros2Fanuc_msgsSrvSetPayloadComp_Request_in_x value) castFloatToWord32
    chunk6 <- finite4 (ros2Fanuc_msgsSrvSetPayloadComp_Request_in_y value) castFloatToWord32
    chunk7 <- finite4 (ros2Fanuc_msgsSrvSetPayloadComp_Request_in_z value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5, chunk6, chunk7]
    if length bytes > 30 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetPayloadComp_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetPayloadComp_Request :: W.Parser Ros2Fanuc_msgsSrvSetPayloadComp_Request
readRos2Fanuc_msgsSrvSetPayloadComp_Request = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value7 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvSetPayloadComp_Request value0 value1 value2 value3 value4 value5 value6 value7
    case encodeRos2Fanuc_msgsSrvSetPayloadComp_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetPayloadComp_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetPayloadComp_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetPayloadComp_Request
decodeRos2Fanuc_msgsSrvSetPayloadComp_Request bytes
    | length bytes < 30 || length bytes > 30 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetPayloadComp_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetPayloadComp_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Fanuc_msgsSrvSetPayloadComp_Response = Ros2Fanuc_msgsSrvSetPayloadComp_Response
    {
    -- | @brief Original fanuc_msgs/srv/SetPayloadComp_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadComp_Response_result :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetPayloadComp_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvSetPayloadComp_ResponseCodecIdentity = "UWVMROS1_37a9876e2a9c514fa8c4337ff1351f778d350318bdc6d8aa5d569b4039a2f76b"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetPayloadComp_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetPayloadComp_Response :: Ros2Fanuc_msgsSrvSetPayloadComp_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetPayloadComp_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvSetPayloadComp_Response_result value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetPayloadComp_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetPayloadComp_Response :: W.Parser Ros2Fanuc_msgsSrvSetPayloadComp_Response
readRos2Fanuc_msgsSrvSetPayloadComp_Response = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvSetPayloadComp_Response value0
    case encodeRos2Fanuc_msgsSrvSetPayloadComp_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetPayloadComp_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetPayloadComp_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetPayloadComp_Response
decodeRos2Fanuc_msgsSrvSetPayloadComp_Response bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetPayloadComp_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetPayloadID_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 2..2 bytes.
data Ros2Fanuc_msgsSrvSetPayloadID_Request = Ros2Fanuc_msgsSrvSetPayloadID_Request
    {
    -- | @brief Original fanuc_msgs/srv/SetPayloadID_Request.payload_schedule_id field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadID_Request_payload_schedule_id :: Word16
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetPayloadID_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvSetPayloadID_RequestCodecIdentity = "UWVMROS1_aa15b59db17d2afb7ef9e74676a9b744763954ae063efafb91a3ab3c9852a1c0"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetPayloadID_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetPayloadID_Request :: Ros2Fanuc_msgsSrvSetPayloadID_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetPayloadID_Request value = do
    chunk0 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvSetPayloadID_Request_payload_schedule_id value))
    let bytes = concat [chunk0]
    if length bytes > 2 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetPayloadID_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetPayloadID_Request :: W.Parser Ros2Fanuc_msgsSrvSetPayloadID_Request
readRos2Fanuc_msgsSrvSetPayloadID_Request = do
    value0 <- fromIntegral <$> W.number 2
    let value = Ros2Fanuc_msgsSrvSetPayloadID_Request value0
    case encodeRos2Fanuc_msgsSrvSetPayloadID_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetPayloadID_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetPayloadID_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetPayloadID_Request
decodeRos2Fanuc_msgsSrvSetPayloadID_Request bytes
    | length bytes < 2 || length bytes > 2 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetPayloadID_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetPayloadID_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Fanuc_msgsSrvSetPayloadID_Response = Ros2Fanuc_msgsSrvSetPayloadID_Response
    {
    -- | @brief Original fanuc_msgs/srv/SetPayloadID_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadID_Response_result :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetPayloadID_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvSetPayloadID_ResponseCodecIdentity = "UWVMROS1_7b704b36da10dc71b4cfaad92ea02ed22e4966077dc0940b03b8b8e49c5769c7"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetPayloadID_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetPayloadID_Response :: Ros2Fanuc_msgsSrvSetPayloadID_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetPayloadID_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvSetPayloadID_Response_result value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetPayloadID_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetPayloadID_Response :: W.Parser Ros2Fanuc_msgsSrvSetPayloadID_Response
readRos2Fanuc_msgsSrvSetPayloadID_Response = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvSetPayloadID_Response value0
    case encodeRos2Fanuc_msgsSrvSetPayloadID_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetPayloadID_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetPayloadID_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetPayloadID_Response
decodeRos2Fanuc_msgsSrvSetPayloadID_Response bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetPayloadID_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetPayloadValue_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 31..31 bytes.
data Ros2Fanuc_msgsSrvSetPayloadValue_Request = Ros2Fanuc_msgsSrvSetPayloadValue_Request
    {
    -- | @brief Original fanuc_msgs/srv/SetPayloadValue_Request.payload_schedule_id field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadValue_Request_payload_schedule_id :: Word16
    ,
    -- | @brief Original fanuc_msgs/srv/SetPayloadValue_Request.mass field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadValue_Request_mass :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPayloadValue_Request.cg_x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadValue_Request_cg_x :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPayloadValue_Request.cg_y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadValue_Request_cg_y :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPayloadValue_Request.cg_z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadValue_Request_cg_z :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPayloadValue_Request.use_in field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadValue_Request_use_in :: Bool
    ,
    -- | @brief Original fanuc_msgs/srv/SetPayloadValue_Request.in_x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadValue_Request_in_x :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPayloadValue_Request.in_y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadValue_Request_in_y :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPayloadValue_Request.in_z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadValue_Request_in_z :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetPayloadValue_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvSetPayloadValue_RequestCodecIdentity = "UWVMROS1_5d56ce8f2f8df9c3450d6a5dc77e9e77861471805aa6b9c6f8815c2e7c324974"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetPayloadValue_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetPayloadValue_Request :: Ros2Fanuc_msgsSrvSetPayloadValue_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetPayloadValue_Request value = do
    chunk0 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvSetPayloadValue_Request_payload_schedule_id value))
    chunk1 <- finite4 (ros2Fanuc_msgsSrvSetPayloadValue_Request_mass value) castFloatToWord32
    chunk2 <- finite4 (ros2Fanuc_msgsSrvSetPayloadValue_Request_cg_x value) castFloatToWord32
    chunk3 <- finite4 (ros2Fanuc_msgsSrvSetPayloadValue_Request_cg_y value) castFloatToWord32
    chunk4 <- finite4 (ros2Fanuc_msgsSrvSetPayloadValue_Request_cg_z value) castFloatToWord32
    chunk5 <- Right (W.putBool (ros2Fanuc_msgsSrvSetPayloadValue_Request_use_in value))
    chunk6 <- finite4 (ros2Fanuc_msgsSrvSetPayloadValue_Request_in_x value) castFloatToWord32
    chunk7 <- finite4 (ros2Fanuc_msgsSrvSetPayloadValue_Request_in_y value) castFloatToWord32
    chunk8 <- finite4 (ros2Fanuc_msgsSrvSetPayloadValue_Request_in_z value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5, chunk6, chunk7, chunk8]
    if length bytes > 31 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetPayloadValue_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetPayloadValue_Request :: W.Parser Ros2Fanuc_msgsSrvSetPayloadValue_Request
readRos2Fanuc_msgsSrvSetPayloadValue_Request = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- W.boolean
    value6 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value7 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value8 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvSetPayloadValue_Request value0 value1 value2 value3 value4 value5 value6 value7 value8
    case encodeRos2Fanuc_msgsSrvSetPayloadValue_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetPayloadValue_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetPayloadValue_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetPayloadValue_Request
decodeRos2Fanuc_msgsSrvSetPayloadValue_Request bytes
    | length bytes < 31 || length bytes > 31 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetPayloadValue_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetPayloadValue_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Fanuc_msgsSrvSetPayloadValue_Response = Ros2Fanuc_msgsSrvSetPayloadValue_Response
    {
    -- | @brief Original fanuc_msgs/srv/SetPayloadValue_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPayloadValue_Response_result :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetPayloadValue_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvSetPayloadValue_ResponseCodecIdentity = "UWVMROS1_09f30071b49ac57353429e8a2862ee80d3dcab9237e8192d008c12a3628cc6ab"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetPayloadValue_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetPayloadValue_Response :: Ros2Fanuc_msgsSrvSetPayloadValue_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetPayloadValue_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvSetPayloadValue_Response_result value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetPayloadValue_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetPayloadValue_Response :: W.Parser Ros2Fanuc_msgsSrvSetPayloadValue_Response
readRos2Fanuc_msgsSrvSetPayloadValue_Response = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvSetPayloadValue_Response value0
    case encodeRos2Fanuc_msgsSrvSetPayloadValue_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetPayloadValue_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetPayloadValue_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetPayloadValue_Response
decodeRos2Fanuc_msgsSrvSetPayloadValue_Response bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetPayloadValue_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetPosReg_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 87..599 bytes.
data Ros2Fanuc_msgsSrvSetPosReg_Request = Ros2Fanuc_msgsSrvSetPosReg_Request
    {
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.index field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_index :: Word16
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.representation field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_representation :: [Word8]
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.utool field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_utool :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.uframe field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_uframe :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.front field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_front :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.up field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_up :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.left field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_left :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.flip field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_flip :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.turn4 field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_turn4 :: Int8
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.turn5 field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_turn5 :: Int8
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.turn6 field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_turn6 :: Int8
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_x :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_y :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_z :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.w field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_w :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.p field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_p :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.r field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_r :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.ext1 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_ext1 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.ext2 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_ext2 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.ext3 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_ext3 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.j1 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_j1 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.j2 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_j2 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.j3 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_j3 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.j4 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_j4 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.j5 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_j5 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.j6 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_j6 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.j7 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_j7 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.j8 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_j8 :: Float
    ,
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Request.j9 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Request_j9 :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetPosReg_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvSetPosReg_RequestCodecIdentity = "UWVMROS1_f9af742e55a044a1a363a45cbe4a0a8ce4ca62fcaf43759041cef89149d96d30"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetPosReg_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetPosReg_Request :: Ros2Fanuc_msgsSrvSetPosReg_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetPosReg_Request value = do
    chunk0 <- Right (W.putNumber 2 (ros2Fanuc_msgsSrvSetPosReg_Request_index value))
    chunk1 <- W.putText 512 (ros2Fanuc_msgsSrvSetPosReg_Request_representation value)
    chunk2 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetPosReg_Request_utool value))
    chunk3 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetPosReg_Request_uframe value))
    chunk4 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetPosReg_Request_front value))
    chunk5 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetPosReg_Request_up value))
    chunk6 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetPosReg_Request_left value))
    chunk7 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetPosReg_Request_flip value))
    chunk8 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetPosReg_Request_turn4 value))
    chunk9 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetPosReg_Request_turn5 value))
    chunk10 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetPosReg_Request_turn6 value))
    chunk11 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_x value) castFloatToWord32
    chunk12 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_y value) castFloatToWord32
    chunk13 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_z value) castFloatToWord32
    chunk14 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_w value) castFloatToWord32
    chunk15 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_p value) castFloatToWord32
    chunk16 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_r value) castFloatToWord32
    chunk17 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_ext1 value) castFloatToWord32
    chunk18 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_ext2 value) castFloatToWord32
    chunk19 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_ext3 value) castFloatToWord32
    chunk20 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_j1 value) castFloatToWord32
    chunk21 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_j2 value) castFloatToWord32
    chunk22 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_j3 value) castFloatToWord32
    chunk23 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_j4 value) castFloatToWord32
    chunk24 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_j5 value) castFloatToWord32
    chunk25 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_j6 value) castFloatToWord32
    chunk26 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_j7 value) castFloatToWord32
    chunk27 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_j8 value) castFloatToWord32
    chunk28 <- finite4 (ros2Fanuc_msgsSrvSetPosReg_Request_j9 value) castFloatToWord32
    let bytes = concat
        [ chunk0
        , chunk1
        , chunk2
        , chunk3
        , chunk4
        , chunk5
        , chunk6
        , chunk7
        , chunk8
        , chunk9
        , chunk10
        , chunk11
        , chunk12
        , chunk13
        , chunk14
        , chunk15
        , chunk16
        , chunk17
        , chunk18
        , chunk19
        , chunk20
        , chunk21
        , chunk22
        , chunk23
        , chunk24
        , chunk25
        , chunk26
        , chunk27
        , chunk28]
    if length bytes > 599 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetPosReg_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetPosReg_Request :: W.Parser Ros2Fanuc_msgsSrvSetPosReg_Request
readRos2Fanuc_msgsSrvSetPosReg_Request = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    value2 <- fromIntegral <$> W.number 1
    value3 <- fromIntegral <$> W.number 1
    value4 <- fromIntegral <$> W.number 1
    value5 <- fromIntegral <$> W.number 1
    value6 <- fromIntegral <$> W.number 1
    value7 <- fromIntegral <$> W.number 1
    value8 <- fromIntegral <$> W.number 1
    value9 <- fromIntegral <$> W.number 1
    value10 <- fromIntegral <$> W.number 1
    value11 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value12 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value13 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value14 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value15 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value16 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value17 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value18 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value19 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value20 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value21 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value22 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value23 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value24 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value25 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value26 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value27 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value28 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvSetPosReg_Request
            value0 value1 value2 value3 value4 value5 value6 value7 value8 value9 value10 value11
            value12 value13 value14 value15 value16 value17 value18 value19 value20 value21 value22
            value23 value24 value25 value26 value27 value28
    case encodeRos2Fanuc_msgsSrvSetPosReg_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetPosReg_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetPosReg_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetPosReg_Request
decodeRos2Fanuc_msgsSrvSetPosReg_Request bytes
    | length bytes < 87 || length bytes > 599 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetPosReg_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetPosReg_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Fanuc_msgsSrvSetPosReg_Response = Ros2Fanuc_msgsSrvSetPosReg_Response
    {
    -- | @brief Original fanuc_msgs/srv/SetPosReg_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetPosReg_Response_result :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetPosReg_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvSetPosReg_ResponseCodecIdentity = "UWVMROS1_fb6f889d30c921df31f55cdc760346eb0d655816e71b52d4aac7a1e56d4e9cb2"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetPosReg_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetPosReg_Response :: Ros2Fanuc_msgsSrvSetPosReg_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetPosReg_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvSetPosReg_Response_result value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetPosReg_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetPosReg_Response :: W.Parser Ros2Fanuc_msgsSrvSetPosReg_Response
readRos2Fanuc_msgsSrvSetPosReg_Response = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvSetPosReg_Response value0
    case encodeRos2Fanuc_msgsSrvSetPosReg_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetPosReg_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetPosReg_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetPosReg_Response
decodeRos2Fanuc_msgsSrvSetPosReg_Response bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetPosReg_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetUFrameData_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 26..26 bytes.
data Ros2Fanuc_msgsSrvSetUFrameData_Request = Ros2Fanuc_msgsSrvSetUFrameData_Request
    {
    -- | @brief Original fanuc_msgs/srv/SetUFrameData_Request.uframe_number field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetUFrameData_Request_uframe_number :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/SetUFrameData_Request.frame field.
    -- | @details Original type fanuc_msgs/msg/Frame. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Fanuc_msgsSrvSetUFrameData_Request_frame :: Ros2Fanuc_msgsMsgFrame
    ,
    -- | @brief Original fanuc_msgs/srv/SetUFrameData_Request.group field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetUFrameData_Request_group :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetUFrameData_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvSetUFrameData_RequestCodecIdentity = "UWVMROS1_a067808d8fe5ca1418e18ac492313ad9211cc8f3bf402ad0ac51a2850a2bc169"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetUFrameData_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetUFrameData_Request :: Ros2Fanuc_msgsSrvSetUFrameData_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetUFrameData_Request value = do
    chunk0 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetUFrameData_Request_uframe_number value))
    chunk1 <- encodeRos2Fanuc_msgsMsgFrame (ros2Fanuc_msgsSrvSetUFrameData_Request_frame value)
    chunk2 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetUFrameData_Request_group value))
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 26 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetUFrameData_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetUFrameData_Request :: W.Parser Ros2Fanuc_msgsSrvSetUFrameData_Request
readRos2Fanuc_msgsSrvSetUFrameData_Request = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- readRos2Fanuc_msgsMsgFrame
    value2 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvSetUFrameData_Request value0 value1 value2
    case encodeRos2Fanuc_msgsSrvSetUFrameData_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetUFrameData_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetUFrameData_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetUFrameData_Request
decodeRos2Fanuc_msgsSrvSetUFrameData_Request bytes
    | length bytes < 26 || length bytes > 26 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetUFrameData_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetUFrameData_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 5..5 bytes.
data Ros2Fanuc_msgsSrvSetUFrameData_Response = Ros2Fanuc_msgsSrvSetUFrameData_Response
    {
    -- | @brief Original fanuc_msgs/srv/SetUFrameData_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetUFrameData_Response_result :: Int32
    ,
    -- | @brief Original fanuc_msgs/srv/SetUFrameData_Response.group field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetUFrameData_Response_group :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetUFrameData_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvSetUFrameData_ResponseCodecIdentity = "UWVMROS1_f436e4fe5bd06b048f4f53d2df4933ac8eac5a784f31b42ccf13f5eaf1696eee"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetUFrameData_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetUFrameData_Response :: Ros2Fanuc_msgsSrvSetUFrameData_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetUFrameData_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvSetUFrameData_Response_result value))
    chunk1 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetUFrameData_Response_group value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 5 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetUFrameData_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetUFrameData_Response :: W.Parser Ros2Fanuc_msgsSrvSetUFrameData_Response
readRos2Fanuc_msgsSrvSetUFrameData_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvSetUFrameData_Response value0 value1
    case encodeRos2Fanuc_msgsSrvSetUFrameData_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetUFrameData_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetUFrameData_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetUFrameData_Response
decodeRos2Fanuc_msgsSrvSetUFrameData_Response bytes
    | length bytes < 5 || length bytes > 5 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetUFrameData_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetUFrameUTool_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 3..3 bytes.
data Ros2Fanuc_msgsSrvSetUFrameUTool_Request = Ros2Fanuc_msgsSrvSetUFrameUTool_Request
    {
    -- | @brief Original fanuc_msgs/srv/SetUFrameUTool_Request.uframe_number field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetUFrameUTool_Request_uframe_number :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/SetUFrameUTool_Request.utool_number field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetUFrameUTool_Request_utool_number :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/SetUFrameUTool_Request.group field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetUFrameUTool_Request_group :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetUFrameUTool_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvSetUFrameUTool_RequestCodecIdentity = "UWVMROS1_0b86b0a37e4dc23e0ff651df867f5958e7440bf4712b47779d69ca699af4c09f"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetUFrameUTool_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetUFrameUTool_Request :: Ros2Fanuc_msgsSrvSetUFrameUTool_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetUFrameUTool_Request value = do
    chunk0 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetUFrameUTool_Request_uframe_number value))
    chunk1 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetUFrameUTool_Request_utool_number value))
    chunk2 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetUFrameUTool_Request_group value))
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 3 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetUFrameUTool_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetUFrameUTool_Request :: W.Parser Ros2Fanuc_msgsSrvSetUFrameUTool_Request
readRos2Fanuc_msgsSrvSetUFrameUTool_Request = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvSetUFrameUTool_Request value0 value1 value2
    case encodeRos2Fanuc_msgsSrvSetUFrameUTool_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetUFrameUTool_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetUFrameUTool_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetUFrameUTool_Request
decodeRos2Fanuc_msgsSrvSetUFrameUTool_Request bytes
    | length bytes < 3 || length bytes > 3 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetUFrameUTool_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetUFrameUTool_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 5..5 bytes.
data Ros2Fanuc_msgsSrvSetUFrameUTool_Response = Ros2Fanuc_msgsSrvSetUFrameUTool_Response
    {
    -- | @brief Original fanuc_msgs/srv/SetUFrameUTool_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetUFrameUTool_Response_result :: Int32
    ,
    -- | @brief Original fanuc_msgs/srv/SetUFrameUTool_Response.group field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetUFrameUTool_Response_group :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetUFrameUTool_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvSetUFrameUTool_ResponseCodecIdentity = "UWVMROS1_b77837445c9663f29f23465cc7178a183d245486f74bcff732fc2f4025b82a67"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetUFrameUTool_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetUFrameUTool_Response :: Ros2Fanuc_msgsSrvSetUFrameUTool_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetUFrameUTool_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvSetUFrameUTool_Response_result value))
    chunk1 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetUFrameUTool_Response_group value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 5 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetUFrameUTool_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetUFrameUTool_Response :: W.Parser Ros2Fanuc_msgsSrvSetUFrameUTool_Response
readRos2Fanuc_msgsSrvSetUFrameUTool_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvSetUFrameUTool_Response value0 value1
    case encodeRos2Fanuc_msgsSrvSetUFrameUTool_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetUFrameUTool_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetUFrameUTool_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetUFrameUTool_Response
decodeRos2Fanuc_msgsSrvSetUFrameUTool_Response bytes
    | length bytes < 5 || length bytes > 5 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetUFrameUTool_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetUToolData_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 26..26 bytes.
data Ros2Fanuc_msgsSrvSetUToolData_Request = Ros2Fanuc_msgsSrvSetUToolData_Request
    {
    -- | @brief Original fanuc_msgs/srv/SetUToolData_Request.utool_number field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetUToolData_Request_utool_number :: Word8
    ,
    -- | @brief Original fanuc_msgs/srv/SetUToolData_Request.frame field.
    -- | @details Original type fanuc_msgs/msg/Frame. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Fanuc_msgsSrvSetUToolData_Request_frame :: Ros2Fanuc_msgsMsgFrame
    ,
    -- | @brief Original fanuc_msgs/srv/SetUToolData_Request.group field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetUToolData_Request_group :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetUToolData_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvSetUToolData_RequestCodecIdentity = "UWVMROS1_7d5b911133645744c8def79bc16c8b7c4ee4e87a057ea33741031d6a94e620ab"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetUToolData_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetUToolData_Request :: Ros2Fanuc_msgsSrvSetUToolData_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetUToolData_Request value = do
    chunk0 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetUToolData_Request_utool_number value))
    chunk1 <- encodeRos2Fanuc_msgsMsgFrame (ros2Fanuc_msgsSrvSetUToolData_Request_frame value)
    chunk2 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetUToolData_Request_group value))
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 26 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetUToolData_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetUToolData_Request :: W.Parser Ros2Fanuc_msgsSrvSetUToolData_Request
readRos2Fanuc_msgsSrvSetUToolData_Request = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- readRos2Fanuc_msgsMsgFrame
    value2 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvSetUToolData_Request value0 value1 value2
    case encodeRos2Fanuc_msgsSrvSetUToolData_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetUToolData_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetUToolData_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetUToolData_Request
decodeRos2Fanuc_msgsSrvSetUToolData_Request bytes
    | length bytes < 26 || length bytes > 26 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetUToolData_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SetUToolData_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 5..5 bytes.
data Ros2Fanuc_msgsSrvSetUToolData_Response = Ros2Fanuc_msgsSrvSetUToolData_Response
    {
    -- | @brief Original fanuc_msgs/srv/SetUToolData_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetUToolData_Response_result :: Int32
    ,
    -- | @brief Original fanuc_msgs/srv/SetUToolData_Response.group field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSetUToolData_Response_group :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSetUToolData_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvSetUToolData_ResponseCodecIdentity = "UWVMROS1_b33d265f275dfcb5fe20432d5e38b55574c85260135bded477c2d5fa2c85c7cb"
-- | @brief Encode every field of complete fanuc_msgs/srv/SetUToolData_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSetUToolData_Response :: Ros2Fanuc_msgsSrvSetUToolData_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSetUToolData_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvSetUToolData_Response_result value))
    chunk1 <- Right (W.putNumber 1 (ros2Fanuc_msgsSrvSetUToolData_Response_group value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 5 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SetUToolData_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSetUToolData_Response :: W.Parser Ros2Fanuc_msgsSrvSetUToolData_Response
readRos2Fanuc_msgsSrvSetUToolData_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 1
    let value = Ros2Fanuc_msgsSrvSetUToolData_Response value0 value1
    case encodeRos2Fanuc_msgsSrvSetUToolData_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SetUToolData_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSetUToolData_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSetUToolData_Response
decodeRos2Fanuc_msgsSrvSetUToolData_Response bytes
    | length bytes < 5 || length bytes > 5 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSetUToolData_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SwitchControlState_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Fanuc_msgsSrvSwitchControlState_Request = Ros2Fanuc_msgsSrvSwitchControlState_Request
    {
    -- | @brief Original fanuc_msgs/srv/SwitchControlState_Request.status field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSwitchControlState_Request_status :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSwitchControlState_RequestCodecIdentity :: String
ros2Fanuc_msgsSrvSwitchControlState_RequestCodecIdentity = "UWVMROS1_b485b7071fe2737c7dc8f0360a15b7be30f997430142d8260454fd423172cc21"
-- | @brief Original fanuc_msgs/srv/SwitchControlState_Request.STOP constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsSrvSwitchControlState_Request_STOP :: Word32
ros2Fanuc_msgsSrvSwitchControlState_Request_STOP = 0
-- | @brief Original fanuc_msgs/srv/SwitchControlState_Request.START constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Fanuc_msgsSrvSwitchControlState_Request_START :: Word32
ros2Fanuc_msgsSrvSwitchControlState_Request_START = 1
-- | @brief Encode every field of complete fanuc_msgs/srv/SwitchControlState_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSwitchControlState_Request :: Ros2Fanuc_msgsSrvSwitchControlState_Request -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSwitchControlState_Request value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvSwitchControlState_Request_status value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SwitchControlState_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSwitchControlState_Request :: W.Parser Ros2Fanuc_msgsSrvSwitchControlState_Request
readRos2Fanuc_msgsSrvSwitchControlState_Request = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvSwitchControlState_Request value0
    case encodeRos2Fanuc_msgsSrvSwitchControlState_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SwitchControlState_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSwitchControlState_Request :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSwitchControlState_Request
decodeRos2Fanuc_msgsSrvSwitchControlState_Request bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSwitchControlState_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original fanuc_msgs/srv/SwitchControlState_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Fanuc_msgsSrvSwitchControlState_Response = Ros2Fanuc_msgsSrvSwitchControlState_Response
    {
    -- | @brief Original fanuc_msgs/srv/SwitchControlState_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Fanuc_msgsSrvSwitchControlState_Response_result :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Fanuc_msgsSrvSwitchControlState_ResponseCodecIdentity :: String
ros2Fanuc_msgsSrvSwitchControlState_ResponseCodecIdentity = "UWVMROS1_8a3d7a3c1037174f4118843e34222ef8811eff3cc885a0c688d98071e1a9496c"
-- | @brief Encode every field of complete fanuc_msgs/srv/SwitchControlState_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Fanuc_msgsSrvSwitchControlState_Response :: Ros2Fanuc_msgsSrvSwitchControlState_Response -> Either Word32 [Word8]
encodeRos2Fanuc_msgsSrvSwitchControlState_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Fanuc_msgsSrvSwitchControlState_Response_result value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested fanuc_msgs/srv/SwitchControlState_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Fanuc_msgsSrvSwitchControlState_Response :: W.Parser Ros2Fanuc_msgsSrvSwitchControlState_Response
readRos2Fanuc_msgsSrvSwitchControlState_Response = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Fanuc_msgsSrvSwitchControlState_Response value0
    case encodeRos2Fanuc_msgsSrvSwitchControlState_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete fanuc_msgs/srv/SwitchControlState_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Fanuc_msgsSrvSwitchControlState_Response :: [Word8] -> Either Word32 Ros2Fanuc_msgsSrvSwitchControlState_Response
decodeRos2Fanuc_msgsSrvSwitchControlState_Response bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Fanuc_msgsSrvSwitchControlState_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/msg/CallParam value.
-- | @details Retain every original field in declaration order. Canonical extent 16..592 bytes.
data Ros2Rmi_msgsMsgCallParam = Ros2Rmi_msgsMsgCallParam
    {
    -- | @brief Original rmi_msgs/msg/CallParam.type field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Rmi_msgsMsgCallParam_type :: [Word8]
    ,
    -- | @brief Original rmi_msgs/msg/CallParam.int_value field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCallParam_int_value :: Int32
    ,
    -- | @brief Original rmi_msgs/msg/CallParam.float_value field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCallParam_float_value :: Float
    ,
    -- | @brief Original rmi_msgs/msg/CallParam.string_value field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Rmi_msgsMsgCallParam_string_value :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsMsgCallParamCodecIdentity :: String
ros2Rmi_msgsMsgCallParamCodecIdentity = "UWVMROS1_ed625d80db6c4314b8373f2d205344d6ab8d71be46182dab5a497d36564a2255"
-- | @brief Original rmi_msgs/msg/CallParam.AR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCallParam_AR :: String
ros2Rmi_msgsMsgCallParam_AR = "AR"
-- | @brief Original rmi_msgs/msg/CallParam.PR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCallParam_PR :: String
ros2Rmi_msgsMsgCallParam_PR = "PR"
-- | @brief Original rmi_msgs/msg/CallParam.SR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCallParam_SR :: String
ros2Rmi_msgsMsgCallParam_SR = "SR"
-- | @brief Original rmi_msgs/msg/CallParam.R constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCallParam_R :: String
ros2Rmi_msgsMsgCallParam_R = "R"
-- | @brief Original rmi_msgs/msg/CallParam.P constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCallParam_P :: String
ros2Rmi_msgsMsgCallParam_P = "P"
-- | @brief Original rmi_msgs/msg/CallParam.INT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCallParam_INT :: String
ros2Rmi_msgsMsgCallParam_INT = "INT"
-- | @brief Original rmi_msgs/msg/CallParam.INTEGER constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCallParam_INTEGER :: String
ros2Rmi_msgsMsgCallParam_INTEGER = "INT"
-- | @brief Original rmi_msgs/msg/CallParam.FLOAT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCallParam_FLOAT :: String
ros2Rmi_msgsMsgCallParam_FLOAT = "FLOAT"
-- | @brief Original rmi_msgs/msg/CallParam.STRING constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCallParam_STRING :: String
ros2Rmi_msgsMsgCallParam_STRING = "String"
-- | @brief Original rmi_msgs/msg/CallParam.STR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCallParam_STR :: String
ros2Rmi_msgsMsgCallParam_STR = "String"
-- | @brief Encode every field of complete rmi_msgs/msg/CallParam.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsMsgCallParam :: Ros2Rmi_msgsMsgCallParam -> Either Word32 [Word8]
encodeRos2Rmi_msgsMsgCallParam value = do
    chunk0 <- W.putText 64 (ros2Rmi_msgsMsgCallParam_type value)
    chunk1 <- Right (W.putNumber 4 (ros2Rmi_msgsMsgCallParam_int_value value))
    chunk2 <- finite4 (ros2Rmi_msgsMsgCallParam_float_value value) castFloatToWord32
    chunk3 <- W.putText 512 (ros2Rmi_msgsMsgCallParam_string_value value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 592 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/msg/CallParam.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsMsgCallParam :: W.Parser Ros2Rmi_msgsMsgCallParam
readRos2Rmi_msgsMsgCallParam = do
    value0 <- W.text 64
    value1 <- fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- W.text 512
    let value = Ros2Rmi_msgsMsgCallParam value0 value1 value2 value3
    case encodeRos2Rmi_msgsMsgCallParam value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/msg/CallParam.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsMsgCallParam :: [Word8] -> Either Word32 Ros2Rmi_msgsMsgCallParam
decodeRos2Rmi_msgsMsgCallParam bytes
    | length bytes < 16 || length bytes > 592 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsMsgCallParam bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/msg/Cartesian value.
-- | @details Retain every original field in declaration order. Canonical extent 45..45 bytes.
data Ros2Rmi_msgsMsgCartesian = Ros2Rmi_msgsMsgCartesian
    {
    -- | @brief Original rmi_msgs/msg/Cartesian.utool field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_utool :: Int8
    ,
    -- | @brief Original rmi_msgs/msg/Cartesian.uframe field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_uframe :: Int8
    ,
    -- | @brief Original rmi_msgs/msg/Cartesian.front field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_front :: Word8
    ,
    -- | @brief Original rmi_msgs/msg/Cartesian.up field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_up :: Word8
    ,
    -- | @brief Original rmi_msgs/msg/Cartesian.left field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_left :: Word8
    ,
    -- | @brief Original rmi_msgs/msg/Cartesian.flip field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_flip :: Word8
    ,
    -- | @brief Original rmi_msgs/msg/Cartesian.turn4 field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_turn4 :: Int8
    ,
    -- | @brief Original rmi_msgs/msg/Cartesian.turn5 field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_turn5 :: Int8
    ,
    -- | @brief Original rmi_msgs/msg/Cartesian.turn6 field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_turn6 :: Int8
    ,
    -- | @brief Original rmi_msgs/msg/Cartesian.x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_x :: Float
    ,
    -- | @brief Original rmi_msgs/msg/Cartesian.y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_y :: Float
    ,
    -- | @brief Original rmi_msgs/msg/Cartesian.z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_z :: Float
    ,
    -- | @brief Original rmi_msgs/msg/Cartesian.w field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_w :: Float
    ,
    -- | @brief Original rmi_msgs/msg/Cartesian.p field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_p :: Float
    ,
    -- | @brief Original rmi_msgs/msg/Cartesian.r field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_r :: Float
    ,
    -- | @brief Original rmi_msgs/msg/Cartesian.ext1 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_ext1 :: Float
    ,
    -- | @brief Original rmi_msgs/msg/Cartesian.ext2 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_ext2 :: Float
    ,
    -- | @brief Original rmi_msgs/msg/Cartesian.ext3 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCartesian_ext3 :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsMsgCartesianCodecIdentity :: String
ros2Rmi_msgsMsgCartesianCodecIdentity = "UWVMROS1_2a0e1fff119007499a63d55c9722f666be1436a9212d9e43b556af347e8e4b40"
-- | @brief Encode every field of complete rmi_msgs/msg/Cartesian.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsMsgCartesian :: Ros2Rmi_msgsMsgCartesian -> Either Word32 [Word8]
encodeRos2Rmi_msgsMsgCartesian value = do
    chunk0 <- Right (W.putNumber 1 (ros2Rmi_msgsMsgCartesian_utool value))
    chunk1 <- Right (W.putNumber 1 (ros2Rmi_msgsMsgCartesian_uframe value))
    chunk2 <- Right (W.putNumber 1 (ros2Rmi_msgsMsgCartesian_front value))
    chunk3 <- Right (W.putNumber 1 (ros2Rmi_msgsMsgCartesian_up value))
    chunk4 <- Right (W.putNumber 1 (ros2Rmi_msgsMsgCartesian_left value))
    chunk5 <- Right (W.putNumber 1 (ros2Rmi_msgsMsgCartesian_flip value))
    chunk6 <- Right (W.putNumber 1 (ros2Rmi_msgsMsgCartesian_turn4 value))
    chunk7 <- Right (W.putNumber 1 (ros2Rmi_msgsMsgCartesian_turn5 value))
    chunk8 <- Right (W.putNumber 1 (ros2Rmi_msgsMsgCartesian_turn6 value))
    chunk9 <- finite4 (ros2Rmi_msgsMsgCartesian_x value) castFloatToWord32
    chunk10 <- finite4 (ros2Rmi_msgsMsgCartesian_y value) castFloatToWord32
    chunk11 <- finite4 (ros2Rmi_msgsMsgCartesian_z value) castFloatToWord32
    chunk12 <- finite4 (ros2Rmi_msgsMsgCartesian_w value) castFloatToWord32
    chunk13 <- finite4 (ros2Rmi_msgsMsgCartesian_p value) castFloatToWord32
    chunk14 <- finite4 (ros2Rmi_msgsMsgCartesian_r value) castFloatToWord32
    chunk15 <- finite4 (ros2Rmi_msgsMsgCartesian_ext1 value) castFloatToWord32
    chunk16 <- finite4 (ros2Rmi_msgsMsgCartesian_ext2 value) castFloatToWord32
    chunk17 <- finite4 (ros2Rmi_msgsMsgCartesian_ext3 value) castFloatToWord32
    let bytes = concat
        [ chunk0
        , chunk1
        , chunk2
        , chunk3
        , chunk4
        , chunk5
        , chunk6
        , chunk7
        , chunk8
        , chunk9
        , chunk10
        , chunk11
        , chunk12
        , chunk13
        , chunk14
        , chunk15
        , chunk16
        , chunk17]
    if length bytes > 45 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/msg/Cartesian.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsMsgCartesian :: W.Parser Ros2Rmi_msgsMsgCartesian
readRos2Rmi_msgsMsgCartesian = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- fromIntegral <$> W.number 1
    value4 <- fromIntegral <$> W.number 1
    value5 <- fromIntegral <$> W.number 1
    value6 <- fromIntegral <$> W.number 1
    value7 <- fromIntegral <$> W.number 1
    value8 <- fromIntegral <$> W.number 1
    value9 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value10 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value11 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value12 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value13 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value14 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value15 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value16 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value17 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Rmi_msgsMsgCartesian
            value0 value1 value2 value3 value4 value5 value6 value7 value8 value9 value10 value11
            value12 value13 value14 value15 value16 value17
    case encodeRos2Rmi_msgsMsgCartesian value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/msg/Cartesian.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsMsgCartesian :: [Word8] -> Either Word32 Ros2Rmi_msgsMsgCartesian
decodeRos2Rmi_msgsMsgCartesian bytes
    | length bytes < 45 || length bytes > 45 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsMsgCartesian bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/msg/Command value.
-- | @details Retain every original field in declaration order. Canonical extent 4..68 bytes.
data Ros2Rmi_msgsMsgCommand = Ros2Rmi_msgsMsgCommand
    {
    -- | @brief Original rmi_msgs/msg/Command.type field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Rmi_msgsMsgCommand_type :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsMsgCommandCodecIdentity :: String
ros2Rmi_msgsMsgCommandCodecIdentity = "UWVMROS1_d2741856b8cdf57aa716566edfc705957611557b7da5b6099b173903bdd9960c"
-- | @brief Original rmi_msgs/msg/Command.INITIAZLIE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCommand_INITIAZLIE :: String
ros2Rmi_msgsMsgCommand_INITIAZLIE = "INITIALIZE"
-- | @brief Original rmi_msgs/msg/Command.INIT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCommand_INIT :: String
ros2Rmi_msgsMsgCommand_INIT = "INITIALIZE"
-- | @brief Original rmi_msgs/msg/Command.ABORT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCommand_ABORT :: String
ros2Rmi_msgsMsgCommand_ABORT = "ABORT"
-- | @brief Original rmi_msgs/msg/Command.PAUSE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCommand_PAUSE :: String
ros2Rmi_msgsMsgCommand_PAUSE = "PAUSE"
-- | @brief Original rmi_msgs/msg/Command.RESUME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCommand_RESUME :: String
ros2Rmi_msgsMsgCommand_RESUME = "RESUME"
-- | @brief Encode every field of complete rmi_msgs/msg/Command.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsMsgCommand :: Ros2Rmi_msgsMsgCommand -> Either Word32 [Word8]
encodeRos2Rmi_msgsMsgCommand value = do
    chunk0 <- W.putText 64 (ros2Rmi_msgsMsgCommand_type value)
    let bytes = concat [chunk0]
    if length bytes > 68 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/msg/Command.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsMsgCommand :: W.Parser Ros2Rmi_msgsMsgCommand
readRos2Rmi_msgsMsgCommand = do
    value0 <- W.text 64
    let value = Ros2Rmi_msgsMsgCommand value0
    case encodeRos2Rmi_msgsMsgCommand value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/msg/Command.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsMsgCommand :: [Word8] -> Either Word32 Ros2Rmi_msgsMsgCommand
decodeRos2Rmi_msgsMsgCommand bytes
    | length bytes < 4 || length bytes > 68 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsMsgCommand bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/msg/CommandOptions value.
-- | @details Retain every original field in declaration order. Canonical extent 12..1036 bytes.
data Ros2Rmi_msgsMsgCommandOptions = Ros2Rmi_msgsMsgCommandOptions
    {
    -- | @brief Original rmi_msgs/msg/CommandOptions.use_group_mask field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCommandOptions_use_group_mask :: Bool
    ,
    -- | @brief Original rmi_msgs/msg/CommandOptions.group_mask field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCommandOptions_group_mask :: Word8
    ,
    -- | @brief Original rmi_msgs/msg/CommandOptions.use_rtsa field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCommandOptions_use_rtsa :: Bool
    ,
    -- | @brief Original rmi_msgs/msg/CommandOptions.rtsa field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Rmi_msgsMsgCommandOptions_rtsa :: [Word8]
    ,
    -- | @brief Original rmi_msgs/msg/CommandOptions.use_pltzmode field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgCommandOptions_use_pltzmode :: Bool
    ,
    -- | @brief Original rmi_msgs/msg/CommandOptions.pltzmode field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Rmi_msgsMsgCommandOptions_pltzmode :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsMsgCommandOptionsCodecIdentity :: String
ros2Rmi_msgsMsgCommandOptionsCodecIdentity = "UWVMROS1_0be0c508035725bf9686807cb8b5267e23f709b7aa34b0910a44ff3604670147"
-- | @brief Original rmi_msgs/msg/CommandOptions.RTSA_ON constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCommandOptions_RTSA_ON :: String
ros2Rmi_msgsMsgCommandOptions_RTSA_ON = "ON"
-- | @brief Original rmi_msgs/msg/CommandOptions.RTSA_OFF constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCommandOptions_RTSA_OFF :: String
ros2Rmi_msgsMsgCommandOptions_RTSA_OFF = "OFF"
-- | @brief Original rmi_msgs/msg/CommandOptions.PLTZ_ZERODN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCommandOptions_PLTZ_ZERODN :: String
ros2Rmi_msgsMsgCommandOptions_PLTZ_ZERODN = "ZERODN"
-- | @brief Original rmi_msgs/msg/CommandOptions.PLTZ_ZEROUP constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCommandOptions_PLTZ_ZEROUP :: String
ros2Rmi_msgsMsgCommandOptions_PLTZ_ZEROUP = "ZEROUP"
-- | @brief Original rmi_msgs/msg/CommandOptions.PLTZ_PSPIDN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCommandOptions_PLTZ_PSPIDN :: String
ros2Rmi_msgsMsgCommandOptions_PLTZ_PSPIDN = "PSPIDN"
-- | @brief Original rmi_msgs/msg/CommandOptions.PLTZ_PSPIUP constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCommandOptions_PLTZ_PSPIUP :: String
ros2Rmi_msgsMsgCommandOptions_PLTZ_PSPIUP = "PSPIUP"
-- | @brief Original rmi_msgs/msg/CommandOptions.PLTZ_MSPIDN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCommandOptions_PLTZ_MSPIDN :: String
ros2Rmi_msgsMsgCommandOptions_PLTZ_MSPIDN = "MSPIDN"
-- | @brief Original rmi_msgs/msg/CommandOptions.PLTZ_MSPIUP constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgCommandOptions_PLTZ_MSPIUP :: String
ros2Rmi_msgsMsgCommandOptions_PLTZ_MSPIUP = "MSPIUP"
-- | @brief Encode every field of complete rmi_msgs/msg/CommandOptions.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsMsgCommandOptions :: Ros2Rmi_msgsMsgCommandOptions -> Either Word32 [Word8]
encodeRos2Rmi_msgsMsgCommandOptions value = do
    chunk0 <- Right (W.putBool (ros2Rmi_msgsMsgCommandOptions_use_group_mask value))
    chunk1 <- Right (W.putNumber 1 (ros2Rmi_msgsMsgCommandOptions_group_mask value))
    chunk2 <- Right (W.putBool (ros2Rmi_msgsMsgCommandOptions_use_rtsa value))
    chunk3 <- W.putText 512 (ros2Rmi_msgsMsgCommandOptions_rtsa value)
    chunk4 <- Right (W.putBool (ros2Rmi_msgsMsgCommandOptions_use_pltzmode value))
    chunk5 <- W.putText 512 (ros2Rmi_msgsMsgCommandOptions_pltzmode value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5]
    if length bytes > 1036 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/msg/CommandOptions.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsMsgCommandOptions :: W.Parser Ros2Rmi_msgsMsgCommandOptions
readRos2Rmi_msgsMsgCommandOptions = do
    value0 <- W.boolean
    value1 <- fromIntegral <$> W.number 1
    value2 <- W.boolean
    value3 <- W.text 512
    value4 <- W.boolean
    value5 <- W.text 512
    let value = Ros2Rmi_msgsMsgCommandOptions value0 value1 value2 value3 value4 value5
    case encodeRos2Rmi_msgsMsgCommandOptions value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/msg/CommandOptions.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsMsgCommandOptions :: [Word8] -> Either Word32 Ros2Rmi_msgsMsgCommandOptions
decodeRos2Rmi_msgsMsgCommandOptions bytes
    | length bytes < 12 || length bytes > 1036 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsMsgCommandOptions bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/msg/Joint value.
-- | @details Retain every original field in declaration order. Canonical extent 36..36 bytes.
data Ros2Rmi_msgsMsgJoint = Ros2Rmi_msgsMsgJoint
    {
    -- | @brief Original rmi_msgs/msg/Joint.positions field.
    -- | @details Original type float32. Shape array; bound/count 9 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Rmi_msgsMsgJoint_positions :: [Float]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsMsgJointCodecIdentity :: String
ros2Rmi_msgsMsgJointCodecIdentity = "UWVMROS1_0ba90adf6cc287bc306fd2a77c52c2e4d62731cfac37bb2cc116ee846249a42d"
-- | @brief Encode every field of complete rmi_msgs/msg/Joint.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsMsgJoint :: Ros2Rmi_msgsMsgJoint -> Either Word32 [Word8]
encodeRos2Rmi_msgsMsgJoint value = do
    if length (ros2Rmi_msgsMsgJoint_positions value) == 9 then Right () else Left 22
    item0 <- concat <$> mapM (\element -> finite4 (element) castFloatToWord32) (ros2Rmi_msgsMsgJoint_positions value)
    chunk0 <- Right (item0)
    let bytes = concat [chunk0]
    if length bytes > 36 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/msg/Joint.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsMsgJoint :: W.Parser Ros2Rmi_msgsMsgJoint
readRos2Rmi_msgsMsgJoint = do
    value0 <- replicateM 9 (castWord32ToFloat . fromIntegral <$> W.number 4)
    let value = Ros2Rmi_msgsMsgJoint value0
    case encodeRos2Rmi_msgsMsgJoint value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/msg/Joint.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsMsgJoint :: [Word8] -> Either Word32 Ros2Rmi_msgsMsgJoint
decodeRos2Rmi_msgsMsgJoint bytes
    | length bytes < 36 || length bytes > 36 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsMsgJoint bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/msg/MotionInstructionOptions value.
-- | @details Retain every original field in declaration order. Canonical extent 52..2612 bytes.
data Ros2Rmi_msgsMsgMotionInstructionOptions = Ros2Rmi_msgsMsgMotionInstructionOptions
    {
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.use_acc field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_use_acc :: Bool
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.acc field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_acc :: Word8
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.use_offset_pr_number field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_use_offset_pr_number :: Bool
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.offset_pr_number field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_offset_pr_number :: Word16
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.use_vision_pr_number field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_use_vision_pr_number :: Bool
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.vision_pr_number field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_vision_pr_number :: Word16
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.use_wrist_joint field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_use_wrist_joint :: Bool
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.wrist_joint field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_wrist_joint :: [Word8]
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.use_mrot field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_use_mrot :: Bool
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.mrot field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_mrot :: [Word8]
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.use_lcb_type field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_use_lcb_type :: Bool
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.lcb_type field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_lcb_type :: [Word8]
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.use_lcb_value field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_use_lcb_value :: Bool
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.lcb_value field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_lcb_value :: Word16
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.use_port_type field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_use_port_type :: Bool
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.port_type field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_port_type :: Word8
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.use_port_number field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_use_port_number :: Bool
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.port_number field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_port_number :: Word16
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.use_port_value field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_use_port_value :: Bool
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.port_value field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_port_value :: [Word8]
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.use_tool_offset_pr_number field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_use_tool_offset_pr_number :: Bool
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.tool_offset_pr_number field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_tool_offset_pr_number :: Word16
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.use_alim field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_use_alim :: Bool
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.alim field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_alim :: Int32
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.use_alim_reg field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_use_alim_reg :: Bool
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.alim_reg field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_alim_reg :: Word16
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.use_no_blend field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_use_no_blend :: Bool
    ,
    -- | @brief Original rmi_msgs/msg/MotionInstructionOptions.no_blend field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Rmi_msgsMsgMotionInstructionOptions_no_blend :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsMsgMotionInstructionOptionsCodecIdentity :: String
ros2Rmi_msgsMsgMotionInstructionOptionsCodecIdentity = "UWVMROS1_f8d9ed2e083c577b0cae8965df71aa99643d12ce5a5a6ce558894edfb756bcc6"
-- | @brief Original rmi_msgs/msg/MotionInstructionOptions.LCB_TYPE_TB constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgMotionInstructionOptions_LCB_TYPE_TB :: String
ros2Rmi_msgsMsgMotionInstructionOptions_LCB_TYPE_TB = "TB"
-- | @brief Original rmi_msgs/msg/MotionInstructionOptions.LCB_TYPE_TA constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgMotionInstructionOptions_LCB_TYPE_TA :: String
ros2Rmi_msgsMsgMotionInstructionOptions_LCB_TYPE_TA = "TA"
-- | @brief Original rmi_msgs/msg/MotionInstructionOptions.LCB_TYPE_DB constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgMotionInstructionOptions_LCB_TYPE_DB :: String
ros2Rmi_msgsMsgMotionInstructionOptions_LCB_TYPE_DB = "DB"
-- | @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_DOUT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgMotionInstructionOptions_PORT_TYPE_DOUT :: Word8
ros2Rmi_msgsMsgMotionInstructionOptions_PORT_TYPE_DOUT = 1
-- | @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_DO constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgMotionInstructionOptions_PORT_TYPE_DO :: Word8
ros2Rmi_msgsMsgMotionInstructionOptions_PORT_TYPE_DO = 1
-- | @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_ROUT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgMotionInstructionOptions_PORT_TYPE_ROUT :: Word8
ros2Rmi_msgsMsgMotionInstructionOptions_PORT_TYPE_ROUT = 2
-- | @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_RO constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgMotionInstructionOptions_PORT_TYPE_RO :: Word8
ros2Rmi_msgsMsgMotionInstructionOptions_PORT_TYPE_RO = 2
-- | @brief Encode every field of complete rmi_msgs/msg/MotionInstructionOptions.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsMsgMotionInstructionOptions :: Ros2Rmi_msgsMsgMotionInstructionOptions -> Either Word32 [Word8]
encodeRos2Rmi_msgsMsgMotionInstructionOptions value = do
    chunk0 <- Right (W.putBool (ros2Rmi_msgsMsgMotionInstructionOptions_use_acc value))
    chunk1 <- Right (W.putNumber 1 (ros2Rmi_msgsMsgMotionInstructionOptions_acc value))
    chunk2 <- Right (W.putBool (ros2Rmi_msgsMsgMotionInstructionOptions_use_offset_pr_number value))
    chunk3 <- Right (W.putNumber 2 (ros2Rmi_msgsMsgMotionInstructionOptions_offset_pr_number value))
    chunk4 <- Right (W.putBool (ros2Rmi_msgsMsgMotionInstructionOptions_use_vision_pr_number value))
    chunk5 <- Right (W.putNumber 2 (ros2Rmi_msgsMsgMotionInstructionOptions_vision_pr_number value))
    chunk6 <- Right (W.putBool (ros2Rmi_msgsMsgMotionInstructionOptions_use_wrist_joint value))
    chunk7 <- W.putText 512 (ros2Rmi_msgsMsgMotionInstructionOptions_wrist_joint value)
    chunk8 <- Right (W.putBool (ros2Rmi_msgsMsgMotionInstructionOptions_use_mrot value))
    chunk9 <- W.putText 512 (ros2Rmi_msgsMsgMotionInstructionOptions_mrot value)
    chunk10 <- Right (W.putBool (ros2Rmi_msgsMsgMotionInstructionOptions_use_lcb_type value))
    chunk11 <- W.putText 512 (ros2Rmi_msgsMsgMotionInstructionOptions_lcb_type value)
    chunk12 <- Right (W.putBool (ros2Rmi_msgsMsgMotionInstructionOptions_use_lcb_value value))
    chunk13 <- Right (W.putNumber 2 (ros2Rmi_msgsMsgMotionInstructionOptions_lcb_value value))
    chunk14 <- Right (W.putBool (ros2Rmi_msgsMsgMotionInstructionOptions_use_port_type value))
    chunk15 <- Right (W.putNumber 1 (ros2Rmi_msgsMsgMotionInstructionOptions_port_type value))
    chunk16 <- Right (W.putBool (ros2Rmi_msgsMsgMotionInstructionOptions_use_port_number value))
    chunk17 <- Right (W.putNumber 2 (ros2Rmi_msgsMsgMotionInstructionOptions_port_number value))
    chunk18 <- Right (W.putBool (ros2Rmi_msgsMsgMotionInstructionOptions_use_port_value value))
    chunk19 <- W.putText 512 (ros2Rmi_msgsMsgMotionInstructionOptions_port_value value)
    chunk20 <- Right (W.putBool (ros2Rmi_msgsMsgMotionInstructionOptions_use_tool_offset_pr_number value))
    chunk21 <- Right (W.putNumber 2 (ros2Rmi_msgsMsgMotionInstructionOptions_tool_offset_pr_number value))
    chunk22 <- Right (W.putBool (ros2Rmi_msgsMsgMotionInstructionOptions_use_alim value))
    chunk23 <- Right (W.putNumber 4 (ros2Rmi_msgsMsgMotionInstructionOptions_alim value))
    chunk24 <- Right (W.putBool (ros2Rmi_msgsMsgMotionInstructionOptions_use_alim_reg value))
    chunk25 <- Right (W.putNumber 2 (ros2Rmi_msgsMsgMotionInstructionOptions_alim_reg value))
    chunk26 <- Right (W.putBool (ros2Rmi_msgsMsgMotionInstructionOptions_use_no_blend value))
    chunk27 <- W.putText 512 (ros2Rmi_msgsMsgMotionInstructionOptions_no_blend value)
    let bytes = concat
        [ chunk0
        , chunk1
        , chunk2
        , chunk3
        , chunk4
        , chunk5
        , chunk6
        , chunk7
        , chunk8
        , chunk9
        , chunk10
        , chunk11
        , chunk12
        , chunk13
        , chunk14
        , chunk15
        , chunk16
        , chunk17
        , chunk18
        , chunk19
        , chunk20
        , chunk21
        , chunk22
        , chunk23
        , chunk24
        , chunk25
        , chunk26
        , chunk27]
    if length bytes > 2612 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/msg/MotionInstructionOptions.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsMsgMotionInstructionOptions :: W.Parser Ros2Rmi_msgsMsgMotionInstructionOptions
readRos2Rmi_msgsMsgMotionInstructionOptions = do
    value0 <- W.boolean
    value1 <- fromIntegral <$> W.number 1
    value2 <- W.boolean
    value3 <- fromIntegral <$> W.number 2
    value4 <- W.boolean
    value5 <- fromIntegral <$> W.number 2
    value6 <- W.boolean
    value7 <- W.text 512
    value8 <- W.boolean
    value9 <- W.text 512
    value10 <- W.boolean
    value11 <- W.text 512
    value12 <- W.boolean
    value13 <- fromIntegral <$> W.number 2
    value14 <- W.boolean
    value15 <- fromIntegral <$> W.number 1
    value16 <- W.boolean
    value17 <- fromIntegral <$> W.number 2
    value18 <- W.boolean
    value19 <- W.text 512
    value20 <- W.boolean
    value21 <- fromIntegral <$> W.number 2
    value22 <- W.boolean
    value23 <- fromIntegral <$> W.number 4
    value24 <- W.boolean
    value25 <- fromIntegral <$> W.number 2
    value26 <- W.boolean
    value27 <- W.text 512
    let value = Ros2Rmi_msgsMsgMotionInstructionOptions
            value0 value1 value2 value3 value4 value5 value6 value7 value8 value9 value10 value11
            value12 value13 value14 value15 value16 value17 value18 value19 value20 value21 value22
            value23 value24 value25 value26 value27
    case encodeRos2Rmi_msgsMsgMotionInstructionOptions value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/msg/MotionInstructionOptions.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsMsgMotionInstructionOptions :: [Word8] -> Either Word32 Ros2Rmi_msgsMsgMotionInstructionOptions
decodeRos2Rmi_msgsMsgMotionInstructionOptions bytes
    | length bytes < 52 || length bytes > 2612 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsMsgMotionInstructionOptions bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/msg/MotionType value.
-- | @details Retain every original field in declaration order. Canonical extent 4..68 bytes.
data Ros2Rmi_msgsMsgMotionType = Ros2Rmi_msgsMsgMotionType
    {
    -- | @brief Original rmi_msgs/msg/MotionType.type field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Rmi_msgsMsgMotionType_type :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsMsgMotionTypeCodecIdentity :: String
ros2Rmi_msgsMsgMotionTypeCodecIdentity = "UWVMROS1_c51cc7a32f6853d13bedaf3306dd79e445de6c0d16ae0ec39034ce0ae6d19c8a"
-- | @brief Original rmi_msgs/msg/MotionType.J constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgMotionType_J :: String
ros2Rmi_msgsMsgMotionType_J = "J"
-- | @brief Original rmi_msgs/msg/MotionType.JOINT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgMotionType_JOINT :: String
ros2Rmi_msgsMsgMotionType_JOINT = "J"
-- | @brief Original rmi_msgs/msg/MotionType.L constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgMotionType_L :: String
ros2Rmi_msgsMsgMotionType_L = "L"
-- | @brief Original rmi_msgs/msg/MotionType.LINEAR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgMotionType_LINEAR :: String
ros2Rmi_msgsMsgMotionType_LINEAR = "L"
-- | @brief Original rmi_msgs/msg/MotionType.C constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgMotionType_C :: String
ros2Rmi_msgsMsgMotionType_C = "C"
-- | @brief Original rmi_msgs/msg/MotionType.CIRCULAR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgMotionType_CIRCULAR :: String
ros2Rmi_msgsMsgMotionType_CIRCULAR = "C"
-- | @brief Original rmi_msgs/msg/MotionType.S constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgMotionType_S :: String
ros2Rmi_msgsMsgMotionType_S = "S"
-- | @brief Original rmi_msgs/msg/MotionType.SPLINE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgMotionType_SPLINE :: String
ros2Rmi_msgsMsgMotionType_SPLINE = "S"
-- | @brief Encode every field of complete rmi_msgs/msg/MotionType.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsMsgMotionType :: Ros2Rmi_msgsMsgMotionType -> Either Word32 [Word8]
encodeRos2Rmi_msgsMsgMotionType value = do
    chunk0 <- W.putText 64 (ros2Rmi_msgsMsgMotionType_type value)
    let bytes = concat [chunk0]
    if length bytes > 68 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/msg/MotionType.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsMsgMotionType :: W.Parser Ros2Rmi_msgsMsgMotionType
readRos2Rmi_msgsMsgMotionType = do
    value0 <- W.text 64
    let value = Ros2Rmi_msgsMsgMotionType value0
    case encodeRos2Rmi_msgsMsgMotionType value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/msg/MotionType.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsMsgMotionType :: [Word8] -> Either Word32 Ros2Rmi_msgsMsgMotionType
decodeRos2Rmi_msgsMsgMotionType bytes
    | length bytes < 4 || length bytes > 68 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsMsgMotionType bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/msg/Representation value.
-- | @details Retain every original field in declaration order. Canonical extent 4..516 bytes.
data Ros2Rmi_msgsMsgRepresentation = Ros2Rmi_msgsMsgRepresentation
    {
    -- | @brief Original rmi_msgs/msg/Representation.representation field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Rmi_msgsMsgRepresentation_representation :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsMsgRepresentationCodecIdentity :: String
ros2Rmi_msgsMsgRepresentationCodecIdentity = "UWVMROS1_b439506f2dc2135bb484b3abb308dfdf5c07367af5a4d6d0f5435ad9bba8ea6f"
-- | @brief Original rmi_msgs/msg/Representation.JOINT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgRepresentation_JOINT :: String
ros2Rmi_msgsMsgRepresentation_JOINT = "JOINT"
-- | @brief Original rmi_msgs/msg/Representation.J constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgRepresentation_J :: String
ros2Rmi_msgsMsgRepresentation_J = "JOINT"
-- | @brief Original rmi_msgs/msg/Representation.CARTESIAN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgRepresentation_CARTESIAN :: String
ros2Rmi_msgsMsgRepresentation_CARTESIAN = "CARTESIAN"
-- | @brief Original rmi_msgs/msg/Representation.CART constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgRepresentation_CART :: String
ros2Rmi_msgsMsgRepresentation_CART = "CARTESIAN"
-- | @brief Original rmi_msgs/msg/Representation.C constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgRepresentation_C :: String
ros2Rmi_msgsMsgRepresentation_C = "CARTESIAN"
-- | @brief Encode every field of complete rmi_msgs/msg/Representation.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsMsgRepresentation :: Ros2Rmi_msgsMsgRepresentation -> Either Word32 [Word8]
encodeRos2Rmi_msgsMsgRepresentation value = do
    chunk0 <- W.putText 512 (ros2Rmi_msgsMsgRepresentation_representation value)
    let bytes = concat [chunk0]
    if length bytes > 516 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/msg/Representation.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsMsgRepresentation :: W.Parser Ros2Rmi_msgsMsgRepresentation
readRos2Rmi_msgsMsgRepresentation = do
    value0 <- W.text 512
    let value = Ros2Rmi_msgsMsgRepresentation value0
    case encodeRos2Rmi_msgsMsgRepresentation value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/msg/Representation.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsMsgRepresentation :: [Word8] -> Either Word32 Ros2Rmi_msgsMsgRepresentation
decodeRos2Rmi_msgsMsgRepresentation bytes
    | length bytes < 4 || length bytes > 516 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsMsgRepresentation bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/msg/SpeedType value.
-- | @details Retain every original field in declaration order. Canonical extent 4..68 bytes.
data Ros2Rmi_msgsMsgSpeedType = Ros2Rmi_msgsMsgSpeedType
    {
    -- | @brief Original rmi_msgs/msg/SpeedType.type field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Rmi_msgsMsgSpeedType_type :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsMsgSpeedTypeCodecIdentity :: String
ros2Rmi_msgsMsgSpeedTypeCodecIdentity = "UWVMROS1_e4f4dbda84d8d8cd4d026b0beb52005663c7c4ee602c8d1e4d5853589777c282"
-- | @brief Original rmi_msgs/msg/SpeedType.PERCENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgSpeedType_PERCENT :: String
ros2Rmi_msgsMsgSpeedType_PERCENT = "Percent"
-- | @brief Original rmi_msgs/msg/SpeedType.PERCENTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgSpeedType_PERCENTAGE :: String
ros2Rmi_msgsMsgSpeedType_PERCENTAGE = "Percent"
-- | @brief Original rmi_msgs/msg/SpeedType.MMSEC constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgSpeedType_MMSEC :: String
ros2Rmi_msgsMsgSpeedType_MMSEC = "mmSec"
-- | @brief Original rmi_msgs/msg/SpeedType.INCHMIN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgSpeedType_INCHMIN :: String
ros2Rmi_msgsMsgSpeedType_INCHMIN = "InchMin"
-- | @brief Original rmi_msgs/msg/SpeedType.TIME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgSpeedType_TIME :: String
ros2Rmi_msgsMsgSpeedType_TIME = "Time"
-- | @brief Original rmi_msgs/msg/SpeedType.SECONDS constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgSpeedType_SECONDS :: String
ros2Rmi_msgsMsgSpeedType_SECONDS = "Time"
-- | @brief Original rmi_msgs/msg/SpeedType.SEC constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgSpeedType_SEC :: String
ros2Rmi_msgsMsgSpeedType_SEC = "Time"
-- | @brief Original rmi_msgs/msg/SpeedType.MSEC constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgSpeedType_MSEC :: String
ros2Rmi_msgsMsgSpeedType_MSEC = "mSec"
-- | @brief Encode every field of complete rmi_msgs/msg/SpeedType.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsMsgSpeedType :: Ros2Rmi_msgsMsgSpeedType -> Either Word32 [Word8]
encodeRos2Rmi_msgsMsgSpeedType value = do
    chunk0 <- W.putText 64 (ros2Rmi_msgsMsgSpeedType_type value)
    let bytes = concat [chunk0]
    if length bytes > 68 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/msg/SpeedType.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsMsgSpeedType :: W.Parser Ros2Rmi_msgsMsgSpeedType
readRos2Rmi_msgsMsgSpeedType = do
    value0 <- W.text 64
    let value = Ros2Rmi_msgsMsgSpeedType value0
    case encodeRos2Rmi_msgsMsgSpeedType value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/msg/SpeedType.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsMsgSpeedType :: [Word8] -> Either Word32 Ros2Rmi_msgsMsgSpeedType
decodeRos2Rmi_msgsMsgSpeedType bytes
    | length bytes < 4 || length bytes > 68 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsMsgSpeedType bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/msg/TermType value.
-- | @details Retain every original field in declaration order. Canonical extent 4..68 bytes.
data Ros2Rmi_msgsMsgTermType = Ros2Rmi_msgsMsgTermType
    {
    -- | @brief Original rmi_msgs/msg/TermType.type field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Rmi_msgsMsgTermType_type :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsMsgTermTypeCodecIdentity :: String
ros2Rmi_msgsMsgTermTypeCodecIdentity = "UWVMROS1_5ddbb483126e0ab5799ed865480da457179d83a271581c1471aec940bedc4535"
-- | @brief Original rmi_msgs/msg/TermType.FINE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgTermType_FINE :: String
ros2Rmi_msgsMsgTermType_FINE = "FINE"
-- | @brief Original rmi_msgs/msg/TermType.CNT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgTermType_CNT :: String
ros2Rmi_msgsMsgTermType_CNT = "CNT"
-- | @brief Original rmi_msgs/msg/TermType.CR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgTermType_CR :: String
ros2Rmi_msgsMsgTermType_CR = "CR"
-- | @brief Original rmi_msgs/msg/TermType.CD constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Rmi_msgsMsgTermType_CD :: String
ros2Rmi_msgsMsgTermType_CD = "CD"
-- | @brief Encode every field of complete rmi_msgs/msg/TermType.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsMsgTermType :: Ros2Rmi_msgsMsgTermType -> Either Word32 [Word8]
encodeRos2Rmi_msgsMsgTermType value = do
    chunk0 <- W.putText 64 (ros2Rmi_msgsMsgTermType_type value)
    let bytes = concat [chunk0]
    if length bytes > 68 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/msg/TermType.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsMsgTermType :: W.Parser Ros2Rmi_msgsMsgTermType
readRos2Rmi_msgsMsgTermType = do
    value0 <- W.text 64
    let value = Ros2Rmi_msgsMsgTermType value0
    case encodeRos2Rmi_msgsMsgTermType value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/msg/TermType.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsMsgTermType :: [Word8] -> Either Word32 Ros2Rmi_msgsMsgTermType
decodeRos2Rmi_msgsMsgTermType bytes
    | length bytes < 4 || length bytes > 68 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsMsgTermType bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/srv/AddCall_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 8..9992 bytes.
data Ros2Rmi_msgsSrvAddCall_Request = Ros2Rmi_msgsSrvAddCall_Request
    {
    -- | @brief Original rmi_msgs/srv/AddCall_Request.program_name field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Rmi_msgsSrvAddCall_Request_program_name :: [Word8]
    ,
    -- | @brief Original rmi_msgs/srv/AddCall_Request.params field.
    -- | @details Original type rmi_msgs/msg/CallParam. Shape sequence; bound/count 16 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Rmi_msgsSrvAddCall_Request_params :: [Ros2Rmi_msgsMsgCallParam]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsSrvAddCall_RequestCodecIdentity :: String
ros2Rmi_msgsSrvAddCall_RequestCodecIdentity = "UWVMROS1_4d652cfbaef29487a0a688932ee926d7a4026c5e7ac8a0eace583b503c37bcd8"
-- | @brief Encode every field of complete rmi_msgs/srv/AddCall_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsSrvAddCall_Request :: Ros2Rmi_msgsSrvAddCall_Request -> Either Word32 [Word8]
encodeRos2Rmi_msgsSrvAddCall_Request value = do
    chunk0 <- W.putText 512 (ros2Rmi_msgsSrvAddCall_Request_program_name value)
    if length (ros2Rmi_msgsSrvAddCall_Request_params value) <= 16 then Right () else Left 22
    item1 <- concat <$> mapM
        (\element -> encodeRos2Rmi_msgsMsgCallParam (element))
        (ros2Rmi_msgsSrvAddCall_Request_params value)
    chunk1 <- Right (W.putNumber 4 (length (ros2Rmi_msgsSrvAddCall_Request_params value)) ++ item1)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 9992 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/srv/AddCall_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsSrvAddCall_Request :: W.Parser Ros2Rmi_msgsSrvAddCall_Request
readRos2Rmi_msgsSrvAddCall_Request = do
    value0 <- W.text 512
    count1 <- W.number 4
    if count1 > 16 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (readRos2Rmi_msgsMsgCallParam)
    let value = Ros2Rmi_msgsSrvAddCall_Request value0 value1
    case encodeRos2Rmi_msgsSrvAddCall_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/srv/AddCall_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsSrvAddCall_Request :: [Word8] -> Either Word32 Ros2Rmi_msgsSrvAddCall_Request
decodeRos2Rmi_msgsSrvAddCall_Request bytes
    | length bytes < 8 || length bytes > 9992 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsSrvAddCall_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/srv/AddCall_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Rmi_msgsSrvAddCall_Response = Ros2Rmi_msgsSrvAddCall_Response
    {
    -- | @brief Original rmi_msgs/srv/AddCall_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddCall_Response_result :: Int32
    ,
    -- | @brief Original rmi_msgs/srv/AddCall_Response.sequence_id field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddCall_Response_sequence_id :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsSrvAddCall_ResponseCodecIdentity :: String
ros2Rmi_msgsSrvAddCall_ResponseCodecIdentity = "UWVMROS1_4f8495dfc3c69ec640444fd24843a7bb3e30008d90945bdd64817d8acb7964e1"
-- | @brief Encode every field of complete rmi_msgs/srv/AddCall_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsSrvAddCall_Response :: Ros2Rmi_msgsSrvAddCall_Response -> Either Word32 [Word8]
encodeRos2Rmi_msgsSrvAddCall_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Rmi_msgsSrvAddCall_Response_result value))
    chunk1 <- Right (W.putNumber 4 (ros2Rmi_msgsSrvAddCall_Response_sequence_id value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/srv/AddCall_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsSrvAddCall_Response :: W.Parser Ros2Rmi_msgsSrvAddCall_Response
readRos2Rmi_msgsSrvAddCall_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value = Ros2Rmi_msgsSrvAddCall_Response value0 value1
    case encodeRos2Rmi_msgsSrvAddCall_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/srv/AddCall_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsSrvAddCall_Response :: [Word8] -> Either Word32 Ros2Rmi_msgsSrvAddCall_Response
decodeRos2Rmi_msgsSrvAddCall_Response bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsSrvAddCall_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/srv/AddMotionInstruction_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 238..4014 bytes.
data Ros2Rmi_msgsSrvAddMotionInstruction_Request = Ros2Rmi_msgsSrvAddMotionInstruction_Request
    {
    -- | @brief Original rmi_msgs/srv/AddMotionInstruction_Request.motion_type field.
    -- | @details Original type rmi_msgs/msg/MotionType. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Rmi_msgsSrvAddMotionInstruction_Request_motion_type :: Ros2Rmi_msgsMsgMotionType
    ,
    -- | @brief Original rmi_msgs/srv/AddMotionInstruction_Request.incremental field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddMotionInstruction_Request_incremental :: Bool
    ,
    -- | @brief Original rmi_msgs/srv/AddMotionInstruction_Request.representation field.
    -- | @details Original type rmi_msgs/msg/Representation. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Rmi_msgsSrvAddMotionInstruction_Request_representation :: Ros2Rmi_msgsMsgRepresentation
    ,
    -- | @brief Original rmi_msgs/srv/AddMotionInstruction_Request.joint field.
    -- | @details Original type rmi_msgs/msg/Joint. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Rmi_msgsSrvAddMotionInstruction_Request_joint :: Ros2Rmi_msgsMsgJoint
    ,
    -- | @brief Original rmi_msgs/srv/AddMotionInstruction_Request.cartesian field.
    -- | @details Original type rmi_msgs/msg/Cartesian. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Rmi_msgsSrvAddMotionInstruction_Request_cartesian :: Ros2Rmi_msgsMsgCartesian
    ,
    -- | @brief Original rmi_msgs/srv/AddMotionInstruction_Request.speed_type field.
    -- | @details Original type rmi_msgs/msg/SpeedType. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Rmi_msgsSrvAddMotionInstruction_Request_speed_type :: Ros2Rmi_msgsMsgSpeedType
    ,
    -- | @brief Original rmi_msgs/srv/AddMotionInstruction_Request.speed_value field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddMotionInstruction_Request_speed_value :: Word16
    ,
    -- | @brief Original rmi_msgs/srv/AddMotionInstruction_Request.term_type field.
    -- | @details Original type rmi_msgs/msg/TermType. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Rmi_msgsSrvAddMotionInstruction_Request_term_type :: Ros2Rmi_msgsMsgTermType
    ,
    -- | @brief Original rmi_msgs/srv/AddMotionInstruction_Request.term_value field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddMotionInstruction_Request_term_value :: Word8
    ,
    -- | @brief Original rmi_msgs/srv/AddMotionInstruction_Request.via_representation field.
    -- | @details Original type rmi_msgs/msg/Representation. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Rmi_msgsSrvAddMotionInstruction_Request_via_representation :: Ros2Rmi_msgsMsgRepresentation
    ,
    -- | @brief Original rmi_msgs/srv/AddMotionInstruction_Request.via_joint field.
    -- | @details Original type rmi_msgs/msg/Joint. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Rmi_msgsSrvAddMotionInstruction_Request_via_joint :: Ros2Rmi_msgsMsgJoint
    ,
    -- | @brief Original rmi_msgs/srv/AddMotionInstruction_Request.via_cartesian field.
    -- | @details Original type rmi_msgs/msg/Cartesian. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Rmi_msgsSrvAddMotionInstruction_Request_via_cartesian :: Ros2Rmi_msgsMsgCartesian
    ,
    -- | @brief Original rmi_msgs/srv/AddMotionInstruction_Request.options field.
    -- | @details Original type rmi_msgs/msg/MotionInstructionOptions. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Rmi_msgsSrvAddMotionInstruction_Request_options :: Ros2Rmi_msgsMsgMotionInstructionOptions
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsSrvAddMotionInstruction_RequestCodecIdentity :: String
ros2Rmi_msgsSrvAddMotionInstruction_RequestCodecIdentity = "UWVMROS1_3f22c49cb2d32e6a8f3954f3d3cbf0021c87e0363b1f2ded4ac20a97a5b59391"
-- | @brief Encode every field of complete rmi_msgs/srv/AddMotionInstruction_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsSrvAddMotionInstruction_Request :: Ros2Rmi_msgsSrvAddMotionInstruction_Request -> Either Word32 [Word8]
encodeRos2Rmi_msgsSrvAddMotionInstruction_Request value = do
    chunk0 <- encodeRos2Rmi_msgsMsgMotionType (ros2Rmi_msgsSrvAddMotionInstruction_Request_motion_type value)
    chunk1 <- Right (W.putBool (ros2Rmi_msgsSrvAddMotionInstruction_Request_incremental value))
    chunk2 <- encodeRos2Rmi_msgsMsgRepresentation (ros2Rmi_msgsSrvAddMotionInstruction_Request_representation value)
    chunk3 <- encodeRos2Rmi_msgsMsgJoint (ros2Rmi_msgsSrvAddMotionInstruction_Request_joint value)
    chunk4 <- encodeRos2Rmi_msgsMsgCartesian (ros2Rmi_msgsSrvAddMotionInstruction_Request_cartesian value)
    chunk5 <- encodeRos2Rmi_msgsMsgSpeedType (ros2Rmi_msgsSrvAddMotionInstruction_Request_speed_type value)
    chunk6 <- Right (W.putNumber 2 (ros2Rmi_msgsSrvAddMotionInstruction_Request_speed_value value))
    chunk7 <- encodeRos2Rmi_msgsMsgTermType (ros2Rmi_msgsSrvAddMotionInstruction_Request_term_type value)
    chunk8 <- Right (W.putNumber 1 (ros2Rmi_msgsSrvAddMotionInstruction_Request_term_value value))
    chunk9 <- encodeRos2Rmi_msgsMsgRepresentation (ros2Rmi_msgsSrvAddMotionInstruction_Request_via_representation value)
    chunk10 <- encodeRos2Rmi_msgsMsgJoint (ros2Rmi_msgsSrvAddMotionInstruction_Request_via_joint value)
    chunk11 <- encodeRos2Rmi_msgsMsgCartesian (ros2Rmi_msgsSrvAddMotionInstruction_Request_via_cartesian value)
    chunk12 <- encodeRos2Rmi_msgsMsgMotionInstructionOptions (ros2Rmi_msgsSrvAddMotionInstruction_Request_options value)
    let bytes = concat
        [ chunk0
        , chunk1
        , chunk2
        , chunk3
        , chunk4
        , chunk5
        , chunk6
        , chunk7
        , chunk8
        , chunk9
        , chunk10
        , chunk11
        , chunk12]
    if length bytes > 4014 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/srv/AddMotionInstruction_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsSrvAddMotionInstruction_Request :: W.Parser Ros2Rmi_msgsSrvAddMotionInstruction_Request
readRos2Rmi_msgsSrvAddMotionInstruction_Request = do
    value0 <- readRos2Rmi_msgsMsgMotionType
    value1 <- W.boolean
    value2 <- readRos2Rmi_msgsMsgRepresentation
    value3 <- readRos2Rmi_msgsMsgJoint
    value4 <- readRos2Rmi_msgsMsgCartesian
    value5 <- readRos2Rmi_msgsMsgSpeedType
    value6 <- fromIntegral <$> W.number 2
    value7 <- readRos2Rmi_msgsMsgTermType
    value8 <- fromIntegral <$> W.number 1
    value9 <- readRos2Rmi_msgsMsgRepresentation
    value10 <- readRos2Rmi_msgsMsgJoint
    value11 <- readRos2Rmi_msgsMsgCartesian
    value12 <- readRos2Rmi_msgsMsgMotionInstructionOptions
    let value = Ros2Rmi_msgsSrvAddMotionInstruction_Request
            value0 value1 value2 value3 value4 value5 value6 value7 value8 value9 value10 value11
            value12
    case encodeRos2Rmi_msgsSrvAddMotionInstruction_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/srv/AddMotionInstruction_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsSrvAddMotionInstruction_Request :: [Word8] -> Either Word32 Ros2Rmi_msgsSrvAddMotionInstruction_Request
decodeRos2Rmi_msgsSrvAddMotionInstruction_Request bytes
    | length bytes < 238 || length bytes > 4014 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsSrvAddMotionInstruction_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/srv/AddMotionInstruction_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Rmi_msgsSrvAddMotionInstruction_Response = Ros2Rmi_msgsSrvAddMotionInstruction_Response
    {
    -- | @brief Original rmi_msgs/srv/AddMotionInstruction_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddMotionInstruction_Response_result :: Int32
    ,
    -- | @brief Original rmi_msgs/srv/AddMotionInstruction_Response.sequence_id field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddMotionInstruction_Response_sequence_id :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsSrvAddMotionInstruction_ResponseCodecIdentity :: String
ros2Rmi_msgsSrvAddMotionInstruction_ResponseCodecIdentity = "UWVMROS1_79fee3e965fda63c3a53ad2178ff48614878acc9f6af74cc27a8c2812b68ac6b"
-- | @brief Encode every field of complete rmi_msgs/srv/AddMotionInstruction_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsSrvAddMotionInstruction_Response :: Ros2Rmi_msgsSrvAddMotionInstruction_Response -> Either Word32 [Word8]
encodeRos2Rmi_msgsSrvAddMotionInstruction_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Rmi_msgsSrvAddMotionInstruction_Response_result value))
    chunk1 <- Right (W.putNumber 4 (ros2Rmi_msgsSrvAddMotionInstruction_Response_sequence_id value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/srv/AddMotionInstruction_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsSrvAddMotionInstruction_Response :: W.Parser Ros2Rmi_msgsSrvAddMotionInstruction_Response
readRos2Rmi_msgsSrvAddMotionInstruction_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value = Ros2Rmi_msgsSrvAddMotionInstruction_Response value0 value1
    case encodeRos2Rmi_msgsSrvAddMotionInstruction_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/srv/AddMotionInstruction_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsSrvAddMotionInstruction_Response :: [Word8] -> Either Word32 Ros2Rmi_msgsSrvAddMotionInstruction_Response
decodeRos2Rmi_msgsSrvAddMotionInstruction_Response bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsSrvAddMotionInstruction_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/srv/AddSetPayload_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Rmi_msgsSrvAddSetPayload_Request = Ros2Rmi_msgsSrvAddSetPayload_Request
    {
    -- | @brief Original rmi_msgs/srv/AddSetPayload_Request.schedule_number field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddSetPayload_Request_schedule_number :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsSrvAddSetPayload_RequestCodecIdentity :: String
ros2Rmi_msgsSrvAddSetPayload_RequestCodecIdentity = "UWVMROS1_45da9f81e8c26f49490a4e6eba5c8be0ee67285124540eb1c3e1f2c3e0fd821b"
-- | @brief Encode every field of complete rmi_msgs/srv/AddSetPayload_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsSrvAddSetPayload_Request :: Ros2Rmi_msgsSrvAddSetPayload_Request -> Either Word32 [Word8]
encodeRos2Rmi_msgsSrvAddSetPayload_Request value = do
    chunk0 <- Right (W.putNumber 1 (ros2Rmi_msgsSrvAddSetPayload_Request_schedule_number value))
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/srv/AddSetPayload_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsSrvAddSetPayload_Request :: W.Parser Ros2Rmi_msgsSrvAddSetPayload_Request
readRos2Rmi_msgsSrvAddSetPayload_Request = do
    value0 <- fromIntegral <$> W.number 1
    let value = Ros2Rmi_msgsSrvAddSetPayload_Request value0
    case encodeRos2Rmi_msgsSrvAddSetPayload_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/srv/AddSetPayload_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsSrvAddSetPayload_Request :: [Word8] -> Either Word32 Ros2Rmi_msgsSrvAddSetPayload_Request
decodeRos2Rmi_msgsSrvAddSetPayload_Request bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsSrvAddSetPayload_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/srv/AddSetPayload_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Rmi_msgsSrvAddSetPayload_Response = Ros2Rmi_msgsSrvAddSetPayload_Response
    {
    -- | @brief Original rmi_msgs/srv/AddSetPayload_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddSetPayload_Response_result :: Int32
    ,
    -- | @brief Original rmi_msgs/srv/AddSetPayload_Response.sequence_id field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddSetPayload_Response_sequence_id :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsSrvAddSetPayload_ResponseCodecIdentity :: String
ros2Rmi_msgsSrvAddSetPayload_ResponseCodecIdentity = "UWVMROS1_bfc5bc7b92f292c2980496cb18fbe953ea1b49d45f7950f0125bbbf880bdf72a"
-- | @brief Encode every field of complete rmi_msgs/srv/AddSetPayload_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsSrvAddSetPayload_Response :: Ros2Rmi_msgsSrvAddSetPayload_Response -> Either Word32 [Word8]
encodeRos2Rmi_msgsSrvAddSetPayload_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Rmi_msgsSrvAddSetPayload_Response_result value))
    chunk1 <- Right (W.putNumber 4 (ros2Rmi_msgsSrvAddSetPayload_Response_sequence_id value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/srv/AddSetPayload_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsSrvAddSetPayload_Response :: W.Parser Ros2Rmi_msgsSrvAddSetPayload_Response
readRos2Rmi_msgsSrvAddSetPayload_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value = Ros2Rmi_msgsSrvAddSetPayload_Response value0 value1
    case encodeRos2Rmi_msgsSrvAddSetPayload_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/srv/AddSetPayload_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsSrvAddSetPayload_Response :: [Word8] -> Either Word32 Ros2Rmi_msgsSrvAddSetPayload_Response
decodeRos2Rmi_msgsSrvAddSetPayload_Response bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsSrvAddSetPayload_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/srv/AddSetUFrame_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Rmi_msgsSrvAddSetUFrame_Request = Ros2Rmi_msgsSrvAddSetUFrame_Request
    {
    -- | @brief Original rmi_msgs/srv/AddSetUFrame_Request.frame_number field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddSetUFrame_Request_frame_number :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsSrvAddSetUFrame_RequestCodecIdentity :: String
ros2Rmi_msgsSrvAddSetUFrame_RequestCodecIdentity = "UWVMROS1_64c83dd2be89b4b6dcf3b3c2ea70184971e6a359914ff1a5cd26d4b114d35475"
-- | @brief Encode every field of complete rmi_msgs/srv/AddSetUFrame_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsSrvAddSetUFrame_Request :: Ros2Rmi_msgsSrvAddSetUFrame_Request -> Either Word32 [Word8]
encodeRos2Rmi_msgsSrvAddSetUFrame_Request value = do
    chunk0 <- Right (W.putNumber 1 (ros2Rmi_msgsSrvAddSetUFrame_Request_frame_number value))
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/srv/AddSetUFrame_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsSrvAddSetUFrame_Request :: W.Parser Ros2Rmi_msgsSrvAddSetUFrame_Request
readRos2Rmi_msgsSrvAddSetUFrame_Request = do
    value0 <- fromIntegral <$> W.number 1
    let value = Ros2Rmi_msgsSrvAddSetUFrame_Request value0
    case encodeRos2Rmi_msgsSrvAddSetUFrame_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/srv/AddSetUFrame_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsSrvAddSetUFrame_Request :: [Word8] -> Either Word32 Ros2Rmi_msgsSrvAddSetUFrame_Request
decodeRos2Rmi_msgsSrvAddSetUFrame_Request bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsSrvAddSetUFrame_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/srv/AddSetUFrame_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Rmi_msgsSrvAddSetUFrame_Response = Ros2Rmi_msgsSrvAddSetUFrame_Response
    {
    -- | @brief Original rmi_msgs/srv/AddSetUFrame_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddSetUFrame_Response_result :: Int32
    ,
    -- | @brief Original rmi_msgs/srv/AddSetUFrame_Response.sequence_id field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddSetUFrame_Response_sequence_id :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsSrvAddSetUFrame_ResponseCodecIdentity :: String
ros2Rmi_msgsSrvAddSetUFrame_ResponseCodecIdentity = "UWVMROS1_e344ef6efacc8d569111d1c6ef4028e1a5bb54af49d3e8f486ae89b83c674647"
-- | @brief Encode every field of complete rmi_msgs/srv/AddSetUFrame_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsSrvAddSetUFrame_Response :: Ros2Rmi_msgsSrvAddSetUFrame_Response -> Either Word32 [Word8]
encodeRos2Rmi_msgsSrvAddSetUFrame_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Rmi_msgsSrvAddSetUFrame_Response_result value))
    chunk1 <- Right (W.putNumber 4 (ros2Rmi_msgsSrvAddSetUFrame_Response_sequence_id value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/srv/AddSetUFrame_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsSrvAddSetUFrame_Response :: W.Parser Ros2Rmi_msgsSrvAddSetUFrame_Response
readRos2Rmi_msgsSrvAddSetUFrame_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value = Ros2Rmi_msgsSrvAddSetUFrame_Response value0 value1
    case encodeRos2Rmi_msgsSrvAddSetUFrame_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/srv/AddSetUFrame_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsSrvAddSetUFrame_Response :: [Word8] -> Either Word32 Ros2Rmi_msgsSrvAddSetUFrame_Response
decodeRos2Rmi_msgsSrvAddSetUFrame_Response bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsSrvAddSetUFrame_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/srv/AddSetUTool_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Rmi_msgsSrvAddSetUTool_Request = Ros2Rmi_msgsSrvAddSetUTool_Request
    {
    -- | @brief Original rmi_msgs/srv/AddSetUTool_Request.tool_number field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddSetUTool_Request_tool_number :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsSrvAddSetUTool_RequestCodecIdentity :: String
ros2Rmi_msgsSrvAddSetUTool_RequestCodecIdentity = "UWVMROS1_d1327022326cd41caed6001449517a41f589e148c38d6db30923922175f05c46"
-- | @brief Encode every field of complete rmi_msgs/srv/AddSetUTool_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsSrvAddSetUTool_Request :: Ros2Rmi_msgsSrvAddSetUTool_Request -> Either Word32 [Word8]
encodeRos2Rmi_msgsSrvAddSetUTool_Request value = do
    chunk0 <- Right (W.putNumber 1 (ros2Rmi_msgsSrvAddSetUTool_Request_tool_number value))
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/srv/AddSetUTool_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsSrvAddSetUTool_Request :: W.Parser Ros2Rmi_msgsSrvAddSetUTool_Request
readRos2Rmi_msgsSrvAddSetUTool_Request = do
    value0 <- fromIntegral <$> W.number 1
    let value = Ros2Rmi_msgsSrvAddSetUTool_Request value0
    case encodeRos2Rmi_msgsSrvAddSetUTool_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/srv/AddSetUTool_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsSrvAddSetUTool_Request :: [Word8] -> Either Word32 Ros2Rmi_msgsSrvAddSetUTool_Request
decodeRos2Rmi_msgsSrvAddSetUTool_Request bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsSrvAddSetUTool_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/srv/AddSetUTool_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Rmi_msgsSrvAddSetUTool_Response = Ros2Rmi_msgsSrvAddSetUTool_Response
    {
    -- | @brief Original rmi_msgs/srv/AddSetUTool_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddSetUTool_Response_result :: Int32
    ,
    -- | @brief Original rmi_msgs/srv/AddSetUTool_Response.sequence_id field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddSetUTool_Response_sequence_id :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsSrvAddSetUTool_ResponseCodecIdentity :: String
ros2Rmi_msgsSrvAddSetUTool_ResponseCodecIdentity = "UWVMROS1_dd4c36458027b87559200cf5f6aa72a60af2d103f663f2fa9daca47ce8020ff6"
-- | @brief Encode every field of complete rmi_msgs/srv/AddSetUTool_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsSrvAddSetUTool_Response :: Ros2Rmi_msgsSrvAddSetUTool_Response -> Either Word32 [Word8]
encodeRos2Rmi_msgsSrvAddSetUTool_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Rmi_msgsSrvAddSetUTool_Response_result value))
    chunk1 <- Right (W.putNumber 4 (ros2Rmi_msgsSrvAddSetUTool_Response_sequence_id value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/srv/AddSetUTool_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsSrvAddSetUTool_Response :: W.Parser Ros2Rmi_msgsSrvAddSetUTool_Response
readRos2Rmi_msgsSrvAddSetUTool_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value = Ros2Rmi_msgsSrvAddSetUTool_Response value0 value1
    case encodeRos2Rmi_msgsSrvAddSetUTool_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/srv/AddSetUTool_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsSrvAddSetUTool_Response :: [Word8] -> Either Word32 Ros2Rmi_msgsSrvAddSetUTool_Response
decodeRos2Rmi_msgsSrvAddSetUTool_Response bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsSrvAddSetUTool_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/srv/AddWaitDIN_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Rmi_msgsSrvAddWaitDIN_Request = Ros2Rmi_msgsSrvAddWaitDIN_Request
    {
    -- | @brief Original rmi_msgs/srv/AddWaitDIN_Request.port_number field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddWaitDIN_Request_port_number :: Word16
    ,
    -- | @brief Original rmi_msgs/srv/AddWaitDIN_Request.port_value field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Rmi_msgsSrvAddWaitDIN_Request_port_value :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsSrvAddWaitDIN_RequestCodecIdentity :: String
ros2Rmi_msgsSrvAddWaitDIN_RequestCodecIdentity = "UWVMROS1_c32214f1ff1b0b6980583fc3088f412e856efb5eaa9c336cf798ef8ad85c61ab"
-- | @brief Encode every field of complete rmi_msgs/srv/AddWaitDIN_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsSrvAddWaitDIN_Request :: Ros2Rmi_msgsSrvAddWaitDIN_Request -> Either Word32 [Word8]
encodeRos2Rmi_msgsSrvAddWaitDIN_Request value = do
    chunk0 <- Right (W.putNumber 2 (ros2Rmi_msgsSrvAddWaitDIN_Request_port_number value))
    chunk1 <- W.putText 512 (ros2Rmi_msgsSrvAddWaitDIN_Request_port_value value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/srv/AddWaitDIN_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsSrvAddWaitDIN_Request :: W.Parser Ros2Rmi_msgsSrvAddWaitDIN_Request
readRos2Rmi_msgsSrvAddWaitDIN_Request = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros2Rmi_msgsSrvAddWaitDIN_Request value0 value1
    case encodeRos2Rmi_msgsSrvAddWaitDIN_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/srv/AddWaitDIN_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsSrvAddWaitDIN_Request :: [Word8] -> Either Word32 Ros2Rmi_msgsSrvAddWaitDIN_Request
decodeRos2Rmi_msgsSrvAddWaitDIN_Request bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsSrvAddWaitDIN_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/srv/AddWaitDIN_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Rmi_msgsSrvAddWaitDIN_Response = Ros2Rmi_msgsSrvAddWaitDIN_Response
    {
    -- | @brief Original rmi_msgs/srv/AddWaitDIN_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddWaitDIN_Response_result :: Int32
    ,
    -- | @brief Original rmi_msgs/srv/AddWaitDIN_Response.sequence_id field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddWaitDIN_Response_sequence_id :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsSrvAddWaitDIN_ResponseCodecIdentity :: String
ros2Rmi_msgsSrvAddWaitDIN_ResponseCodecIdentity = "UWVMROS1_7d3933f573619ba49f19df7c11f1d73ef211c17581f660f8c0fbcc152cd519d4"
-- | @brief Encode every field of complete rmi_msgs/srv/AddWaitDIN_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsSrvAddWaitDIN_Response :: Ros2Rmi_msgsSrvAddWaitDIN_Response -> Either Word32 [Word8]
encodeRos2Rmi_msgsSrvAddWaitDIN_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Rmi_msgsSrvAddWaitDIN_Response_result value))
    chunk1 <- Right (W.putNumber 4 (ros2Rmi_msgsSrvAddWaitDIN_Response_sequence_id value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/srv/AddWaitDIN_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsSrvAddWaitDIN_Response :: W.Parser Ros2Rmi_msgsSrvAddWaitDIN_Response
readRos2Rmi_msgsSrvAddWaitDIN_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value = Ros2Rmi_msgsSrvAddWaitDIN_Response value0 value1
    case encodeRos2Rmi_msgsSrvAddWaitDIN_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/srv/AddWaitDIN_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsSrvAddWaitDIN_Response :: [Word8] -> Either Word32 Ros2Rmi_msgsSrvAddWaitDIN_Response
decodeRos2Rmi_msgsSrvAddWaitDIN_Response bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsSrvAddWaitDIN_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/srv/AddWaitTime_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Rmi_msgsSrvAddWaitTime_Request = Ros2Rmi_msgsSrvAddWaitTime_Request
    {
    -- | @brief Original rmi_msgs/srv/AddWaitTime_Request.time field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddWaitTime_Request_time :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsSrvAddWaitTime_RequestCodecIdentity :: String
ros2Rmi_msgsSrvAddWaitTime_RequestCodecIdentity = "UWVMROS1_8487f4b7dcfb044c72f7fb62a31ffe9cdc4321a9ebdaa0550a363e32acbadc46"
-- | @brief Encode every field of complete rmi_msgs/srv/AddWaitTime_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsSrvAddWaitTime_Request :: Ros2Rmi_msgsSrvAddWaitTime_Request -> Either Word32 [Word8]
encodeRos2Rmi_msgsSrvAddWaitTime_Request value = do
    chunk0 <- finite4 (ros2Rmi_msgsSrvAddWaitTime_Request_time value) castFloatToWord32
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/srv/AddWaitTime_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsSrvAddWaitTime_Request :: W.Parser Ros2Rmi_msgsSrvAddWaitTime_Request
readRos2Rmi_msgsSrvAddWaitTime_Request = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Rmi_msgsSrvAddWaitTime_Request value0
    case encodeRos2Rmi_msgsSrvAddWaitTime_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/srv/AddWaitTime_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsSrvAddWaitTime_Request :: [Word8] -> Either Word32 Ros2Rmi_msgsSrvAddWaitTime_Request
decodeRos2Rmi_msgsSrvAddWaitTime_Request bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsSrvAddWaitTime_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/srv/AddWaitTime_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Rmi_msgsSrvAddWaitTime_Response = Ros2Rmi_msgsSrvAddWaitTime_Response
    {
    -- | @brief Original rmi_msgs/srv/AddWaitTime_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddWaitTime_Response_result :: Int32
    ,
    -- | @brief Original rmi_msgs/srv/AddWaitTime_Response.sequence_id field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvAddWaitTime_Response_sequence_id :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsSrvAddWaitTime_ResponseCodecIdentity :: String
ros2Rmi_msgsSrvAddWaitTime_ResponseCodecIdentity = "UWVMROS1_f9578c08b971f32f91d1c94b8713cafe648e25147394e20c85bb335254fa20c8"
-- | @brief Encode every field of complete rmi_msgs/srv/AddWaitTime_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsSrvAddWaitTime_Response :: Ros2Rmi_msgsSrvAddWaitTime_Response -> Either Word32 [Word8]
encodeRos2Rmi_msgsSrvAddWaitTime_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Rmi_msgsSrvAddWaitTime_Response_result value))
    chunk1 <- Right (W.putNumber 4 (ros2Rmi_msgsSrvAddWaitTime_Response_sequence_id value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/srv/AddWaitTime_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsSrvAddWaitTime_Response :: W.Parser Ros2Rmi_msgsSrvAddWaitTime_Response
readRos2Rmi_msgsSrvAddWaitTime_Response = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value = Ros2Rmi_msgsSrvAddWaitTime_Response value0 value1
    case encodeRos2Rmi_msgsSrvAddWaitTime_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/srv/AddWaitTime_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsSrvAddWaitTime_Response :: [Word8] -> Either Word32 Ros2Rmi_msgsSrvAddWaitTime_Response
decodeRos2Rmi_msgsSrvAddWaitTime_Response bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsSrvAddWaitTime_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/srv/CallCommand_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 16..1104 bytes.
data Ros2Rmi_msgsSrvCallCommand_Request = Ros2Rmi_msgsSrvCallCommand_Request
    {
    -- | @brief Original rmi_msgs/srv/CallCommand_Request.command field.
    -- | @details Original type rmi_msgs/msg/Command. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Rmi_msgsSrvCallCommand_Request_command :: Ros2Rmi_msgsMsgCommand
    ,
    -- | @brief Original rmi_msgs/srv/CallCommand_Request.options field.
    -- | @details Original type rmi_msgs/msg/CommandOptions. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Rmi_msgsSrvCallCommand_Request_options :: Ros2Rmi_msgsMsgCommandOptions
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsSrvCallCommand_RequestCodecIdentity :: String
ros2Rmi_msgsSrvCallCommand_RequestCodecIdentity = "UWVMROS1_d1f890a2beec0ca9294ff4f641d1738855d576a917ed05eb34517886c73f381c"
-- | @brief Encode every field of complete rmi_msgs/srv/CallCommand_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsSrvCallCommand_Request :: Ros2Rmi_msgsSrvCallCommand_Request -> Either Word32 [Word8]
encodeRos2Rmi_msgsSrvCallCommand_Request value = do
    chunk0 <- encodeRos2Rmi_msgsMsgCommand (ros2Rmi_msgsSrvCallCommand_Request_command value)
    chunk1 <- encodeRos2Rmi_msgsMsgCommandOptions (ros2Rmi_msgsSrvCallCommand_Request_options value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 1104 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/srv/CallCommand_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsSrvCallCommand_Request :: W.Parser Ros2Rmi_msgsSrvCallCommand_Request
readRos2Rmi_msgsSrvCallCommand_Request = do
    value0 <- readRos2Rmi_msgsMsgCommand
    value1 <- readRos2Rmi_msgsMsgCommandOptions
    let value = Ros2Rmi_msgsSrvCallCommand_Request value0 value1
    case encodeRos2Rmi_msgsSrvCallCommand_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/srv/CallCommand_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsSrvCallCommand_Request :: [Word8] -> Either Word32 Ros2Rmi_msgsSrvCallCommand_Request
decodeRos2Rmi_msgsSrvCallCommand_Request bytes
    | length bytes < 16 || length bytes > 1104 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsSrvCallCommand_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original rmi_msgs/srv/CallCommand_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Rmi_msgsSrvCallCommand_Response = Ros2Rmi_msgsSrvCallCommand_Response
    {
    -- | @brief Original rmi_msgs/srv/CallCommand_Response.result field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Rmi_msgsSrvCallCommand_Response_result :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Rmi_msgsSrvCallCommand_ResponseCodecIdentity :: String
ros2Rmi_msgsSrvCallCommand_ResponseCodecIdentity = "UWVMROS1_64d92e6fadc651073469318ad15d2e98ec3d059c629838cefc5820b17ab6f1bc"
-- | @brief Encode every field of complete rmi_msgs/srv/CallCommand_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Rmi_msgsSrvCallCommand_Response :: Ros2Rmi_msgsSrvCallCommand_Response -> Either Word32 [Word8]
encodeRos2Rmi_msgsSrvCallCommand_Response value = do
    chunk0 <- Right (W.putNumber 4 (ros2Rmi_msgsSrvCallCommand_Response_result value))
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested rmi_msgs/srv/CallCommand_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Rmi_msgsSrvCallCommand_Response :: W.Parser Ros2Rmi_msgsSrvCallCommand_Response
readRos2Rmi_msgsSrvCallCommand_Response = do
    value0 <- fromIntegral <$> W.number 4
    let value = Ros2Rmi_msgsSrvCallCommand_Response value0
    case encodeRos2Rmi_msgsSrvCallCommand_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete rmi_msgs/srv/CallCommand_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Rmi_msgsSrvCallCommand_Response :: [Word8] -> Either Word32 Ros2Rmi_msgsSrvCallCommand_Response
decodeRos2Rmi_msgsSrvCallCommand_Response bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Rmi_msgsSrvCallCommand_Response bytes
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

-- | @brief Construct complete original fanuc_msgs/msg/IOType defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsMsgIOType :: Either Word32 Ros2Fanuc_msgsMsgIOType
defaultRos2Fanuc_msgsMsgIOType = decodeRos2Fanuc_msgsMsgIOType
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/msg/AnalogIO defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsMsgAnalogIO :: Either Word32 Ros2Fanuc_msgsMsgAnalogIO
defaultRos2Fanuc_msgsMsgAnalogIO = decodeRos2Fanuc_msgsMsgAnalogIO
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/msg/AnalogIOCmd defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsMsgAnalogIOCmd :: Either Word32 Ros2Fanuc_msgsMsgAnalogIOCmd
defaultRos2Fanuc_msgsMsgAnalogIOCmd = decodeRos2Fanuc_msgsMsgAnalogIOCmd
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/msg/AnalogIOState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsMsgAnalogIOState :: Either Word32 Ros2Fanuc_msgsMsgAnalogIOState
defaultRos2Fanuc_msgsMsgAnalogIOState = decodeRos2Fanuc_msgsMsgAnalogIOState
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/msg/BoolIO defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsMsgBoolIO :: Either Word32 Ros2Fanuc_msgsMsgBoolIO
defaultRos2Fanuc_msgsMsgBoolIO = decodeRos2Fanuc_msgsMsgBoolIO
    [0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/msg/CollaborativeSpeedScaling defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsMsgCollaborativeSpeedScaling :: Either Word32 Ros2Fanuc_msgsMsgCollaborativeSpeedScaling
defaultRos2Fanuc_msgsMsgCollaborativeSpeedScaling = decodeRos2Fanuc_msgsMsgCollaborativeSpeedScaling
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/msg/ConnectionStatus defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsMsgConnectionStatus :: Either Word32 Ros2Fanuc_msgsMsgConnectionStatus
defaultRos2Fanuc_msgsMsgConnectionStatus = decodeRos2Fanuc_msgsMsgConnectionStatus
    [0]

-- | @brief Construct complete original fanuc_msgs/msg/ForceSensor defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsMsgForceSensor :: Either Word32 Ros2Fanuc_msgsMsgForceSensor
defaultRos2Fanuc_msgsMsgForceSensor = decodeRos2Fanuc_msgsMsgForceSensor
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0
    ]

-- | @brief Construct complete original fanuc_msgs/msg/Frame defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsMsgFrame :: Either Word32 Ros2Fanuc_msgsMsgFrame
defaultRos2Fanuc_msgsMsgFrame = decodeRos2Fanuc_msgsMsgFrame
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original fanuc_msgs/msg/IOCmd defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsMsgIOCmd :: Either Word32 Ros2Fanuc_msgsMsgIOCmd
defaultRos2Fanuc_msgsMsgIOCmd = decodeRos2Fanuc_msgsMsgIOCmd
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/msg/IOState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsMsgIOState :: Either Word32 Ros2Fanuc_msgsMsgIOState
defaultRos2Fanuc_msgsMsgIOState = decodeRos2Fanuc_msgsMsgIOState
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/msg/NumReg defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsMsgNumReg :: Either Word32 Ros2Fanuc_msgsMsgNumReg
defaultRos2Fanuc_msgsMsgNumReg = decodeRos2Fanuc_msgsMsgNumReg
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/msg/NumRegCmd defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsMsgNumRegCmd :: Either Word32 Ros2Fanuc_msgsMsgNumRegCmd
defaultRos2Fanuc_msgsMsgNumRegCmd = decodeRos2Fanuc_msgsMsgNumRegCmd
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/msg/NumRegState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsMsgNumRegState :: Either Word32 Ros2Fanuc_msgsMsgNumRegState
defaultRos2Fanuc_msgsMsgNumRegState = decodeRos2Fanuc_msgsMsgNumRegState
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/msg/RMIStatus defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsMsgRMIStatus :: Either Word32 Ros2Fanuc_msgsMsgRMIStatus
defaultRos2Fanuc_msgsMsgRMIStatus = decodeRos2Fanuc_msgsMsgRMIStatus
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original fanuc_msgs/msg/RobotStatus defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsMsgRobotStatus :: Either Word32 Ros2Fanuc_msgsMsgRobotStatus
defaultRos2Fanuc_msgsMsgRobotStatus = decodeRos2Fanuc_msgsMsgRobotStatus
    [0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/msg/RobotStatusExt defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsMsgRobotStatusExt :: Either Word32 Ros2Fanuc_msgsMsgRobotStatusExt
defaultRos2Fanuc_msgsMsgRobotStatusExt = decodeRos2Fanuc_msgsMsgRobotStatusExt
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original fanuc_msgs/srv/CfgForceSensor_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvCfgForceSensor_Request :: Either Word32 Ros2Fanuc_msgsSrvCfgForceSensor_Request
defaultRos2Fanuc_msgsSrvCfgForceSensor_Request = decodeRos2Fanuc_msgsSrvCfgForceSensor_Request
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/CfgForceSensor_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvCfgForceSensor_Response :: Either Word32 Ros2Fanuc_msgsSrvCfgForceSensor_Response
defaultRos2Fanuc_msgsSrvCfgForceSensor_Response = decodeRos2Fanuc_msgsSrvCfgForceSensor_Response
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/GetAnalogIO_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetAnalogIO_Request :: Either Word32 Ros2Fanuc_msgsSrvGetAnalogIO_Request
defaultRos2Fanuc_msgsSrvGetAnalogIO_Request = decodeRos2Fanuc_msgsSrvGetAnalogIO_Request
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/GetAnalogIO_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetAnalogIO_Response :: Either Word32 Ros2Fanuc_msgsSrvGetAnalogIO_Response
defaultRos2Fanuc_msgsSrvGetAnalogIO_Response = decodeRos2Fanuc_msgsSrvGetAnalogIO_Response
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/GetBoolIO_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetBoolIO_Request :: Either Word32 Ros2Fanuc_msgsSrvGetBoolIO_Request
defaultRos2Fanuc_msgsSrvGetBoolIO_Request = decodeRos2Fanuc_msgsSrvGetBoolIO_Request
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/GetBoolIO_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetBoolIO_Response :: Either Word32 Ros2Fanuc_msgsSrvGetBoolIO_Response
defaultRos2Fanuc_msgsSrvGetBoolIO_Response = decodeRos2Fanuc_msgsSrvGetBoolIO_Response
    [0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/GetCartesianPosition_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetCartesianPosition_Request :: Either Word32 Ros2Fanuc_msgsSrvGetCartesianPosition_Request
defaultRos2Fanuc_msgsSrvGetCartesianPosition_Request = decodeRos2Fanuc_msgsSrvGetCartesianPosition_Request
    [0]

-- | @brief Construct complete original fanuc_msgs/srv/GetCartesianPosition_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetCartesianPosition_Response :: Either Word32 Ros2Fanuc_msgsSrvGetCartesianPosition_Response
defaultRos2Fanuc_msgsSrvGetCartesianPosition_Response = decodeRos2Fanuc_msgsSrvGetCartesianPosition_Response
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original fanuc_msgs/srv/GetGroupIO_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetGroupIO_Request :: Either Word32 Ros2Fanuc_msgsSrvGetGroupIO_Request
defaultRos2Fanuc_msgsSrvGetGroupIO_Request = decodeRos2Fanuc_msgsSrvGetGroupIO_Request
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/GetGroupIO_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetGroupIO_Response :: Either Word32 Ros2Fanuc_msgsSrvGetGroupIO_Response
defaultRos2Fanuc_msgsSrvGetGroupIO_Response = decodeRos2Fanuc_msgsSrvGetGroupIO_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/GetNumReg_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetNumReg_Request :: Either Word32 Ros2Fanuc_msgsSrvGetNumReg_Request
defaultRos2Fanuc_msgsSrvGetNumReg_Request = decodeRos2Fanuc_msgsSrvGetNumReg_Request
    [0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/GetNumReg_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetNumReg_Response :: Either Word32 Ros2Fanuc_msgsSrvGetNumReg_Response
defaultRos2Fanuc_msgsSrvGetNumReg_Response = decodeRos2Fanuc_msgsSrvGetNumReg_Response
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/GetPayloadComp_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetPayloadComp_Request :: Either Word32 Ros2Fanuc_msgsSrvGetPayloadComp_Request
defaultRos2Fanuc_msgsSrvGetPayloadComp_Request = decodeRos2Fanuc_msgsSrvGetPayloadComp_Request
    [0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/GetPayloadComp_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetPayloadComp_Response :: Either Word32 Ros2Fanuc_msgsSrvGetPayloadComp_Response
defaultRos2Fanuc_msgsSrvGetPayloadComp_Response = decodeRos2Fanuc_msgsSrvGetPayloadComp_Response
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original fanuc_msgs/srv/GetPayloadID_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetPayloadID_Request :: Either Word32 Ros2Fanuc_msgsSrvGetPayloadID_Request
defaultRos2Fanuc_msgsSrvGetPayloadID_Request = decodeRos2Fanuc_msgsSrvGetPayloadID_Request
    []

-- | @brief Construct complete original fanuc_msgs/srv/GetPayloadID_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetPayloadID_Response :: Either Word32 Ros2Fanuc_msgsSrvGetPayloadID_Response
defaultRos2Fanuc_msgsSrvGetPayloadID_Response = decodeRos2Fanuc_msgsSrvGetPayloadID_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/GetPayloadValue_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetPayloadValue_Request :: Either Word32 Ros2Fanuc_msgsSrvGetPayloadValue_Request
defaultRos2Fanuc_msgsSrvGetPayloadValue_Request = decodeRos2Fanuc_msgsSrvGetPayloadValue_Request
    [0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/GetPayloadValue_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetPayloadValue_Response :: Either Word32 Ros2Fanuc_msgsSrvGetPayloadValue_Response
defaultRos2Fanuc_msgsSrvGetPayloadValue_Response = decodeRos2Fanuc_msgsSrvGetPayloadValue_Response
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original fanuc_msgs/srv/GetPosReg_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetPosReg_Request :: Either Word32 Ros2Fanuc_msgsSrvGetPosReg_Request
defaultRos2Fanuc_msgsSrvGetPosReg_Request = decodeRos2Fanuc_msgsSrvGetPosReg_Request
    [0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/GetPosReg_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetPosReg_Response :: Either Word32 Ros2Fanuc_msgsSrvGetPosReg_Response
defaultRos2Fanuc_msgsSrvGetPosReg_Response = decodeRos2Fanuc_msgsSrvGetPosReg_Response
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original fanuc_msgs/srv/GetTCPSpeed_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetTCPSpeed_Request :: Either Word32 Ros2Fanuc_msgsSrvGetTCPSpeed_Request
defaultRos2Fanuc_msgsSrvGetTCPSpeed_Request = decodeRos2Fanuc_msgsSrvGetTCPSpeed_Request
    [0]

-- | @brief Construct complete original fanuc_msgs/srv/GetTCPSpeed_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetTCPSpeed_Response :: Either Word32 Ros2Fanuc_msgsSrvGetTCPSpeed_Response
defaultRos2Fanuc_msgsSrvGetTCPSpeed_Response = decodeRos2Fanuc_msgsSrvGetTCPSpeed_Response
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/GetUFrameData_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetUFrameData_Request :: Either Word32 Ros2Fanuc_msgsSrvGetUFrameData_Request
defaultRos2Fanuc_msgsSrvGetUFrameData_Request = decodeRos2Fanuc_msgsSrvGetUFrameData_Request
    [0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/GetUFrameData_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetUFrameData_Response :: Either Word32 Ros2Fanuc_msgsSrvGetUFrameData_Response
defaultRos2Fanuc_msgsSrvGetUFrameData_Response = decodeRos2Fanuc_msgsSrvGetUFrameData_Response
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original fanuc_msgs/srv/GetUFrameUTool_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetUFrameUTool_Request :: Either Word32 Ros2Fanuc_msgsSrvGetUFrameUTool_Request
defaultRos2Fanuc_msgsSrvGetUFrameUTool_Request = decodeRos2Fanuc_msgsSrvGetUFrameUTool_Request
    [0]

-- | @brief Construct complete original fanuc_msgs/srv/GetUFrameUTool_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetUFrameUTool_Response :: Either Word32 Ros2Fanuc_msgsSrvGetUFrameUTool_Response
defaultRos2Fanuc_msgsSrvGetUFrameUTool_Response = decodeRos2Fanuc_msgsSrvGetUFrameUTool_Response
    [0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/GetUToolData_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetUToolData_Request :: Either Word32 Ros2Fanuc_msgsSrvGetUToolData_Request
defaultRos2Fanuc_msgsSrvGetUToolData_Request = decodeRos2Fanuc_msgsSrvGetUToolData_Request
    [0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/GetUToolData_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvGetUToolData_Response :: Either Word32 Ros2Fanuc_msgsSrvGetUToolData_Response
defaultRos2Fanuc_msgsSrvGetUToolData_Response = decodeRos2Fanuc_msgsSrvGetUToolData_Response
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original fanuc_msgs/srv/ReadError_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvReadError_Request :: Either Word32 Ros2Fanuc_msgsSrvReadError_Request
defaultRos2Fanuc_msgsSrvReadError_Request = decodeRos2Fanuc_msgsSrvReadError_Request
    [1]

-- | @brief Construct complete original fanuc_msgs/srv/ReadError_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvReadError_Response :: Either Word32 Ros2Fanuc_msgsSrvReadError_Response
defaultRos2Fanuc_msgsSrvReadError_Response = decodeRos2Fanuc_msgsSrvReadError_Response
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0
    ]

-- | @brief Construct complete original fanuc_msgs/srv/Reset_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvReset_Request :: Either Word32 Ros2Fanuc_msgsSrvReset_Request
defaultRos2Fanuc_msgsSrvReset_Request = decodeRos2Fanuc_msgsSrvReset_Request
    []

-- | @brief Construct complete original fanuc_msgs/srv/Reset_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvReset_Response :: Either Word32 Ros2Fanuc_msgsSrvReset_Response
defaultRos2Fanuc_msgsSrvReset_Response = decodeRos2Fanuc_msgsSrvReset_Response
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetAnalogIO_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetAnalogIO_Request :: Either Word32 Ros2Fanuc_msgsSrvSetAnalogIO_Request
defaultRos2Fanuc_msgsSrvSetAnalogIO_Request = decodeRos2Fanuc_msgsSrvSetAnalogIO_Request
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetAnalogIO_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetAnalogIO_Response :: Either Word32 Ros2Fanuc_msgsSrvSetAnalogIO_Response
defaultRos2Fanuc_msgsSrvSetAnalogIO_Response = decodeRos2Fanuc_msgsSrvSetAnalogIO_Response
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetBoolIO_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetBoolIO_Request :: Either Word32 Ros2Fanuc_msgsSrvSetBoolIO_Request
defaultRos2Fanuc_msgsSrvSetBoolIO_Request = decodeRos2Fanuc_msgsSrvSetBoolIO_Request
    [0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetBoolIO_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetBoolIO_Response :: Either Word32 Ros2Fanuc_msgsSrvSetBoolIO_Response
defaultRos2Fanuc_msgsSrvSetBoolIO_Response = decodeRos2Fanuc_msgsSrvSetBoolIO_Response
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetGenOverride_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetGenOverride_Request :: Either Word32 Ros2Fanuc_msgsSrvSetGenOverride_Request
defaultRos2Fanuc_msgsSrvSetGenOverride_Request = decodeRos2Fanuc_msgsSrvSetGenOverride_Request
    [0]

-- | @brief Construct complete original fanuc_msgs/srv/SetGenOverride_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetGenOverride_Response :: Either Word32 Ros2Fanuc_msgsSrvSetGenOverride_Response
defaultRos2Fanuc_msgsSrvSetGenOverride_Response = decodeRos2Fanuc_msgsSrvSetGenOverride_Response
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetGroupIO_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetGroupIO_Request :: Either Word32 Ros2Fanuc_msgsSrvSetGroupIO_Request
defaultRos2Fanuc_msgsSrvSetGroupIO_Request = decodeRos2Fanuc_msgsSrvSetGroupIO_Request
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetGroupIO_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetGroupIO_Response :: Either Word32 Ros2Fanuc_msgsSrvSetGroupIO_Response
defaultRos2Fanuc_msgsSrvSetGroupIO_Response = decodeRos2Fanuc_msgsSrvSetGroupIO_Response
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetNumReg_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetNumReg_Request :: Either Word32 Ros2Fanuc_msgsSrvSetNumReg_Request
defaultRos2Fanuc_msgsSrvSetNumReg_Request = decodeRos2Fanuc_msgsSrvSetNumReg_Request
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetNumReg_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetNumReg_Response :: Either Word32 Ros2Fanuc_msgsSrvSetNumReg_Response
defaultRos2Fanuc_msgsSrvSetNumReg_Response = decodeRos2Fanuc_msgsSrvSetNumReg_Response
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetPayloadComp_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetPayloadComp_Request :: Either Word32 Ros2Fanuc_msgsSrvSetPayloadComp_Request
defaultRos2Fanuc_msgsSrvSetPayloadComp_Request = decodeRos2Fanuc_msgsSrvSetPayloadComp_Request
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original fanuc_msgs/srv/SetPayloadComp_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetPayloadComp_Response :: Either Word32 Ros2Fanuc_msgsSrvSetPayloadComp_Response
defaultRos2Fanuc_msgsSrvSetPayloadComp_Response = decodeRos2Fanuc_msgsSrvSetPayloadComp_Response
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetPayloadID_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetPayloadID_Request :: Either Word32 Ros2Fanuc_msgsSrvSetPayloadID_Request
defaultRos2Fanuc_msgsSrvSetPayloadID_Request = decodeRos2Fanuc_msgsSrvSetPayloadID_Request
    [0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetPayloadID_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetPayloadID_Response :: Either Word32 Ros2Fanuc_msgsSrvSetPayloadID_Response
defaultRos2Fanuc_msgsSrvSetPayloadID_Response = decodeRos2Fanuc_msgsSrvSetPayloadID_Response
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetPayloadValue_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetPayloadValue_Request :: Either Word32 Ros2Fanuc_msgsSrvSetPayloadValue_Request
defaultRos2Fanuc_msgsSrvSetPayloadValue_Request = decodeRos2Fanuc_msgsSrvSetPayloadValue_Request
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original fanuc_msgs/srv/SetPayloadValue_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetPayloadValue_Response :: Either Word32 Ros2Fanuc_msgsSrvSetPayloadValue_Response
defaultRos2Fanuc_msgsSrvSetPayloadValue_Response = decodeRos2Fanuc_msgsSrvSetPayloadValue_Response
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetPosReg_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetPosReg_Request :: Either Word32 Ros2Fanuc_msgsSrvSetPosReg_Request
defaultRos2Fanuc_msgsSrvSetPosReg_Request = decodeRos2Fanuc_msgsSrvSetPosReg_Request
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0
    ]

-- | @brief Construct complete original fanuc_msgs/srv/SetPosReg_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetPosReg_Response :: Either Word32 Ros2Fanuc_msgsSrvSetPosReg_Response
defaultRos2Fanuc_msgsSrvSetPosReg_Response = decodeRos2Fanuc_msgsSrvSetPosReg_Response
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetUFrameData_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetUFrameData_Request :: Either Word32 Ros2Fanuc_msgsSrvSetUFrameData_Request
defaultRos2Fanuc_msgsSrvSetUFrameData_Request = decodeRos2Fanuc_msgsSrvSetUFrameData_Request
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0
    ]

-- | @brief Construct complete original fanuc_msgs/srv/SetUFrameData_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetUFrameData_Response :: Either Word32 Ros2Fanuc_msgsSrvSetUFrameData_Response
defaultRos2Fanuc_msgsSrvSetUFrameData_Response = decodeRos2Fanuc_msgsSrvSetUFrameData_Response
    [0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetUFrameUTool_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetUFrameUTool_Request :: Either Word32 Ros2Fanuc_msgsSrvSetUFrameUTool_Request
defaultRos2Fanuc_msgsSrvSetUFrameUTool_Request = decodeRos2Fanuc_msgsSrvSetUFrameUTool_Request
    [0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetUFrameUTool_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetUFrameUTool_Response :: Either Word32 Ros2Fanuc_msgsSrvSetUFrameUTool_Response
defaultRos2Fanuc_msgsSrvSetUFrameUTool_Response = decodeRos2Fanuc_msgsSrvSetUFrameUTool_Response
    [0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SetUToolData_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetUToolData_Request :: Either Word32 Ros2Fanuc_msgsSrvSetUToolData_Request
defaultRos2Fanuc_msgsSrvSetUToolData_Request = decodeRos2Fanuc_msgsSrvSetUToolData_Request
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0
    ]

-- | @brief Construct complete original fanuc_msgs/srv/SetUToolData_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSetUToolData_Response :: Either Word32 Ros2Fanuc_msgsSrvSetUToolData_Response
defaultRos2Fanuc_msgsSrvSetUToolData_Response = decodeRos2Fanuc_msgsSrvSetUToolData_Response
    [0, 0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SwitchControlState_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSwitchControlState_Request :: Either Word32 Ros2Fanuc_msgsSrvSwitchControlState_Request
defaultRos2Fanuc_msgsSrvSwitchControlState_Request = decodeRos2Fanuc_msgsSrvSwitchControlState_Request
    [0, 0, 0, 0]

-- | @brief Construct complete original fanuc_msgs/srv/SwitchControlState_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Fanuc_msgsSrvSwitchControlState_Response :: Either Word32 Ros2Fanuc_msgsSrvSwitchControlState_Response
defaultRos2Fanuc_msgsSrvSwitchControlState_Response = decodeRos2Fanuc_msgsSrvSwitchControlState_Response
    [0, 0, 0, 0]

-- | @brief Construct complete original rmi_msgs/msg/CallParam defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsMsgCallParam :: Either Word32 Ros2Rmi_msgsMsgCallParam
defaultRos2Rmi_msgsMsgCallParam = decodeRos2Rmi_msgsMsgCallParam
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original rmi_msgs/msg/Cartesian defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsMsgCartesian :: Either Word32 Ros2Rmi_msgsMsgCartesian
defaultRos2Rmi_msgsMsgCartesian = decodeRos2Rmi_msgsMsgCartesian
    [ 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original rmi_msgs/msg/Command defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsMsgCommand :: Either Word32 Ros2Rmi_msgsMsgCommand
defaultRos2Rmi_msgsMsgCommand = decodeRos2Rmi_msgsMsgCommand
    [0, 0, 0, 0]

-- | @brief Construct complete original rmi_msgs/msg/CommandOptions defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsMsgCommandOptions :: Either Word32 Ros2Rmi_msgsMsgCommandOptions
defaultRos2Rmi_msgsMsgCommandOptions = decodeRos2Rmi_msgsMsgCommandOptions
    [ 0, 1, 0, 2, 0, 0, 0, 79, 78, 0, 6, 0
    , 0, 0, 90, 69, 82, 79, 68, 78
    ]

-- | @brief Construct complete original rmi_msgs/msg/Joint defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsMsgJoint :: Either Word32 Ros2Rmi_msgsMsgJoint
defaultRos2Rmi_msgsMsgJoint = decodeRos2Rmi_msgsMsgJoint
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original rmi_msgs/msg/MotionInstructionOptions defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsMsgMotionInstructionOptions :: Either Word32 Ros2Rmi_msgsMsgMotionInstructionOptions
defaultRos2Rmi_msgsMsgMotionInstructionOptions = decodeRos2Rmi_msgsMsgMotionInstructionOptions
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0
    , 0, 79, 78, 0, 2, 0, 0, 0, 79, 78, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 2, 0, 0, 0, 79, 78
    ]

-- | @brief Construct complete original rmi_msgs/msg/MotionType defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsMsgMotionType :: Either Word32 Ros2Rmi_msgsMsgMotionType
defaultRos2Rmi_msgsMsgMotionType = decodeRos2Rmi_msgsMsgMotionType
    [1, 0, 0, 0, 74]

-- | @brief Construct complete original rmi_msgs/msg/Representation defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsMsgRepresentation :: Either Word32 Ros2Rmi_msgsMsgRepresentation
defaultRos2Rmi_msgsMsgRepresentation = decodeRos2Rmi_msgsMsgRepresentation
    [5, 0, 0, 0, 74, 79, 73, 78, 84]

-- | @brief Construct complete original rmi_msgs/msg/SpeedType defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsMsgSpeedType :: Either Word32 Ros2Rmi_msgsMsgSpeedType
defaultRos2Rmi_msgsMsgSpeedType = decodeRos2Rmi_msgsMsgSpeedType
    [7, 0, 0, 0, 80, 101, 114, 99, 101, 110, 116]

-- | @brief Construct complete original rmi_msgs/msg/TermType defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsMsgTermType :: Either Word32 Ros2Rmi_msgsMsgTermType
defaultRos2Rmi_msgsMsgTermType = decodeRos2Rmi_msgsMsgTermType
    [4, 0, 0, 0, 70, 73, 78, 69]

-- | @brief Construct complete original rmi_msgs/srv/AddCall_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsSrvAddCall_Request :: Either Word32 Ros2Rmi_msgsSrvAddCall_Request
defaultRos2Rmi_msgsSrvAddCall_Request = decodeRos2Rmi_msgsSrvAddCall_Request
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original rmi_msgs/srv/AddCall_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsSrvAddCall_Response :: Either Word32 Ros2Rmi_msgsSrvAddCall_Response
defaultRos2Rmi_msgsSrvAddCall_Response = decodeRos2Rmi_msgsSrvAddCall_Response
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original rmi_msgs/srv/AddMotionInstruction_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsSrvAddMotionInstruction_Request :: Either Word32 Ros2Rmi_msgsSrvAddMotionInstruction_Request
defaultRos2Rmi_msgsSrvAddMotionInstruction_Request = decodeRos2Rmi_msgsSrvAddMotionInstruction_Request
    [ 1, 0, 0, 0, 74, 0, 5, 0, 0, 0, 74, 79
    , 73, 78, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 7, 0, 0, 0, 80, 101, 114, 99, 101, 110, 116, 0
    , 0, 4, 0, 0, 0, 70, 73, 78, 69, 0, 5, 0
    , 0, 0, 74, 79, 73, 78, 84, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 2, 0, 0, 0, 79, 78, 0, 2, 0, 0, 0
    , 79, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0
    , 79, 78
    ]

-- | @brief Construct complete original rmi_msgs/srv/AddMotionInstruction_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsSrvAddMotionInstruction_Response :: Either Word32 Ros2Rmi_msgsSrvAddMotionInstruction_Response
defaultRos2Rmi_msgsSrvAddMotionInstruction_Response = decodeRos2Rmi_msgsSrvAddMotionInstruction_Response
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original rmi_msgs/srv/AddSetPayload_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsSrvAddSetPayload_Request :: Either Word32 Ros2Rmi_msgsSrvAddSetPayload_Request
defaultRos2Rmi_msgsSrvAddSetPayload_Request = decodeRos2Rmi_msgsSrvAddSetPayload_Request
    [0]

-- | @brief Construct complete original rmi_msgs/srv/AddSetPayload_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsSrvAddSetPayload_Response :: Either Word32 Ros2Rmi_msgsSrvAddSetPayload_Response
defaultRos2Rmi_msgsSrvAddSetPayload_Response = decodeRos2Rmi_msgsSrvAddSetPayload_Response
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original rmi_msgs/srv/AddSetUFrame_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsSrvAddSetUFrame_Request :: Either Word32 Ros2Rmi_msgsSrvAddSetUFrame_Request
defaultRos2Rmi_msgsSrvAddSetUFrame_Request = decodeRos2Rmi_msgsSrvAddSetUFrame_Request
    [0]

-- | @brief Construct complete original rmi_msgs/srv/AddSetUFrame_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsSrvAddSetUFrame_Response :: Either Word32 Ros2Rmi_msgsSrvAddSetUFrame_Response
defaultRos2Rmi_msgsSrvAddSetUFrame_Response = decodeRos2Rmi_msgsSrvAddSetUFrame_Response
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original rmi_msgs/srv/AddSetUTool_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsSrvAddSetUTool_Request :: Either Word32 Ros2Rmi_msgsSrvAddSetUTool_Request
defaultRos2Rmi_msgsSrvAddSetUTool_Request = decodeRos2Rmi_msgsSrvAddSetUTool_Request
    [0]

-- | @brief Construct complete original rmi_msgs/srv/AddSetUTool_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsSrvAddSetUTool_Response :: Either Word32 Ros2Rmi_msgsSrvAddSetUTool_Response
defaultRos2Rmi_msgsSrvAddSetUTool_Response = decodeRos2Rmi_msgsSrvAddSetUTool_Response
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original rmi_msgs/srv/AddWaitDIN_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsSrvAddWaitDIN_Request :: Either Word32 Ros2Rmi_msgsSrvAddWaitDIN_Request
defaultRos2Rmi_msgsSrvAddWaitDIN_Request = decodeRos2Rmi_msgsSrvAddWaitDIN_Request
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original rmi_msgs/srv/AddWaitDIN_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsSrvAddWaitDIN_Response :: Either Word32 Ros2Rmi_msgsSrvAddWaitDIN_Response
defaultRos2Rmi_msgsSrvAddWaitDIN_Response = decodeRos2Rmi_msgsSrvAddWaitDIN_Response
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original rmi_msgs/srv/AddWaitTime_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsSrvAddWaitTime_Request :: Either Word32 Ros2Rmi_msgsSrvAddWaitTime_Request
defaultRos2Rmi_msgsSrvAddWaitTime_Request = decodeRos2Rmi_msgsSrvAddWaitTime_Request
    [0, 0, 0, 0]

-- | @brief Construct complete original rmi_msgs/srv/AddWaitTime_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsSrvAddWaitTime_Response :: Either Word32 Ros2Rmi_msgsSrvAddWaitTime_Response
defaultRos2Rmi_msgsSrvAddWaitTime_Response = decodeRos2Rmi_msgsSrvAddWaitTime_Response
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original rmi_msgs/srv/CallCommand_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsSrvCallCommand_Request :: Either Word32 Ros2Rmi_msgsSrvCallCommand_Request
defaultRos2Rmi_msgsSrvCallCommand_Request = decodeRos2Rmi_msgsSrvCallCommand_Request
    [ 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 79
    , 78, 0, 6, 0, 0, 0, 90, 69, 82, 79, 68, 78
    ]

-- | @brief Construct complete original rmi_msgs/srv/CallCommand_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Rmi_msgsSrvCallCommand_Response :: Either Word32 Ros2Rmi_msgsSrvCallCommand_Response
defaultRos2Rmi_msgsSrvCallCommand_Response = decodeRos2Rmi_msgsSrvCallCommand_Response
    [0, 0, 0, 0]

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
