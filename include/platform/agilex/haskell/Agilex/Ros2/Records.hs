-- | @file Records.hs
-- @brief Complete original agilex ROS 2 Haskell records and codecs.
-- @details Owned immutable values preserve all fields; constructing them grants no ROS authority.
module Agilex.Ros2.Records where
import Data.Int
import Data.Word
import Data.Bits
import GHC.Float
import qualified Data.Text as T
import Control.Monad (replicateM)
import qualified Native.Wire as W

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
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Builtin_interfacesMsgTime :: Ros2Builtin_interfacesMsgTime
defaultRos2Builtin_interfacesMsgTime =
    Ros2Builtin_interfacesMsgTime
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Builtin_interfacesMsgTimeCodecIdentity :: String
ros2Builtin_interfacesMsgTimeCodecIdentity =
    "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
-- | @brief Encode every field of complete builtin_interfaces/msg/Time.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Builtin_interfacesMsgTime :: Ros2Builtin_interfacesMsgTime -> Either Word32 [Word8]
encodeRos2Builtin_interfacesMsgTime value = do
    if
        ((ros2Builtin_interfacesMsgTime_nanosec value) >= 1000000000
        ) then Left 22 else Right ()
    chunk0 <- Right (W.putNumber 4 (ros2Builtin_interfacesMsgTime_sec value))
    chunk1 <- Right (W.putNumber 4 (ros2Builtin_interfacesMsgTime_nanosec value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested builtin_interfaces/msg/Time.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Builtin_interfacesMsgTime :: W.Parser Ros2Builtin_interfacesMsgTime
readRos2Builtin_interfacesMsgTime = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value =
            Ros2Builtin_interfacesMsgTime
                value0
                value1
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

-- | @brief Complete original geometry_msgs/msg/Point value.
-- | @details Retain every original field in declaration order. Canonical extent 24..24 bytes.
data Ros2Geometry_msgsMsgPoint = Ros2Geometry_msgsMsgPoint
    {
    -- | @brief Original geometry_msgs/msg/Point.x field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Geometry_msgsMsgPoint_x :: Double
    ,
    -- | @brief Original geometry_msgs/msg/Point.y field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Geometry_msgsMsgPoint_y :: Double
    ,
    -- | @brief Original geometry_msgs/msg/Point.z field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Geometry_msgsMsgPoint_z :: Double
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Geometry_msgsMsgPoint :: Ros2Geometry_msgsMsgPoint
defaultRos2Geometry_msgsMsgPoint =
    Ros2Geometry_msgsMsgPoint
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Geometry_msgsMsgPointCodecIdentity :: String
ros2Geometry_msgsMsgPointCodecIdentity =
    "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"
-- | @brief Encode every field of complete geometry_msgs/msg/Point.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Geometry_msgsMsgPoint :: Ros2Geometry_msgsMsgPoint -> Either Word32 [Word8]
encodeRos2Geometry_msgsMsgPoint value = do
    chunk0 <- finite8 (ros2Geometry_msgsMsgPoint_x value) castDoubleToWord64
    chunk1 <- finite8 (ros2Geometry_msgsMsgPoint_y value) castDoubleToWord64
    chunk2 <- finite8 (ros2Geometry_msgsMsgPoint_z value) castDoubleToWord64
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 24 then Left 22 else Right bytes
-- | @brief Read every field of nested geometry_msgs/msg/Point.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Geometry_msgsMsgPoint :: W.Parser Ros2Geometry_msgsMsgPoint
readRos2Geometry_msgsMsgPoint = do
    value0 <- castWord64ToDouble <$> W.number 8
    value1 <- castWord64ToDouble <$> W.number 8
    value2 <- castWord64ToDouble <$> W.number 8
    let value =
            Ros2Geometry_msgsMsgPoint
                value0
                value1
                value2
    case encodeRos2Geometry_msgsMsgPoint value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete geometry_msgs/msg/Point.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Geometry_msgsMsgPoint :: [Word8] -> Either Word32 Ros2Geometry_msgsMsgPoint
decodeRos2Geometry_msgsMsgPoint bytes
    | length bytes < 24 || length bytes > 24 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Geometry_msgsMsgPoint bytes
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
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Geometry_msgsMsgQuaternion :: Ros2Geometry_msgsMsgQuaternion
defaultRos2Geometry_msgsMsgQuaternion =
    Ros2Geometry_msgsMsgQuaternion
        (castWord64ToDouble 0x0)
        (castWord64ToDouble 0x0)
        (castWord64ToDouble 0x0)
        (castWord64ToDouble 0x3ff0000000000000)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Geometry_msgsMsgQuaternionCodecIdentity :: String
ros2Geometry_msgsMsgQuaternionCodecIdentity =
    "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
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
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                ]
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
    let value =
            Ros2Geometry_msgsMsgQuaternion
                value0
                value1
                value2
                value3
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

-- | @brief Complete original geometry_msgs/msg/Pose value.
-- | @details Retain every original field in declaration order. Canonical extent 56..56 bytes.
data Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose
    {
    -- | @brief Original geometry_msgs/msg/Pose.position field.
    -- | @details Original type geometry_msgs/msg/Point. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Geometry_msgsMsgPose_position :: Ros2Geometry_msgsMsgPoint
    ,
    -- | @brief Original geometry_msgs/msg/Pose.orientation field.
    -- | @details Original type geometry_msgs/msg/Quaternion. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Geometry_msgsMsgPose_orientation :: Ros2Geometry_msgsMsgQuaternion
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Geometry_msgsMsgPose :: Ros2Geometry_msgsMsgPose
defaultRos2Geometry_msgsMsgPose =
    Ros2Geometry_msgsMsgPose
        (defaultRos2Geometry_msgsMsgPoint)
        (defaultRos2Geometry_msgsMsgQuaternion)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Geometry_msgsMsgPoseCodecIdentity :: String
ros2Geometry_msgsMsgPoseCodecIdentity =
    "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"
-- | @brief Encode every field of complete geometry_msgs/msg/Pose.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Geometry_msgsMsgPose :: Ros2Geometry_msgsMsgPose -> Either Word32 [Word8]
encodeRos2Geometry_msgsMsgPose value = do
    chunk0 <- encodeRos2Geometry_msgsMsgPoint (ros2Geometry_msgsMsgPose_position value)
    chunk1 <- encodeRos2Geometry_msgsMsgQuaternion (ros2Geometry_msgsMsgPose_orientation value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 56 then Left 22 else Right bytes
-- | @brief Read every field of nested geometry_msgs/msg/Pose.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Geometry_msgsMsgPose :: W.Parser Ros2Geometry_msgsMsgPose
readRos2Geometry_msgsMsgPose = do
    value0 <- readRos2Geometry_msgsMsgPoint
    value1 <- readRos2Geometry_msgsMsgQuaternion
    let value =
            Ros2Geometry_msgsMsgPose
                value0
                value1
    case encodeRos2Geometry_msgsMsgPose value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete geometry_msgs/msg/Pose.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Geometry_msgsMsgPose :: [Word8] -> Either Word32 Ros2Geometry_msgsMsgPose
decodeRos2Geometry_msgsMsgPose bytes
    | length bytes < 56 || length bytes > 56 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Geometry_msgsMsgPose bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original geometry_msgs/msg/PoseWithCovariance value.
-- | @details Retain every original field in declaration order. Canonical extent 344..344 bytes.
data Ros2Geometry_msgsMsgPoseWithCovariance = Ros2Geometry_msgsMsgPoseWithCovariance
    {
    -- | @brief Original geometry_msgs/msg/PoseWithCovariance.pose field.
    -- | @details Original type geometry_msgs/msg/Pose. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Geometry_msgsMsgPoseWithCovariance_pose :: Ros2Geometry_msgsMsgPose
    ,
    -- | @brief Original geometry_msgs/msg/PoseWithCovariance.covariance field.
    -- | @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Geometry_msgsMsgPoseWithCovariance_covariance :: [Double]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Geometry_msgsMsgPoseWithCovariance :: Ros2Geometry_msgsMsgPoseWithCovariance
defaultRos2Geometry_msgsMsgPoseWithCovariance =
    Ros2Geometry_msgsMsgPoseWithCovariance
        (defaultRos2Geometry_msgsMsgPose)
        (replicate 36 (0))
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Geometry_msgsMsgPoseWithCovarianceCodecIdentity :: String
ros2Geometry_msgsMsgPoseWithCovarianceCodecIdentity =
    "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2"
-- | @brief Encode every field of complete geometry_msgs/msg/PoseWithCovariance.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Geometry_msgsMsgPoseWithCovariance :: Ros2Geometry_msgsMsgPoseWithCovariance -> Either Word32 [Word8]
encodeRos2Geometry_msgsMsgPoseWithCovariance value = do
    chunk0 <- encodeRos2Geometry_msgsMsgPose (ros2Geometry_msgsMsgPoseWithCovariance_pose value)
    if length (ros2Geometry_msgsMsgPoseWithCovariance_covariance value) == 36 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> finite8 (element) castDoubleToWord64)
            (ros2Geometry_msgsMsgPoseWithCovariance_covariance value)
    chunk1 <- Right item1
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 344 then Left 22 else Right bytes
-- | @brief Read every field of nested geometry_msgs/msg/PoseWithCovariance.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Geometry_msgsMsgPoseWithCovariance :: W.Parser Ros2Geometry_msgsMsgPoseWithCovariance
readRos2Geometry_msgsMsgPoseWithCovariance = do
    value0 <- readRos2Geometry_msgsMsgPose
    value1 <- replicateM 36 (castWord64ToDouble <$> W.number 8)
    let value =
            Ros2Geometry_msgsMsgPoseWithCovariance
                value0
                value1
    case encodeRos2Geometry_msgsMsgPoseWithCovariance value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete geometry_msgs/msg/PoseWithCovariance.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Geometry_msgsMsgPoseWithCovariance :: [Word8] -> Either Word32 Ros2Geometry_msgsMsgPoseWithCovariance
decodeRos2Geometry_msgsMsgPoseWithCovariance bytes
    | length bytes < 344 || length bytes > 344 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Geometry_msgsMsgPoseWithCovariance bytes
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
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Geometry_msgsMsgVector3 :: Ros2Geometry_msgsMsgVector3
defaultRos2Geometry_msgsMsgVector3 =
    Ros2Geometry_msgsMsgVector3
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Geometry_msgsMsgVector3CodecIdentity :: String
ros2Geometry_msgsMsgVector3CodecIdentity =
    "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"
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
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
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
    let value =
            Ros2Geometry_msgsMsgVector3
                value0
                value1
                value2
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
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Geometry_msgsMsgTwist :: Ros2Geometry_msgsMsgTwist
defaultRos2Geometry_msgsMsgTwist =
    Ros2Geometry_msgsMsgTwist
        (defaultRos2Geometry_msgsMsgVector3)
        (defaultRos2Geometry_msgsMsgVector3)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Geometry_msgsMsgTwistCodecIdentity :: String
ros2Geometry_msgsMsgTwistCodecIdentity =
    "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"
-- | @brief Encode every field of complete geometry_msgs/msg/Twist.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Geometry_msgsMsgTwist :: Ros2Geometry_msgsMsgTwist -> Either Word32 [Word8]
encodeRos2Geometry_msgsMsgTwist value = do
    chunk0 <- encodeRos2Geometry_msgsMsgVector3 (ros2Geometry_msgsMsgTwist_linear value)
    chunk1 <- encodeRos2Geometry_msgsMsgVector3 (ros2Geometry_msgsMsgTwist_angular value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 48 then Left 22 else Right bytes
-- | @brief Read every field of nested geometry_msgs/msg/Twist.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Geometry_msgsMsgTwist :: W.Parser Ros2Geometry_msgsMsgTwist
readRos2Geometry_msgsMsgTwist = do
    value0 <- readRos2Geometry_msgsMsgVector3
    value1 <- readRos2Geometry_msgsMsgVector3
    let value =
            Ros2Geometry_msgsMsgTwist
                value0
                value1
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

-- | @brief Complete original geometry_msgs/msg/TwistWithCovariance value.
-- | @details Retain every original field in declaration order. Canonical extent 336..336 bytes.
data Ros2Geometry_msgsMsgTwistWithCovariance = Ros2Geometry_msgsMsgTwistWithCovariance
    {
    -- | @brief Original geometry_msgs/msg/TwistWithCovariance.twist field.
    -- | @details Original type geometry_msgs/msg/Twist. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Geometry_msgsMsgTwistWithCovariance_twist :: Ros2Geometry_msgsMsgTwist
    ,
    -- | @brief Original geometry_msgs/msg/TwistWithCovariance.covariance field.
    -- | @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Geometry_msgsMsgTwistWithCovariance_covariance :: [Double]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Geometry_msgsMsgTwistWithCovariance :: Ros2Geometry_msgsMsgTwistWithCovariance
defaultRos2Geometry_msgsMsgTwistWithCovariance =
    Ros2Geometry_msgsMsgTwistWithCovariance
        (defaultRos2Geometry_msgsMsgTwist)
        (replicate 36 (0))
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Geometry_msgsMsgTwistWithCovarianceCodecIdentity :: String
ros2Geometry_msgsMsgTwistWithCovarianceCodecIdentity =
    "UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404"
-- | @brief Encode every field of complete geometry_msgs/msg/TwistWithCovariance.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Geometry_msgsMsgTwistWithCovariance :: Ros2Geometry_msgsMsgTwistWithCovariance -> Either Word32 [Word8]
encodeRos2Geometry_msgsMsgTwistWithCovariance value = do
    chunk0 <- encodeRos2Geometry_msgsMsgTwist (ros2Geometry_msgsMsgTwistWithCovariance_twist value)
    if length (ros2Geometry_msgsMsgTwistWithCovariance_covariance value) == 36 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> finite8 (element) castDoubleToWord64)
            (ros2Geometry_msgsMsgTwistWithCovariance_covariance value)
    chunk1 <- Right item1
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 336 then Left 22 else Right bytes
-- | @brief Read every field of nested geometry_msgs/msg/TwistWithCovariance.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Geometry_msgsMsgTwistWithCovariance :: W.Parser Ros2Geometry_msgsMsgTwistWithCovariance
readRos2Geometry_msgsMsgTwistWithCovariance = do
    value0 <- readRos2Geometry_msgsMsgTwist
    value1 <- replicateM 36 (castWord64ToDouble <$> W.number 8)
    let value =
            Ros2Geometry_msgsMsgTwistWithCovariance
                value0
                value1
    case encodeRos2Geometry_msgsMsgTwistWithCovariance value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete geometry_msgs/msg/TwistWithCovariance.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Geometry_msgsMsgTwistWithCovariance :: [Word8] -> Either Word32 Ros2Geometry_msgsMsgTwistWithCovariance
decodeRos2Geometry_msgsMsgTwistWithCovariance bytes
    | length bytes < 336 || length bytes > 336 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Geometry_msgsMsgTwistWithCovariance bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original std_msgs/msg/Header value.
-- | @details Retain every original field in declaration order. Canonical extent 12..140 bytes.
data Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader
    {
    -- | @brief Original std_msgs/msg/Header.stamp field.
    -- | @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Std_msgsMsgHeader_stamp :: Ros2Builtin_interfacesMsgTime
    ,
    -- | @brief Original std_msgs/msg/Header.frame_id field.
    -- | @details Original type string. String bound 128 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Std_msgsMsgHeader_frame_id :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Std_msgsMsgHeader :: Ros2Std_msgsMsgHeader
defaultRos2Std_msgsMsgHeader =
    Ros2Std_msgsMsgHeader
        (defaultRos2Builtin_interfacesMsgTime)
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Std_msgsMsgHeaderCodecIdentity :: String
ros2Std_msgsMsgHeaderCodecIdentity =
    "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"
-- | @brief Encode every field of complete std_msgs/msg/Header.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Std_msgsMsgHeader :: Ros2Std_msgsMsgHeader -> Either Word32 [Word8]
encodeRos2Std_msgsMsgHeader value = do
    chunk0 <- encodeRos2Builtin_interfacesMsgTime (ros2Std_msgsMsgHeader_stamp value)
    chunk1 <- W.putText 128 (ros2Std_msgsMsgHeader_frame_id value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 140 then Left 22 else Right bytes
-- | @brief Read every field of nested std_msgs/msg/Header.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Std_msgsMsgHeader :: W.Parser Ros2Std_msgsMsgHeader
readRos2Std_msgsMsgHeader = do
    value0 <- readRos2Builtin_interfacesMsgTime
    value1 <- W.text 128
    let value =
            Ros2Std_msgsMsgHeader
                value0
                value1
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
    | length bytes < 12 || length bytes > 140 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Std_msgsMsgHeader bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original nav_msgs/msg/Odometry value.
-- | @details Retain every original field in declaration order. Canonical extent 696..952 bytes.
data Ros2Nav_msgsMsgOdometry = Ros2Nav_msgsMsgOdometry
    {
    -- | @brief Original nav_msgs/msg/Odometry.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Nav_msgsMsgOdometry_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original nav_msgs/msg/Odometry.child_frame_id field.
    -- | @details Original type string. String bound 128 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Nav_msgsMsgOdometry_child_frame_id :: [Word8]
    ,
    -- | @brief Original nav_msgs/msg/Odometry.pose field.
    -- | @details Original type geometry_msgs/msg/PoseWithCovariance. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Nav_msgsMsgOdometry_pose :: Ros2Geometry_msgsMsgPoseWithCovariance
    ,
    -- | @brief Original nav_msgs/msg/Odometry.twist field.
    -- | @details Original type geometry_msgs/msg/TwistWithCovariance. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Nav_msgsMsgOdometry_twist :: Ros2Geometry_msgsMsgTwistWithCovariance
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Nav_msgsMsgOdometry :: Ros2Nav_msgsMsgOdometry
defaultRos2Nav_msgsMsgOdometry =
    Ros2Nav_msgsMsgOdometry
        (defaultRos2Std_msgsMsgHeader)
        ([])
        (defaultRos2Geometry_msgsMsgPoseWithCovariance)
        (defaultRos2Geometry_msgsMsgTwistWithCovariance)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Nav_msgsMsgOdometryCodecIdentity :: String
ros2Nav_msgsMsgOdometryCodecIdentity =
    "UWVMROS1_fdfdd74c211c22bfd167c3e33a098fe21198cb095bbd0313fc765f38b1f334ec"
-- | @brief Encode every field of complete nav_msgs/msg/Odometry.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Nav_msgsMsgOdometry :: Ros2Nav_msgsMsgOdometry -> Either Word32 [Word8]
encodeRos2Nav_msgsMsgOdometry value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Nav_msgsMsgOdometry_header value)
    chunk1 <- W.putText 128 (ros2Nav_msgsMsgOdometry_child_frame_id value)
    chunk2 <- encodeRos2Geometry_msgsMsgPoseWithCovariance (ros2Nav_msgsMsgOdometry_pose value)
    chunk3 <- encodeRos2Geometry_msgsMsgTwistWithCovariance (ros2Nav_msgsMsgOdometry_twist value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                ]
    if length bytes > 952 then Left 22 else Right bytes
-- | @brief Read every field of nested nav_msgs/msg/Odometry.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Nav_msgsMsgOdometry :: W.Parser Ros2Nav_msgsMsgOdometry
readRos2Nav_msgsMsgOdometry = do
    value0 <- readRos2Std_msgsMsgHeader
    value1 <- W.text 128
    value2 <- readRos2Geometry_msgsMsgPoseWithCovariance
    value3 <- readRos2Geometry_msgsMsgTwistWithCovariance
    let value =
            Ros2Nav_msgsMsgOdometry
                value0
                value1
                value2
                value3
    case encodeRos2Nav_msgsMsgOdometry value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete nav_msgs/msg/Odometry.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Nav_msgsMsgOdometry :: [Word8] -> Either Word32 Ros2Nav_msgsMsgOdometry
decodeRos2Nav_msgsMsgOdometry bytes
    | length bytes < 696 || length bytes > 952 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Nav_msgsMsgOdometry bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original scout_msgs/msg/ScoutActuatorState value.
-- | @details Retain every original field in declaration order. Canonical extent 19..19 bytes.
data Ros2Scout_msgsMsgScoutActuatorState = Ros2Scout_msgsMsgScoutActuatorState
    {
    -- | @brief Original scout_msgs/msg/ScoutActuatorState.rpm field.
    -- | @details Original type int16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutActuatorState_rpm :: Int16
    ,
    -- | @brief Original scout_msgs/msg/ScoutActuatorState.current field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutActuatorState_current :: Double
    ,
    -- | @brief Original scout_msgs/msg/ScoutActuatorState.driver_voltage field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutActuatorState_driver_voltage :: Float
    ,
    -- | @brief Original scout_msgs/msg/ScoutActuatorState.driver_temperature field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutActuatorState_driver_temperature :: Float
    ,
    -- | @brief Original scout_msgs/msg/ScoutActuatorState.motor_temperature field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutActuatorState_motor_temperature :: Int8
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Scout_msgsMsgScoutActuatorState :: Ros2Scout_msgsMsgScoutActuatorState
defaultRos2Scout_msgsMsgScoutActuatorState =
    Ros2Scout_msgsMsgScoutActuatorState
        (0)
        (0)
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Scout_msgsMsgScoutActuatorStateCodecIdentity :: String
ros2Scout_msgsMsgScoutActuatorStateCodecIdentity =
    "UWVMROS1_e7955c07aedaf42f8d97f873d60ae5c0dfc562faa1d64848f11b333f797350c6"
-- | @brief Encode every field of complete scout_msgs/msg/ScoutActuatorState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Scout_msgsMsgScoutActuatorState :: Ros2Scout_msgsMsgScoutActuatorState -> Either Word32 [Word8]
encodeRos2Scout_msgsMsgScoutActuatorState value = do
    chunk0 <- Right (W.putNumber 2 (ros2Scout_msgsMsgScoutActuatorState_rpm value))
    chunk1 <- finite8 (ros2Scout_msgsMsgScoutActuatorState_current value) castDoubleToWord64
    chunk2 <- finite4 (ros2Scout_msgsMsgScoutActuatorState_driver_voltage value) castFloatToWord32
    chunk3 <- finite4 (ros2Scout_msgsMsgScoutActuatorState_driver_temperature value) castFloatToWord32
    chunk4 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutActuatorState_motor_temperature value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                ]
    if length bytes > 19 then Left 22 else Right bytes
-- | @brief Read every field of nested scout_msgs/msg/ScoutActuatorState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Scout_msgsMsgScoutActuatorState :: W.Parser Ros2Scout_msgsMsgScoutActuatorState
readRos2Scout_msgsMsgScoutActuatorState = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- castWord64ToDouble <$> W.number 8
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- fromIntegral <$> W.number 1
    let value =
            Ros2Scout_msgsMsgScoutActuatorState
                value0
                value1
                value2
                value3
                value4
    case encodeRos2Scout_msgsMsgScoutActuatorState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete scout_msgs/msg/ScoutActuatorState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Scout_msgsMsgScoutActuatorState :: [Word8] -> Either Word32 Ros2Scout_msgsMsgScoutActuatorState
decodeRos2Scout_msgsMsgScoutActuatorState bytes
    | length bytes < 19 || length bytes > 19 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Scout_msgsMsgScoutActuatorState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original scout_msgs/msg/ScoutLightCmd value.
-- | @details Retain every original field in declaration order. Canonical extent 5..5 bytes.
data Ros2Scout_msgsMsgScoutLightCmd = Ros2Scout_msgsMsgScoutLightCmd
    {
    -- | @brief Original scout_msgs/msg/ScoutLightCmd.cmd_ctrl_allowed field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutLightCmd_cmd_ctrl_allowed :: Bool
    ,
    -- | @brief Original scout_msgs/msg/ScoutLightCmd.front_mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutLightCmd_front_mode :: Word8
    ,
    -- | @brief Original scout_msgs/msg/ScoutLightCmd.front_custom_value field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutLightCmd_front_custom_value :: Word8
    ,
    -- | @brief Original scout_msgs/msg/ScoutLightCmd.rear_mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutLightCmd_rear_mode :: Word8
    ,
    -- | @brief Original scout_msgs/msg/ScoutLightCmd.rear_custom_value field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutLightCmd_rear_custom_value :: Word8
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Scout_msgsMsgScoutLightCmd :: Ros2Scout_msgsMsgScoutLightCmd
defaultRos2Scout_msgsMsgScoutLightCmd =
    Ros2Scout_msgsMsgScoutLightCmd
        (False)
        (0)
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Scout_msgsMsgScoutLightCmdCodecIdentity :: String
ros2Scout_msgsMsgScoutLightCmdCodecIdentity =
    "UWVMROS1_a82206813682fbf1a6b41009c12191ad9ce47c98444d8ea9792e7b212ee602d7"
-- | @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CONST_OFF constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Scout_msgsMsgScoutLightCmd_LIGHT_CONST_OFF :: Word8
ros2Scout_msgsMsgScoutLightCmd_LIGHT_CONST_OFF = 0
-- | @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CONST_ON constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Scout_msgsMsgScoutLightCmd_LIGHT_CONST_ON :: Word8
ros2Scout_msgsMsgScoutLightCmd_LIGHT_CONST_ON = 1
-- | @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_BREATH constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Scout_msgsMsgScoutLightCmd_LIGHT_BREATH :: Word8
ros2Scout_msgsMsgScoutLightCmd_LIGHT_BREATH = 2
-- | @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CUSTOM constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Scout_msgsMsgScoutLightCmd_LIGHT_CUSTOM :: Word8
ros2Scout_msgsMsgScoutLightCmd_LIGHT_CUSTOM = 3
-- | @brief Encode every field of complete scout_msgs/msg/ScoutLightCmd.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Scout_msgsMsgScoutLightCmd :: Ros2Scout_msgsMsgScoutLightCmd -> Either Word32 [Word8]
encodeRos2Scout_msgsMsgScoutLightCmd value = do
    chunk0 <- Right (W.putBool (ros2Scout_msgsMsgScoutLightCmd_cmd_ctrl_allowed value))
    chunk1 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutLightCmd_front_mode value))
    chunk2 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutLightCmd_front_custom_value value))
    chunk3 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutLightCmd_rear_mode value))
    chunk4 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutLightCmd_rear_custom_value value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                ]
    if length bytes > 5 then Left 22 else Right bytes
-- | @brief Read every field of nested scout_msgs/msg/ScoutLightCmd.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Scout_msgsMsgScoutLightCmd :: W.Parser Ros2Scout_msgsMsgScoutLightCmd
readRos2Scout_msgsMsgScoutLightCmd = do
    value0 <- W.boolean
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- fromIntegral <$> W.number 1
    value4 <- fromIntegral <$> W.number 1
    let value =
            Ros2Scout_msgsMsgScoutLightCmd
                value0
                value1
                value2
                value3
                value4
    case encodeRos2Scout_msgsMsgScoutLightCmd value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete scout_msgs/msg/ScoutLightCmd.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Scout_msgsMsgScoutLightCmd :: [Word8] -> Either Word32 Ros2Scout_msgsMsgScoutLightCmd
decodeRos2Scout_msgsMsgScoutLightCmd bytes
    | length bytes < 5 || length bytes > 5 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Scout_msgsMsgScoutLightCmd bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original scout_msgs/msg/ScoutLightState value.
-- | @details Retain every original field in declaration order. Canonical extent 2..2 bytes.
data Ros2Scout_msgsMsgScoutLightState = Ros2Scout_msgsMsgScoutLightState
    {
    -- | @brief Original scout_msgs/msg/ScoutLightState.mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutLightState_mode :: Word8
    ,
    -- | @brief Original scout_msgs/msg/ScoutLightState.custom_value field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutLightState_custom_value :: Word8
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Scout_msgsMsgScoutLightState :: Ros2Scout_msgsMsgScoutLightState
defaultRos2Scout_msgsMsgScoutLightState =
    Ros2Scout_msgsMsgScoutLightState
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Scout_msgsMsgScoutLightStateCodecIdentity :: String
ros2Scout_msgsMsgScoutLightStateCodecIdentity =
    "UWVMROS1_4f42b9365cc76673b156e725aac9448e0f0d806105d3717cdb2628c384a6d76a"
-- | @brief Encode every field of complete scout_msgs/msg/ScoutLightState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Scout_msgsMsgScoutLightState :: Ros2Scout_msgsMsgScoutLightState -> Either Word32 [Word8]
encodeRos2Scout_msgsMsgScoutLightState value = do
    chunk0 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutLightState_mode value))
    chunk1 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutLightState_custom_value value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 2 then Left 22 else Right bytes
