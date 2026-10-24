-- | @file Records.hs
-- @brief Complete original ABB ROS 2 Haskell records and codecs.
-- @details Owned immutable values preserve all fields; constructing them grants no ROS authority.
module ABB.Ros2.Records where
import Data.Int
import Data.Word
import Data.Bits
import GHC.Float
import Control.Monad (replicateM)
import qualified Ros.Wire as W

-- | @brief Complete original abb_egm_msgs/msg/EGMChannelState value.
-- | @details Retain every original field in declaration order. Canonical extent 17..81 bytes.
data Ros2Abb_egm_msgsMsgEGMChannelState = Ros2Abb_egm_msgsMsgEGMChannelState
    {
    -- | @brief Original abb_egm_msgs/msg/EGMChannelState.name field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Abb_egm_msgsMsgEGMChannelState_name :: [Word8]
    ,
    -- | @brief Original abb_egm_msgs/msg/EGMChannelState.active field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_egm_msgsMsgEGMChannelState_active :: Bool
    ,
    -- | @brief Original abb_egm_msgs/msg/EGMChannelState.egm_convergence_met field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_egm_msgsMsgEGMChannelState_egm_convergence_met :: Bool
    ,
    -- | @brief Original abb_egm_msgs/msg/EGMChannelState.egm_client_state field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_egm_msgsMsgEGMChannelState_egm_client_state :: Word8
    ,
    -- | @brief Original abb_egm_msgs/msg/EGMChannelState.motor_state field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_egm_msgsMsgEGMChannelState_motor_state :: Word8
    ,
    -- | @brief Original abb_egm_msgs/msg/EGMChannelState.rapid_execution_state field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_egm_msgsMsgEGMChannelState_rapid_execution_state :: Word8
    ,
    -- | @brief Original abb_egm_msgs/msg/EGMChannelState.utilization_rate field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_egm_msgsMsgEGMChannelState_utilization_rate :: Double
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_egm_msgsMsgEGMChannelStateCodecIdentity :: String
ros2Abb_egm_msgsMsgEGMChannelStateCodecIdentity = "UWVMROS1_fbd288b93963fccc92aa114570c0a4f6a1fdc5b473cb8e252922720f5d88b519"
-- | @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_UNDEFINED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_egm_msgsMsgEGMChannelState_EGM_UNDEFINED :: Word8
ros2Abb_egm_msgsMsgEGMChannelState_EGM_UNDEFINED = 1
-- | @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_ERROR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_egm_msgsMsgEGMChannelState_EGM_ERROR :: Word8
ros2Abb_egm_msgsMsgEGMChannelState_EGM_ERROR = 2
-- | @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_STOPPED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_egm_msgsMsgEGMChannelState_EGM_STOPPED :: Word8
ros2Abb_egm_msgsMsgEGMChannelState_EGM_STOPPED = 3
-- | @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_RUNNING constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_egm_msgsMsgEGMChannelState_EGM_RUNNING :: Word8
ros2Abb_egm_msgsMsgEGMChannelState_EGM_RUNNING = 4
-- | @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_UNDEFINED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_egm_msgsMsgEGMChannelState_MOTORS_UNDEFINED :: Word8
ros2Abb_egm_msgsMsgEGMChannelState_MOTORS_UNDEFINED = 1
-- | @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_ON constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_egm_msgsMsgEGMChannelState_MOTORS_ON :: Word8
ros2Abb_egm_msgsMsgEGMChannelState_MOTORS_ON = 2
-- | @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_OFF constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_egm_msgsMsgEGMChannelState_MOTORS_OFF :: Word8
ros2Abb_egm_msgsMsgEGMChannelState_MOTORS_OFF = 3
-- | @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_UNDEFINED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_egm_msgsMsgEGMChannelState_RAPID_UNDEFINED :: Word8
ros2Abb_egm_msgsMsgEGMChannelState_RAPID_UNDEFINED = 1
-- | @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_STOPPED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_egm_msgsMsgEGMChannelState_RAPID_STOPPED :: Word8
ros2Abb_egm_msgsMsgEGMChannelState_RAPID_STOPPED = 2
-- | @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_RUNNING constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_egm_msgsMsgEGMChannelState_RAPID_RUNNING :: Word8
ros2Abb_egm_msgsMsgEGMChannelState_RAPID_RUNNING = 3
-- | @brief Encode every field of complete abb_egm_msgs/msg/EGMChannelState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_egm_msgsMsgEGMChannelState :: Ros2Abb_egm_msgsMsgEGMChannelState -> Either Word32 [Word8]
encodeRos2Abb_egm_msgsMsgEGMChannelState value = do
    chunk0 <- W.putText 64 (ros2Abb_egm_msgsMsgEGMChannelState_name value)
    chunk1 <- Right (W.putBool (ros2Abb_egm_msgsMsgEGMChannelState_active value))
    chunk2 <- Right (W.putBool (ros2Abb_egm_msgsMsgEGMChannelState_egm_convergence_met value))
    chunk3 <- Right (W.putNumber 1 (ros2Abb_egm_msgsMsgEGMChannelState_egm_client_state value))
    chunk4 <- Right (W.putNumber 1 (ros2Abb_egm_msgsMsgEGMChannelState_motor_state value))
    chunk5 <- Right (W.putNumber 1 (ros2Abb_egm_msgsMsgEGMChannelState_rapid_execution_state value))
    chunk6 <- finite8 (ros2Abb_egm_msgsMsgEGMChannelState_utilization_rate value) castDoubleToWord64
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5, chunk6]
    if length bytes > 81 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_egm_msgs/msg/EGMChannelState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_egm_msgsMsgEGMChannelState :: W.Parser Ros2Abb_egm_msgsMsgEGMChannelState
readRos2Abb_egm_msgsMsgEGMChannelState = do
    value0 <- W.text 64
    value1 <- W.boolean
    value2 <- W.boolean
    value3 <- fromIntegral <$> W.number 1
    value4 <- fromIntegral <$> W.number 1
    value5 <- fromIntegral <$> W.number 1
    value6 <- castWord64ToDouble <$> W.number 8
    let value = Ros2Abb_egm_msgsMsgEGMChannelState value0 value1 value2 value3 value4 value5 value6
    case encodeRos2Abb_egm_msgsMsgEGMChannelState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_egm_msgs/msg/EGMChannelState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_egm_msgsMsgEGMChannelState :: [Word8] -> Either Word32 Ros2Abb_egm_msgsMsgEGMChannelState
decodeRos2Abb_egm_msgsMsgEGMChannelState bytes
    | length bytes < 17 || length bytes > 81 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_egm_msgsMsgEGMChannelState bytes
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

-- | @brief Complete original abb_egm_msgs/msg/EGMState value.
-- | @details Retain every original field in declaration order. Canonical extent 16..1376 bytes.
data Ros2Abb_egm_msgsMsgEGMState = Ros2Abb_egm_msgsMsgEGMState
    {
    -- | @brief Original abb_egm_msgs/msg/EGMState.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Abb_egm_msgsMsgEGMState_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original abb_egm_msgs/msg/EGMState.egm_channels field.
    -- | @details Original type abb_egm_msgs/msg/EGMChannelState. Shape sequence; bound/count 16
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Abb_egm_msgsMsgEGMState_egm_channels :: [Ros2Abb_egm_msgsMsgEGMChannelState]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_egm_msgsMsgEGMStateCodecIdentity :: String
ros2Abb_egm_msgsMsgEGMStateCodecIdentity = "UWVMROS1_5b10efb13c3be7290c7e391d55679a174969887edd1b8baca682edac311a8e5d"
-- | @brief Encode every field of complete abb_egm_msgs/msg/EGMState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_egm_msgsMsgEGMState :: Ros2Abb_egm_msgsMsgEGMState -> Either Word32 [Word8]
encodeRos2Abb_egm_msgsMsgEGMState value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Abb_egm_msgsMsgEGMState_header value)
    if length (ros2Abb_egm_msgsMsgEGMState_egm_channels value) <= 16 then Right () else Left 22
    item1 <- concat <$> mapM
        (\element -> encodeRos2Abb_egm_msgsMsgEGMChannelState (element))
        (ros2Abb_egm_msgsMsgEGMState_egm_channels value)
    chunk1 <- Right (W.putNumber 4 (length (ros2Abb_egm_msgsMsgEGMState_egm_channels value)) ++ item1)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 1376 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_egm_msgs/msg/EGMState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_egm_msgsMsgEGMState :: W.Parser Ros2Abb_egm_msgsMsgEGMState
readRos2Abb_egm_msgsMsgEGMState = do
    value0 <- readRos2Std_msgsMsgHeader
    count1 <- W.number 4
    if count1 > 16 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (readRos2Abb_egm_msgsMsgEGMChannelState)
    let value = Ros2Abb_egm_msgsMsgEGMState value0 value1
    case encodeRos2Abb_egm_msgsMsgEGMState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_egm_msgs/msg/EGMState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_egm_msgsMsgEGMState :: [Word8] -> Either Word32 Ros2Abb_egm_msgsMsgEGMState
decodeRos2Abb_egm_msgsMsgEGMState bytes
    | length bytes < 16 || length bytes > 1376 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_egm_msgsMsgEGMState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/msg/ConfData value.
