-- | @file Records.hs
-- @brief Complete original agilex ROS 1 Haskell records and codecs.
-- @details Owned immutable values preserve all fields; constructing them grants no ROS authority.
module Agilex.Ros1.Records where
import Data.Int
import Data.Word
import Data.Bits
import GHC.Float
import qualified Data.Text as T
import Control.Monad (replicateM)
import qualified Native.Wire as W

-- | @brief Complete original geometry_msgs/Point value.
-- | @details Retain every original field in declaration order. Canonical extent 24..24 bytes.
data Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint
    {
    -- | @brief Original geometry_msgs/Point.x field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Geometry_msgsPoint_x :: Double
    ,
    -- | @brief Original geometry_msgs/Point.y field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Geometry_msgsPoint_y :: Double
    ,
    -- | @brief Original geometry_msgs/Point.z field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Geometry_msgsPoint_z :: Double
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos1Geometry_msgsPoint :: Ros1Geometry_msgsPoint
defaultRos1Geometry_msgsPoint =
    Ros1Geometry_msgsPoint
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Geometry_msgsPointCodecIdentity :: String
ros1Geometry_msgsPointCodecIdentity =
    "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"
-- | @brief Encode every field of complete geometry_msgs/Point.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Geometry_msgsPoint :: Ros1Geometry_msgsPoint -> Either Word32 [Word8]
encodeRos1Geometry_msgsPoint value = do
    chunk0 <- finite8 (ros1Geometry_msgsPoint_x value) castDoubleToWord64
    chunk1 <- finite8 (ros1Geometry_msgsPoint_y value) castDoubleToWord64
    chunk2 <- finite8 (ros1Geometry_msgsPoint_z value) castDoubleToWord64
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 24 then Left 22 else Right bytes
-- | @brief Read every field of nested geometry_msgs/Point.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Geometry_msgsPoint :: W.Parser Ros1Geometry_msgsPoint
readRos1Geometry_msgsPoint = do
    value0 <- castWord64ToDouble <$> W.number 8
    value1 <- castWord64ToDouble <$> W.number 8
    value2 <- castWord64ToDouble <$> W.number 8
    let value =
            Ros1Geometry_msgsPoint
                value0
                value1
                value2
    case encodeRos1Geometry_msgsPoint value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete geometry_msgs/Point.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Geometry_msgsPoint :: [Word8] -> Either Word32 Ros1Geometry_msgsPoint
decodeRos1Geometry_msgsPoint bytes
    | length bytes < 24 || length bytes > 24 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Geometry_msgsPoint bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original geometry_msgs/Quaternion value.
-- | @details Retain every original field in declaration order. Canonical extent 32..32 bytes.
data Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion
    {
    -- | @brief Original geometry_msgs/Quaternion.x field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Geometry_msgsQuaternion_x :: Double
    ,
    -- | @brief Original geometry_msgs/Quaternion.y field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Geometry_msgsQuaternion_y :: Double
    ,
    -- | @brief Original geometry_msgs/Quaternion.z field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Geometry_msgsQuaternion_z :: Double
    ,
    -- | @brief Original geometry_msgs/Quaternion.w field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Geometry_msgsQuaternion_w :: Double
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos1Geometry_msgsQuaternion :: Ros1Geometry_msgsQuaternion
defaultRos1Geometry_msgsQuaternion =
    Ros1Geometry_msgsQuaternion
        (0)
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Geometry_msgsQuaternionCodecIdentity :: String
ros1Geometry_msgsQuaternionCodecIdentity =
    "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"
-- | @brief Encode every field of complete geometry_msgs/Quaternion.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Geometry_msgsQuaternion :: Ros1Geometry_msgsQuaternion -> Either Word32 [Word8]
encodeRos1Geometry_msgsQuaternion value = do
    chunk0 <- finite8 (ros1Geometry_msgsQuaternion_x value) castDoubleToWord64
    chunk1 <- finite8 (ros1Geometry_msgsQuaternion_y value) castDoubleToWord64
    chunk2 <- finite8 (ros1Geometry_msgsQuaternion_z value) castDoubleToWord64
    chunk3 <- finite8 (ros1Geometry_msgsQuaternion_w value) castDoubleToWord64
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                ]
    if length bytes > 32 then Left 22 else Right bytes
-- | @brief Read every field of nested geometry_msgs/Quaternion.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Geometry_msgsQuaternion :: W.Parser Ros1Geometry_msgsQuaternion
readRos1Geometry_msgsQuaternion = do
    value0 <- castWord64ToDouble <$> W.number 8
    value1 <- castWord64ToDouble <$> W.number 8
    value2 <- castWord64ToDouble <$> W.number 8
    value3 <- castWord64ToDouble <$> W.number 8
    let value =
            Ros1Geometry_msgsQuaternion
                value0
                value1
                value2
                value3
    case encodeRos1Geometry_msgsQuaternion value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete geometry_msgs/Quaternion.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Geometry_msgsQuaternion :: [Word8] -> Either Word32 Ros1Geometry_msgsQuaternion
decodeRos1Geometry_msgsQuaternion bytes
    | length bytes < 32 || length bytes > 32 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Geometry_msgsQuaternion bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original geometry_msgs/Pose value.
-- | @details Retain every original field in declaration order. Canonical extent 56..56 bytes.
data Ros1Geometry_msgsPose = Ros1Geometry_msgsPose
    {
    -- | @brief Original geometry_msgs/Pose.position field.
    -- | @details Original type geometry_msgs/Point. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Geometry_msgsPose_position :: Ros1Geometry_msgsPoint
    ,
    -- | @brief Original geometry_msgs/Pose.orientation field.
    -- | @details Original type geometry_msgs/Quaternion. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros1Geometry_msgsPose_orientation :: Ros1Geometry_msgsQuaternion
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos1Geometry_msgsPose :: Ros1Geometry_msgsPose
defaultRos1Geometry_msgsPose =
    Ros1Geometry_msgsPose
        (defaultRos1Geometry_msgsPoint)
        (defaultRos1Geometry_msgsQuaternion)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Geometry_msgsPoseCodecIdentity :: String
ros1Geometry_msgsPoseCodecIdentity =
    "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"
-- | @brief Encode every field of complete geometry_msgs/Pose.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Geometry_msgsPose :: Ros1Geometry_msgsPose -> Either Word32 [Word8]
encodeRos1Geometry_msgsPose value = do
    chunk0 <- encodeRos1Geometry_msgsPoint (ros1Geometry_msgsPose_position value)
    chunk1 <- encodeRos1Geometry_msgsQuaternion (ros1Geometry_msgsPose_orientation value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 56 then Left 22 else Right bytes
-- | @brief Read every field of nested geometry_msgs/Pose.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Geometry_msgsPose :: W.Parser Ros1Geometry_msgsPose
readRos1Geometry_msgsPose = do
    value0 <- readRos1Geometry_msgsPoint
    value1 <- readRos1Geometry_msgsQuaternion
    let value =
            Ros1Geometry_msgsPose
                value0
                value1
    case encodeRos1Geometry_msgsPose value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete geometry_msgs/Pose.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Geometry_msgsPose :: [Word8] -> Either Word32 Ros1Geometry_msgsPose
decodeRos1Geometry_msgsPose bytes
    | length bytes < 56 || length bytes > 56 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Geometry_msgsPose bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original geometry_msgs/PoseWithCovariance value.
-- | @details Retain every original field in declaration order. Canonical extent 344..344 bytes.
data Ros1Geometry_msgsPoseWithCovariance = Ros1Geometry_msgsPoseWithCovariance
    {
    -- | @brief Original geometry_msgs/PoseWithCovariance.pose field.
    -- | @details Original type geometry_msgs/Pose. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Geometry_msgsPoseWithCovariance_pose :: Ros1Geometry_msgsPose
    ,
    -- | @brief Original geometry_msgs/PoseWithCovariance.covariance field.
    -- | @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Geometry_msgsPoseWithCovariance_covariance :: [Double]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos1Geometry_msgsPoseWithCovariance :: Ros1Geometry_msgsPoseWithCovariance
defaultRos1Geometry_msgsPoseWithCovariance =
    Ros1Geometry_msgsPoseWithCovariance
        (defaultRos1Geometry_msgsPose)
        (replicate 36 (0))
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Geometry_msgsPoseWithCovarianceCodecIdentity :: String
ros1Geometry_msgsPoseWithCovarianceCodecIdentity =
    "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf"
-- | @brief Encode every field of complete geometry_msgs/PoseWithCovariance.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Geometry_msgsPoseWithCovariance :: Ros1Geometry_msgsPoseWithCovariance -> Either Word32 [Word8]
encodeRos1Geometry_msgsPoseWithCovariance value = do
    chunk0 <- encodeRos1Geometry_msgsPose (ros1Geometry_msgsPoseWithCovariance_pose value)
    if length (ros1Geometry_msgsPoseWithCovariance_covariance value) == 36 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> finite8 (element) castDoubleToWord64)
            (ros1Geometry_msgsPoseWithCovariance_covariance value)
    chunk1 <- Right item1
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 344 then Left 22 else Right bytes
-- | @brief Read every field of nested geometry_msgs/PoseWithCovariance.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Geometry_msgsPoseWithCovariance :: W.Parser Ros1Geometry_msgsPoseWithCovariance
readRos1Geometry_msgsPoseWithCovariance = do
    value0 <- readRos1Geometry_msgsPose
    value1 <- replicateM 36 (castWord64ToDouble <$> W.number 8)
    let value =
            Ros1Geometry_msgsPoseWithCovariance
                value0
                value1
    case encodeRos1Geometry_msgsPoseWithCovariance value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete geometry_msgs/PoseWithCovariance.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Geometry_msgsPoseWithCovariance :: [Word8] -> Either Word32 Ros1Geometry_msgsPoseWithCovariance
decodeRos1Geometry_msgsPoseWithCovariance bytes
    | length bytes < 344 || length bytes > 344 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Geometry_msgsPoseWithCovariance bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original geometry_msgs/Vector3 value.
-- | @details Retain every original field in declaration order. Canonical extent 24..24 bytes.
data Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3
    {
    -- | @brief Original geometry_msgs/Vector3.x field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Geometry_msgsVector3_x :: Double
    ,
    -- | @brief Original geometry_msgs/Vector3.y field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Geometry_msgsVector3_y :: Double
    ,
    -- | @brief Original geometry_msgs/Vector3.z field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Geometry_msgsVector3_z :: Double
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos1Geometry_msgsVector3 :: Ros1Geometry_msgsVector3
defaultRos1Geometry_msgsVector3 =
    Ros1Geometry_msgsVector3
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Geometry_msgsVector3CodecIdentity :: String
ros1Geometry_msgsVector3CodecIdentity =
    "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc"
-- | @brief Encode every field of complete geometry_msgs/Vector3.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Geometry_msgsVector3 :: Ros1Geometry_msgsVector3 -> Either Word32 [Word8]
encodeRos1Geometry_msgsVector3 value = do
    chunk0 <- finite8 (ros1Geometry_msgsVector3_x value) castDoubleToWord64
    chunk1 <- finite8 (ros1Geometry_msgsVector3_y value) castDoubleToWord64
    chunk2 <- finite8 (ros1Geometry_msgsVector3_z value) castDoubleToWord64
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 24 then Left 22 else Right bytes
-- | @brief Read every field of nested geometry_msgs/Vector3.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Geometry_msgsVector3 :: W.Parser Ros1Geometry_msgsVector3
readRos1Geometry_msgsVector3 = do
    value0 <- castWord64ToDouble <$> W.number 8
    value1 <- castWord64ToDouble <$> W.number 8
    value2 <- castWord64ToDouble <$> W.number 8
    let value =
            Ros1Geometry_msgsVector3
                value0
                value1
                value2
    case encodeRos1Geometry_msgsVector3 value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete geometry_msgs/Vector3.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Geometry_msgsVector3 :: [Word8] -> Either Word32 Ros1Geometry_msgsVector3
decodeRos1Geometry_msgsVector3 bytes
    | length bytes < 24 || length bytes > 24 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Geometry_msgsVector3 bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original geometry_msgs/Twist value.
-- | @details Retain every original field in declaration order. Canonical extent 48..48 bytes.
data Ros1Geometry_msgsTwist = Ros1Geometry_msgsTwist
    {
    -- | @brief Original geometry_msgs/Twist.linear field.
    -- | @details Original type geometry_msgs/Vector3. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros1Geometry_msgsTwist_linear :: Ros1Geometry_msgsVector3
    ,
    -- | @brief Original geometry_msgs/Twist.angular field.
    -- | @details Original type geometry_msgs/Vector3. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros1Geometry_msgsTwist_angular :: Ros1Geometry_msgsVector3
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos1Geometry_msgsTwist :: Ros1Geometry_msgsTwist
defaultRos1Geometry_msgsTwist =
    Ros1Geometry_msgsTwist
        (defaultRos1Geometry_msgsVector3)
        (defaultRos1Geometry_msgsVector3)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Geometry_msgsTwistCodecIdentity :: String
ros1Geometry_msgsTwistCodecIdentity =
    "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921"
-- | @brief Encode every field of complete geometry_msgs/Twist.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Geometry_msgsTwist :: Ros1Geometry_msgsTwist -> Either Word32 [Word8]
encodeRos1Geometry_msgsTwist value = do
    chunk0 <- encodeRos1Geometry_msgsVector3 (ros1Geometry_msgsTwist_linear value)
    chunk1 <- encodeRos1Geometry_msgsVector3 (ros1Geometry_msgsTwist_angular value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 48 then Left 22 else Right bytes
-- | @brief Read every field of nested geometry_msgs/Twist.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Geometry_msgsTwist :: W.Parser Ros1Geometry_msgsTwist
readRos1Geometry_msgsTwist = do
    value0 <- readRos1Geometry_msgsVector3
    value1 <- readRos1Geometry_msgsVector3
    let value =
            Ros1Geometry_msgsTwist
                value0
                value1
    case encodeRos1Geometry_msgsTwist value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete geometry_msgs/Twist.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Geometry_msgsTwist :: [Word8] -> Either Word32 Ros1Geometry_msgsTwist
decodeRos1Geometry_msgsTwist bytes
    | length bytes < 48 || length bytes > 48 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Geometry_msgsTwist bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original geometry_msgs/TwistWithCovariance value.
-- | @details Retain every original field in declaration order. Canonical extent 336..336 bytes.
data Ros1Geometry_msgsTwistWithCovariance = Ros1Geometry_msgsTwistWithCovariance
    {
    -- | @brief Original geometry_msgs/TwistWithCovariance.twist field.
    -- | @details Original type geometry_msgs/Twist. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Geometry_msgsTwistWithCovariance_twist :: Ros1Geometry_msgsTwist
    ,
    -- | @brief Original geometry_msgs/TwistWithCovariance.covariance field.
    -- | @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Geometry_msgsTwistWithCovariance_covariance :: [Double]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos1Geometry_msgsTwistWithCovariance :: Ros1Geometry_msgsTwistWithCovariance
defaultRos1Geometry_msgsTwistWithCovariance =
    Ros1Geometry_msgsTwistWithCovariance
        (defaultRos1Geometry_msgsTwist)
        (replicate 36 (0))
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Geometry_msgsTwistWithCovarianceCodecIdentity :: String
ros1Geometry_msgsTwistWithCovarianceCodecIdentity =
    "UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf"
-- | @brief Encode every field of complete geometry_msgs/TwistWithCovariance.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Geometry_msgsTwistWithCovariance :: Ros1Geometry_msgsTwistWithCovariance -> Either Word32 [Word8]
encodeRos1Geometry_msgsTwistWithCovariance value = do
    chunk0 <- encodeRos1Geometry_msgsTwist (ros1Geometry_msgsTwistWithCovariance_twist value)
    if length (ros1Geometry_msgsTwistWithCovariance_covariance value) == 36 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> finite8 (element) castDoubleToWord64)
            (ros1Geometry_msgsTwistWithCovariance_covariance value)
    chunk1 <- Right item1
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 336 then Left 22 else Right bytes
-- | @brief Read every field of nested geometry_msgs/TwistWithCovariance.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Geometry_msgsTwistWithCovariance :: W.Parser Ros1Geometry_msgsTwistWithCovariance
readRos1Geometry_msgsTwistWithCovariance = do
    value0 <- readRos1Geometry_msgsTwist
    value1 <- replicateM 36 (castWord64ToDouble <$> W.number 8)
    let value =
            Ros1Geometry_msgsTwistWithCovariance
                value0
                value1
    case encodeRos1Geometry_msgsTwistWithCovariance value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete geometry_msgs/TwistWithCovariance.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Geometry_msgsTwistWithCovariance :: [Word8] -> Either Word32 Ros1Geometry_msgsTwistWithCovariance
decodeRos1Geometry_msgsTwistWithCovariance bytes
    | length bytes < 336 || length bytes > 336 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Geometry_msgsTwistWithCovariance bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original time value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros1Time = Ros1Time
    {
    -- | @brief Original time.sec field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Time_sec :: Word32
    ,
    -- | @brief Original time.nsec field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Time_nsec :: Word32
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos1Time :: Ros1Time
defaultRos1Time =
    Ros1Time
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1TimeCodecIdentity :: String
ros1TimeCodecIdentity =
    "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
-- | @brief Encode every field of complete time.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Time :: Ros1Time -> Either Word32 [Word8]
encodeRos1Time value = do
    if
        ((ros1Time_nsec value) >= 1000000000
        ) then Left 22 else Right ()
    chunk0 <- Right (W.putNumber 4 (ros1Time_sec value))
    chunk1 <- Right (W.putNumber 4 (ros1Time_nsec value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested time.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Time :: W.Parser Ros1Time
readRos1Time = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value =
            Ros1Time
                value0
                value1
    case encodeRos1Time value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete time.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Time :: [Word8] -> Either Word32 Ros1Time
decodeRos1Time bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Time bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original std_msgs/Header value.
-- | @details Retain every original field in declaration order. Canonical extent 16..144 bytes.
data Ros1Std_msgsHeader = Ros1Std_msgsHeader
    {
    -- | @brief Original std_msgs/Header.seq field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Std_msgsHeader_seq :: Word32
    ,
    -- | @brief Original std_msgs/Header.stamp field.
    -- | @details Original type time. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Std_msgsHeader_stamp :: Ros1Time
    ,
    -- | @brief Original std_msgs/Header.frame_id field.
    -- | @details Original type string. String bound 128 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Std_msgsHeader_frame_id :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos1Std_msgsHeader :: Ros1Std_msgsHeader
defaultRos1Std_msgsHeader =
    Ros1Std_msgsHeader
        (0)
        (defaultRos1Time)
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Std_msgsHeaderCodecIdentity :: String
ros1Std_msgsHeaderCodecIdentity =
    "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"
-- | @brief Encode every field of complete std_msgs/Header.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Std_msgsHeader :: Ros1Std_msgsHeader -> Either Word32 [Word8]
encodeRos1Std_msgsHeader value = do
    chunk0 <- Right (W.putNumber 4 (ros1Std_msgsHeader_seq value))
    chunk1 <- encodeRos1Time (ros1Std_msgsHeader_stamp value)
    chunk2 <- W.putText 128 (ros1Std_msgsHeader_frame_id value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 144 then Left 22 else Right bytes
-- | @brief Read every field of nested std_msgs/Header.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Std_msgsHeader :: W.Parser Ros1Std_msgsHeader
readRos1Std_msgsHeader = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- readRos1Time
    value2 <- W.text 128
    let value =
            Ros1Std_msgsHeader
                value0
                value1
                value2
    case encodeRos1Std_msgsHeader value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete std_msgs/Header.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Std_msgsHeader :: [Word8] -> Either Word32 Ros1Std_msgsHeader
decodeRos1Std_msgsHeader bytes
    | length bytes < 16 || length bytes > 144 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Std_msgsHeader bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original nav_msgs/Odometry value.
-- | @details Retain every original field in declaration order. Canonical extent 700..956 bytes.
data Ros1Nav_msgsOdometry = Ros1Nav_msgsOdometry
    {
    -- | @brief Original nav_msgs/Odometry.header field.
    -- | @details Original type std_msgs/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Nav_msgsOdometry_header :: Ros1Std_msgsHeader
    ,
    -- | @brief Original nav_msgs/Odometry.child_frame_id field.
    -- | @details Original type string. String bound 128 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Nav_msgsOdometry_child_frame_id :: [Word8]
    ,
    -- | @brief Original nav_msgs/Odometry.pose field.
    -- | @details Original type geometry_msgs/PoseWithCovariance. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Nav_msgsOdometry_pose :: Ros1Geometry_msgsPoseWithCovariance
    ,
    -- | @brief Original nav_msgs/Odometry.twist field.
    -- | @details Original type geometry_msgs/TwistWithCovariance. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Nav_msgsOdometry_twist :: Ros1Geometry_msgsTwistWithCovariance
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos1Nav_msgsOdometry :: Ros1Nav_msgsOdometry
defaultRos1Nav_msgsOdometry =
    Ros1Nav_msgsOdometry
        (defaultRos1Std_msgsHeader)
        ([])
        (defaultRos1Geometry_msgsPoseWithCovariance)
        (defaultRos1Geometry_msgsTwistWithCovariance)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Nav_msgsOdometryCodecIdentity :: String
ros1Nav_msgsOdometryCodecIdentity =
    "UWVMROS1_c10d3ce1f2824c33d728d0006fb83134330d0332af122f179cf2dac32181a2ca"
-- | @brief Encode every field of complete nav_msgs/Odometry.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Nav_msgsOdometry :: Ros1Nav_msgsOdometry -> Either Word32 [Word8]
encodeRos1Nav_msgsOdometry value = do
    chunk0 <- encodeRos1Std_msgsHeader (ros1Nav_msgsOdometry_header value)
    chunk1 <- W.putText 128 (ros1Nav_msgsOdometry_child_frame_id value)
    chunk2 <- encodeRos1Geometry_msgsPoseWithCovariance (ros1Nav_msgsOdometry_pose value)
    chunk3 <- encodeRos1Geometry_msgsTwistWithCovariance (ros1Nav_msgsOdometry_twist value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                ]
    if length bytes > 956 then Left 22 else Right bytes
-- | @brief Read every field of nested nav_msgs/Odometry.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Nav_msgsOdometry :: W.Parser Ros1Nav_msgsOdometry
readRos1Nav_msgsOdometry = do
    value0 <- readRos1Std_msgsHeader
    value1 <- W.text 128
    value2 <- readRos1Geometry_msgsPoseWithCovariance
    value3 <- readRos1Geometry_msgsTwistWithCovariance
    let value =
            Ros1Nav_msgsOdometry
                value0
                value1
                value2
                value3
    case encodeRos1Nav_msgsOdometry value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete nav_msgs/Odometry.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Nav_msgsOdometry :: [Word8] -> Either Word32 Ros1Nav_msgsOdometry
decodeRos1Nav_msgsOdometry bytes
    | length bytes < 700 || length bytes > 956 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Nav_msgsOdometry bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original scout_msgs/ScoutBmsStatus value.
-- | @details Retain every original field in declaration order. Canonical extent 44..44 bytes.
data Ros1Scout_msgsScoutBmsStatus = Ros1Scout_msgsScoutBmsStatus
    {
    -- | @brief Original scout_msgs/ScoutBmsStatus.SOC field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutBmsStatus_SOC :: Double
    ,
    -- | @brief Original scout_msgs/ScoutBmsStatus.SOH field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutBmsStatus_SOH :: Double
    ,
    -- | @brief Original scout_msgs/ScoutBmsStatus.battery_voltage field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutBmsStatus_battery_voltage :: Double
    ,
    -- | @brief Original scout_msgs/ScoutBmsStatus.battery_current field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutBmsStatus_battery_current :: Double
    ,
    -- | @brief Original scout_msgs/ScoutBmsStatus.battery_temperature field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutBmsStatus_battery_temperature :: Double
    ,
    -- | @brief Original scout_msgs/ScoutBmsStatus.Alarm_Status_1 field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutBmsStatus_Alarm_Status_1 :: Word8
    ,
    -- | @brief Original scout_msgs/ScoutBmsStatus.Alarm_Status_2 field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutBmsStatus_Alarm_Status_2 :: Word8
    ,
    -- | @brief Original scout_msgs/ScoutBmsStatus.Warning_Status_1 field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutBmsStatus_Warning_Status_1 :: Word8
    ,
    -- | @brief Original scout_msgs/ScoutBmsStatus.Warning_Status_2 field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutBmsStatus_Warning_Status_2 :: Word8
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos1Scout_msgsScoutBmsStatus :: Ros1Scout_msgsScoutBmsStatus
defaultRos1Scout_msgsScoutBmsStatus =
    Ros1Scout_msgsScoutBmsStatus
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
ros1Scout_msgsScoutBmsStatusCodecIdentity :: String
ros1Scout_msgsScoutBmsStatusCodecIdentity =
    "UWVMROS1_6921538c08e86ab5b9ecdbf974c6cb5b580488f4ed96ccbdb8b7824d51e9cf95"
-- | @brief Encode every field of complete scout_msgs/ScoutBmsStatus.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Scout_msgsScoutBmsStatus :: Ros1Scout_msgsScoutBmsStatus -> Either Word32 [Word8]
encodeRos1Scout_msgsScoutBmsStatus value = do
    chunk0 <- finite8 (ros1Scout_msgsScoutBmsStatus_SOC value) castDoubleToWord64
    chunk1 <- finite8 (ros1Scout_msgsScoutBmsStatus_SOH value) castDoubleToWord64
    chunk2 <- finite8 (ros1Scout_msgsScoutBmsStatus_battery_voltage value) castDoubleToWord64
    chunk3 <- finite8 (ros1Scout_msgsScoutBmsStatus_battery_current value) castDoubleToWord64
    chunk4 <- finite8 (ros1Scout_msgsScoutBmsStatus_battery_temperature value) castDoubleToWord64
    chunk5 <- Right (W.putNumber 1 (ros1Scout_msgsScoutBmsStatus_Alarm_Status_1 value))
    chunk6 <- Right (W.putNumber 1 (ros1Scout_msgsScoutBmsStatus_Alarm_Status_2 value))
    chunk7 <- Right (W.putNumber 1 (ros1Scout_msgsScoutBmsStatus_Warning_Status_1 value))
    chunk8 <- Right (W.putNumber 1 (ros1Scout_msgsScoutBmsStatus_Warning_Status_2 value))
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
    if length bytes > 44 then Left 22 else Right bytes
-- | @brief Read every field of nested scout_msgs/ScoutBmsStatus.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Scout_msgsScoutBmsStatus :: W.Parser Ros1Scout_msgsScoutBmsStatus
readRos1Scout_msgsScoutBmsStatus = do
    value0 <- castWord64ToDouble <$> W.number 8
    value1 <- castWord64ToDouble <$> W.number 8
    value2 <- castWord64ToDouble <$> W.number 8
    value3 <- castWord64ToDouble <$> W.number 8
    value4 <- castWord64ToDouble <$> W.number 8
    value5 <- fromIntegral <$> W.number 1
    value6 <- fromIntegral <$> W.number 1
    value7 <- fromIntegral <$> W.number 1
    value8 <- fromIntegral <$> W.number 1
    let value =
            Ros1Scout_msgsScoutBmsStatus
                value0
                value1
                value2
                value3
                value4
                value5
                value6
                value7
                value8
    case encodeRos1Scout_msgsScoutBmsStatus value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete scout_msgs/ScoutBmsStatus.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Scout_msgsScoutBmsStatus :: [Word8] -> Either Word32 Ros1Scout_msgsScoutBmsStatus
decodeRos1Scout_msgsScoutBmsStatus bytes
    | length bytes < 44 || length bytes > 44 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Scout_msgsScoutBmsStatus bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original scout_msgs/ScoutDriverState value.
-- | @details Retain every original field in declaration order. Canonical extent 17..17 bytes.
data Ros1Scout_msgsScoutDriverState = Ros1Scout_msgsScoutDriverState
    {
    -- | @brief Original scout_msgs/ScoutDriverState.driver_voltage field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutDriverState_driver_voltage :: Double
    ,
    -- | @brief Original scout_msgs/ScoutDriverState.driver_temperature field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutDriverState_driver_temperature :: Double
    ,
    -- | @brief Original scout_msgs/ScoutDriverState.driver_state field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutDriverState_driver_state :: Word8
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos1Scout_msgsScoutDriverState :: Ros1Scout_msgsScoutDriverState
defaultRos1Scout_msgsScoutDriverState =
    Ros1Scout_msgsScoutDriverState
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Scout_msgsScoutDriverStateCodecIdentity :: String
ros1Scout_msgsScoutDriverStateCodecIdentity =
    "UWVMROS1_4c56c71ae621b2b8822d742894d19946492002453c93b72faccb4f2abc9d4275"
-- | @brief Encode every field of complete scout_msgs/ScoutDriverState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Scout_msgsScoutDriverState :: Ros1Scout_msgsScoutDriverState -> Either Word32 [Word8]
encodeRos1Scout_msgsScoutDriverState value = do
    chunk0 <- finite8 (ros1Scout_msgsScoutDriverState_driver_voltage value) castDoubleToWord64
    chunk1 <- finite8 (ros1Scout_msgsScoutDriverState_driver_temperature value) castDoubleToWord64
    chunk2 <- Right (W.putNumber 1 (ros1Scout_msgsScoutDriverState_driver_state value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 17 then Left 22 else Right bytes
-- | @brief Read every field of nested scout_msgs/ScoutDriverState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Scout_msgsScoutDriverState :: W.Parser Ros1Scout_msgsScoutDriverState
readRos1Scout_msgsScoutDriverState = do
    value0 <- castWord64ToDouble <$> W.number 8
    value1 <- castWord64ToDouble <$> W.number 8
    value2 <- fromIntegral <$> W.number 1
    let value =
            Ros1Scout_msgsScoutDriverState
                value0
                value1
                value2
    case encodeRos1Scout_msgsScoutDriverState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete scout_msgs/ScoutDriverState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Scout_msgsScoutDriverState :: [Word8] -> Either Word32 Ros1Scout_msgsScoutDriverState
decodeRos1Scout_msgsScoutDriverState bytes
    | length bytes < 17 || length bytes > 17 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Scout_msgsScoutDriverState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original scout_msgs/ScoutLightCmd value.
-- | @details Retain every original field in declaration order. Canonical extent 5..5 bytes.
data Ros1Scout_msgsScoutLightCmd = Ros1Scout_msgsScoutLightCmd
    {
    -- | @brief Original scout_msgs/ScoutLightCmd.enable_cmd_light_control field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutLightCmd_enable_cmd_light_control :: Bool
    ,
    -- | @brief Original scout_msgs/ScoutLightCmd.front_mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutLightCmd_front_mode :: Word8
    ,
    -- | @brief Original scout_msgs/ScoutLightCmd.front_custom_value field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutLightCmd_front_custom_value :: Word8
    ,
    -- | @brief Original scout_msgs/ScoutLightCmd.rear_mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutLightCmd_rear_mode :: Word8
    ,
    -- | @brief Original scout_msgs/ScoutLightCmd.rear_custom_value field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutLightCmd_rear_custom_value :: Word8
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos1Scout_msgsScoutLightCmd :: Ros1Scout_msgsScoutLightCmd
defaultRos1Scout_msgsScoutLightCmd =
    Ros1Scout_msgsScoutLightCmd
        (False)
        (0)
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Scout_msgsScoutLightCmdCodecIdentity :: String
ros1Scout_msgsScoutLightCmdCodecIdentity =
    "UWVMROS1_cf08cccf454f88111d5cc4a4b1ace08de72cf1ae9a9400c23a148126da95942a"
-- | @brief Original scout_msgs/ScoutLightCmd.LIGHT_CONST_OFF constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Scout_msgsScoutLightCmd_LIGHT_CONST_OFF :: Word8
ros1Scout_msgsScoutLightCmd_LIGHT_CONST_OFF = 0
-- | @brief Original scout_msgs/ScoutLightCmd.LIGHT_CONST_ON constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Scout_msgsScoutLightCmd_LIGHT_CONST_ON :: Word8
ros1Scout_msgsScoutLightCmd_LIGHT_CONST_ON = 1
-- | @brief Original scout_msgs/ScoutLightCmd.LIGHT_BREATH constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Scout_msgsScoutLightCmd_LIGHT_BREATH :: Word8
ros1Scout_msgsScoutLightCmd_LIGHT_BREATH = 2
-- | @brief Original scout_msgs/ScoutLightCmd.LIGHT_CUSTOM constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Scout_msgsScoutLightCmd_LIGHT_CUSTOM :: Word8
ros1Scout_msgsScoutLightCmd_LIGHT_CUSTOM = 3
-- | @brief Encode every field of complete scout_msgs/ScoutLightCmd.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Scout_msgsScoutLightCmd :: Ros1Scout_msgsScoutLightCmd -> Either Word32 [Word8]
encodeRos1Scout_msgsScoutLightCmd value = do
    chunk0 <- Right (W.putBool (ros1Scout_msgsScoutLightCmd_enable_cmd_light_control value))
    chunk1 <- Right (W.putNumber 1 (ros1Scout_msgsScoutLightCmd_front_mode value))
    chunk2 <- Right (W.putNumber 1 (ros1Scout_msgsScoutLightCmd_front_custom_value value))
    chunk3 <- Right (W.putNumber 1 (ros1Scout_msgsScoutLightCmd_rear_mode value))
    chunk4 <- Right (W.putNumber 1 (ros1Scout_msgsScoutLightCmd_rear_custom_value value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                ]
    if length bytes > 5 then Left 22 else Right bytes
-- | @brief Read every field of nested scout_msgs/ScoutLightCmd.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Scout_msgsScoutLightCmd :: W.Parser Ros1Scout_msgsScoutLightCmd
readRos1Scout_msgsScoutLightCmd = do
    value0 <- W.boolean
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- fromIntegral <$> W.number 1
    value4 <- fromIntegral <$> W.number 1
    let value =
            Ros1Scout_msgsScoutLightCmd
                value0
                value1
                value2
                value3
                value4
    case encodeRos1Scout_msgsScoutLightCmd value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete scout_msgs/ScoutLightCmd.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Scout_msgsScoutLightCmd :: [Word8] -> Either Word32 Ros1Scout_msgsScoutLightCmd
decodeRos1Scout_msgsScoutLightCmd bytes
    | length bytes < 5 || length bytes > 5 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Scout_msgsScoutLightCmd bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original scout_msgs/ScoutLightState value.
-- | @details Retain every original field in declaration order. Canonical extent 2..2 bytes.
data Ros1Scout_msgsScoutLightState = Ros1Scout_msgsScoutLightState
    {
    -- | @brief Original scout_msgs/ScoutLightState.mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutLightState_mode :: Word8
    ,
    -- | @brief Original scout_msgs/ScoutLightState.custom_value field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutLightState_custom_value :: Word8
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos1Scout_msgsScoutLightState :: Ros1Scout_msgsScoutLightState
defaultRos1Scout_msgsScoutLightState =
    Ros1Scout_msgsScoutLightState
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Scout_msgsScoutLightStateCodecIdentity :: String
ros1Scout_msgsScoutLightStateCodecIdentity =
    "UWVMROS1_af55048f9200cfa80fc419664204a515f628cc610a352ab3ed8443dd7ac0ae51"
-- | @brief Encode every field of complete scout_msgs/ScoutLightState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Scout_msgsScoutLightState :: Ros1Scout_msgsScoutLightState -> Either Word32 [Word8]
encodeRos1Scout_msgsScoutLightState value = do
    chunk0 <- Right (W.putNumber 1 (ros1Scout_msgsScoutLightState_mode value))
    chunk1 <- Right (W.putNumber 1 (ros1Scout_msgsScoutLightState_custom_value value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 2 then Left 22 else Right bytes
-- | @brief Read every field of nested scout_msgs/ScoutLightState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Scout_msgsScoutLightState :: W.Parser Ros1Scout_msgsScoutLightState
readRos1Scout_msgsScoutLightState = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- fromIntegral <$> W.number 1
    let value =
            Ros1Scout_msgsScoutLightState
                value0
                value1
    case encodeRos1Scout_msgsScoutLightState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete scout_msgs/ScoutLightState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Scout_msgsScoutLightState :: [Word8] -> Either Word32 Ros1Scout_msgsScoutLightState
decodeRos1Scout_msgsScoutLightState bytes
    | length bytes < 2 || length bytes > 2 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Scout_msgsScoutLightState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original scout_msgs/ScoutMotorState value.
-- | @details Retain every original field in declaration order. Canonical extent 32..32 bytes.
data Ros1Scout_msgsScoutMotorState = Ros1Scout_msgsScoutMotorState
    {
    -- | @brief Original scout_msgs/ScoutMotorState.current field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutMotorState_current :: Double
    ,
    -- | @brief Original scout_msgs/ScoutMotorState.rpm field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutMotorState_rpm :: Double
    ,
    -- | @brief Original scout_msgs/ScoutMotorState.temperature field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutMotorState_temperature :: Double
    ,
    -- | @brief Original scout_msgs/ScoutMotorState.motor_pose field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutMotorState_motor_pose :: Double
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos1Scout_msgsScoutMotorState :: Ros1Scout_msgsScoutMotorState
defaultRos1Scout_msgsScoutMotorState =
    Ros1Scout_msgsScoutMotorState
        (0)
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Scout_msgsScoutMotorStateCodecIdentity :: String
ros1Scout_msgsScoutMotorStateCodecIdentity =
    "UWVMROS1_ca67a704d7bb4ba6b2839db1fdb8a75bc753868ec871d101c24c85d8202a79b7"
-- | @brief Encode every field of complete scout_msgs/ScoutMotorState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Scout_msgsScoutMotorState :: Ros1Scout_msgsScoutMotorState -> Either Word32 [Word8]
encodeRos1Scout_msgsScoutMotorState value = do
    chunk0 <- finite8 (ros1Scout_msgsScoutMotorState_current value) castDoubleToWord64
    chunk1 <- finite8 (ros1Scout_msgsScoutMotorState_rpm value) castDoubleToWord64
    chunk2 <- finite8 (ros1Scout_msgsScoutMotorState_temperature value) castDoubleToWord64
    chunk3 <- finite8 (ros1Scout_msgsScoutMotorState_motor_pose value) castDoubleToWord64
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                ]
    if length bytes > 32 then Left 22 else Right bytes
-- | @brief Read every field of nested scout_msgs/ScoutMotorState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Scout_msgsScoutMotorState :: W.Parser Ros1Scout_msgsScoutMotorState
readRos1Scout_msgsScoutMotorState = do
    value0 <- castWord64ToDouble <$> W.number 8
    value1 <- castWord64ToDouble <$> W.number 8
    value2 <- castWord64ToDouble <$> W.number 8
    value3 <- castWord64ToDouble <$> W.number 8
    let value =
            Ros1Scout_msgsScoutMotorState
                value0
                value1
                value2
                value3
    case encodeRos1Scout_msgsScoutMotorState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete scout_msgs/ScoutMotorState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Scout_msgsScoutMotorState :: [Word8] -> Either Word32 Ros1Scout_msgsScoutMotorState
decodeRos1Scout_msgsScoutMotorState bytes
    | length bytes < 32 || length bytes > 32 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Scout_msgsScoutMotorState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original scout_msgs/ScoutRsStatus value.
-- | @details Retain every original field in declaration order. Canonical extent 25..153 bytes.
data Ros1Scout_msgsScoutRsStatus = Ros1Scout_msgsScoutRsStatus
    {
    -- | @brief Original scout_msgs/ScoutRsStatus.header field.
    -- | @details Original type std_msgs/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Scout_msgsScoutRsStatus_header :: Ros1Std_msgsHeader
    ,
    -- | @brief Original scout_msgs/ScoutRsStatus.stick_left_h field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutRsStatus_stick_left_h :: Int8
    ,
    -- | @brief Original scout_msgs/ScoutRsStatus.stick_left_v field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutRsStatus_stick_left_v :: Int8
    ,
    -- | @brief Original scout_msgs/ScoutRsStatus.stick_right_h field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutRsStatus_stick_right_h :: Int8
    ,
    -- | @brief Original scout_msgs/ScoutRsStatus.stick_right_v field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutRsStatus_stick_right_v :: Int8
    ,
    -- | @brief Original scout_msgs/ScoutRsStatus.swa field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutRsStatus_swa :: Word8
    ,
    -- | @brief Original scout_msgs/ScoutRsStatus.swb field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutRsStatus_swb :: Word8
    ,
    -- | @brief Original scout_msgs/ScoutRsStatus.swc field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutRsStatus_swc :: Word8
    ,
    -- | @brief Original scout_msgs/ScoutRsStatus.swd field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutRsStatus_swd :: Word8
    ,
    -- | @brief Original scout_msgs/ScoutRsStatus.var_a field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutRsStatus_var_a :: Word8
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos1Scout_msgsScoutRsStatus :: Ros1Scout_msgsScoutRsStatus
defaultRos1Scout_msgsScoutRsStatus =
    Ros1Scout_msgsScoutRsStatus
        (defaultRos1Std_msgsHeader)
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
ros1Scout_msgsScoutRsStatusCodecIdentity :: String
ros1Scout_msgsScoutRsStatusCodecIdentity =
    "UWVMROS1_deb068b75fb629df3724c141ed3be9f6ee8a4aac7727cdaa28769cb61211f7de"
-- | @brief Encode every field of complete scout_msgs/ScoutRsStatus.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Scout_msgsScoutRsStatus :: Ros1Scout_msgsScoutRsStatus -> Either Word32 [Word8]
encodeRos1Scout_msgsScoutRsStatus value = do
    chunk0 <- encodeRos1Std_msgsHeader (ros1Scout_msgsScoutRsStatus_header value)
    chunk1 <- Right (W.putNumber 1 (ros1Scout_msgsScoutRsStatus_stick_left_h value))
    chunk2 <- Right (W.putNumber 1 (ros1Scout_msgsScoutRsStatus_stick_left_v value))
    chunk3 <- Right (W.putNumber 1 (ros1Scout_msgsScoutRsStatus_stick_right_h value))
    chunk4 <- Right (W.putNumber 1 (ros1Scout_msgsScoutRsStatus_stick_right_v value))
    chunk5 <- Right (W.putNumber 1 (ros1Scout_msgsScoutRsStatus_swa value))
    chunk6 <- Right (W.putNumber 1 (ros1Scout_msgsScoutRsStatus_swb value))
    chunk7 <- Right (W.putNumber 1 (ros1Scout_msgsScoutRsStatus_swc value))
    chunk8 <- Right (W.putNumber 1 (ros1Scout_msgsScoutRsStatus_swd value))
    chunk9 <- Right (W.putNumber 1 (ros1Scout_msgsScoutRsStatus_var_a value))
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
                ]
    if length bytes > 153 then Left 22 else Right bytes
-- | @brief Read every field of nested scout_msgs/ScoutRsStatus.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Scout_msgsScoutRsStatus :: W.Parser Ros1Scout_msgsScoutRsStatus
readRos1Scout_msgsScoutRsStatus = do
    value0 <- readRos1Std_msgsHeader
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- fromIntegral <$> W.number 1
    value4 <- fromIntegral <$> W.number 1
    value5 <- fromIntegral <$> W.number 1
    value6 <- fromIntegral <$> W.number 1
    value7 <- fromIntegral <$> W.number 1
    value8 <- fromIntegral <$> W.number 1
    value9 <- fromIntegral <$> W.number 1
    let value =
            Ros1Scout_msgsScoutRsStatus
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
    case encodeRos1Scout_msgsScoutRsStatus value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete scout_msgs/ScoutRsStatus.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Scout_msgsScoutRsStatus :: [Word8] -> Either Word32 Ros1Scout_msgsScoutRsStatus
decodeRos1Scout_msgsScoutRsStatus bytes
    | length bytes < 25 || length bytes > 153 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Scout_msgsScoutRsStatus bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original scout_msgs/ScoutStatus value.
-- | @details Retain every original field in declaration order. Canonical extent 253..381 bytes.
data Ros1Scout_msgsScoutStatus = Ros1Scout_msgsScoutStatus
    {
    -- | @brief Original scout_msgs/ScoutStatus.header field.
    -- | @details Original type std_msgs/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Scout_msgsScoutStatus_header :: Ros1Std_msgsHeader
    ,
    -- | @brief Original scout_msgs/ScoutStatus.linear_velocity field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutStatus_linear_velocity :: Double
    ,
    -- | @brief Original scout_msgs/ScoutStatus.angular_velocity field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutStatus_angular_velocity :: Double
    ,
    -- | @brief Original scout_msgs/ScoutStatus.lateral_velocity field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutStatus_lateral_velocity :: Double
    ,
    -- | @brief Original scout_msgs/ScoutStatus.base_state field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutStatus_base_state :: Word8
    ,
    -- | @brief Original scout_msgs/ScoutStatus.control_mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutStatus_control_mode :: Word8
    ,
    -- | @brief Original scout_msgs/ScoutStatus.fault_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutStatus_fault_code :: Word16
    ,
    -- | @brief Original scout_msgs/ScoutStatus.battery_voltage field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutStatus_battery_voltage :: Double
    ,
    -- | @brief Original scout_msgs/ScoutStatus.motor_states field.
    -- | @details Original type scout_msgs/ScoutMotorState. Shape array; bound/count 4 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros1Scout_msgsScoutStatus_motor_states :: [Ros1Scout_msgsScoutMotorState]
    ,
    -- | @brief Original scout_msgs/ScoutStatus.driver_states field.
    -- | @details Original type scout_msgs/ScoutDriverState. Shape array; bound/count 4 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros1Scout_msgsScoutStatus_driver_states :: [Ros1Scout_msgsScoutDriverState]
    ,
    -- | @brief Original scout_msgs/ScoutStatus.light_control_enabled field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Scout_msgsScoutStatus_light_control_enabled :: Bool
    ,
    -- | @brief Original scout_msgs/ScoutStatus.front_light_state field.
    -- | @details Original type scout_msgs/ScoutLightState. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Scout_msgsScoutStatus_front_light_state :: Ros1Scout_msgsScoutLightState
    ,
    -- | @brief Original scout_msgs/ScoutStatus.rear_light_state field.
    -- | @details Original type scout_msgs/ScoutLightState. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Scout_msgsScoutStatus_rear_light_state :: Ros1Scout_msgsScoutLightState
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos1Scout_msgsScoutStatus :: Ros1Scout_msgsScoutStatus
defaultRos1Scout_msgsScoutStatus =
    Ros1Scout_msgsScoutStatus
        (defaultRos1Std_msgsHeader)
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (replicate 4 (defaultRos1Scout_msgsScoutMotorState))
        (replicate 4 (defaultRos1Scout_msgsScoutDriverState))
        (False)
        (defaultRos1Scout_msgsScoutLightState)
        (defaultRos1Scout_msgsScoutLightState)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Scout_msgsScoutStatusCodecIdentity :: String
ros1Scout_msgsScoutStatusCodecIdentity =
    "UWVMROS1_ff62854d4de0aae3dfbbc312822c6f912294f0feb04a7fff943df602d40bcbe2"
-- | @brief Original scout_msgs/ScoutStatus.MOTOR_ID_FRONT_RIGHT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Scout_msgsScoutStatus_MOTOR_ID_FRONT_RIGHT :: Int8
ros1Scout_msgsScoutStatus_MOTOR_ID_FRONT_RIGHT = 0
-- | @brief Original scout_msgs/ScoutStatus.MOTOR_ID_FRONT_LEFT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Scout_msgsScoutStatus_MOTOR_ID_FRONT_LEFT :: Int8
ros1Scout_msgsScoutStatus_MOTOR_ID_FRONT_LEFT = 1
-- | @brief Original scout_msgs/ScoutStatus.MOTOR_ID_REAR_RIGHT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Scout_msgsScoutStatus_MOTOR_ID_REAR_RIGHT :: Int8
ros1Scout_msgsScoutStatus_MOTOR_ID_REAR_RIGHT = 2
-- | @brief Original scout_msgs/ScoutStatus.MOTOR_ID_REAR_LEFT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Scout_msgsScoutStatus_MOTOR_ID_REAR_LEFT :: Int8
ros1Scout_msgsScoutStatus_MOTOR_ID_REAR_LEFT = 3
-- | @brief Original scout_msgs/ScoutStatus.LIGHT_ID_FRONT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Scout_msgsScoutStatus_LIGHT_ID_FRONT :: Int8
ros1Scout_msgsScoutStatus_LIGHT_ID_FRONT = 0
-- | @brief Original scout_msgs/ScoutStatus.LIGHT_ID_REAR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Scout_msgsScoutStatus_LIGHT_ID_REAR :: Int8
ros1Scout_msgsScoutStatus_LIGHT_ID_REAR = 1
-- | @brief Encode every field of complete scout_msgs/ScoutStatus.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Scout_msgsScoutStatus :: Ros1Scout_msgsScoutStatus -> Either Word32 [Word8]
encodeRos1Scout_msgsScoutStatus value = do
    chunk0 <- encodeRos1Std_msgsHeader (ros1Scout_msgsScoutStatus_header value)
    chunk1 <- finite8 (ros1Scout_msgsScoutStatus_linear_velocity value) castDoubleToWord64
    chunk2 <- finite8 (ros1Scout_msgsScoutStatus_angular_velocity value) castDoubleToWord64
    chunk3 <- finite8 (ros1Scout_msgsScoutStatus_lateral_velocity value) castDoubleToWord64
    chunk4 <- Right (W.putNumber 1 (ros1Scout_msgsScoutStatus_base_state value))
    chunk5 <- Right (W.putNumber 1 (ros1Scout_msgsScoutStatus_control_mode value))
    chunk6 <- Right (W.putNumber 2 (ros1Scout_msgsScoutStatus_fault_code value))
    chunk7 <- finite8 (ros1Scout_msgsScoutStatus_battery_voltage value) castDoubleToWord64
    if length (ros1Scout_msgsScoutStatus_motor_states value) == 4 then Right () else Left 22
    item8 <-
        concat <$> mapM
            (\element -> encodeRos1Scout_msgsScoutMotorState (element))
            (ros1Scout_msgsScoutStatus_motor_states value)
    chunk8 <- Right item8
    if length (ros1Scout_msgsScoutStatus_driver_states value) == 4 then Right () else Left 22
    item9 <-
        concat <$> mapM
            (\element -> encodeRos1Scout_msgsScoutDriverState (element))
            (ros1Scout_msgsScoutStatus_driver_states value)
    chunk9 <- Right item9
    chunk10 <- Right (W.putBool (ros1Scout_msgsScoutStatus_light_control_enabled value))
    chunk11 <- encodeRos1Scout_msgsScoutLightState (ros1Scout_msgsScoutStatus_front_light_state value)
    chunk12 <- encodeRos1Scout_msgsScoutLightState (ros1Scout_msgsScoutStatus_rear_light_state value)
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
                , chunk11
                , chunk12
                ]
    if length bytes > 381 then Left 22 else Right bytes
-- | @brief Read every field of nested scout_msgs/ScoutStatus.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Scout_msgsScoutStatus :: W.Parser Ros1Scout_msgsScoutStatus
readRos1Scout_msgsScoutStatus = do
    value0 <- readRos1Std_msgsHeader
    value1 <- castWord64ToDouble <$> W.number 8
    value2 <- castWord64ToDouble <$> W.number 8
    value3 <- castWord64ToDouble <$> W.number 8
    value4 <- fromIntegral <$> W.number 1
    value5 <- fromIntegral <$> W.number 1
    value6 <- fromIntegral <$> W.number 2
    value7 <- castWord64ToDouble <$> W.number 8
    value8 <- replicateM 4 (readRos1Scout_msgsScoutMotorState)
    value9 <- replicateM 4 (readRos1Scout_msgsScoutDriverState)
    value10 <- W.boolean
    value11 <- readRos1Scout_msgsScoutLightState
    value12 <- readRos1Scout_msgsScoutLightState
    let value =
            Ros1Scout_msgsScoutStatus
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
                value11
                value12
    case encodeRos1Scout_msgsScoutStatus value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete scout_msgs/ScoutStatus.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Scout_msgsScoutStatus :: [Word8] -> Either Word32 Ros1Scout_msgsScoutStatus
decodeRos1Scout_msgsScoutStatus bytes
    | length bytes < 253 || length bytes > 381 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Scout_msgsScoutStatus bytes
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