-- | @brief Read every field of nested scout_msgs/msg/ScoutLightState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Scout_msgsMsgScoutLightState :: W.Parser Ros2Scout_msgsMsgScoutLightState
readRos2Scout_msgsMsgScoutLightState = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- fromIntegral <$> W.number 1
    let value =
            Ros2Scout_msgsMsgScoutLightState
                value0
                value1
    case encodeRos2Scout_msgsMsgScoutLightState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete scout_msgs/msg/ScoutLightState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Scout_msgsMsgScoutLightState :: [Word8] -> Either Word32 Ros2Scout_msgsMsgScoutLightState
decodeRos2Scout_msgsMsgScoutLightState bytes
    | length bytes < 2 || length bytes > 2 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Scout_msgsMsgScoutLightState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original scout_msgs/msg/ScoutRCState value.
-- | @details Retain every original field in declaration order. Canonical extent 9..9 bytes.
data Ros2Scout_msgsMsgScoutRCState = Ros2Scout_msgsMsgScoutRCState
    {
    -- | @brief Original scout_msgs/msg/ScoutRCState.swa field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutRCState_swa :: Word8
    ,
    -- | @brief Original scout_msgs/msg/ScoutRCState.swb field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutRCState_swb :: Word8
    ,
    -- | @brief Original scout_msgs/msg/ScoutRCState.swc field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutRCState_swc :: Word8
    ,
    -- | @brief Original scout_msgs/msg/ScoutRCState.swd field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutRCState_swd :: Word8
    ,
    -- | @brief Original scout_msgs/msg/ScoutRCState.stick_right_v field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutRCState_stick_right_v :: Int8
    ,
    -- | @brief Original scout_msgs/msg/ScoutRCState.stick_right_h field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutRCState_stick_right_h :: Int8
    ,
    -- | @brief Original scout_msgs/msg/ScoutRCState.stick_left_v field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutRCState_stick_left_v :: Int8
    ,
    -- | @brief Original scout_msgs/msg/ScoutRCState.stick_left_h field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutRCState_stick_left_h :: Int8
    ,
    -- | @brief Original scout_msgs/msg/ScoutRCState.var_a field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutRCState_var_a :: Int8
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Scout_msgsMsgScoutRCState :: Ros2Scout_msgsMsgScoutRCState
defaultRos2Scout_msgsMsgScoutRCState =
    Ros2Scout_msgsMsgScoutRCState
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Scout_msgsMsgScoutRCStateCodecIdentity :: String
ros2Scout_msgsMsgScoutRCStateCodecIdentity =
    "UWVMROS1_ba13e4c728041d14352c021fe5c1c5eee5d531c84ac64c61d944d6192dcd4298"
-- | @brief Encode every field of complete scout_msgs/msg/ScoutRCState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Scout_msgsMsgScoutRCState :: Ros2Scout_msgsMsgScoutRCState -> Either Word32 [Word8]
encodeRos2Scout_msgsMsgScoutRCState value = do
    chunk0 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutRCState_swa value))
    chunk1 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutRCState_swb value))
    chunk2 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutRCState_swc value))
    chunk3 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutRCState_swd value))
    chunk4 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutRCState_stick_right_v value))
    chunk5 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutRCState_stick_right_h value))
    chunk6 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutRCState_stick_left_v value))
    chunk7 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutRCState_stick_left_h value))
    chunk8 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutRCState_var_a value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                , chunk5
                , chunk6
                , chunk7
                , chunk8
                ]
    if length bytes > 9 then Left 22 else Right bytes