-- | @details Retain every original field in declaration order. Canonical extent 16..16 bytes.
data Ros2Abb_rapid_msgsMsgConfData = Ros2Abb_rapid_msgsMsgConfData
    {
    -- | @brief Original abb_rapid_msgs/msg/ConfData.cf1 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgConfData_cf1 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/ConfData.cf4 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgConfData_cf4 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/ConfData.cf6 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgConfData_cf6 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/ConfData.cfx field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgConfData_cfx :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_msgsMsgConfDataCodecIdentity :: String
ros2Abb_rapid_msgsMsgConfDataCodecIdentity = "UWVMROS1_0c22cc29db62f5001ef20ea7b131de63099e31ac5f150d3e9f0bb62120d60571"
-- | @brief Encode every field of complete abb_rapid_msgs/msg/ConfData.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_msgsMsgConfData :: Ros2Abb_rapid_msgsMsgConfData -> Either Word32 [Word8]
encodeRos2Abb_rapid_msgsMsgConfData value = do
    chunk0 <- finite4 (ros2Abb_rapid_msgsMsgConfData_cf1 value) castFloatToWord32
    chunk1 <- finite4 (ros2Abb_rapid_msgsMsgConfData_cf4 value) castFloatToWord32
    chunk2 <- finite4 (ros2Abb_rapid_msgsMsgConfData_cf6 value) castFloatToWord32
    chunk3 <- finite4 (ros2Abb_rapid_msgsMsgConfData_cfx value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 16 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/msg/ConfData.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_msgsMsgConfData :: W.Parser Ros2Abb_rapid_msgsMsgConfData
readRos2Abb_rapid_msgsMsgConfData = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Abb_rapid_msgsMsgConfData value0 value1 value2 value3
    case encodeRos2Abb_rapid_msgsMsgConfData value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/msg/ConfData.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_msgsMsgConfData :: [Word8] -> Either Word32 Ros2Abb_rapid_msgsMsgConfData
decodeRos2Abb_rapid_msgsMsgConfData bytes
    | length bytes < 16 || length bytes > 16 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_msgsMsgConfData bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/msg/ExtJoint value.
-- | @details Retain every original field in declaration order. Canonical extent 24..24 bytes.
data Ros2Abb_rapid_msgsMsgExtJoint = Ros2Abb_rapid_msgsMsgExtJoint
    {
    -- | @brief Original abb_rapid_msgs/msg/ExtJoint.eax_a field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgExtJoint_eax_a :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/ExtJoint.eax_b field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgExtJoint_eax_b :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/ExtJoint.eax_c field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgExtJoint_eax_c :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/ExtJoint.eax_d field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgExtJoint_eax_d :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/ExtJoint.eax_e field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgExtJoint_eax_e :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/ExtJoint.eax_f field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgExtJoint_eax_f :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_msgsMsgExtJointCodecIdentity :: String
ros2Abb_rapid_msgsMsgExtJointCodecIdentity = "UWVMROS1_8b799c6bec9e4eab0900a633a93375a7792e49fde0bf302f6752115a001a4ae2"
-- | @brief Encode every field of complete abb_rapid_msgs/msg/ExtJoint.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_msgsMsgExtJoint :: Ros2Abb_rapid_msgsMsgExtJoint -> Either Word32 [Word8]
encodeRos2Abb_rapid_msgsMsgExtJoint value = do
    chunk0 <- finite4 (ros2Abb_rapid_msgsMsgExtJoint_eax_a value) castFloatToWord32
    chunk1 <- finite4 (ros2Abb_rapid_msgsMsgExtJoint_eax_b value) castFloatToWord32
    chunk2 <- finite4 (ros2Abb_rapid_msgsMsgExtJoint_eax_c value) castFloatToWord32
    chunk3 <- finite4 (ros2Abb_rapid_msgsMsgExtJoint_eax_d value) castFloatToWord32
    chunk4 <- finite4 (ros2Abb_rapid_msgsMsgExtJoint_eax_e value) castFloatToWord32
    chunk5 <- finite4 (ros2Abb_rapid_msgsMsgExtJoint_eax_f value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5]
    if length bytes > 24 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/msg/ExtJoint.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_msgsMsgExtJoint :: W.Parser Ros2Abb_rapid_msgsMsgExtJoint
readRos2Abb_rapid_msgsMsgExtJoint = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Abb_rapid_msgsMsgExtJoint value0 value1 value2 value3 value4 value5
    case encodeRos2Abb_rapid_msgsMsgExtJoint value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/msg/ExtJoint.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_msgsMsgExtJoint :: [Word8] -> Either Word32 Ros2Abb_rapid_msgsMsgExtJoint
decodeRos2Abb_rapid_msgsMsgExtJoint bytes
    | length bytes < 24 || length bytes > 24 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_msgsMsgExtJoint bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/msg/RobJoint value.
-- | @details Retain every original field in declaration order. Canonical extent 24..24 bytes.
data Ros2Abb_rapid_msgsMsgRobJoint = Ros2Abb_rapid_msgsMsgRobJoint
    {
    -- | @brief Original abb_rapid_msgs/msg/RobJoint.rax_1 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgRobJoint_rax_1 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/RobJoint.rax_2 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgRobJoint_rax_2 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/RobJoint.rax_3 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgRobJoint_rax_3 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/RobJoint.rax_4 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgRobJoint_rax_4 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/RobJoint.rax_5 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgRobJoint_rax_5 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/RobJoint.rax_6 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgRobJoint_rax_6 :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_msgsMsgRobJointCodecIdentity :: String
ros2Abb_rapid_msgsMsgRobJointCodecIdentity = "UWVMROS1_6d842aebc0a3b222a727063a41ef7e96f2b8c14ffbba5c8d6e140ba2890e69cd"
-- | @brief Encode every field of complete abb_rapid_msgs/msg/RobJoint.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_msgsMsgRobJoint :: Ros2Abb_rapid_msgsMsgRobJoint -> Either Word32 [Word8]
encodeRos2Abb_rapid_msgsMsgRobJoint value = do
    chunk0 <- finite4 (ros2Abb_rapid_msgsMsgRobJoint_rax_1 value) castFloatToWord32
    chunk1 <- finite4 (ros2Abb_rapid_msgsMsgRobJoint_rax_2 value) castFloatToWord32
    chunk2 <- finite4 (ros2Abb_rapid_msgsMsgRobJoint_rax_3 value) castFloatToWord32
    chunk3 <- finite4 (ros2Abb_rapid_msgsMsgRobJoint_rax_4 value) castFloatToWord32
    chunk4 <- finite4 (ros2Abb_rapid_msgsMsgRobJoint_rax_5 value) castFloatToWord32
    chunk5 <- finite4 (ros2Abb_rapid_msgsMsgRobJoint_rax_6 value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5]
    if length bytes > 24 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/msg/RobJoint.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_msgsMsgRobJoint :: W.Parser Ros2Abb_rapid_msgsMsgRobJoint
readRos2Abb_rapid_msgsMsgRobJoint = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Abb_rapid_msgsMsgRobJoint value0 value1 value2 value3 value4 value5
    case encodeRos2Abb_rapid_msgsMsgRobJoint value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/msg/RobJoint.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_msgsMsgRobJoint :: [Word8] -> Either Word32 Ros2Abb_rapid_msgsMsgRobJoint
decodeRos2Abb_rapid_msgsMsgRobJoint bytes
    | length bytes < 24 || length bytes > 24 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_msgsMsgRobJoint bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/msg/JointTarget value.
-- | @details Retain every original field in declaration order. Canonical extent 48..48 bytes.
data Ros2Abb_rapid_msgsMsgJointTarget = Ros2Abb_rapid_msgsMsgJointTarget
    {
    -- | @brief Original abb_rapid_msgs/msg/JointTarget.robax field.
    -- | @details Original type abb_rapid_msgs/msg/RobJoint. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_rapid_msgsMsgJointTarget_robax :: Ros2Abb_rapid_msgsMsgRobJoint
    ,
    -- | @brief Original abb_rapid_msgs/msg/JointTarget.extax field.
    -- | @details Original type abb_rapid_msgs/msg/ExtJoint. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_rapid_msgsMsgJointTarget_extax :: Ros2Abb_rapid_msgsMsgExtJoint
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_msgsMsgJointTargetCodecIdentity :: String
ros2Abb_rapid_msgsMsgJointTargetCodecIdentity = "UWVMROS1_5949cf0121391646c1f04b54d8f7deaae0497f4920f7817739fc25bfddc4e540"
-- | @brief Encode every field of complete abb_rapid_msgs/msg/JointTarget.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_msgsMsgJointTarget :: Ros2Abb_rapid_msgsMsgJointTarget -> Either Word32 [Word8]
encodeRos2Abb_rapid_msgsMsgJointTarget value = do
    chunk0 <- encodeRos2Abb_rapid_msgsMsgRobJoint (ros2Abb_rapid_msgsMsgJointTarget_robax value)
    chunk1 <- encodeRos2Abb_rapid_msgsMsgExtJoint (ros2Abb_rapid_msgsMsgJointTarget_extax value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 48 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/msg/JointTarget.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_msgsMsgJointTarget :: W.Parser Ros2Abb_rapid_msgsMsgJointTarget
readRos2Abb_rapid_msgsMsgJointTarget = do
    value0 <- readRos2Abb_rapid_msgsMsgRobJoint
    value1 <- readRos2Abb_rapid_msgsMsgExtJoint
    let value = Ros2Abb_rapid_msgsMsgJointTarget value0 value1
    case encodeRos2Abb_rapid_msgsMsgJointTarget value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/msg/JointTarget.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_msgsMsgJointTarget :: [Word8] -> Either Word32 Ros2Abb_rapid_msgsMsgJointTarget
decodeRos2Abb_rapid_msgsMsgJointTarget bytes
    | length bytes < 48 || length bytes > 48 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_msgsMsgJointTarget bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/msg/Pos value.
-- | @details Retain every original field in declaration order. Canonical extent 12..12 bytes.
data Ros2Abb_rapid_msgsMsgPos = Ros2Abb_rapid_msgsMsgPos
    {
    -- | @brief Original abb_rapid_msgs/msg/Pos.x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgPos_x :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/Pos.y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgPos_y :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/Pos.z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgPos_z :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_msgsMsgPosCodecIdentity :: String
ros2Abb_rapid_msgsMsgPosCodecIdentity = "UWVMROS1_31d490d6ead5a1a78295dc4e934f0b89e74e4732da2b57d28d297477bf4cbdd2"
-- | @brief Encode every field of complete abb_rapid_msgs/msg/Pos.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_msgsMsgPos :: Ros2Abb_rapid_msgsMsgPos -> Either Word32 [Word8]
encodeRos2Abb_rapid_msgsMsgPos value = do
    chunk0 <- finite4 (ros2Abb_rapid_msgsMsgPos_x value) castFloatToWord32
    chunk1 <- finite4 (ros2Abb_rapid_msgsMsgPos_y value) castFloatToWord32
    chunk2 <- finite4 (ros2Abb_rapid_msgsMsgPos_z value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 12 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/msg/Pos.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_msgsMsgPos :: W.Parser Ros2Abb_rapid_msgsMsgPos
readRos2Abb_rapid_msgsMsgPos = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Abb_rapid_msgsMsgPos value0 value1 value2
    case encodeRos2Abb_rapid_msgsMsgPos value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/msg/Pos.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_msgsMsgPos :: [Word8] -> Either Word32 Ros2Abb_rapid_msgsMsgPos
decodeRos2Abb_rapid_msgsMsgPos bytes
    | length bytes < 12 || length bytes > 12 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_msgsMsgPos bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/msg/Orient value.
-- | @details Retain every original field in declaration order. Canonical extent 16..16 bytes.
data Ros2Abb_rapid_msgsMsgOrient = Ros2Abb_rapid_msgsMsgOrient
    {
    -- | @brief Original abb_rapid_msgs/msg/Orient.q1 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgOrient_q1 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/Orient.q2 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgOrient_q2 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/Orient.q3 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgOrient_q3 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/Orient.q4 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgOrient_q4 :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_msgsMsgOrientCodecIdentity :: String
ros2Abb_rapid_msgsMsgOrientCodecIdentity = "UWVMROS1_821d887b88298422f9466aaf3926db580f878e964055fbd72226b7f76f2f536e"
-- | @brief Encode every field of complete abb_rapid_msgs/msg/Orient.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_msgsMsgOrient :: Ros2Abb_rapid_msgsMsgOrient -> Either Word32 [Word8]
encodeRos2Abb_rapid_msgsMsgOrient value = do
    chunk0 <- finite4 (ros2Abb_rapid_msgsMsgOrient_q1 value) castFloatToWord32
    chunk1 <- finite4 (ros2Abb_rapid_msgsMsgOrient_q2 value) castFloatToWord32
    chunk2 <- finite4 (ros2Abb_rapid_msgsMsgOrient_q3 value) castFloatToWord32
    chunk3 <- finite4 (ros2Abb_rapid_msgsMsgOrient_q4 value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 16 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/msg/Orient.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_msgsMsgOrient :: W.Parser Ros2Abb_rapid_msgsMsgOrient
readRos2Abb_rapid_msgsMsgOrient = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Abb_rapid_msgsMsgOrient value0 value1 value2 value3
    case encodeRos2Abb_rapid_msgsMsgOrient value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/msg/Orient.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_msgsMsgOrient :: [Word8] -> Either Word32 Ros2Abb_rapid_msgsMsgOrient
decodeRos2Abb_rapid_msgsMsgOrient bytes
    | length bytes < 16 || length bytes > 16 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_msgsMsgOrient bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/msg/LoadData value.
-- | @details Retain every original field in declaration order. Canonical extent 44..44 bytes.
data Ros2Abb_rapid_msgsMsgLoadData = Ros2Abb_rapid_msgsMsgLoadData
    {
    -- | @brief Original abb_rapid_msgs/msg/LoadData.mass field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgLoadData_mass :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/LoadData.cog field.
    -- | @details Original type abb_rapid_msgs/msg/Pos. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Abb_rapid_msgsMsgLoadData_cog :: Ros2Abb_rapid_msgsMsgPos
    ,
    -- | @brief Original abb_rapid_msgs/msg/LoadData.aom field.
    -- | @details Original type abb_rapid_msgs/msg/Orient. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_rapid_msgsMsgLoadData_aom :: Ros2Abb_rapid_msgsMsgOrient
    ,
    -- | @brief Original abb_rapid_msgs/msg/LoadData.ix field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgLoadData_ix :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/LoadData.iy field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgLoadData_iy :: Float
    ,
    -- | @brief Original abb_rapid_msgs/msg/LoadData.iz field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgLoadData_iz :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_msgsMsgLoadDataCodecIdentity :: String
ros2Abb_rapid_msgsMsgLoadDataCodecIdentity = "UWVMROS1_f73e480a0e6746a4df8f4d62bc123d68d01d3dc48f0bc5f0eac51b859a0750f9"
-- | @brief Encode every field of complete abb_rapid_msgs/msg/LoadData.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_msgsMsgLoadData :: Ros2Abb_rapid_msgsMsgLoadData -> Either Word32 [Word8]
encodeRos2Abb_rapid_msgsMsgLoadData value = do
    chunk0 <- finite4 (ros2Abb_rapid_msgsMsgLoadData_mass value) castFloatToWord32
    chunk1 <- encodeRos2Abb_rapid_msgsMsgPos (ros2Abb_rapid_msgsMsgLoadData_cog value)
    chunk2 <- encodeRos2Abb_rapid_msgsMsgOrient (ros2Abb_rapid_msgsMsgLoadData_aom value)
    chunk3 <- finite4 (ros2Abb_rapid_msgsMsgLoadData_ix value) castFloatToWord32
    chunk4 <- finite4 (ros2Abb_rapid_msgsMsgLoadData_iy value) castFloatToWord32
    chunk5 <- finite4 (ros2Abb_rapid_msgsMsgLoadData_iz value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5]
    if length bytes > 44 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/msg/LoadData.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_msgsMsgLoadData :: W.Parser Ros2Abb_rapid_msgsMsgLoadData
readRos2Abb_rapid_msgsMsgLoadData = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- readRos2Abb_rapid_msgsMsgPos
    value2 <- readRos2Abb_rapid_msgsMsgOrient
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Abb_rapid_msgsMsgLoadData value0 value1 value2 value3 value4 value5
    case encodeRos2Abb_rapid_msgsMsgLoadData value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/msg/LoadData.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_msgsMsgLoadData :: [Word8] -> Either Word32 Ros2Abb_rapid_msgsMsgLoadData
decodeRos2Abb_rapid_msgsMsgLoadData bytes
    | length bytes < 44 || length bytes > 44 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_msgsMsgLoadData bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/msg/Pose value.
-- | @details Retain every original field in declaration order. Canonical extent 28..28 bytes.
data Ros2Abb_rapid_msgsMsgPose = Ros2Abb_rapid_msgsMsgPose
    {
    -- | @brief Original abb_rapid_msgs/msg/Pose.trans field.
    -- | @details Original type abb_rapid_msgs/msg/Pos. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Abb_rapid_msgsMsgPose_trans :: Ros2Abb_rapid_msgsMsgPos
    ,
    -- | @brief Original abb_rapid_msgs/msg/Pose.rot field.
    -- | @details Original type abb_rapid_msgs/msg/Orient. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_rapid_msgsMsgPose_rot :: Ros2Abb_rapid_msgsMsgOrient
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_msgsMsgPoseCodecIdentity :: String
ros2Abb_rapid_msgsMsgPoseCodecIdentity = "UWVMROS1_8f1535fe21326706fd0b16314857162d36bca91ce8e8f6a8bec3864dafb9e2f2"
-- | @brief Encode every field of complete abb_rapid_msgs/msg/Pose.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_msgsMsgPose :: Ros2Abb_rapid_msgsMsgPose -> Either Word32 [Word8]
encodeRos2Abb_rapid_msgsMsgPose value = do
    chunk0 <- encodeRos2Abb_rapid_msgsMsgPos (ros2Abb_rapid_msgsMsgPose_trans value)
    chunk1 <- encodeRos2Abb_rapid_msgsMsgOrient (ros2Abb_rapid_msgsMsgPose_rot value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 28 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/msg/Pose.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_msgsMsgPose :: W.Parser Ros2Abb_rapid_msgsMsgPose
readRos2Abb_rapid_msgsMsgPose = do
    value0 <- readRos2Abb_rapid_msgsMsgPos
    value1 <- readRos2Abb_rapid_msgsMsgOrient
    let value = Ros2Abb_rapid_msgsMsgPose value0 value1
    case encodeRos2Abb_rapid_msgsMsgPose value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/msg/Pose.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_msgsMsgPose :: [Word8] -> Either Word32 Ros2Abb_rapid_msgsMsgPose
decodeRos2Abb_rapid_msgsMsgPose bytes
    | length bytes < 28 || length bytes > 28 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_msgsMsgPose bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/msg/RobTarget value.
-- | @details Retain every original field in declaration order. Canonical extent 68..68 bytes.
data Ros2Abb_rapid_msgsMsgRobTarget = Ros2Abb_rapid_msgsMsgRobTarget
    {
    -- | @brief Original abb_rapid_msgs/msg/RobTarget.trans field.
    -- | @details Original type abb_rapid_msgs/msg/Pos. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Abb_rapid_msgsMsgRobTarget_trans :: Ros2Abb_rapid_msgsMsgPos
    ,
    -- | @brief Original abb_rapid_msgs/msg/RobTarget.rot field.
    -- | @details Original type abb_rapid_msgs/msg/Orient. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_rapid_msgsMsgRobTarget_rot :: Ros2Abb_rapid_msgsMsgOrient
    ,
    -- | @brief Original abb_rapid_msgs/msg/RobTarget.robconf field.
    -- | @details Original type abb_rapid_msgs/msg/ConfData. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_rapid_msgsMsgRobTarget_robconf :: Ros2Abb_rapid_msgsMsgConfData
    ,
    -- | @brief Original abb_rapid_msgs/msg/RobTarget.extax field.
    -- | @details Original type abb_rapid_msgs/msg/ExtJoint. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_rapid_msgsMsgRobTarget_extax :: Ros2Abb_rapid_msgsMsgExtJoint
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_msgsMsgRobTargetCodecIdentity :: String
ros2Abb_rapid_msgsMsgRobTargetCodecIdentity = "UWVMROS1_8decb56e8faf0a6a954af974adfea5c500aea8392e6a778ae7394174323489d8"
-- | @brief Encode every field of complete abb_rapid_msgs/msg/RobTarget.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_msgsMsgRobTarget :: Ros2Abb_rapid_msgsMsgRobTarget -> Either Word32 [Word8]
encodeRos2Abb_rapid_msgsMsgRobTarget value = do
    chunk0 <- encodeRos2Abb_rapid_msgsMsgPos (ros2Abb_rapid_msgsMsgRobTarget_trans value)
    chunk1 <- encodeRos2Abb_rapid_msgsMsgOrient (ros2Abb_rapid_msgsMsgRobTarget_rot value)
    chunk2 <- encodeRos2Abb_rapid_msgsMsgConfData (ros2Abb_rapid_msgsMsgRobTarget_robconf value)
    chunk3 <- encodeRos2Abb_rapid_msgsMsgExtJoint (ros2Abb_rapid_msgsMsgRobTarget_extax value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 68 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/msg/RobTarget.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_msgsMsgRobTarget :: W.Parser Ros2Abb_rapid_msgsMsgRobTarget
readRos2Abb_rapid_msgsMsgRobTarget = do
    value0 <- readRos2Abb_rapid_msgsMsgPos
    value1 <- readRos2Abb_rapid_msgsMsgOrient
    value2 <- readRos2Abb_rapid_msgsMsgConfData
    value3 <- readRos2Abb_rapid_msgsMsgExtJoint
    let value = Ros2Abb_rapid_msgsMsgRobTarget value0 value1 value2 value3
    case encodeRos2Abb_rapid_msgsMsgRobTarget value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/msg/RobTarget.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_msgsMsgRobTarget :: [Word8] -> Either Word32 Ros2Abb_rapid_msgsMsgRobTarget
decodeRos2Abb_rapid_msgsMsgRobTarget bytes
    | length bytes < 68 || length bytes > 68 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_msgsMsgRobTarget bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/msg/ToolData value.
-- | @details Retain every original field in declaration order. Canonical extent 73..73 bytes.
data Ros2Abb_rapid_msgsMsgToolData = Ros2Abb_rapid_msgsMsgToolData
    {
    -- | @brief Original abb_rapid_msgs/msg/ToolData.robhold field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgToolData_robhold :: Bool
    ,
    -- | @brief Original abb_rapid_msgs/msg/ToolData.tframe field.
    -- | @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Abb_rapid_msgsMsgToolData_tframe :: Ros2Abb_rapid_msgsMsgPose
    ,
    -- | @brief Original abb_rapid_msgs/msg/ToolData.tload field.
    -- | @details Original type abb_rapid_msgs/msg/LoadData. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_rapid_msgsMsgToolData_tload :: Ros2Abb_rapid_msgsMsgLoadData
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_msgsMsgToolDataCodecIdentity :: String
ros2Abb_rapid_msgsMsgToolDataCodecIdentity = "UWVMROS1_948fa0bbaaf95f0d88ca03cad687f16102261f54b0da889ae8bca82042fc5237"
-- | @brief Encode every field of complete abb_rapid_msgs/msg/ToolData.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_msgsMsgToolData :: Ros2Abb_rapid_msgsMsgToolData -> Either Word32 [Word8]
encodeRos2Abb_rapid_msgsMsgToolData value = do
    chunk0 <- Right (W.putBool (ros2Abb_rapid_msgsMsgToolData_robhold value))
    chunk1 <- encodeRos2Abb_rapid_msgsMsgPose (ros2Abb_rapid_msgsMsgToolData_tframe value)
    chunk2 <- encodeRos2Abb_rapid_msgsMsgLoadData (ros2Abb_rapid_msgsMsgToolData_tload value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 73 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/msg/ToolData.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_msgsMsgToolData :: W.Parser Ros2Abb_rapid_msgsMsgToolData
readRos2Abb_rapid_msgsMsgToolData = do
    value0 <- W.boolean
    value1 <- readRos2Abb_rapid_msgsMsgPose
    value2 <- readRos2Abb_rapid_msgsMsgLoadData
    let value = Ros2Abb_rapid_msgsMsgToolData value0 value1 value2
    case encodeRos2Abb_rapid_msgsMsgToolData value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/msg/ToolData.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_msgsMsgToolData :: [Word8] -> Either Word32 Ros2Abb_rapid_msgsMsgToolData
decodeRos2Abb_rapid_msgsMsgToolData bytes
    | length bytes < 73 || length bytes > 73 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_msgsMsgToolData bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/msg/WObjData value.
-- | @details Retain every original field in declaration order. Canonical extent 62..574 bytes.
data Ros2Abb_rapid_msgsMsgWObjData = Ros2Abb_rapid_msgsMsgWObjData
    {
    -- | @brief Original abb_rapid_msgs/msg/WObjData.robhold field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgWObjData_robhold :: Bool
    ,
    -- | @brief Original abb_rapid_msgs/msg/WObjData.ufprog field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_msgsMsgWObjData_ufprog :: Bool
    ,
    -- | @brief Original abb_rapid_msgs/msg/WObjData.ufmec field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_rapid_msgsMsgWObjData_ufmec :: [Word8]
    ,
    -- | @brief Original abb_rapid_msgs/msg/WObjData.uframe field.
    -- | @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Abb_rapid_msgsMsgWObjData_uframe :: Ros2Abb_rapid_msgsMsgPose
    ,
    -- | @brief Original abb_rapid_msgs/msg/WObjData.oframe field.
    -- | @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Abb_rapid_msgsMsgWObjData_oframe :: Ros2Abb_rapid_msgsMsgPose
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_msgsMsgWObjDataCodecIdentity :: String
ros2Abb_rapid_msgsMsgWObjDataCodecIdentity = "UWVMROS1_b36f0448512fab6028431d19b39a8ae31b7b81b2615ffc8311139f63b5d8e7cd"
-- | @brief Encode every field of complete abb_rapid_msgs/msg/WObjData.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_msgsMsgWObjData :: Ros2Abb_rapid_msgsMsgWObjData -> Either Word32 [Word8]
encodeRos2Abb_rapid_msgsMsgWObjData value = do
    chunk0 <- Right (W.putBool (ros2Abb_rapid_msgsMsgWObjData_robhold value))
    chunk1 <- Right (W.putBool (ros2Abb_rapid_msgsMsgWObjData_ufprog value))
    chunk2 <- W.putText 512 (ros2Abb_rapid_msgsMsgWObjData_ufmec value)
    chunk3 <- encodeRos2Abb_rapid_msgsMsgPose (ros2Abb_rapid_msgsMsgWObjData_uframe value)
    chunk4 <- encodeRos2Abb_rapid_msgsMsgPose (ros2Abb_rapid_msgsMsgWObjData_oframe value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4]
    if length bytes > 574 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/msg/WObjData.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_msgsMsgWObjData :: W.Parser Ros2Abb_rapid_msgsMsgWObjData
readRos2Abb_rapid_msgsMsgWObjData = do
    value0 <- W.boolean
    value1 <- W.boolean
    value2 <- W.text 512
    value3 <- readRos2Abb_rapid_msgsMsgPose
    value4 <- readRos2Abb_rapid_msgsMsgPose
    let value = Ros2Abb_rapid_msgsMsgWObjData value0 value1 value2 value3 value4
    case encodeRos2Abb_rapid_msgsMsgWObjData value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/msg/WObjData.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_msgsMsgWObjData :: [Word8] -> Either Word32 Ros2Abb_rapid_msgsMsgWObjData
decodeRos2Abb_rapid_msgsMsgWObjData bytes
    | length bytes < 62 || length bytes > 574 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_msgsMsgWObjData bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings value.
-- | @details Retain every original field in declaration order. Canonical extent 204..716 bytes.
data Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings = Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.tool field.
    -- | @details Original type abb_rapid_msgs/msg/ToolData. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_tool :: Ros2Abb_rapid_msgsMsgToolData
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.wobj field.
    -- | @details Original type abb_rapid_msgs/msg/WObjData. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_wobj :: Ros2Abb_rapid_msgsMsgWObjData
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.correction_frame field.
    -- | @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_correction_frame :: Ros2Abb_rapid_msgsMsgPose
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.sensor_frame field.
    -- | @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_sensor_frame :: Ros2Abb_rapid_msgsMsgPose
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.cond_min_max field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_cond_min_max :: Float
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.lp_filter field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_lp_filter :: Float
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.sample_rate field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_sample_rate :: Word8
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.max_speed_deviation field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_max_speed_deviation :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettingsCodecIdentity :: String
ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettingsCodecIdentity = "UWVMROS1_fce73aea80d9b8a299b8e2ab742602871146b3ebbd624a2e807e25c1ac107cfa"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings :: Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings -> Either Word32 [Word8]
encodeRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings value = do
    chunk0 <- encodeRos2Abb_rapid_msgsMsgToolData (ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_tool value)
    chunk1 <- encodeRos2Abb_rapid_msgsMsgWObjData (ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_wobj value)
    chunk2 <- encodeRos2Abb_rapid_msgsMsgPose (ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_correction_frame value)
    chunk3 <- encodeRos2Abb_rapid_msgsMsgPose (ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_sensor_frame value)
    chunk4 <- finite4 (ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_cond_min_max value) castFloatToWord32
    chunk5 <- finite4 (ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_lp_filter value) castFloatToWord32
    chunk6 <- Right (W.putNumber 1 (ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_sample_rate value))
    chunk7 <- finite4 (ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_max_speed_deviation value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5, chunk6, chunk7]
    if length bytes > 716 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings :: W.Parser Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings
readRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings = do
    value0 <- readRos2Abb_rapid_msgsMsgToolData
    value1 <- readRos2Abb_rapid_msgsMsgWObjData
    value2 <- readRos2Abb_rapid_msgsMsgPose
    value3 <- readRos2Abb_rapid_msgsMsgPose
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- fromIntegral <$> W.number 1
    value7 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings
            value0 value1 value2 value3 value4 value5 value6 value7
    case encodeRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings :: [Word8] -> Either Word32 Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings
decodeRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings bytes
    | length bytes < 204 || length bytes > 716 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/msg/EGMRunSettings value.
-- | @details Retain every original field in declaration order. Canonical extent 40..40 bytes.
data Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings = Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.cond_time field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings_cond_time :: Float
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.ramp_in_time field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings_ramp_in_time :: Float
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.offset field.
    -- | @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings_offset :: Ros2Abb_rapid_msgsMsgPose
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.pos_corr_gain field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings_pos_corr_gain :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettingsCodecIdentity :: String
ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettingsCodecIdentity = "UWVMROS1_92a2a654eb2eda89077933f955f04ed87884827b8875cf563570eed5d211b0e2"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/EGMRunSettings.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings :: Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings -> Either Word32 [Word8]
encodeRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings value = do
    chunk0 <- finite4 (ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings_cond_time value) castFloatToWord32
    chunk1 <- finite4 (ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings_ramp_in_time value) castFloatToWord32
    chunk2 <- encodeRos2Abb_rapid_msgsMsgPose (ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings_offset value)
    chunk3 <- finite4 (ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings_pos_corr_gain value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 40 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/msg/EGMRunSettings.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings :: W.Parser Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings
readRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- readRos2Abb_rapid_msgsMsgPose
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings value0 value1 value2 value3
    case encodeRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/msg/EGMRunSettings.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings :: [Word8] -> Either Word32 Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings
decodeRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings bytes
    | length bytes < 40 || length bytes > 40 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings value.
-- | @details Retain every original field in declaration order. Canonical extent 5..5 bytes.
data Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings = Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.use_filtering field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings_use_filtering :: Bool
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.comm_timeout field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings_comm_timeout :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettingsCodecIdentity :: String
ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettingsCodecIdentity = "UWVMROS1_2565bed5b83b132c69f37d7294c69181800ad2974ddc54f60868da57e28e782c"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings :: Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings -> Either Word32 [Word8]
encodeRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings value = do
    chunk0 <- Right (W.putBool (ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings_use_filtering value))
    chunk1 <- finite4 (ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings_comm_timeout value) castFloatToWord32
    let bytes = concat [chunk0, chunk1]
    if length bytes > 5 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings :: W.Parser Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings
readRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings = do
    value0 <- W.boolean
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings value0 value1
    case encodeRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings :: [Word8] -> Either Word32 Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings
decodeRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings bytes
    | length bytes < 5 || length bytes > 5 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/msg/EGMStopSettings value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings = Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMStopSettings.ramp_out_time field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings_ramp_out_time :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettingsCodecIdentity :: String
ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettingsCodecIdentity = "UWVMROS1_0f3f2f6034567a7d49dd140ff9ff620e8567548139597b9b823e63a947673cee"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/EGMStopSettings.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings :: Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings -> Either Word32 [Word8]
encodeRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings value = do
    chunk0 <- finite4 (ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings_ramp_out_time value) castFloatToWord32
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/msg/EGMStopSettings.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings :: W.Parser Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings
readRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings value0
    case encodeRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/msg/EGMStopSettings.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings :: [Word8] -> Either Word32 Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings
decodeRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/msg/EGMSettings value.
-- | @details Retain every original field in declaration order. Canonical extent 255..767 bytes.
data Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings = Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.allow_egm_motions field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMSettings_allow_egm_motions :: Bool
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.use_presync field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMSettings_use_presync :: Bool
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.setup_uc field.
    -- | @details Original type abb_rapid_sm_addin_msgs/msg/EGMSetupSettings. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMSettings_setup_uc :: Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.activate field.
    -- | @details Original type abb_rapid_sm_addin_msgs/msg/EGMActivateSettings. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMSettings_activate :: Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.run field.
    -- | @details Original type abb_rapid_sm_addin_msgs/msg/EGMRunSettings. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMSettings_run :: Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.stop field.
    -- | @details Original type abb_rapid_sm_addin_msgs/msg/EGMStopSettings. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsMsgEGMSettings_stop :: Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_sm_addin_msgsMsgEGMSettingsCodecIdentity :: String
ros2Abb_rapid_sm_addin_msgsMsgEGMSettingsCodecIdentity = "UWVMROS1_622d3a975eecb11f7729aecfadc161cada271208d6fe7599f455750b90144ef3"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/EGMSettings.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_sm_addin_msgsMsgEGMSettings :: Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings -> Either Word32 [Word8]
encodeRos2Abb_rapid_sm_addin_msgsMsgEGMSettings value = do
    chunk0 <- Right (W.putBool (ros2Abb_rapid_sm_addin_msgsMsgEGMSettings_allow_egm_motions value))
    chunk1 <- Right (W.putBool (ros2Abb_rapid_sm_addin_msgsMsgEGMSettings_use_presync value))
    chunk2 <- encodeRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings (ros2Abb_rapid_sm_addin_msgsMsgEGMSettings_setup_uc value)
    chunk3 <- encodeRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings (ros2Abb_rapid_sm_addin_msgsMsgEGMSettings_activate value)
    chunk4 <- encodeRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings (ros2Abb_rapid_sm_addin_msgsMsgEGMSettings_run value)
    chunk5 <- encodeRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings (ros2Abb_rapid_sm_addin_msgsMsgEGMSettings_stop value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5]
    if length bytes > 767 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/msg/EGMSettings.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_sm_addin_msgsMsgEGMSettings :: W.Parser Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings
readRos2Abb_rapid_sm_addin_msgsMsgEGMSettings = do
    value0 <- W.boolean
    value1 <- W.boolean
    value2 <- readRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings
    value3 <- readRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings
    value4 <- readRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings
    value5 <- readRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings
    let value = Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings value0 value1 value2 value3 value4 value5
    case encodeRos2Abb_rapid_sm_addin_msgsMsgEGMSettings value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/msg/EGMSettings.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_sm_addin_msgsMsgEGMSettings :: [Word8] -> Either Word32 Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings
decodeRos2Abb_rapid_sm_addin_msgsMsgEGMSettings bytes
    | length bytes < 255 || length bytes > 767 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_sm_addin_msgsMsgEGMSettings bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/msg/StateMachineState value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState = Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.rapid_task field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_rapid_task :: [Word8]
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.sm_state field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_sm_state :: Word8
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.egm_action field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_egm_action :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_sm_addin_msgsMsgStateMachineStateCodecIdentity :: String
ros2Abb_rapid_sm_addin_msgsMsgStateMachineStateCodecIdentity = "UWVMROS1_ff2a09e4b6e8ef26cbdc3ecdffdceb33d6b2c82f0d51ed2c38ce9648c6f47711"
-- | @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_UNKNOWN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_UNKNOWN :: Word8
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_UNKNOWN = 1
-- | @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_IDLE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_IDLE :: Word8
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_IDLE = 2
-- | @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_INITIALIZE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_INITIALIZE :: Word8
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_INITIALIZE = 3
-- | @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_RUN_RAPID_ROUTINE
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_RUN_RAPID_ROUTINE :: Word8
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_RUN_RAPID_ROUTINE = 4
-- | @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_RUN_EGM_ROUTINE
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_RUN_EGM_ROUTINE :: Word8
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_RUN_EGM_ROUTINE = 5
-- | @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_UNKNOWN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_UNKNOWN :: Word8
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_UNKNOWN = 1
-- | @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_NONE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_NONE :: Word8
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_NONE = 2
-- | @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_RUN_JOINT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_RUN_JOINT :: Word8
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_RUN_JOINT = 3
-- | @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_RUN_POSE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_RUN_POSE :: Word8
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_RUN_POSE = 4
-- | @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_STOP constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_STOP :: Word8
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_STOP = 5
-- | @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_START_STREAM constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_START_STREAM :: Word8
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_START_STREAM = 6
-- | @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_STOP_STREAM constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_STOP_STREAM :: Word8
ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_STOP_STREAM = 7
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/StateMachineState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_sm_addin_msgsMsgStateMachineState :: Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState -> Either Word32 [Word8]
encodeRos2Abb_rapid_sm_addin_msgsMsgStateMachineState value = do
    chunk0 <- W.putText 512 (ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_rapid_task value)
    chunk1 <- Right (W.putNumber 1 (ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_sm_state value))
    chunk2 <- Right (W.putNumber 1 (ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_egm_action value))
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/msg/StateMachineState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_sm_addin_msgsMsgStateMachineState :: W.Parser Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState
readRos2Abb_rapid_sm_addin_msgsMsgStateMachineState = do
    value0 <- W.text 512
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    let value = Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState value0 value1 value2
    case encodeRos2Abb_rapid_sm_addin_msgsMsgStateMachineState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/msg/StateMachineState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_sm_addin_msgsMsgStateMachineState :: [Word8] -> Either Word32 Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState
decodeRos2Abb_rapid_sm_addin_msgsMsgStateMachineState bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_sm_addin_msgsMsgStateMachineState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/msg/RuntimeState value.
-- | @details Retain every original field in declaration order. Canonical extent 16..8368 bytes.
data Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState = Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/RuntimeState.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Abb_rapid_sm_addin_msgsMsgRuntimeState_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/msg/RuntimeState.state_machines field.
    -- | @details Original type abb_rapid_sm_addin_msgs/msg/StateMachineState. Shape sequence;
    -- | bound/count 16 elements. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsMsgRuntimeState_state_machines :: [Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_sm_addin_msgsMsgRuntimeStateCodecIdentity :: String
ros2Abb_rapid_sm_addin_msgsMsgRuntimeStateCodecIdentity = "UWVMROS1_3c0f157544fa82c4e206a4fb42f8ba7f67213d19533f79b77c66dec6fd0460d9"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/RuntimeState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_sm_addin_msgsMsgRuntimeState :: Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState -> Either Word32 [Word8]
encodeRos2Abb_rapid_sm_addin_msgsMsgRuntimeState value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Abb_rapid_sm_addin_msgsMsgRuntimeState_header value)
    if length (ros2Abb_rapid_sm_addin_msgsMsgRuntimeState_state_machines value) <= 16 then Right () else Left 22
    item1 <- concat <$> mapM
        (\element -> encodeRos2Abb_rapid_sm_addin_msgsMsgStateMachineState (element))
        (ros2Abb_rapid_sm_addin_msgsMsgRuntimeState_state_machines value)
    chunk1 <- Right (W.putNumber 4 (length (ros2Abb_rapid_sm_addin_msgsMsgRuntimeState_state_machines value)) ++ item1)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8368 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/msg/RuntimeState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_sm_addin_msgsMsgRuntimeState :: W.Parser Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState
readRos2Abb_rapid_sm_addin_msgsMsgRuntimeState = do
    value0 <- readRos2Std_msgsMsgHeader
    count1 <- W.number 4
    if count1 > 16 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (readRos2Abb_rapid_sm_addin_msgsMsgStateMachineState)
    let value = Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState value0 value1
    case encodeRos2Abb_rapid_sm_addin_msgsMsgRuntimeState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/msg/RuntimeState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_sm_addin_msgsMsgRuntimeState :: [Word8] -> Either Word32 Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState
decodeRos2Abb_rapid_sm_addin_msgsMsgRuntimeState bytes
    | length bytes < 16 || length bytes > 8368 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_sm_addin_msgsMsgRuntimeState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 4..68 bytes.
data Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request = Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.task field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request_task :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_RequestCodecIdentity :: String
ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_RequestCodecIdentity = "UWVMROS1_363be2459fcc9c475c6305cbcfebf7689e891eb27645b7667960aace23d56e8e"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request :: Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request -> Either Word32 [Word8]
encodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request value = do
    chunk0 <- W.putText 64 (ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request_task value)
    let bytes = concat [chunk0]
    if length bytes > 68 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request :: W.Parser Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request
readRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request = do
    value0 <- W.text 64
    let value = Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request value0
    case encodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request :: [Word8] -> Either Word32 Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request
decodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request bytes
    | length bytes < 4 || length bytes > 68 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 261..1285 bytes.
data Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response = Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.settings field.
    -- | @details Original type abb_rapid_sm_addin_msgs/msg/EGMSettings. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response_settings :: Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response_result_code :: Word16
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_ResponseCodecIdentity :: String
ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_ResponseCodecIdentity = "UWVMROS1_d8f340e1c6d78fc0a782c3279efb34ae5e11df175a82f9dd5ee82e603d6b2ffb"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response :: Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response -> Either Word32 [Word8]
encodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response value = do
    chunk0 <- encodeRos2Abb_rapid_sm_addin_msgsMsgEGMSettings (ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response_settings value)
    chunk1 <- Right (W.putNumber 2 (ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response_result_code value))
    chunk2 <- W.putText 512 (ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 1285 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response :: W.Parser Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response
readRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response = do
    value0 <- readRos2Abb_rapid_sm_addin_msgsMsgEGMSettings
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response value0 value1 value2
    case encodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response :: [Word8] -> Either Word32 Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response
decodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response bytes
    | length bytes < 261 || length bytes > 1285 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 259..835 bytes.
data Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request = Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.task field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request_task :: [Word8]
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.settings field.
    -- | @details Original type abb_rapid_sm_addin_msgs/msg/EGMSettings. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request_settings :: Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_RequestCodecIdentity :: String
ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_RequestCodecIdentity = "UWVMROS1_c2f3dd535e9475526bf18bdffa0e9a839049d315c9aebb150f8561ee3361a2bd"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request :: Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request -> Either Word32 [Word8]
encodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request value = do
    chunk0 <- W.putText 64 (ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request_task value)
    chunk1 <- encodeRos2Abb_rapid_sm_addin_msgsMsgEGMSettings (ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request_settings value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 835 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request :: W.Parser Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request
readRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request = do
    value0 <- W.text 64
    value1 <- readRos2Abb_rapid_sm_addin_msgsMsgEGMSettings
    let value = Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request value0 value1
    case encodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request :: [Word8] -> Either Word32 Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request
decodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request bytes
    | length bytes < 259 || length bytes > 835 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response = Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response_result_code :: Word16
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_ResponseCodecIdentity :: String
ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_ResponseCodecIdentity = "UWVMROS1_6a1adeebe31dfe101a6d57019e26ee2f1144b9a6ce30aee08d4c6fe56ea6838d"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response :: Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response -> Either Word32 [Word8]
encodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response value = do
    chunk0 <- Right (W.putNumber 2 (ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response :: W.Parser Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response
readRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response value0 value1
    case encodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response :: [Word8] -> Either Word32 Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response
decodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 8..584 bytes.
data Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request = Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.task field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request_task :: [Word8]
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.routine field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request_routine :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_RequestCodecIdentity :: String
ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_RequestCodecIdentity = "UWVMROS1_4561b7e5e296a1a329d5f5684bcbde1ef41324554a34e9a79a85824286dd477c"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request :: Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request -> Either Word32 [Word8]
encodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request value = do
    chunk0 <- W.putText 64 (ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request_task value)
    chunk1 <- W.putText 512 (ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request_routine value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 584 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request :: W.Parser Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request
readRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request = do
    value0 <- W.text 64
    value1 <- W.text 512
    let value = Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request value0 value1
    case encodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request :: [Word8] -> Either Word32 Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request
decodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request bytes
    | length bytes < 8 || length bytes > 584 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response = Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response_result_code :: Word16
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_ResponseCodecIdentity :: String
ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_ResponseCodecIdentity = "UWVMROS1_980d2a16536289f446161acdf2fc57d459baa2290d74f1dd5aaf8129126cbba1"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response :: Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response -> Either Word32 [Word8]
encodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response value = do
    chunk0 <- Right (W.putNumber 2 (ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response :: W.Parser Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response
readRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response value0 value1
    case encodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response :: [Word8] -> Either Word32 Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response
decodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 9..73 bytes.
data Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request = Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.task field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_task :: [Word8]
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.command field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_command :: Word8
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.target_position field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_target_position :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_RequestCodecIdentity :: String
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_RequestCodecIdentity = "UWVMROS1_5d6983aa85c2c52f8ec06cbd723d5929cfc381db2e0bfffb4c27078497d86c90"
-- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_UNKNOWN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_UNKNOWN :: Word8
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_UNKNOWN = 1
-- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_NONE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_NONE :: Word8
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_NONE = 2
-- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_INITIALIZE
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_INITIALIZE :: Word8
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_INITIALIZE = 3
-- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_CALIBRATE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_CALIBRATE :: Word8
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_CALIBRATE = 4
-- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_MOVE_TO constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_MOVE_TO :: Word8
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_MOVE_TO = 5
-- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_GRIP_IN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_GRIP_IN :: Word8
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_GRIP_IN = 6
-- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_GRIP_OUT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_GRIP_OUT :: Word8
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_GRIP_OUT = 7
-- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_ON_1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_BLOW_ON_1 :: Word8
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_BLOW_ON_1 = 8
-- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_ON_2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_BLOW_ON_2 :: Word8
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_BLOW_ON_2 = 9
-- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_OFF_1
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_BLOW_OFF_1 :: Word8
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_BLOW_OFF_1 = 10
-- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_OFF_2
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_BLOW_OFF_2 :: Word8
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_BLOW_OFF_2 = 11
-- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_ON_1
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_VACUUM_ON_1 :: Word8
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_VACUUM_ON_1 = 12
-- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_ON_2
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_VACUUM_ON_2 :: Word8
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_VACUUM_ON_2 = 13
-- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_OFF_1
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_VACUUM_OFF_1 :: Word8
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_VACUUM_OFF_1 = 14
-- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_OFF_2
-- | constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_VACUUM_OFF_2 :: Word8
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_VACUUM_OFF_2 = 15
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request :: Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request -> Either Word32 [Word8]
encodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request value = do
    chunk0 <- W.putText 64 (ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_task value)
    chunk1 <- Right (W.putNumber 1 (ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_command value))
    chunk2 <- finite4 (ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_target_position value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 73 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request :: W.Parser Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request
readRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request = do
    value0 <- W.text 64
    value1 <- fromIntegral <$> W.number 1
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request value0 value1 value2
    case encodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request :: [Word8] -> Either Word32 Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request
decodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request bytes
    | length bytes < 9 || length bytes > 73 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response = Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response_result_code :: Word16
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_ResponseCodecIdentity :: String
ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_ResponseCodecIdentity = "UWVMROS1_87cdc41c81d49930dce7193d4b7af98add266a6e9a7cf5e69457d01ded388cf8"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response :: Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response -> Either Word32 [Word8]
encodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response value = do
    chunk0 <- Right (W.putNumber 2 (ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response :: W.Parser Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response
readRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response value0 value1
    case encodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response :: [Word8] -> Either Word32 Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response
decodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/msg/MechanicalUnitState value.
-- | @details Retain every original field in declaration order. Canonical extent 5..69 bytes.
data Ros2Abb_robot_msgsMsgMechanicalUnitState = Ros2Abb_robot_msgsMsgMechanicalUnitState
    {
    -- | @brief Original abb_robot_msgs/msg/MechanicalUnitState.name field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Abb_robot_msgsMsgMechanicalUnitState_name :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/msg/MechanicalUnitState.activated field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsMsgMechanicalUnitState_activated :: Bool
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsMsgMechanicalUnitStateCodecIdentity :: String
ros2Abb_robot_msgsMsgMechanicalUnitStateCodecIdentity = "UWVMROS1_1dc7a7dcbaa19e78cd6419f8844287a7fbd9d7a839ab1a8ad97ef0be34f3a3a8"
-- | @brief Encode every field of complete abb_robot_msgs/msg/MechanicalUnitState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsMsgMechanicalUnitState :: Ros2Abb_robot_msgsMsgMechanicalUnitState -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsMsgMechanicalUnitState value = do
    chunk0 <- W.putText 64 (ros2Abb_robot_msgsMsgMechanicalUnitState_name value)
    chunk1 <- Right (W.putBool (ros2Abb_robot_msgsMsgMechanicalUnitState_activated value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 69 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/msg/MechanicalUnitState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsMsgMechanicalUnitState :: W.Parser Ros2Abb_robot_msgsMsgMechanicalUnitState
readRos2Abb_robot_msgsMsgMechanicalUnitState = do
    value0 <- W.text 64
    value1 <- W.boolean
    let value = Ros2Abb_robot_msgsMsgMechanicalUnitState value0 value1
    case encodeRos2Abb_robot_msgsMsgMechanicalUnitState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/msg/MechanicalUnitState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsMsgMechanicalUnitState :: [Word8] -> Either Word32 Ros2Abb_robot_msgsMsgMechanicalUnitState
decodeRos2Abb_robot_msgsMsgMechanicalUnitState bytes
    | length bytes < 5 || length bytes > 69 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsMsgMechanicalUnitState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/msg/RAPIDSymbolPath value.
-- | @details Retain every original field in declaration order. Canonical extent 12..204 bytes.
data Ros2Abb_robot_msgsMsgRAPIDSymbolPath = Ros2Abb_robot_msgsMsgRAPIDSymbolPath
    {
    -- | @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.task field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Abb_robot_msgsMsgRAPIDSymbolPath_task :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.module field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Abb_robot_msgsMsgRAPIDSymbolPath_module :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.symbol field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Abb_robot_msgsMsgRAPIDSymbolPath_symbol :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsMsgRAPIDSymbolPathCodecIdentity :: String
ros2Abb_robot_msgsMsgRAPIDSymbolPathCodecIdentity = "UWVMROS1_249523197567fbf638f30487a7f5b8d8ff5ea746fcd4a65a35f2dbb18a3adf0e"
-- | @brief Encode every field of complete abb_robot_msgs/msg/RAPIDSymbolPath.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsMsgRAPIDSymbolPath :: Ros2Abb_robot_msgsMsgRAPIDSymbolPath -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsMsgRAPIDSymbolPath value = do
    chunk0 <- W.putText 64 (ros2Abb_robot_msgsMsgRAPIDSymbolPath_task value)
    chunk1 <- W.putText 64 (ros2Abb_robot_msgsMsgRAPIDSymbolPath_module value)
    chunk2 <- W.putText 64 (ros2Abb_robot_msgsMsgRAPIDSymbolPath_symbol value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 204 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/msg/RAPIDSymbolPath.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsMsgRAPIDSymbolPath :: W.Parser Ros2Abb_robot_msgsMsgRAPIDSymbolPath
readRos2Abb_robot_msgsMsgRAPIDSymbolPath = do
    value0 <- W.text 64
    value1 <- W.text 64
    value2 <- W.text 64
    let value = Ros2Abb_robot_msgsMsgRAPIDSymbolPath value0 value1 value2
    case encodeRos2Abb_robot_msgsMsgRAPIDSymbolPath value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/msg/RAPIDSymbolPath.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsMsgRAPIDSymbolPath :: [Word8] -> Either Word32 Ros2Abb_robot_msgsMsgRAPIDSymbolPath
decodeRos2Abb_robot_msgsMsgRAPIDSymbolPath bytes
    | length bytes < 12 || length bytes > 204 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsMsgRAPIDSymbolPath bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/msg/RAPIDTaskState value.
-- | @details Retain every original field in declaration order. Canonical extent 7..71 bytes.
data Ros2Abb_robot_msgsMsgRAPIDTaskState = Ros2Abb_robot_msgsMsgRAPIDTaskState
    {
    -- | @brief Original abb_robot_msgs/msg/RAPIDTaskState.name field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Abb_robot_msgsMsgRAPIDTaskState_name :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/msg/RAPIDTaskState.activated field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsMsgRAPIDTaskState_activated :: Bool
    ,
    -- | @brief Original abb_robot_msgs/msg/RAPIDTaskState.execution_state field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsMsgRAPIDTaskState_execution_state :: Word8
    ,
    -- | @brief Original abb_robot_msgs/msg/RAPIDTaskState.motion_task field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsMsgRAPIDTaskState_motion_task :: Bool
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsMsgRAPIDTaskStateCodecIdentity :: String
ros2Abb_robot_msgsMsgRAPIDTaskStateCodecIdentity = "UWVMROS1_ff698e375b0ff33026cfd248c1ac734f939763aba25a6c4f7cac628d445422fd"
-- | @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_UNKNOWN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_UNKNOWN :: Word8
ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_UNKNOWN = 1
-- | @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_READY constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_READY :: Word8
ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_READY = 2
-- | @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_STOPPED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_STOPPED :: Word8
ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_STOPPED = 3
-- | @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_STARTED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_STARTED :: Word8
ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_STARTED = 4
-- | @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_UNINITIALIZED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_UNINITIALIZED :: Word8
ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_UNINITIALIZED = 5
-- | @brief Encode every field of complete abb_robot_msgs/msg/RAPIDTaskState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsMsgRAPIDTaskState :: Ros2Abb_robot_msgsMsgRAPIDTaskState -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsMsgRAPIDTaskState value = do
    chunk0 <- W.putText 64 (ros2Abb_robot_msgsMsgRAPIDTaskState_name value)
    chunk1 <- Right (W.putBool (ros2Abb_robot_msgsMsgRAPIDTaskState_activated value))
    chunk2 <- Right (W.putNumber 1 (ros2Abb_robot_msgsMsgRAPIDTaskState_execution_state value))
    chunk3 <- Right (W.putBool (ros2Abb_robot_msgsMsgRAPIDTaskState_motion_task value))
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 71 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/msg/RAPIDTaskState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsMsgRAPIDTaskState :: W.Parser Ros2Abb_robot_msgsMsgRAPIDTaskState
readRos2Abb_robot_msgsMsgRAPIDTaskState = do
    value0 <- W.text 64
    value1 <- W.boolean
    value2 <- fromIntegral <$> W.number 1
    value3 <- W.boolean
    let value = Ros2Abb_robot_msgsMsgRAPIDTaskState value0 value1 value2 value3
    case encodeRos2Abb_robot_msgsMsgRAPIDTaskState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/msg/RAPIDTaskState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsMsgRAPIDTaskState :: [Word8] -> Either Word32 Ros2Abb_robot_msgsMsgRAPIDTaskState
decodeRos2Abb_robot_msgsMsgRAPIDTaskState bytes
    | length bytes < 7 || length bytes > 71 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsMsgRAPIDTaskState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/msg/ServiceResponses value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Abb_robot_msgsMsgServiceResponses = Ros2Abb_robot_msgsMsgServiceResponses
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsMsgServiceResponsesCodecIdentity :: String
ros2Abb_robot_msgsMsgServiceResponsesCodecIdentity = "UWVMROS1_4e01b972b67454e851801f28aee09c0774b67907d2241cc67cae7d045c18f646"
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.SUCCESS constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_SUCCESS :: String
ros2Abb_robot_msgsMsgServiceResponses_SUCCESS = ""
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SUCCESS constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RC_SUCCESS :: Word16
ros2Abb_robot_msgsMsgServiceResponses_RC_SUCCESS = 1
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.FAILED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_FAILED :: String
ros2Abb_robot_msgsMsgServiceResponses_FAILED = "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)"
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RC_FAILED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RC_FAILED :: Word16
ros2Abb_robot_msgsMsgServiceResponses_RC_FAILED = 2
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.SERVER_IS_BUSY constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_SERVER_IS_BUSY :: String
ros2Abb_robot_msgsMsgServiceResponses_SERVER_IS_BUSY = "Server is busy"
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SERVER_IS_BUSY constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RC_SERVER_IS_BUSY :: Word16
ros2Abb_robot_msgsMsgServiceResponses_RC_SERVER_IS_BUSY = 1001
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_FILENAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_EMPTY_FILENAME :: String
ros2Abb_robot_msgsMsgServiceResponses_EMPTY_FILENAME = "Filename is empty"
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_FILENAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_FILENAME :: Word16
ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_FILENAME = 2001
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_SIGNAL_NAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_EMPTY_SIGNAL_NAME :: String
ros2Abb_robot_msgsMsgServiceResponses_EMPTY_SIGNAL_NAME = "Signal name is empty"
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_SIGNAL_NAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_SIGNAL_NAME :: Word16
ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_SIGNAL_NAME = 2002
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_TASK_NAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_EMPTY_RAPID_TASK_NAME :: String
ros2Abb_robot_msgsMsgServiceResponses_EMPTY_RAPID_TASK_NAME = "RAPID task name is empty"
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_TASK_NAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_RAPID_TASK_NAME :: Word16
ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_RAPID_TASK_NAME = 2003
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_MODULE_NAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_EMPTY_RAPID_MODULE_NAME :: String
ros2Abb_robot_msgsMsgServiceResponses_EMPTY_RAPID_MODULE_NAME = "RAPID module name is empty"
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_MODULE_NAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_RAPID_MODULE_NAME :: Word16
ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_RAPID_MODULE_NAME = 2004
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_SYMBOL_NAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_EMPTY_RAPID_SYMBOL_NAME :: String
ros2Abb_robot_msgsMsgServiceResponses_EMPTY_RAPID_SYMBOL_NAME = "RAPID symbol name is empty"
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_SYMBOL_NAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_RAPID_SYMBOL_NAME :: Word16
ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_RAPID_SYMBOL_NAME = 2005
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.NOT_IN_AUTO_MODE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_NOT_IN_AUTO_MODE :: String
ros2Abb_robot_msgsMsgServiceResponses_NOT_IN_AUTO_MODE = "Robot controller is not in AUTO mode"
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RC_NOT_IN_AUTO_MODE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RC_NOT_IN_AUTO_MODE :: Word16
ros2Abb_robot_msgsMsgServiceResponses_RC_NOT_IN_AUTO_MODE = 3001
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.MOTORS_ARE_OFF constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_MOTORS_ARE_OFF :: String
ros2Abb_robot_msgsMsgServiceResponses_MOTORS_ARE_OFF = "Motors are off"
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RC_MOTORS_ARE_OFF constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RC_MOTORS_ARE_OFF :: Word16
ros2Abb_robot_msgsMsgServiceResponses_RC_MOTORS_ARE_OFF = 3002
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.MOTORS_ARE_ON constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_MOTORS_ARE_ON :: String
ros2Abb_robot_msgsMsgServiceResponses_MOTORS_ARE_ON = "Motors are on"
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RC_MOTORS_ARE_ON constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RC_MOTORS_ARE_ON :: Word16
ros2Abb_robot_msgsMsgServiceResponses_RC_MOTORS_ARE_ON = 3003
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RAPID_NOT_STOPPED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RAPID_NOT_STOPPED :: String
ros2Abb_robot_msgsMsgServiceResponses_RAPID_NOT_STOPPED = "RAPID has not been stopped"
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RC_RAPID_NOT_STOPPED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RC_RAPID_NOT_STOPPED :: Word16
ros2Abb_robot_msgsMsgServiceResponses_RC_RAPID_NOT_STOPPED = 3004
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RAPID_NOT_RUNNING constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RAPID_NOT_RUNNING :: String
ros2Abb_robot_msgsMsgServiceResponses_RAPID_NOT_RUNNING = "RAPID is not running"
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RC_RAPID_NOT_RUNNING constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RC_RAPID_NOT_RUNNING :: Word16
ros2Abb_robot_msgsMsgServiceResponses_RC_RAPID_NOT_RUNNING = 3005
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.SM_RUNTIME_STATES_MISSING constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_SM_RUNTIME_STATES_MISSING :: String
ros2Abb_robot_msgsMsgServiceResponses_SM_RUNTIME_STATES_MISSING = "No runtime states received for any StateMachine Add-In instance"
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_RUNTIME_STATES_MISSING constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RC_SM_RUNTIME_STATES_MISSING :: Word16
ros2Abb_robot_msgsMsgServiceResponses_RC_SM_RUNTIME_STATES_MISSING = 4001
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.SM_UNKNOWN_RAPID_TASK constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_SM_UNKNOWN_RAPID_TASK :: String
ros2Abb_robot_msgsMsgServiceResponses_SM_UNKNOWN_RAPID_TASK = "RAPID task not found among known StateMachine Add-In instances"
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_UNKNOWN_RAPID_TASK constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RC_SM_UNKNOWN_RAPID_TASK :: Word16
ros2Abb_robot_msgsMsgServiceResponses_RC_SM_UNKNOWN_RAPID_TASK = 4002
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.SM_UNINITIALIZED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_SM_UNINITIALIZED :: String
ros2Abb_robot_msgsMsgServiceResponses_SM_UNINITIALIZED = "StateMachine Add-In instance has not been initialized"
-- | @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_UNINITIALIZED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Abb_robot_msgsMsgServiceResponses_RC_SM_UNINITIALIZED :: Word16
ros2Abb_robot_msgsMsgServiceResponses_RC_SM_UNINITIALIZED = 4003
-- | @brief Encode every field of complete abb_robot_msgs/msg/ServiceResponses.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsMsgServiceResponses :: Ros2Abb_robot_msgsMsgServiceResponses -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsMsgServiceResponses value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/msg/ServiceResponses.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsMsgServiceResponses :: W.Parser Ros2Abb_robot_msgsMsgServiceResponses
readRos2Abb_robot_msgsMsgServiceResponses = do
    let value = Ros2Abb_robot_msgsMsgServiceResponses 
    case encodeRos2Abb_robot_msgsMsgServiceResponses value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/msg/ServiceResponses.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsMsgServiceResponses :: [Word8] -> Either Word32 Ros2Abb_robot_msgsMsgServiceResponses
decodeRos2Abb_robot_msgsMsgServiceResponses bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsMsgServiceResponses bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/msg/SystemState value.
-- | @details Retain every original field in declaration order. Canonical extent 23..2327 bytes.
data Ros2Abb_robot_msgsMsgSystemState = Ros2Abb_robot_msgsMsgSystemState
    {
    -- | @brief Original abb_robot_msgs/msg/SystemState.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Abb_robot_msgsMsgSystemState_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original abb_robot_msgs/msg/SystemState.motors_on field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsMsgSystemState_motors_on :: Bool
    ,
    -- | @brief Original abb_robot_msgs/msg/SystemState.auto_mode field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsMsgSystemState_auto_mode :: Bool
    ,
    -- | @brief Original abb_robot_msgs/msg/SystemState.rapid_running field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsMsgSystemState_rapid_running :: Bool
    ,
    -- | @brief Original abb_robot_msgs/msg/SystemState.rapid_tasks field.
    -- | @details Original type abb_robot_msgs/msg/RAPIDTaskState. Shape sequence; bound/count 16
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsMsgSystemState_rapid_tasks :: [Ros2Abb_robot_msgsMsgRAPIDTaskState]
    ,
    -- | @brief Original abb_robot_msgs/msg/SystemState.mechanical_units field.
    -- | @details Original type abb_robot_msgs/msg/MechanicalUnitState. Shape sequence; bound/count
    -- | 16 elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsMsgSystemState_mechanical_units :: [Ros2Abb_robot_msgsMsgMechanicalUnitState]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsMsgSystemStateCodecIdentity :: String
ros2Abb_robot_msgsMsgSystemStateCodecIdentity = "UWVMROS1_c1cdbf0e578fddc5bf70cc2cc181d786f3e8189afc6a67962de6eb273973a38f"
-- | @brief Encode every field of complete abb_robot_msgs/msg/SystemState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsMsgSystemState :: Ros2Abb_robot_msgsMsgSystemState -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsMsgSystemState value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Abb_robot_msgsMsgSystemState_header value)
    chunk1 <- Right (W.putBool (ros2Abb_robot_msgsMsgSystemState_motors_on value))
    chunk2 <- Right (W.putBool (ros2Abb_robot_msgsMsgSystemState_auto_mode value))
    chunk3 <- Right (W.putBool (ros2Abb_robot_msgsMsgSystemState_rapid_running value))
    if length (ros2Abb_robot_msgsMsgSystemState_rapid_tasks value) <= 16 then Right () else Left 22
    item4 <- concat <$> mapM
        (\element -> encodeRos2Abb_robot_msgsMsgRAPIDTaskState (element))
        (ros2Abb_robot_msgsMsgSystemState_rapid_tasks value)
    chunk4 <- Right (W.putNumber 4 (length (ros2Abb_robot_msgsMsgSystemState_rapid_tasks value)) ++ item4)
    if length (ros2Abb_robot_msgsMsgSystemState_mechanical_units value) <= 16 then Right () else Left 22
    item5 <- concat <$> mapM
        (\element -> encodeRos2Abb_robot_msgsMsgMechanicalUnitState (element))
        (ros2Abb_robot_msgsMsgSystemState_mechanical_units value)
    chunk5 <- Right (W.putNumber 4 (length (ros2Abb_robot_msgsMsgSystemState_mechanical_units value)) ++ item5)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5]
    if length bytes > 2327 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/msg/SystemState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsMsgSystemState :: W.Parser Ros2Abb_robot_msgsMsgSystemState
readRos2Abb_robot_msgsMsgSystemState = do
    value0 <- readRos2Std_msgsMsgHeader
    value1 <- W.boolean
    value2 <- W.boolean
    value3 <- W.boolean
    count4 <- W.number 4
    if count4 > 16 then W.reject else pure ()
    value4 <- replicateM (fromIntegral count4) (readRos2Abb_robot_msgsMsgRAPIDTaskState)
    count5 <- W.number 4
    if count5 > 16 then W.reject else pure ()
    value5 <- replicateM (fromIntegral count5) (readRos2Abb_robot_msgsMsgMechanicalUnitState)
    let value = Ros2Abb_robot_msgsMsgSystemState value0 value1 value2 value3 value4 value5
    case encodeRos2Abb_robot_msgsMsgSystemState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/msg/SystemState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsMsgSystemState :: [Word8] -> Either Word32 Ros2Abb_robot_msgsMsgSystemState
decodeRos2Abb_robot_msgsMsgSystemState bytes
    | length bytes < 23 || length bytes > 2327 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsMsgSystemState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetFileContents_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 4..516 bytes.
data Ros2Abb_robot_msgsSrvGetFileContents_Request = Ros2Abb_robot_msgsSrvGetFileContents_Request
    {
    -- | @brief Original abb_robot_msgs/srv/GetFileContents_Request.filename field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetFileContents_Request_filename :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetFileContents_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvGetFileContents_RequestCodecIdentity = "UWVMROS1_bdcf73a965bd05356e48019b74d633176fdeda62452bc7185d6b6ff30576016b"
-- | @brief Encode every field of complete abb_robot_msgs/srv/GetFileContents_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetFileContents_Request :: Ros2Abb_robot_msgsSrvGetFileContents_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetFileContents_Request value = do
    chunk0 <- W.putText 512 (ros2Abb_robot_msgsSrvGetFileContents_Request_filename value)
    let bytes = concat [chunk0]
    if length bytes > 516 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetFileContents_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetFileContents_Request :: W.Parser Ros2Abb_robot_msgsSrvGetFileContents_Request
readRos2Abb_robot_msgsSrvGetFileContents_Request = do
    value0 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvGetFileContents_Request value0
    case encodeRos2Abb_robot_msgsSrvGetFileContents_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetFileContents_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetFileContents_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetFileContents_Request
decodeRos2Abb_robot_msgsSrvGetFileContents_Request bytes
    | length bytes < 4 || length bytes > 516 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetFileContents_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetFileContents_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 10..4618 bytes.
data Ros2Abb_robot_msgsSrvGetFileContents_Response = Ros2Abb_robot_msgsSrvGetFileContents_Response
    {
    -- | @brief Original abb_robot_msgs/srv/GetFileContents_Response.contents field.
    -- | @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetFileContents_Response_contents :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/srv/GetFileContents_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvGetFileContents_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/GetFileContents_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetFileContents_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetFileContents_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvGetFileContents_ResponseCodecIdentity = "UWVMROS1_f05617145a40043e87cbc251f833274d2a962bd7cdaabc5f9a8e4591bd56e107"
-- | @brief Encode every field of complete abb_robot_msgs/srv/GetFileContents_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetFileContents_Response :: Ros2Abb_robot_msgsSrvGetFileContents_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetFileContents_Response value = do
    chunk0 <- W.putText 4096 (ros2Abb_robot_msgsSrvGetFileContents_Response_contents value)
    chunk1 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvGetFileContents_Response_result_code value))
    chunk2 <- W.putText 512 (ros2Abb_robot_msgsSrvGetFileContents_Response_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 4618 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetFileContents_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetFileContents_Response :: W.Parser Ros2Abb_robot_msgsSrvGetFileContents_Response
readRos2Abb_robot_msgsSrvGetFileContents_Response = do
    value0 <- W.text 4096
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvGetFileContents_Response value0 value1 value2
    case encodeRos2Abb_robot_msgsSrvGetFileContents_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetFileContents_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetFileContents_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetFileContents_Response
decodeRos2Abb_robot_msgsSrvGetFileContents_Response bytes
    | length bytes < 10 || length bytes > 4618 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetFileContents_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetIOSignal_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 4..516 bytes.
data Ros2Abb_robot_msgsSrvGetIOSignal_Request = Ros2Abb_robot_msgsSrvGetIOSignal_Request
    {
    -- | @brief Original abb_robot_msgs/srv/GetIOSignal_Request.signal field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetIOSignal_Request_signal :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetIOSignal_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvGetIOSignal_RequestCodecIdentity = "UWVMROS1_2406d53c2fce44e72ad7e6f1c9e75ea19c4df694ff9f00917229ec758209b1f5"
-- | @brief Encode every field of complete abb_robot_msgs/srv/GetIOSignal_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetIOSignal_Request :: Ros2Abb_robot_msgsSrvGetIOSignal_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetIOSignal_Request value = do
    chunk0 <- W.putText 512 (ros2Abb_robot_msgsSrvGetIOSignal_Request_signal value)
    let bytes = concat [chunk0]
    if length bytes > 516 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetIOSignal_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetIOSignal_Request :: W.Parser Ros2Abb_robot_msgsSrvGetIOSignal_Request
readRos2Abb_robot_msgsSrvGetIOSignal_Request = do
    value0 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvGetIOSignal_Request value0
    case encodeRos2Abb_robot_msgsSrvGetIOSignal_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetIOSignal_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetIOSignal_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetIOSignal_Request
decodeRos2Abb_robot_msgsSrvGetIOSignal_Request bytes
    | length bytes < 4 || length bytes > 516 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetIOSignal_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetIOSignal_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 10..1034 bytes.
data Ros2Abb_robot_msgsSrvGetIOSignal_Response = Ros2Abb_robot_msgsSrvGetIOSignal_Response
    {
    -- | @brief Original abb_robot_msgs/srv/GetIOSignal_Response.value field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetIOSignal_Response_value :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/srv/GetIOSignal_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvGetIOSignal_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/GetIOSignal_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetIOSignal_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetIOSignal_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvGetIOSignal_ResponseCodecIdentity = "UWVMROS1_1f668ef78c353f2ec8defdac619d349cda731576f2429cf07107b9b56ba9030e"
-- | @brief Encode every field of complete abb_robot_msgs/srv/GetIOSignal_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetIOSignal_Response :: Ros2Abb_robot_msgsSrvGetIOSignal_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetIOSignal_Response value = do
    chunk0 <- W.putText 512 (ros2Abb_robot_msgsSrvGetIOSignal_Response_value value)
    chunk1 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvGetIOSignal_Response_result_code value))
    chunk2 <- W.putText 512 (ros2Abb_robot_msgsSrvGetIOSignal_Response_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 1034 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetIOSignal_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetIOSignal_Response :: W.Parser Ros2Abb_robot_msgsSrvGetIOSignal_Response
readRos2Abb_robot_msgsSrvGetIOSignal_Response = do
    value0 <- W.text 512
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvGetIOSignal_Response value0 value1 value2
    case encodeRos2Abb_robot_msgsSrvGetIOSignal_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetIOSignal_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetIOSignal_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetIOSignal_Response
decodeRos2Abb_robot_msgsSrvGetIOSignal_Response bytes
    | length bytes < 10 || length bytes > 1034 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetIOSignal_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetRAPIDBool_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 12..204 bytes.
data Ros2Abb_robot_msgsSrvGetRAPIDBool_Request = Ros2Abb_robot_msgsSrvGetRAPIDBool_Request
    {
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDBool_Request.path field.
    -- | @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetRAPIDBool_Request_path :: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetRAPIDBool_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvGetRAPIDBool_RequestCodecIdentity = "UWVMROS1_c381080d235c78216a8e64275819ff3fb97e1b1de96e7da758c4889630b8e0ff"
-- | @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDBool_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetRAPIDBool_Request :: Ros2Abb_robot_msgsSrvGetRAPIDBool_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetRAPIDBool_Request value = do
    chunk0 <- encodeRos2Abb_robot_msgsMsgRAPIDSymbolPath (ros2Abb_robot_msgsSrvGetRAPIDBool_Request_path value)
    let bytes = concat [chunk0]
    if length bytes > 204 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetRAPIDBool_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetRAPIDBool_Request :: W.Parser Ros2Abb_robot_msgsSrvGetRAPIDBool_Request
readRos2Abb_robot_msgsSrvGetRAPIDBool_Request = do
    value0 <- readRos2Abb_robot_msgsMsgRAPIDSymbolPath
    let value = Ros2Abb_robot_msgsSrvGetRAPIDBool_Request value0
    case encodeRos2Abb_robot_msgsSrvGetRAPIDBool_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDBool_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetRAPIDBool_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDBool_Request
decodeRos2Abb_robot_msgsSrvGetRAPIDBool_Request bytes
    | length bytes < 12 || length bytes > 204 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetRAPIDBool_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetRAPIDBool_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 7..519 bytes.
data Ros2Abb_robot_msgsSrvGetRAPIDBool_Response = Ros2Abb_robot_msgsSrvGetRAPIDBool_Response
    {
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.value field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvGetRAPIDBool_Response_value :: Bool
    ,
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvGetRAPIDBool_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetRAPIDBool_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetRAPIDBool_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvGetRAPIDBool_ResponseCodecIdentity = "UWVMROS1_b853e212489fb815866fa29b165eea474a977483158b6203699c4a1293aa6acd"
-- | @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDBool_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetRAPIDBool_Response :: Ros2Abb_robot_msgsSrvGetRAPIDBool_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetRAPIDBool_Response value = do
    chunk0 <- Right (W.putBool (ros2Abb_robot_msgsSrvGetRAPIDBool_Response_value value))
    chunk1 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvGetRAPIDBool_Response_result_code value))
    chunk2 <- W.putText 512 (ros2Abb_robot_msgsSrvGetRAPIDBool_Response_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 519 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetRAPIDBool_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetRAPIDBool_Response :: W.Parser Ros2Abb_robot_msgsSrvGetRAPIDBool_Response
readRos2Abb_robot_msgsSrvGetRAPIDBool_Response = do
    value0 <- W.boolean
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvGetRAPIDBool_Response value0 value1 value2
    case encodeRos2Abb_robot_msgsSrvGetRAPIDBool_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDBool_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetRAPIDBool_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDBool_Response
decodeRos2Abb_robot_msgsSrvGetRAPIDBool_Response bytes
    | length bytes < 7 || length bytes > 519 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetRAPIDBool_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetRAPIDDnum_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 12..204 bytes.
data Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request = Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request
    {
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Request.path field.
    -- | @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetRAPIDDnum_Request_path :: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetRAPIDDnum_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvGetRAPIDDnum_RequestCodecIdentity = "UWVMROS1_71057c2fe44bc96505ec6e05d998fcb6323b281fff40808ce990207c48626979"
-- | @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDDnum_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Request :: Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Request value = do
    chunk0 <- encodeRos2Abb_robot_msgsMsgRAPIDSymbolPath (ros2Abb_robot_msgsSrvGetRAPIDDnum_Request_path value)
    let bytes = concat [chunk0]
    if length bytes > 204 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetRAPIDDnum_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetRAPIDDnum_Request :: W.Parser Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request
readRos2Abb_robot_msgsSrvGetRAPIDDnum_Request = do
    value0 <- readRos2Abb_robot_msgsMsgRAPIDSymbolPath
    let value = Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request value0
    case encodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDDnum_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request
decodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Request bytes
    | length bytes < 12 || length bytes > 204 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetRAPIDDnum_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetRAPIDDnum_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 14..526 bytes.
data Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response = Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response
    {
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.value field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvGetRAPIDDnum_Response_value :: Double
    ,
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvGetRAPIDDnum_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetRAPIDDnum_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetRAPIDDnum_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvGetRAPIDDnum_ResponseCodecIdentity = "UWVMROS1_af0420c126368a7e45b728c7fef76062b5ef2f0adea7535ad38e4771244edd56"
-- | @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDDnum_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Response :: Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Response value = do
    chunk0 <- finite8 (ros2Abb_robot_msgsSrvGetRAPIDDnum_Response_value value) castDoubleToWord64
    chunk1 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvGetRAPIDDnum_Response_result_code value))
    chunk2 <- W.putText 512 (ros2Abb_robot_msgsSrvGetRAPIDDnum_Response_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 526 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetRAPIDDnum_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetRAPIDDnum_Response :: W.Parser Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response
readRos2Abb_robot_msgsSrvGetRAPIDDnum_Response = do
    value0 <- castWord64ToDouble <$> W.number 8
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response value0 value1 value2
    case encodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDDnum_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response
decodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Response bytes
    | length bytes < 14 || length bytes > 526 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetRAPIDDnum_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetRAPIDNum_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 12..204 bytes.
data Ros2Abb_robot_msgsSrvGetRAPIDNum_Request = Ros2Abb_robot_msgsSrvGetRAPIDNum_Request
    {
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDNum_Request.path field.
    -- | @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetRAPIDNum_Request_path :: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetRAPIDNum_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvGetRAPIDNum_RequestCodecIdentity = "UWVMROS1_03d5da34af8d90ed8a20f8ca38fa75d9e777496828978f0f348e3c1c8f67d0a5"
-- | @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDNum_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetRAPIDNum_Request :: Ros2Abb_robot_msgsSrvGetRAPIDNum_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetRAPIDNum_Request value = do
    chunk0 <- encodeRos2Abb_robot_msgsMsgRAPIDSymbolPath (ros2Abb_robot_msgsSrvGetRAPIDNum_Request_path value)
    let bytes = concat [chunk0]
    if length bytes > 204 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetRAPIDNum_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetRAPIDNum_Request :: W.Parser Ros2Abb_robot_msgsSrvGetRAPIDNum_Request
readRos2Abb_robot_msgsSrvGetRAPIDNum_Request = do
    value0 <- readRos2Abb_robot_msgsMsgRAPIDSymbolPath
    let value = Ros2Abb_robot_msgsSrvGetRAPIDNum_Request value0
    case encodeRos2Abb_robot_msgsSrvGetRAPIDNum_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDNum_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetRAPIDNum_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDNum_Request
decodeRos2Abb_robot_msgsSrvGetRAPIDNum_Request bytes
    | length bytes < 12 || length bytes > 204 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetRAPIDNum_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetRAPIDNum_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 10..522 bytes.
data Ros2Abb_robot_msgsSrvGetRAPIDNum_Response = Ros2Abb_robot_msgsSrvGetRAPIDNum_Response
    {
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.value field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvGetRAPIDNum_Response_value :: Float
    ,
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvGetRAPIDNum_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetRAPIDNum_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetRAPIDNum_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvGetRAPIDNum_ResponseCodecIdentity = "UWVMROS1_a0da03014dd001e58efc4a5b274cd5c62016e7fa257af1120a8142a79635220d"
-- | @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDNum_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetRAPIDNum_Response :: Ros2Abb_robot_msgsSrvGetRAPIDNum_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetRAPIDNum_Response value = do
    chunk0 <- finite4 (ros2Abb_robot_msgsSrvGetRAPIDNum_Response_value value) castFloatToWord32
    chunk1 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvGetRAPIDNum_Response_result_code value))
    chunk2 <- W.putText 512 (ros2Abb_robot_msgsSrvGetRAPIDNum_Response_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 522 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetRAPIDNum_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetRAPIDNum_Response :: W.Parser Ros2Abb_robot_msgsSrvGetRAPIDNum_Response
readRos2Abb_robot_msgsSrvGetRAPIDNum_Response = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvGetRAPIDNum_Response value0 value1 value2
    case encodeRos2Abb_robot_msgsSrvGetRAPIDNum_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDNum_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetRAPIDNum_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDNum_Response
decodeRos2Abb_robot_msgsSrvGetRAPIDNum_Response bytes
    | length bytes < 10 || length bytes > 522 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetRAPIDNum_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetRAPIDString_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 12..204 bytes.
data Ros2Abb_robot_msgsSrvGetRAPIDString_Request = Ros2Abb_robot_msgsSrvGetRAPIDString_Request
    {
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDString_Request.path field.
    -- | @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetRAPIDString_Request_path :: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetRAPIDString_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvGetRAPIDString_RequestCodecIdentity = "UWVMROS1_c7bc9c788301e619a165c18a1cdb0aca80df8def5be31da5dbf34c0038e73596"
-- | @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDString_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetRAPIDString_Request :: Ros2Abb_robot_msgsSrvGetRAPIDString_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetRAPIDString_Request value = do
    chunk0 <- encodeRos2Abb_robot_msgsMsgRAPIDSymbolPath (ros2Abb_robot_msgsSrvGetRAPIDString_Request_path value)
    let bytes = concat [chunk0]
    if length bytes > 204 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetRAPIDString_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetRAPIDString_Request :: W.Parser Ros2Abb_robot_msgsSrvGetRAPIDString_Request
readRos2Abb_robot_msgsSrvGetRAPIDString_Request = do
    value0 <- readRos2Abb_robot_msgsMsgRAPIDSymbolPath
    let value = Ros2Abb_robot_msgsSrvGetRAPIDString_Request value0
    case encodeRos2Abb_robot_msgsSrvGetRAPIDString_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDString_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetRAPIDString_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDString_Request
decodeRos2Abb_robot_msgsSrvGetRAPIDString_Request bytes
    | length bytes < 12 || length bytes > 204 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetRAPIDString_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetRAPIDString_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 10..1034 bytes.
data Ros2Abb_robot_msgsSrvGetRAPIDString_Response = Ros2Abb_robot_msgsSrvGetRAPIDString_Response
    {
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.value field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetRAPIDString_Response_value :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvGetRAPIDString_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetRAPIDString_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetRAPIDString_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvGetRAPIDString_ResponseCodecIdentity = "UWVMROS1_cf7bfdb2af5b91eb58b19b909f7fa3357dc1dad02716f8fa4465b53f3f4a1458"
-- | @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDString_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetRAPIDString_Response :: Ros2Abb_robot_msgsSrvGetRAPIDString_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetRAPIDString_Response value = do
    chunk0 <- W.putText 512 (ros2Abb_robot_msgsSrvGetRAPIDString_Response_value value)
    chunk1 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvGetRAPIDString_Response_result_code value))
    chunk2 <- W.putText 512 (ros2Abb_robot_msgsSrvGetRAPIDString_Response_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 1034 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetRAPIDString_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetRAPIDString_Response :: W.Parser Ros2Abb_robot_msgsSrvGetRAPIDString_Response
readRos2Abb_robot_msgsSrvGetRAPIDString_Response = do
    value0 <- W.text 512
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvGetRAPIDString_Response value0 value1 value2
    case encodeRos2Abb_robot_msgsSrvGetRAPIDString_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDString_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetRAPIDString_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDString_Response
decodeRos2Abb_robot_msgsSrvGetRAPIDString_Response bytes
    | length bytes < 10 || length bytes > 1034 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetRAPIDString_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetRAPIDSymbol_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 12..204 bytes.
data Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request = Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request
    {
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Request.path field.
    -- | @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request_path :: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetRAPIDSymbol_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvGetRAPIDSymbol_RequestCodecIdentity = "UWVMROS1_e216a54cdae70f8147489928ff05a4b172ba4fc47e9ed5df4828b070354ac469"
-- | @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDSymbol_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Request :: Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Request value = do
    chunk0 <- encodeRos2Abb_robot_msgsMsgRAPIDSymbolPath (ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request_path value)
    let bytes = concat [chunk0]
    if length bytes > 204 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetRAPIDSymbol_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetRAPIDSymbol_Request :: W.Parser Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request
readRos2Abb_robot_msgsSrvGetRAPIDSymbol_Request = do
    value0 <- readRos2Abb_robot_msgsMsgRAPIDSymbolPath
    let value = Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request value0
    case encodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDSymbol_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request
decodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Request bytes
    | length bytes < 12 || length bytes > 204 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetRAPIDSymbol_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetRAPIDSymbol_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 10..1034 bytes.
data Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response = Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response
    {
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.value field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response_value :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetRAPIDSymbol_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvGetRAPIDSymbol_ResponseCodecIdentity = "UWVMROS1_b1f6de7ad0640f5645678d327804dc7e732bdad38805e642b13ed7294c21d602"
-- | @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDSymbol_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Response :: Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Response value = do
    chunk0 <- W.putText 512 (ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response_value value)
    chunk1 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response_result_code value))
    chunk2 <- W.putText 512 (ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 1034 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetRAPIDSymbol_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetRAPIDSymbol_Response :: W.Parser Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response
readRos2Abb_robot_msgsSrvGetRAPIDSymbol_Response = do
    value0 <- W.text 512
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response value0 value1 value2
    case encodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDSymbol_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response
decodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Response bytes
    | length bytes < 10 || length bytes > 1034 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetRAPIDSymbol_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetRobotControllerDescription_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request = Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetRobotControllerDescription_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvGetRobotControllerDescription_RequestCodecIdentity = "UWVMROS1_caf70e11b386a933f62d06a433ca1cedaa3c8ecc75b7e8de8c1d5ae00a29f03e"
-- | @brief Encode every field of complete abb_robot_msgs/srv/GetRobotControllerDescription_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Request :: Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Request value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetRobotControllerDescription_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetRobotControllerDescription_Request :: W.Parser Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request
readRos2Abb_robot_msgsSrvGetRobotControllerDescription_Request = do
    let value = Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request 
    case encodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetRobotControllerDescription_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request
decodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Request bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetRobotControllerDescription_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetRobotControllerDescription_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 10..4618 bytes.
data Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response = Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response
    {
    -- | @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.description
    -- | field.
    -- | @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response_description :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.result_code
    -- | field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetRobotControllerDescription_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvGetRobotControllerDescription_ResponseCodecIdentity = "UWVMROS1_1af2591f035379597f376ed1e2343f73a89f9fef5c29269aa420243a82e6c368"
-- | @brief Encode every field of complete
-- | abb_robot_msgs/srv/GetRobotControllerDescription_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Response :: Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Response value = do
    chunk0 <- W.putText 4096 (ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response_description value)
    chunk1 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response_result_code value))
    chunk2 <- W.putText 512 (ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 4618 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetRobotControllerDescription_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetRobotControllerDescription_Response :: W.Parser Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response
readRos2Abb_robot_msgsSrvGetRobotControllerDescription_Response = do
    value0 <- W.text 4096
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response value0 value1 value2
    case encodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetRobotControllerDescription_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response
decodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Response bytes
    | length bytes < 10 || length bytes > 4618 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetRobotControllerDescription_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetSpeedRatio_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Abb_robot_msgsSrvGetSpeedRatio_Request = Ros2Abb_robot_msgsSrvGetSpeedRatio_Request
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetSpeedRatio_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvGetSpeedRatio_RequestCodecIdentity = "UWVMROS1_54ee2c897e2bf2f39c96cc42246ffe5997c8df280280433e8748b3bcf24c299c"
-- | @brief Encode every field of complete abb_robot_msgs/srv/GetSpeedRatio_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetSpeedRatio_Request :: Ros2Abb_robot_msgsSrvGetSpeedRatio_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetSpeedRatio_Request value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetSpeedRatio_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetSpeedRatio_Request :: W.Parser Ros2Abb_robot_msgsSrvGetSpeedRatio_Request
readRos2Abb_robot_msgsSrvGetSpeedRatio_Request = do
    let value = Ros2Abb_robot_msgsSrvGetSpeedRatio_Request 
    case encodeRos2Abb_robot_msgsSrvGetSpeedRatio_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetSpeedRatio_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetSpeedRatio_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetSpeedRatio_Request
decodeRos2Abb_robot_msgsSrvGetSpeedRatio_Request bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetSpeedRatio_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/GetSpeedRatio_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 7..519 bytes.
data Ros2Abb_robot_msgsSrvGetSpeedRatio_Response = Ros2Abb_robot_msgsSrvGetSpeedRatio_Response
    {
    -- | @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.speed_ratio field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvGetSpeedRatio_Response_speed_ratio :: Word8
    ,
    -- | @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvGetSpeedRatio_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvGetSpeedRatio_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvGetSpeedRatio_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvGetSpeedRatio_ResponseCodecIdentity = "UWVMROS1_baa271a258c7ca274e0145fea1abb7cbc43e98c82b8e40d67c4743237a19910b"
-- | @brief Encode every field of complete abb_robot_msgs/srv/GetSpeedRatio_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvGetSpeedRatio_Response :: Ros2Abb_robot_msgsSrvGetSpeedRatio_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvGetSpeedRatio_Response value = do
    chunk0 <- Right (W.putNumber 1 (ros2Abb_robot_msgsSrvGetSpeedRatio_Response_speed_ratio value))
    chunk1 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvGetSpeedRatio_Response_result_code value))
    chunk2 <- W.putText 512 (ros2Abb_robot_msgsSrvGetSpeedRatio_Response_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 519 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/GetSpeedRatio_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvGetSpeedRatio_Response :: W.Parser Ros2Abb_robot_msgsSrvGetSpeedRatio_Response
readRos2Abb_robot_msgsSrvGetSpeedRatio_Response = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvGetSpeedRatio_Response value0 value1 value2
    case encodeRos2Abb_robot_msgsSrvGetSpeedRatio_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/GetSpeedRatio_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvGetSpeedRatio_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvGetSpeedRatio_Response
decodeRos2Abb_robot_msgsSrvGetSpeedRatio_Response bytes
    | length bytes < 7 || length bytes > 519 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvGetSpeedRatio_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/SetFileContents_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 8..4616 bytes.
data Ros2Abb_robot_msgsSrvSetFileContents_Request = Ros2Abb_robot_msgsSrvSetFileContents_Request
    {
    -- | @brief Original abb_robot_msgs/srv/SetFileContents_Request.filename field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetFileContents_Request_filename :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/srv/SetFileContents_Request.contents field.
    -- | @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetFileContents_Request_contents :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvSetFileContents_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvSetFileContents_RequestCodecIdentity = "UWVMROS1_3bfa8ad1846fc31acae47a875d3555a78a64b777923eb9b62e87a836f041b26b"
-- | @brief Encode every field of complete abb_robot_msgs/srv/SetFileContents_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvSetFileContents_Request :: Ros2Abb_robot_msgsSrvSetFileContents_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvSetFileContents_Request value = do
    chunk0 <- W.putText 512 (ros2Abb_robot_msgsSrvSetFileContents_Request_filename value)
    chunk1 <- W.putText 4096 (ros2Abb_robot_msgsSrvSetFileContents_Request_contents value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 4616 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/SetFileContents_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvSetFileContents_Request :: W.Parser Ros2Abb_robot_msgsSrvSetFileContents_Request
readRos2Abb_robot_msgsSrvSetFileContents_Request = do
    value0 <- W.text 512
    value1 <- W.text 4096
    let value = Ros2Abb_robot_msgsSrvSetFileContents_Request value0 value1
    case encodeRos2Abb_robot_msgsSrvSetFileContents_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/SetFileContents_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvSetFileContents_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvSetFileContents_Request
decodeRos2Abb_robot_msgsSrvSetFileContents_Request bytes
    | length bytes < 8 || length bytes > 4616 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvSetFileContents_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/SetFileContents_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Abb_robot_msgsSrvSetFileContents_Response = Ros2Abb_robot_msgsSrvSetFileContents_Response
    {
    -- | @brief Original abb_robot_msgs/srv/SetFileContents_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvSetFileContents_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/SetFileContents_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetFileContents_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvSetFileContents_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvSetFileContents_ResponseCodecIdentity = "UWVMROS1_1586344401d43055460b49f2487567638f66838cfe5cac99a47e0a39c0b06ede"
-- | @brief Encode every field of complete abb_robot_msgs/srv/SetFileContents_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvSetFileContents_Response :: Ros2Abb_robot_msgsSrvSetFileContents_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvSetFileContents_Response value = do
    chunk0 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvSetFileContents_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Abb_robot_msgsSrvSetFileContents_Response_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/SetFileContents_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvSetFileContents_Response :: W.Parser Ros2Abb_robot_msgsSrvSetFileContents_Response
readRos2Abb_robot_msgsSrvSetFileContents_Response = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvSetFileContents_Response value0 value1
    case encodeRos2Abb_robot_msgsSrvSetFileContents_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/SetFileContents_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvSetFileContents_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvSetFileContents_Response
decodeRos2Abb_robot_msgsSrvSetFileContents_Response bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvSetFileContents_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/SetIOSignal_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 8..1032 bytes.
data Ros2Abb_robot_msgsSrvSetIOSignal_Request = Ros2Abb_robot_msgsSrvSetIOSignal_Request
    {
    -- | @brief Original abb_robot_msgs/srv/SetIOSignal_Request.signal field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetIOSignal_Request_signal :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/srv/SetIOSignal_Request.value field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetIOSignal_Request_value :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvSetIOSignal_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvSetIOSignal_RequestCodecIdentity = "UWVMROS1_2d206d0020179263e83e745a428616ed53d809b0c65a79ad495cb882ae9e49b7"
-- | @brief Encode every field of complete abb_robot_msgs/srv/SetIOSignal_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvSetIOSignal_Request :: Ros2Abb_robot_msgsSrvSetIOSignal_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvSetIOSignal_Request value = do
    chunk0 <- W.putText 512 (ros2Abb_robot_msgsSrvSetIOSignal_Request_signal value)
    chunk1 <- W.putText 512 (ros2Abb_robot_msgsSrvSetIOSignal_Request_value value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 1032 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/SetIOSignal_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvSetIOSignal_Request :: W.Parser Ros2Abb_robot_msgsSrvSetIOSignal_Request
readRos2Abb_robot_msgsSrvSetIOSignal_Request = do
    value0 <- W.text 512
    value1 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvSetIOSignal_Request value0 value1
    case encodeRos2Abb_robot_msgsSrvSetIOSignal_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/SetIOSignal_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvSetIOSignal_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvSetIOSignal_Request
decodeRos2Abb_robot_msgsSrvSetIOSignal_Request bytes
    | length bytes < 8 || length bytes > 1032 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvSetIOSignal_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/SetIOSignal_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Abb_robot_msgsSrvSetIOSignal_Response = Ros2Abb_robot_msgsSrvSetIOSignal_Response
    {
    -- | @brief Original abb_robot_msgs/srv/SetIOSignal_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvSetIOSignal_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/SetIOSignal_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetIOSignal_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvSetIOSignal_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvSetIOSignal_ResponseCodecIdentity = "UWVMROS1_1fa28cc3160d51f71d0740cbe145663ec360d6fa488c2a6bf14ad6ab92004a75"
-- | @brief Encode every field of complete abb_robot_msgs/srv/SetIOSignal_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvSetIOSignal_Response :: Ros2Abb_robot_msgsSrvSetIOSignal_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvSetIOSignal_Response value = do
    chunk0 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvSetIOSignal_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Abb_robot_msgsSrvSetIOSignal_Response_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/SetIOSignal_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvSetIOSignal_Response :: W.Parser Ros2Abb_robot_msgsSrvSetIOSignal_Response
readRos2Abb_robot_msgsSrvSetIOSignal_Response = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvSetIOSignal_Response value0 value1
    case encodeRos2Abb_robot_msgsSrvSetIOSignal_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/SetIOSignal_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvSetIOSignal_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvSetIOSignal_Response
decodeRos2Abb_robot_msgsSrvSetIOSignal_Response bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvSetIOSignal_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/SetRAPIDBool_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 13..205 bytes.
data Ros2Abb_robot_msgsSrvSetRAPIDBool_Request = Ros2Abb_robot_msgsSrvSetRAPIDBool_Request
    {
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDBool_Request.path field.
    -- | @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetRAPIDBool_Request_path :: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
    ,
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDBool_Request.value field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvSetRAPIDBool_Request_value :: Bool
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvSetRAPIDBool_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvSetRAPIDBool_RequestCodecIdentity = "UWVMROS1_4e707e429acc860d032d216bcd2c1eb1a0f731fad7e7c0bef7beed810c6e4a52"
-- | @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDBool_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvSetRAPIDBool_Request :: Ros2Abb_robot_msgsSrvSetRAPIDBool_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvSetRAPIDBool_Request value = do
    chunk0 <- encodeRos2Abb_robot_msgsMsgRAPIDSymbolPath (ros2Abb_robot_msgsSrvSetRAPIDBool_Request_path value)
    chunk1 <- Right (W.putBool (ros2Abb_robot_msgsSrvSetRAPIDBool_Request_value value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 205 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/SetRAPIDBool_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvSetRAPIDBool_Request :: W.Parser Ros2Abb_robot_msgsSrvSetRAPIDBool_Request
readRos2Abb_robot_msgsSrvSetRAPIDBool_Request = do
    value0 <- readRos2Abb_robot_msgsMsgRAPIDSymbolPath
    value1 <- W.boolean
    let value = Ros2Abb_robot_msgsSrvSetRAPIDBool_Request value0 value1
    case encodeRos2Abb_robot_msgsSrvSetRAPIDBool_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDBool_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvSetRAPIDBool_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDBool_Request
decodeRos2Abb_robot_msgsSrvSetRAPIDBool_Request bytes
    | length bytes < 13 || length bytes > 205 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvSetRAPIDBool_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/SetRAPIDBool_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Abb_robot_msgsSrvSetRAPIDBool_Response = Ros2Abb_robot_msgsSrvSetRAPIDBool_Response
    {
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDBool_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvSetRAPIDBool_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDBool_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetRAPIDBool_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvSetRAPIDBool_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvSetRAPIDBool_ResponseCodecIdentity = "UWVMROS1_80d2b31c93771cfa8a19ff82a3d9d63951bf9d28c039d2725017327fa3b0114a"
-- | @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDBool_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvSetRAPIDBool_Response :: Ros2Abb_robot_msgsSrvSetRAPIDBool_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvSetRAPIDBool_Response value = do
    chunk0 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvSetRAPIDBool_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Abb_robot_msgsSrvSetRAPIDBool_Response_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/SetRAPIDBool_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvSetRAPIDBool_Response :: W.Parser Ros2Abb_robot_msgsSrvSetRAPIDBool_Response
readRos2Abb_robot_msgsSrvSetRAPIDBool_Response = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvSetRAPIDBool_Response value0 value1
    case encodeRos2Abb_robot_msgsSrvSetRAPIDBool_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDBool_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvSetRAPIDBool_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDBool_Response
decodeRos2Abb_robot_msgsSrvSetRAPIDBool_Response bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvSetRAPIDBool_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/SetRAPIDDnum_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 20..212 bytes.
data Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request = Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request
    {
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Request.path field.
    -- | @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetRAPIDDnum_Request_path :: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
    ,
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Request.value field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvSetRAPIDDnum_Request_value :: Double
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvSetRAPIDDnum_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvSetRAPIDDnum_RequestCodecIdentity = "UWVMROS1_cece086311a908f12c0b0ab3988ca829e891749c74687c717d2a52bfb8ceaf76"
-- | @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDDnum_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Request :: Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Request value = do
    chunk0 <- encodeRos2Abb_robot_msgsMsgRAPIDSymbolPath (ros2Abb_robot_msgsSrvSetRAPIDDnum_Request_path value)
    chunk1 <- finite8 (ros2Abb_robot_msgsSrvSetRAPIDDnum_Request_value value) castDoubleToWord64
    let bytes = concat [chunk0, chunk1]
    if length bytes > 212 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/SetRAPIDDnum_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvSetRAPIDDnum_Request :: W.Parser Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request
readRos2Abb_robot_msgsSrvSetRAPIDDnum_Request = do
    value0 <- readRos2Abb_robot_msgsMsgRAPIDSymbolPath
    value1 <- castWord64ToDouble <$> W.number 8
    let value = Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request value0 value1
    case encodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDDnum_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request
decodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Request bytes
    | length bytes < 20 || length bytes > 212 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvSetRAPIDDnum_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/SetRAPIDDnum_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response = Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response
    {
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvSetRAPIDDnum_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetRAPIDDnum_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvSetRAPIDDnum_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvSetRAPIDDnum_ResponseCodecIdentity = "UWVMROS1_e5f77fe9850f109d873a2784b9690c8aa0632b9e91d158ed4d14daf1aaf90ea6"
-- | @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDDnum_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Response :: Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Response value = do
    chunk0 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvSetRAPIDDnum_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Abb_robot_msgsSrvSetRAPIDDnum_Response_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/SetRAPIDDnum_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvSetRAPIDDnum_Response :: W.Parser Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response
readRos2Abb_robot_msgsSrvSetRAPIDDnum_Response = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response value0 value1
    case encodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDDnum_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response
decodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Response bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvSetRAPIDDnum_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/SetRAPIDNum_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 16..208 bytes.
data Ros2Abb_robot_msgsSrvSetRAPIDNum_Request = Ros2Abb_robot_msgsSrvSetRAPIDNum_Request
    {
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDNum_Request.path field.
    -- | @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetRAPIDNum_Request_path :: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
    ,
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDNum_Request.value field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvSetRAPIDNum_Request_value :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvSetRAPIDNum_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvSetRAPIDNum_RequestCodecIdentity = "UWVMROS1_a5bee9a64be69dc4246f68837a44362f52795ae3c6420a2df47685606283ea02"
-- | @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDNum_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvSetRAPIDNum_Request :: Ros2Abb_robot_msgsSrvSetRAPIDNum_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvSetRAPIDNum_Request value = do
    chunk0 <- encodeRos2Abb_robot_msgsMsgRAPIDSymbolPath (ros2Abb_robot_msgsSrvSetRAPIDNum_Request_path value)
    chunk1 <- finite4 (ros2Abb_robot_msgsSrvSetRAPIDNum_Request_value value) castFloatToWord32
    let bytes = concat [chunk0, chunk1]
    if length bytes > 208 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/SetRAPIDNum_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvSetRAPIDNum_Request :: W.Parser Ros2Abb_robot_msgsSrvSetRAPIDNum_Request
readRos2Abb_robot_msgsSrvSetRAPIDNum_Request = do
    value0 <- readRos2Abb_robot_msgsMsgRAPIDSymbolPath
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros2Abb_robot_msgsSrvSetRAPIDNum_Request value0 value1
    case encodeRos2Abb_robot_msgsSrvSetRAPIDNum_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDNum_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvSetRAPIDNum_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDNum_Request
decodeRos2Abb_robot_msgsSrvSetRAPIDNum_Request bytes
    | length bytes < 16 || length bytes > 208 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvSetRAPIDNum_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/SetRAPIDNum_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Abb_robot_msgsSrvSetRAPIDNum_Response = Ros2Abb_robot_msgsSrvSetRAPIDNum_Response
    {
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDNum_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvSetRAPIDNum_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDNum_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetRAPIDNum_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvSetRAPIDNum_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvSetRAPIDNum_ResponseCodecIdentity = "UWVMROS1_744f3c5fac58ff098c96cedcea94fe6fa87c88ceb89674449f50fbdcd1ca30bb"
-- | @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDNum_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvSetRAPIDNum_Response :: Ros2Abb_robot_msgsSrvSetRAPIDNum_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvSetRAPIDNum_Response value = do
    chunk0 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvSetRAPIDNum_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Abb_robot_msgsSrvSetRAPIDNum_Response_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/SetRAPIDNum_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvSetRAPIDNum_Response :: W.Parser Ros2Abb_robot_msgsSrvSetRAPIDNum_Response
readRos2Abb_robot_msgsSrvSetRAPIDNum_Response = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvSetRAPIDNum_Response value0 value1
    case encodeRos2Abb_robot_msgsSrvSetRAPIDNum_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDNum_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvSetRAPIDNum_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDNum_Response
decodeRos2Abb_robot_msgsSrvSetRAPIDNum_Response bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvSetRAPIDNum_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/SetRAPIDString_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 16..720 bytes.
data Ros2Abb_robot_msgsSrvSetRAPIDString_Request = Ros2Abb_robot_msgsSrvSetRAPIDString_Request
    {
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDString_Request.path field.
    -- | @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetRAPIDString_Request_path :: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
    ,
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDString_Request.value field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetRAPIDString_Request_value :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvSetRAPIDString_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvSetRAPIDString_RequestCodecIdentity = "UWVMROS1_f21c45f3f8cd4c0b50781bdd487fdc6ec0c0b35adbc7e36e9ca5b7cc47c3d461"
-- | @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDString_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvSetRAPIDString_Request :: Ros2Abb_robot_msgsSrvSetRAPIDString_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvSetRAPIDString_Request value = do
    chunk0 <- encodeRos2Abb_robot_msgsMsgRAPIDSymbolPath (ros2Abb_robot_msgsSrvSetRAPIDString_Request_path value)
    chunk1 <- W.putText 512 (ros2Abb_robot_msgsSrvSetRAPIDString_Request_value value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 720 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/SetRAPIDString_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvSetRAPIDString_Request :: W.Parser Ros2Abb_robot_msgsSrvSetRAPIDString_Request
readRos2Abb_robot_msgsSrvSetRAPIDString_Request = do
    value0 <- readRos2Abb_robot_msgsMsgRAPIDSymbolPath
    value1 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvSetRAPIDString_Request value0 value1
    case encodeRos2Abb_robot_msgsSrvSetRAPIDString_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDString_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvSetRAPIDString_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDString_Request
decodeRos2Abb_robot_msgsSrvSetRAPIDString_Request bytes
    | length bytes < 16 || length bytes > 720 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvSetRAPIDString_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/SetRAPIDString_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Abb_robot_msgsSrvSetRAPIDString_Response = Ros2Abb_robot_msgsSrvSetRAPIDString_Response
    {
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDString_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvSetRAPIDString_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDString_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetRAPIDString_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvSetRAPIDString_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvSetRAPIDString_ResponseCodecIdentity = "UWVMROS1_1496ef4f4ffe48fe74b9e25b925c19f10f0e171a9d33fa2e56c15aa5cfbe4774"
-- | @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDString_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvSetRAPIDString_Response :: Ros2Abb_robot_msgsSrvSetRAPIDString_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvSetRAPIDString_Response value = do
    chunk0 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvSetRAPIDString_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Abb_robot_msgsSrvSetRAPIDString_Response_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/SetRAPIDString_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvSetRAPIDString_Response :: W.Parser Ros2Abb_robot_msgsSrvSetRAPIDString_Response
readRos2Abb_robot_msgsSrvSetRAPIDString_Response = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvSetRAPIDString_Response value0 value1
    case encodeRos2Abb_robot_msgsSrvSetRAPIDString_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDString_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvSetRAPIDString_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDString_Response
decodeRos2Abb_robot_msgsSrvSetRAPIDString_Response bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvSetRAPIDString_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/SetRAPIDSymbol_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 16..720 bytes.
data Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request = Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request
    {
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Request.path field.
    -- | @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request_path :: Ros2Abb_robot_msgsMsgRAPIDSymbolPath
    ,
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Request.value field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request_value :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvSetRAPIDSymbol_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvSetRAPIDSymbol_RequestCodecIdentity = "UWVMROS1_928d427801b79775595fed6e3779f9ba9e7e8e27f2de66cf79610cb51bb72bcf"
-- | @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDSymbol_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Request :: Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Request value = do
    chunk0 <- encodeRos2Abb_robot_msgsMsgRAPIDSymbolPath (ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request_path value)
    chunk1 <- W.putText 512 (ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request_value value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 720 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/SetRAPIDSymbol_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvSetRAPIDSymbol_Request :: W.Parser Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request
readRos2Abb_robot_msgsSrvSetRAPIDSymbol_Request = do
    value0 <- readRos2Abb_robot_msgsMsgRAPIDSymbolPath
    value1 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request value0 value1
    case encodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDSymbol_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request
decodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Request bytes
    | length bytes < 16 || length bytes > 720 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvSetRAPIDSymbol_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/SetRAPIDSymbol_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response = Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response
    {
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvSetRAPIDSymbol_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvSetRAPIDSymbol_ResponseCodecIdentity = "UWVMROS1_e156616a51bf4691a1c3853d62a8b0c43bb17d1a330cd4e7a58eceb5fe442382"
-- | @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDSymbol_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Response :: Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Response value = do
    chunk0 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/SetRAPIDSymbol_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvSetRAPIDSymbol_Response :: W.Parser Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response
readRos2Abb_robot_msgsSrvSetRAPIDSymbol_Response = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response value0 value1
    case encodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDSymbol_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response
decodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Response bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvSetRAPIDSymbol_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/SetSpeedRatio_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Abb_robot_msgsSrvSetSpeedRatio_Request = Ros2Abb_robot_msgsSrvSetSpeedRatio_Request
    {
    -- | @brief Original abb_robot_msgs/srv/SetSpeedRatio_Request.speed_ratio field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvSetSpeedRatio_Request_speed_ratio :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvSetSpeedRatio_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvSetSpeedRatio_RequestCodecIdentity = "UWVMROS1_da30970377ba1bc151b544560773f02e17f4eaed56eb4c8d791de72bdef04355"
-- | @brief Encode every field of complete abb_robot_msgs/srv/SetSpeedRatio_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvSetSpeedRatio_Request :: Ros2Abb_robot_msgsSrvSetSpeedRatio_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvSetSpeedRatio_Request value = do
    chunk0 <- Right (W.putNumber 1 (ros2Abb_robot_msgsSrvSetSpeedRatio_Request_speed_ratio value))
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/SetSpeedRatio_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvSetSpeedRatio_Request :: W.Parser Ros2Abb_robot_msgsSrvSetSpeedRatio_Request
readRos2Abb_robot_msgsSrvSetSpeedRatio_Request = do
    value0 <- fromIntegral <$> W.number 1
    let value = Ros2Abb_robot_msgsSrvSetSpeedRatio_Request value0
    case encodeRos2Abb_robot_msgsSrvSetSpeedRatio_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/SetSpeedRatio_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvSetSpeedRatio_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvSetSpeedRatio_Request
decodeRos2Abb_robot_msgsSrvSetSpeedRatio_Request bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvSetSpeedRatio_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/SetSpeedRatio_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Abb_robot_msgsSrvSetSpeedRatio_Response = Ros2Abb_robot_msgsSrvSetSpeedRatio_Response
    {
    -- | @brief Original abb_robot_msgs/srv/SetSpeedRatio_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvSetSpeedRatio_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/SetSpeedRatio_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvSetSpeedRatio_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvSetSpeedRatio_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvSetSpeedRatio_ResponseCodecIdentity = "UWVMROS1_25e6d7edaa0503a4d45d893e886db4215bfd0af8711307c141bc63552609e3a5"
-- | @brief Encode every field of complete abb_robot_msgs/srv/SetSpeedRatio_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvSetSpeedRatio_Response :: Ros2Abb_robot_msgsSrvSetSpeedRatio_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvSetSpeedRatio_Response value = do
    chunk0 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvSetSpeedRatio_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Abb_robot_msgsSrvSetSpeedRatio_Response_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/SetSpeedRatio_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvSetSpeedRatio_Response :: W.Parser Ros2Abb_robot_msgsSrvSetSpeedRatio_Response
readRos2Abb_robot_msgsSrvSetSpeedRatio_Response = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvSetSpeedRatio_Response value0 value1
    case encodeRos2Abb_robot_msgsSrvSetSpeedRatio_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/SetSpeedRatio_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvSetSpeedRatio_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvSetSpeedRatio_Response
decodeRos2Abb_robot_msgsSrvSetSpeedRatio_Response bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvSetSpeedRatio_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/TriggerWithResultCode_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request = Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvTriggerWithResultCode_RequestCodecIdentity :: String
ros2Abb_robot_msgsSrvTriggerWithResultCode_RequestCodecIdentity = "UWVMROS1_fd1d49c3b4e489464c6662f306210137f71d15192f64cd8a8abf93acd5fbff8d"
-- | @brief Encode every field of complete abb_robot_msgs/srv/TriggerWithResultCode_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Request :: Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Request value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/TriggerWithResultCode_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvTriggerWithResultCode_Request :: W.Parser Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request
readRos2Abb_robot_msgsSrvTriggerWithResultCode_Request = do
    let value = Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request 
    case encodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/TriggerWithResultCode_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Request :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request
decodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Request bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvTriggerWithResultCode_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/srv/TriggerWithResultCode_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response = Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response
    {
    -- | @brief Original abb_robot_msgs/srv/TriggerWithResultCode_Response.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Abb_robot_msgsSrvTriggerWithResultCode_Response_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/srv/TriggerWithResultCode_Response.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Abb_robot_msgsSrvTriggerWithResultCode_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Abb_robot_msgsSrvTriggerWithResultCode_ResponseCodecIdentity :: String
ros2Abb_robot_msgsSrvTriggerWithResultCode_ResponseCodecIdentity = "UWVMROS1_e38422b2a008f07e108505ac3ce65c24189a1d6657e88a6289e17d7d4ae38d51"
-- | @brief Encode every field of complete abb_robot_msgs/srv/TriggerWithResultCode_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Response :: Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response -> Either Word32 [Word8]
encodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Response value = do
    chunk0 <- Right (W.putNumber 2 (ros2Abb_robot_msgsSrvTriggerWithResultCode_Response_result_code value))
    chunk1 <- W.putText 512 (ros2Abb_robot_msgsSrvTriggerWithResultCode_Response_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/srv/TriggerWithResultCode_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Abb_robot_msgsSrvTriggerWithResultCode_Response :: W.Parser Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response
readRos2Abb_robot_msgsSrvTriggerWithResultCode_Response = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response value0 value1
    case encodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/srv/TriggerWithResultCode_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Response :: [Word8] -> Either Word32 Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response
decodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Response bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Abb_robot_msgsSrvTriggerWithResultCode_Response bytes
        if null remaining then Right value else Left 22

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

-- | @brief Construct complete original abb_egm_msgs/msg/EGMChannelState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_egm_msgsMsgEGMChannelState :: Either Word32 Ros2Abb_egm_msgsMsgEGMChannelState
defaultRos2Abb_egm_msgsMsgEGMChannelState = decodeRos2Abb_egm_msgsMsgEGMChannelState
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

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

-- | @brief Construct complete original abb_egm_msgs/msg/EGMState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_egm_msgsMsgEGMState :: Either Word32 Ros2Abb_egm_msgsMsgEGMState
defaultRos2Abb_egm_msgsMsgEGMState = decodeRos2Abb_egm_msgsMsgEGMState
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_msgs/msg/ConfData defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_msgsMsgConfData :: Either Word32 Ros2Abb_rapid_msgsMsgConfData
defaultRos2Abb_rapid_msgsMsgConfData = decodeRos2Abb_rapid_msgsMsgConfData
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_msgs/msg/ExtJoint defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_msgsMsgExtJoint :: Either Word32 Ros2Abb_rapid_msgsMsgExtJoint
defaultRos2Abb_rapid_msgsMsgExtJoint = decodeRos2Abb_rapid_msgsMsgExtJoint
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_msgs/msg/RobJoint defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_msgsMsgRobJoint :: Either Word32 Ros2Abb_rapid_msgsMsgRobJoint
defaultRos2Abb_rapid_msgsMsgRobJoint = decodeRos2Abb_rapid_msgsMsgRobJoint
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_msgs/msg/JointTarget defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_msgsMsgJointTarget :: Either Word32 Ros2Abb_rapid_msgsMsgJointTarget
defaultRos2Abb_rapid_msgsMsgJointTarget = decodeRos2Abb_rapid_msgsMsgJointTarget
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_msgs/msg/Pos defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_msgsMsgPos :: Either Word32 Ros2Abb_rapid_msgsMsgPos
defaultRos2Abb_rapid_msgsMsgPos = decodeRos2Abb_rapid_msgsMsgPos
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_msgs/msg/Orient defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_msgsMsgOrient :: Either Word32 Ros2Abb_rapid_msgsMsgOrient
defaultRos2Abb_rapid_msgsMsgOrient = decodeRos2Abb_rapid_msgsMsgOrient
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_msgs/msg/LoadData defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_msgsMsgLoadData :: Either Word32 Ros2Abb_rapid_msgsMsgLoadData
defaultRos2Abb_rapid_msgsMsgLoadData = decodeRos2Abb_rapid_msgsMsgLoadData
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_msgs/msg/Pose defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_msgsMsgPose :: Either Word32 Ros2Abb_rapid_msgsMsgPose
defaultRos2Abb_rapid_msgsMsgPose = decodeRos2Abb_rapid_msgsMsgPose
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_msgs/msg/RobTarget defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_msgsMsgRobTarget :: Either Word32 Ros2Abb_rapid_msgsMsgRobTarget
defaultRos2Abb_rapid_msgsMsgRobTarget = decodeRos2Abb_rapid_msgsMsgRobTarget
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_msgs/msg/ToolData defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_msgsMsgToolData :: Either Word32 Ros2Abb_rapid_msgsMsgToolData
defaultRos2Abb_rapid_msgsMsgToolData = decodeRos2Abb_rapid_msgsMsgToolData
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0
    ]

-- | @brief Construct complete original abb_rapid_msgs/msg/WObjData defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_msgsMsgWObjData :: Either Word32 Ros2Abb_rapid_msgsMsgWObjData
defaultRos2Abb_rapid_msgsMsgWObjData = decodeRos2Abb_rapid_msgsMsgWObjData
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0
    ]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings :: Either Word32 Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings
defaultRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings = decodeRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings
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
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/msg/EGMRunSettings defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings :: Either Word32 Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings
defaultRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings = decodeRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings :: Either Word32 Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings
defaultRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings = decodeRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings
    [0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/msg/EGMStopSettings defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings :: Either Word32 Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings
defaultRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings = decodeRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings
    [0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/msg/EGMSettings defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_sm_addin_msgsMsgEGMSettings :: Either Word32 Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings
defaultRos2Abb_rapid_sm_addin_msgsMsgEGMSettings = decodeRos2Abb_rapid_sm_addin_msgsMsgEGMSettings
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
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/msg/StateMachineState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_sm_addin_msgsMsgStateMachineState :: Either Word32 Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState
defaultRos2Abb_rapid_sm_addin_msgsMsgStateMachineState = decodeRos2Abb_rapid_sm_addin_msgsMsgStateMachineState
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/msg/RuntimeState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_sm_addin_msgsMsgRuntimeState :: Either Word32 Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState
defaultRos2Abb_rapid_sm_addin_msgsMsgRuntimeState = decodeRos2Abb_rapid_sm_addin_msgsMsgRuntimeState
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request :: Either Word32 Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request
defaultRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request = decodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request
    [0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response :: Either Word32 Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response
defaultRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response = decodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response
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
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request :: Either Word32 Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request
defaultRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request = decodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request
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
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response :: Either Word32 Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response
defaultRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response = decodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request :: Either Word32 Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request
defaultRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request = decodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response defaults without
-- | ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response :: Either Word32 Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response
defaultRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response = decodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request :: Either Word32 Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request
defaultRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request = decodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request
    [0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response :: Either Word32 Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response
defaultRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response = decodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/msg/MechanicalUnitState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsMsgMechanicalUnitState :: Either Word32 Ros2Abb_robot_msgsMsgMechanicalUnitState
defaultRos2Abb_robot_msgsMsgMechanicalUnitState = decodeRos2Abb_robot_msgsMsgMechanicalUnitState
    [0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/msg/RAPIDSymbolPath defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsMsgRAPIDSymbolPath :: Either Word32 Ros2Abb_robot_msgsMsgRAPIDSymbolPath
defaultRos2Abb_robot_msgsMsgRAPIDSymbolPath = decodeRos2Abb_robot_msgsMsgRAPIDSymbolPath
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/msg/RAPIDTaskState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsMsgRAPIDTaskState :: Either Word32 Ros2Abb_robot_msgsMsgRAPIDTaskState
defaultRos2Abb_robot_msgsMsgRAPIDTaskState = decodeRos2Abb_robot_msgsMsgRAPIDTaskState
    [0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/msg/ServiceResponses defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsMsgServiceResponses :: Either Word32 Ros2Abb_robot_msgsMsgServiceResponses
defaultRos2Abb_robot_msgsMsgServiceResponses = decodeRos2Abb_robot_msgsMsgServiceResponses
    []

-- | @brief Construct complete original abb_robot_msgs/msg/SystemState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsMsgSystemState :: Either Word32 Ros2Abb_robot_msgsMsgSystemState
defaultRos2Abb_robot_msgsMsgSystemState = decodeRos2Abb_robot_msgsMsgSystemState
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_robot_msgs/srv/GetFileContents_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetFileContents_Request :: Either Word32 Ros2Abb_robot_msgsSrvGetFileContents_Request
defaultRos2Abb_robot_msgsSrvGetFileContents_Request = decodeRos2Abb_robot_msgsSrvGetFileContents_Request
    [0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/GetFileContents_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetFileContents_Response :: Either Word32 Ros2Abb_robot_msgsSrvGetFileContents_Response
defaultRos2Abb_robot_msgsSrvGetFileContents_Response = decodeRos2Abb_robot_msgsSrvGetFileContents_Response
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/GetIOSignal_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetIOSignal_Request :: Either Word32 Ros2Abb_robot_msgsSrvGetIOSignal_Request
defaultRos2Abb_robot_msgsSrvGetIOSignal_Request = decodeRos2Abb_robot_msgsSrvGetIOSignal_Request
    [0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/GetIOSignal_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetIOSignal_Response :: Either Word32 Ros2Abb_robot_msgsSrvGetIOSignal_Response
defaultRos2Abb_robot_msgsSrvGetIOSignal_Response = decodeRos2Abb_robot_msgsSrvGetIOSignal_Response
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/GetRAPIDBool_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetRAPIDBool_Request :: Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDBool_Request
defaultRos2Abb_robot_msgsSrvGetRAPIDBool_Request = decodeRos2Abb_robot_msgsSrvGetRAPIDBool_Request
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/GetRAPIDBool_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetRAPIDBool_Response :: Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDBool_Response
defaultRos2Abb_robot_msgsSrvGetRAPIDBool_Response = decodeRos2Abb_robot_msgsSrvGetRAPIDBool_Response
    [0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/GetRAPIDDnum_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetRAPIDDnum_Request :: Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request
defaultRos2Abb_robot_msgsSrvGetRAPIDDnum_Request = decodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Request
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/GetRAPIDDnum_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetRAPIDDnum_Response :: Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response
defaultRos2Abb_robot_msgsSrvGetRAPIDDnum_Response = decodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Response
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/GetRAPIDNum_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetRAPIDNum_Request :: Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDNum_Request
defaultRos2Abb_robot_msgsSrvGetRAPIDNum_Request = decodeRos2Abb_robot_msgsSrvGetRAPIDNum_Request
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/GetRAPIDNum_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetRAPIDNum_Response :: Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDNum_Response
defaultRos2Abb_robot_msgsSrvGetRAPIDNum_Response = decodeRos2Abb_robot_msgsSrvGetRAPIDNum_Response
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/GetRAPIDString_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetRAPIDString_Request :: Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDString_Request
defaultRos2Abb_robot_msgsSrvGetRAPIDString_Request = decodeRos2Abb_robot_msgsSrvGetRAPIDString_Request
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/GetRAPIDString_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetRAPIDString_Response :: Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDString_Response
defaultRos2Abb_robot_msgsSrvGetRAPIDString_Response = decodeRos2Abb_robot_msgsSrvGetRAPIDString_Response
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/GetRAPIDSymbol_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetRAPIDSymbol_Request :: Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request
defaultRos2Abb_robot_msgsSrvGetRAPIDSymbol_Request = decodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Request
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/GetRAPIDSymbol_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetRAPIDSymbol_Response :: Either Word32 Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response
defaultRos2Abb_robot_msgsSrvGetRAPIDSymbol_Response = decodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Response
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/GetRobotControllerDescription_Request defaults
-- | without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetRobotControllerDescription_Request :: Either Word32 Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request
defaultRos2Abb_robot_msgsSrvGetRobotControllerDescription_Request = decodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Request
    []

-- | @brief Construct complete original abb_robot_msgs/srv/GetRobotControllerDescription_Response defaults
-- | without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetRobotControllerDescription_Response :: Either Word32 Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response
defaultRos2Abb_robot_msgsSrvGetRobotControllerDescription_Response = decodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Response
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/GetSpeedRatio_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetSpeedRatio_Request :: Either Word32 Ros2Abb_robot_msgsSrvGetSpeedRatio_Request
defaultRos2Abb_robot_msgsSrvGetSpeedRatio_Request = decodeRos2Abb_robot_msgsSrvGetSpeedRatio_Request
    []

-- | @brief Construct complete original abb_robot_msgs/srv/GetSpeedRatio_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvGetSpeedRatio_Response :: Either Word32 Ros2Abb_robot_msgsSrvGetSpeedRatio_Response
defaultRos2Abb_robot_msgsSrvGetSpeedRatio_Response = decodeRos2Abb_robot_msgsSrvGetSpeedRatio_Response
    [0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/SetFileContents_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvSetFileContents_Request :: Either Word32 Ros2Abb_robot_msgsSrvSetFileContents_Request
defaultRos2Abb_robot_msgsSrvSetFileContents_Request = decodeRos2Abb_robot_msgsSrvSetFileContents_Request
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/SetFileContents_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvSetFileContents_Response :: Either Word32 Ros2Abb_robot_msgsSrvSetFileContents_Response
defaultRos2Abb_robot_msgsSrvSetFileContents_Response = decodeRos2Abb_robot_msgsSrvSetFileContents_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/SetIOSignal_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvSetIOSignal_Request :: Either Word32 Ros2Abb_robot_msgsSrvSetIOSignal_Request
defaultRos2Abb_robot_msgsSrvSetIOSignal_Request = decodeRos2Abb_robot_msgsSrvSetIOSignal_Request
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/SetIOSignal_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvSetIOSignal_Response :: Either Word32 Ros2Abb_robot_msgsSrvSetIOSignal_Response
defaultRos2Abb_robot_msgsSrvSetIOSignal_Response = decodeRos2Abb_robot_msgsSrvSetIOSignal_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/SetRAPIDBool_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvSetRAPIDBool_Request :: Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDBool_Request
defaultRos2Abb_robot_msgsSrvSetRAPIDBool_Request = decodeRos2Abb_robot_msgsSrvSetRAPIDBool_Request
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/SetRAPIDBool_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvSetRAPIDBool_Response :: Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDBool_Response
defaultRos2Abb_robot_msgsSrvSetRAPIDBool_Response = decodeRos2Abb_robot_msgsSrvSetRAPIDBool_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/SetRAPIDDnum_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvSetRAPIDDnum_Request :: Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request
defaultRos2Abb_robot_msgsSrvSetRAPIDDnum_Request = decodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Request
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_robot_msgs/srv/SetRAPIDDnum_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvSetRAPIDDnum_Response :: Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response
defaultRos2Abb_robot_msgsSrvSetRAPIDDnum_Response = decodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/SetRAPIDNum_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvSetRAPIDNum_Request :: Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDNum_Request
defaultRos2Abb_robot_msgsSrvSetRAPIDNum_Request = decodeRos2Abb_robot_msgsSrvSetRAPIDNum_Request
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/SetRAPIDNum_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvSetRAPIDNum_Response :: Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDNum_Response
defaultRos2Abb_robot_msgsSrvSetRAPIDNum_Response = decodeRos2Abb_robot_msgsSrvSetRAPIDNum_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/SetRAPIDString_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvSetRAPIDString_Request :: Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDString_Request
defaultRos2Abb_robot_msgsSrvSetRAPIDString_Request = decodeRos2Abb_robot_msgsSrvSetRAPIDString_Request
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/SetRAPIDString_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvSetRAPIDString_Response :: Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDString_Response
defaultRos2Abb_robot_msgsSrvSetRAPIDString_Response = decodeRos2Abb_robot_msgsSrvSetRAPIDString_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/SetRAPIDSymbol_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvSetRAPIDSymbol_Request :: Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request
defaultRos2Abb_robot_msgsSrvSetRAPIDSymbol_Request = decodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Request
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/SetRAPIDSymbol_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvSetRAPIDSymbol_Response :: Either Word32 Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response
defaultRos2Abb_robot_msgsSrvSetRAPIDSymbol_Response = decodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/SetSpeedRatio_Request defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvSetSpeedRatio_Request :: Either Word32 Ros2Abb_robot_msgsSrvSetSpeedRatio_Request
defaultRos2Abb_robot_msgsSrvSetSpeedRatio_Request = decodeRos2Abb_robot_msgsSrvSetSpeedRatio_Request
    [0]

-- | @brief Construct complete original abb_robot_msgs/srv/SetSpeedRatio_Response defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvSetSpeedRatio_Response :: Either Word32 Ros2Abb_robot_msgsSrvSetSpeedRatio_Response
defaultRos2Abb_robot_msgsSrvSetSpeedRatio_Response = decodeRos2Abb_robot_msgsSrvSetSpeedRatio_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/srv/TriggerWithResultCode_Request defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvTriggerWithResultCode_Request :: Either Word32 Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request
defaultRos2Abb_robot_msgsSrvTriggerWithResultCode_Request = decodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Request
    []

-- | @brief Construct complete original abb_robot_msgs/srv/TriggerWithResultCode_Response defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Abb_robot_msgsSrvTriggerWithResultCode_Response :: Either Word32 Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response
defaultRos2Abb_robot_msgsSrvTriggerWithResultCode_Response = decodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Response
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original builtin_interfaces/msg/Duration defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos2Builtin_interfacesMsgDuration :: Either Word32 Ros2Builtin_interfacesMsgDuration
defaultRos2Builtin_interfacesMsgDuration = decodeRos2Builtin_interfacesMsgDuration
    [0, 0, 0, 0, 0, 0, 0, 0]

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