-- | @brief Read every field of nested scout_msgs/msg/ScoutRCState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Scout_msgsMsgScoutRCState :: W.Parser Ros2Scout_msgsMsgScoutRCState
readRos2Scout_msgsMsgScoutRCState = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- fromIntegral <$> W.number 1
    value4 <- fromIntegral <$> W.number 1
    value5 <- fromIntegral <$> W.number 1
    value6 <- fromIntegral <$> W.number 1
    value7 <- fromIntegral <$> W.number 1
    value8 <- fromIntegral <$> W.number 1
    let value =
            Ros2Scout_msgsMsgScoutRCState
                value0
                value1
                value2
                value3
                value4
                value5
                value6
                value7
                value8
    case encodeRos2Scout_msgsMsgScoutRCState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete scout_msgs/msg/ScoutRCState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Scout_msgsMsgScoutRCState :: [Word8] -> Either Word32 Ros2Scout_msgsMsgScoutRCState
decodeRos2Scout_msgsMsgScoutRCState bytes
    | length bytes < 9 || length bytes > 9 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Scout_msgsMsgScoutRCState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original scout_msgs/msg/ScoutStatus value.
-- | @details Retain every original field in declaration order. Canonical extent 121..249 bytes.
data Ros2Scout_msgsMsgScoutStatus = Ros2Scout_msgsMsgScoutStatus
    {
    -- | @brief Original scout_msgs/msg/ScoutStatus.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Scout_msgsMsgScoutStatus_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original scout_msgs/msg/ScoutStatus.linear_velocity field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutStatus_linear_velocity :: Double
    ,
    -- | @brief Original scout_msgs/msg/ScoutStatus.angular_velocity field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutStatus_angular_velocity :: Double
    ,
    -- | @brief Original scout_msgs/msg/ScoutStatus.vehicle_state field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutStatus_vehicle_state :: Word8
    ,
    -- | @brief Original scout_msgs/msg/ScoutStatus.control_mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutStatus_control_mode :: Word8
    ,
    -- | @brief Original scout_msgs/msg/ScoutStatus.error_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutStatus_error_code :: Word16
    ,
    -- | @brief Original scout_msgs/msg/ScoutStatus.battery_voltage field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutStatus_battery_voltage :: Double
    ,
    -- | @brief Original scout_msgs/msg/ScoutStatus.actuator_states field.
    -- | @details Original type scout_msgs/msg/ScoutActuatorState. Shape array; bound/count 4
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Scout_msgsMsgScoutStatus_actuator_states :: [Ros2Scout_msgsMsgScoutActuatorState]
    ,
    -- | @brief Original scout_msgs/msg/ScoutStatus.light_control_enabled field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Scout_msgsMsgScoutStatus_light_control_enabled :: Bool
    ,
    -- | @brief Original scout_msgs/msg/ScoutStatus.front_light_state field.
    -- | @details Original type scout_msgs/msg/ScoutLightState. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Scout_msgsMsgScoutStatus_front_light_state :: Ros2Scout_msgsMsgScoutLightState
    ,
    -- | @brief Original scout_msgs/msg/ScoutStatus.rear_light_state field.
    -- | @details Original type scout_msgs/msg/ScoutLightState. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Scout_msgsMsgScoutStatus_rear_light_state :: Ros2Scout_msgsMsgScoutLightState
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Scout_msgsMsgScoutStatus :: Ros2Scout_msgsMsgScoutStatus
defaultRos2Scout_msgsMsgScoutStatus =
    Ros2Scout_msgsMsgScoutStatus
        (defaultRos2Std_msgsMsgHeader)
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (replicate 4 (defaultRos2Scout_msgsMsgScoutActuatorState))
        (False)
        (defaultRos2Scout_msgsMsgScoutLightState)
        (defaultRos2Scout_msgsMsgScoutLightState)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Scout_msgsMsgScoutStatusCodecIdentity :: String
ros2Scout_msgsMsgScoutStatusCodecIdentity =
    "UWVMROS1_75db4db1dcc07210d543b8e6bd6b6a7aadbf23db8043ff372a3b224c5c235b86"
-- | @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_FRONT_RIGHT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Scout_msgsMsgScoutStatus_MOTOR_ID_FRONT_RIGHT :: Int8
ros2Scout_msgsMsgScoutStatus_MOTOR_ID_FRONT_RIGHT = 0
-- | @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_FRONT_LEFT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Scout_msgsMsgScoutStatus_MOTOR_ID_FRONT_LEFT :: Int8
ros2Scout_msgsMsgScoutStatus_MOTOR_ID_FRONT_LEFT = 1
-- | @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_REAR_RIGHT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Scout_msgsMsgScoutStatus_MOTOR_ID_REAR_RIGHT :: Int8
ros2Scout_msgsMsgScoutStatus_MOTOR_ID_REAR_RIGHT = 2
-- | @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_REAR_LEFT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Scout_msgsMsgScoutStatus_MOTOR_ID_REAR_LEFT :: Int8
ros2Scout_msgsMsgScoutStatus_MOTOR_ID_REAR_LEFT = 3
-- | @brief Original scout_msgs/msg/ScoutStatus.LIGHT_ID_FRONT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Scout_msgsMsgScoutStatus_LIGHT_ID_FRONT :: Int8
ros2Scout_msgsMsgScoutStatus_LIGHT_ID_FRONT = 0
-- | @brief Original scout_msgs/msg/ScoutStatus.LIGHT_ID_REAR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Scout_msgsMsgScoutStatus_LIGHT_ID_REAR :: Int8
ros2Scout_msgsMsgScoutStatus_LIGHT_ID_REAR = 1
-- | @brief Encode every field of complete scout_msgs/msg/ScoutStatus.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Scout_msgsMsgScoutStatus :: Ros2Scout_msgsMsgScoutStatus -> Either Word32 [Word8]
encodeRos2Scout_msgsMsgScoutStatus value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Scout_msgsMsgScoutStatus_header value)
    chunk1 <- finite8 (ros2Scout_msgsMsgScoutStatus_linear_velocity value) castDoubleToWord64
    chunk2 <- finite8 (ros2Scout_msgsMsgScoutStatus_angular_velocity value) castDoubleToWord64
    chunk3 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutStatus_vehicle_state value))
    chunk4 <- Right (W.putNumber 1 (ros2Scout_msgsMsgScoutStatus_control_mode value))
    chunk5 <- Right (W.putNumber 2 (ros2Scout_msgsMsgScoutStatus_error_code value))
    chunk6 <- finite8 (ros2Scout_msgsMsgScoutStatus_battery_voltage value) castDoubleToWord64
    if length (ros2Scout_msgsMsgScoutStatus_actuator_states value) == 4 then Right () else Left 22
    item7 <-
        concat <$> mapM
            (\element -> encodeRos2Scout_msgsMsgScoutActuatorState (element))
            (ros2Scout_msgsMsgScoutStatus_actuator_states value)
    chunk7 <- Right item7
    chunk8 <- Right (W.putBool (ros2Scout_msgsMsgScoutStatus_light_control_enabled value))
    chunk9 <- encodeRos2Scout_msgsMsgScoutLightState (ros2Scout_msgsMsgScoutStatus_front_light_state value)
    chunk10 <- encodeRos2Scout_msgsMsgScoutLightState (ros2Scout_msgsMsgScoutStatus_rear_light_state value)
    let bytes =
            concat
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
                ]
    if length bytes > 249 then Left 22 else Right bytes
-- | @brief Read every field of nested scout_msgs/msg/ScoutStatus.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Scout_msgsMsgScoutStatus :: W.Parser Ros2Scout_msgsMsgScoutStatus
readRos2Scout_msgsMsgScoutStatus = do
    value0 <- readRos2Std_msgsMsgHeader
    value1 <- castWord64ToDouble <$> W.number 8
    value2 <- castWord64ToDouble <$> W.number 8
    value3 <- fromIntegral <$> W.number 1
    value4 <- fromIntegral <$> W.number 1
    value5 <- fromIntegral <$> W.number 2
    value6 <- castWord64ToDouble <$> W.number 8
    value7 <- replicateM 4 (readRos2Scout_msgsMsgScoutActuatorState)
    value8 <- W.boolean
    value9 <- readRos2Scout_msgsMsgScoutLightState
    value10 <- readRos2Scout_msgsMsgScoutLightState
    let value =
            Ros2Scout_msgsMsgScoutStatus
                value0
                value1
                value2
                value3
                value4
                value5
                value6
                value7
                value8
                value9
                value10
    case encodeRos2Scout_msgsMsgScoutStatus value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete scout_msgs/msg/ScoutStatus.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Scout_msgsMsgScoutStatus :: [Word8] -> Either Word32 Ros2Scout_msgsMsgScoutStatus
decodeRos2Scout_msgsMsgScoutStatus bytes
    | length bytes < 121 || length bytes > 249 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Scout_msgsMsgScoutStatus bytes
        if null remaining then Right value else Left 22

-- | @brief Preserve a raw-byte string domain.
-- | @param capacity Finite bound.
-- @param bytes Owned original bytes.
-- @return Count and bytes or error 22.
rawText :: Int -> [Word8] -> Either Word32 [Word8]
rawText capacity bytes = if length bytes > capacity then Left 22
    else Right (W.putNumber 4 (length bytes) ++ bytes)
-- | @brief Read bounded raw text without Unicode coercion.
-- | @return Owned parser value.
readRaw :: Int -> W.Parser [Word8]
readRaw capacity = do
    count <- W.number 4
    if count > fromIntegral capacity then W.reject else W.takeBytes (fromIntegral count)
-- | @brief Encode finite Float32 bits unchanged.
-- | @return Four bytes or error 22.
finite4 :: Float -> (Float -> Word32) -> Either Word32 [Word8]
finite4 value cast = if isNaN value || isInfinite value then Left 22
    else Right (W.putNumber 4 (cast value))
-- | @brief Encode finite Float64 bits unchanged.
-- | @return Eight bytes or error 22.
finite8 :: Double -> (Double -> Word64) -> Either Word32 [Word8]
finite8 value cast = if isNaN value || isInfinite value then Left 22
    else Right (W.putNumber 8 (cast value))

