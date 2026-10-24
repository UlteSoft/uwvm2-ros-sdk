-- | @file Records.hs
-- @brief Complete original ABB ROS 1 Haskell records and codecs.
-- @details Owned immutable values preserve all fields; constructing them grants no ROS authority.
module ABB.Ros1.Records where
import Data.Int
import Data.Word
import Data.Bits
import GHC.Float
import Control.Monad (replicateM)
import qualified Ros.Wire as W

-- | @brief Complete original abb_egm_msgs/EGMChannelState value.
-- | @details Retain every original field in declaration order. Canonical extent 17..81 bytes.
data Ros1Abb_egm_msgsEGMChannelState = Ros1Abb_egm_msgsEGMChannelState
    {
    -- | @brief Original abb_egm_msgs/EGMChannelState.name field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Abb_egm_msgsEGMChannelState_name :: [Word8]
    ,
    -- | @brief Original abb_egm_msgs/EGMChannelState.active field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_egm_msgsEGMChannelState_active :: Bool
    ,
    -- | @brief Original abb_egm_msgs/EGMChannelState.egm_convergence_met field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_egm_msgsEGMChannelState_egm_convergence_met :: Bool
    ,
    -- | @brief Original abb_egm_msgs/EGMChannelState.egm_client_state field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_egm_msgsEGMChannelState_egm_client_state :: Word8
    ,
    -- | @brief Original abb_egm_msgs/EGMChannelState.motor_state field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_egm_msgsEGMChannelState_motor_state :: Word8
    ,
    -- | @brief Original abb_egm_msgs/EGMChannelState.rapid_execution_state field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_egm_msgsEGMChannelState_rapid_execution_state :: Word8
    ,
    -- | @brief Original abb_egm_msgs/EGMChannelState.utilization_rate field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_egm_msgsEGMChannelState_utilization_rate :: Double
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_egm_msgsEGMChannelStateCodecIdentity :: String
ros1Abb_egm_msgsEGMChannelStateCodecIdentity = "UWVMROS1_452d2adde3b1475fe3ff09ea11ff2ec7105a58c32e20d764e0c2ff152cb432f2"
-- | @brief Original abb_egm_msgs/EGMChannelState.EGM_UNDEFINED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_egm_msgsEGMChannelState_EGM_UNDEFINED :: Word8
ros1Abb_egm_msgsEGMChannelState_EGM_UNDEFINED = 1
-- | @brief Original abb_egm_msgs/EGMChannelState.EGM_ERROR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_egm_msgsEGMChannelState_EGM_ERROR :: Word8
ros1Abb_egm_msgsEGMChannelState_EGM_ERROR = 2
-- | @brief Original abb_egm_msgs/EGMChannelState.EGM_STOPPED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_egm_msgsEGMChannelState_EGM_STOPPED :: Word8
ros1Abb_egm_msgsEGMChannelState_EGM_STOPPED = 3
-- | @brief Original abb_egm_msgs/EGMChannelState.EGM_RUNNING constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_egm_msgsEGMChannelState_EGM_RUNNING :: Word8
ros1Abb_egm_msgsEGMChannelState_EGM_RUNNING = 4
-- | @brief Original abb_egm_msgs/EGMChannelState.MOTORS_UNDEFINED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_egm_msgsEGMChannelState_MOTORS_UNDEFINED :: Word8
ros1Abb_egm_msgsEGMChannelState_MOTORS_UNDEFINED = 1
-- | @brief Original abb_egm_msgs/EGMChannelState.MOTORS_ON constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_egm_msgsEGMChannelState_MOTORS_ON :: Word8
ros1Abb_egm_msgsEGMChannelState_MOTORS_ON = 2
-- | @brief Original abb_egm_msgs/EGMChannelState.MOTORS_OFF constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_egm_msgsEGMChannelState_MOTORS_OFF :: Word8
ros1Abb_egm_msgsEGMChannelState_MOTORS_OFF = 3
-- | @brief Original abb_egm_msgs/EGMChannelState.RAPID_UNDEFINED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_egm_msgsEGMChannelState_RAPID_UNDEFINED :: Word8
ros1Abb_egm_msgsEGMChannelState_RAPID_UNDEFINED = 1
-- | @brief Original abb_egm_msgs/EGMChannelState.RAPID_STOPPED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_egm_msgsEGMChannelState_RAPID_STOPPED :: Word8
ros1Abb_egm_msgsEGMChannelState_RAPID_STOPPED = 2
-- | @brief Original abb_egm_msgs/EGMChannelState.RAPID_RUNNING constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_egm_msgsEGMChannelState_RAPID_RUNNING :: Word8
ros1Abb_egm_msgsEGMChannelState_RAPID_RUNNING = 3
-- | @brief Encode every field of complete abb_egm_msgs/EGMChannelState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_egm_msgsEGMChannelState :: Ros1Abb_egm_msgsEGMChannelState -> Either Word32 [Word8]
encodeRos1Abb_egm_msgsEGMChannelState value = do
    chunk0 <- W.putText 64 (ros1Abb_egm_msgsEGMChannelState_name value)
    chunk1 <- Right (W.putBool (ros1Abb_egm_msgsEGMChannelState_active value))
    chunk2 <- Right (W.putBool (ros1Abb_egm_msgsEGMChannelState_egm_convergence_met value))
    chunk3 <- Right (W.putNumber 1 (ros1Abb_egm_msgsEGMChannelState_egm_client_state value))
    chunk4 <- Right (W.putNumber 1 (ros1Abb_egm_msgsEGMChannelState_motor_state value))
    chunk5 <- Right (W.putNumber 1 (ros1Abb_egm_msgsEGMChannelState_rapid_execution_state value))
    chunk6 <- finite8 (ros1Abb_egm_msgsEGMChannelState_utilization_rate value) castDoubleToWord64
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5, chunk6]
    if length bytes > 81 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_egm_msgs/EGMChannelState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_egm_msgsEGMChannelState :: W.Parser Ros1Abb_egm_msgsEGMChannelState
readRos1Abb_egm_msgsEGMChannelState = do
    value0 <- W.text 64
    value1 <- W.boolean
    value2 <- W.boolean
    value3 <- fromIntegral <$> W.number 1
    value4 <- fromIntegral <$> W.number 1
    value5 <- fromIntegral <$> W.number 1
    value6 <- castWord64ToDouble <$> W.number 8
    let value = Ros1Abb_egm_msgsEGMChannelState value0 value1 value2 value3 value4 value5 value6
    case encodeRos1Abb_egm_msgsEGMChannelState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_egm_msgs/EGMChannelState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_egm_msgsEGMChannelState :: [Word8] -> Either Word32 Ros1Abb_egm_msgsEGMChannelState
decodeRos1Abb_egm_msgsEGMChannelState bytes
    | length bytes < 17 || length bytes > 81 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_egm_msgsEGMChannelState bytes
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
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1TimeCodecIdentity :: String
ros1TimeCodecIdentity = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
-- | @brief Encode every field of complete time.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Time :: Ros1Time -> Either Word32 [Word8]
encodeRos1Time value = do
    if ros1Time_nsec value >= 1000000000 then Left 22 else Right ()
    chunk0 <- Right (W.putNumber 4 (ros1Time_sec value))
    chunk1 <- Right (W.putNumber 4 (ros1Time_nsec value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested time.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Time :: W.Parser Ros1Time
readRos1Time = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value = Ros1Time value0 value1
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
-- | @details Retain every original field in declaration order. Canonical extent 16..80 bytes.
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
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Std_msgsHeader_frame_id :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Std_msgsHeaderCodecIdentity :: String
ros1Std_msgsHeaderCodecIdentity = "UWVMROS1_ca1b8ffce276bdc4f86dccae58ede9f860ffe8778c6d4ffe0fb70675777801db"
-- | @brief Encode every field of complete std_msgs/Header.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Std_msgsHeader :: Ros1Std_msgsHeader -> Either Word32 [Word8]
encodeRos1Std_msgsHeader value = do
    chunk0 <- Right (W.putNumber 4 (ros1Std_msgsHeader_seq value))
    chunk1 <- encodeRos1Time (ros1Std_msgsHeader_stamp value)
    chunk2 <- W.putText 64 (ros1Std_msgsHeader_frame_id value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 80 then Left 22 else Right bytes
-- | @brief Read every field of nested std_msgs/Header.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Std_msgsHeader :: W.Parser Ros1Std_msgsHeader
readRos1Std_msgsHeader = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- readRos1Time
    value2 <- W.text 64
    let value = Ros1Std_msgsHeader value0 value1 value2
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
    | length bytes < 16 || length bytes > 80 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Std_msgsHeader bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_egm_msgs/EGMState value.
-- | @details Retain every original field in declaration order. Canonical extent 20..1380 bytes.
data Ros1Abb_egm_msgsEGMState = Ros1Abb_egm_msgsEGMState
    {
    -- | @brief Original abb_egm_msgs/EGMState.header field.
    -- | @details Original type std_msgs/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Abb_egm_msgsEGMState_header :: Ros1Std_msgsHeader
    ,
    -- | @brief Original abb_egm_msgs/EGMState.egm_channels field.
    -- | @details Original type abb_egm_msgs/EGMChannelState. Shape sequence; bound/count 16
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros1Abb_egm_msgsEGMState_egm_channels :: [Ros1Abb_egm_msgsEGMChannelState]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_egm_msgsEGMStateCodecIdentity :: String
ros1Abb_egm_msgsEGMStateCodecIdentity = "UWVMROS1_f7fe1d3924dc4e497c58aab27da69cfa6ab1a11f64b970b42e2d040a1312c4d8"
-- | @brief Encode every field of complete abb_egm_msgs/EGMState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_egm_msgsEGMState :: Ros1Abb_egm_msgsEGMState -> Either Word32 [Word8]
encodeRos1Abb_egm_msgsEGMState value = do
    chunk0 <- encodeRos1Std_msgsHeader (ros1Abb_egm_msgsEGMState_header value)
    if length (ros1Abb_egm_msgsEGMState_egm_channels value) <= 16 then Right () else Left 22
    item1 <- concat <$> mapM
        (\element -> encodeRos1Abb_egm_msgsEGMChannelState (element))
        (ros1Abb_egm_msgsEGMState_egm_channels value)
    chunk1 <- Right (W.putNumber 4 (length (ros1Abb_egm_msgsEGMState_egm_channels value)) ++ item1)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 1380 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_egm_msgs/EGMState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_egm_msgsEGMState :: W.Parser Ros1Abb_egm_msgsEGMState
readRos1Abb_egm_msgsEGMState = do
    value0 <- readRos1Std_msgsHeader
    count1 <- W.number 4
    if count1 > 16 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (readRos1Abb_egm_msgsEGMChannelState)
    let value = Ros1Abb_egm_msgsEGMState value0 value1
    case encodeRos1Abb_egm_msgsEGMState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_egm_msgs/EGMState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_egm_msgsEGMState :: [Word8] -> Either Word32 Ros1Abb_egm_msgsEGMState
decodeRos1Abb_egm_msgsEGMState bytes
    | length bytes < 20 || length bytes > 1380 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_egm_msgsEGMState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/ConfData value.
-- | @details Retain every original field in declaration order. Canonical extent 16..16 bytes.
data Ros1Abb_rapid_msgsConfData = Ros1Abb_rapid_msgsConfData
    {
    -- | @brief Original abb_rapid_msgs/ConfData.cf1 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsConfData_cf1 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/ConfData.cf4 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsConfData_cf4 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/ConfData.cf6 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsConfData_cf6 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/ConfData.cfx field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsConfData_cfx :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_msgsConfDataCodecIdentity :: String
ros1Abb_rapid_msgsConfDataCodecIdentity = "UWVMROS1_293eb01e8fa150a8a3c741626b76804255d0eb321a0484aac402201447392af2"
-- | @brief Encode every field of complete abb_rapid_msgs/ConfData.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_msgsConfData :: Ros1Abb_rapid_msgsConfData -> Either Word32 [Word8]
encodeRos1Abb_rapid_msgsConfData value = do
    chunk0 <- finite4 (ros1Abb_rapid_msgsConfData_cf1 value) castFloatToWord32
    chunk1 <- finite4 (ros1Abb_rapid_msgsConfData_cf4 value) castFloatToWord32
    chunk2 <- finite4 (ros1Abb_rapid_msgsConfData_cf6 value) castFloatToWord32
    chunk3 <- finite4 (ros1Abb_rapid_msgsConfData_cfx value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 16 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/ConfData.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_msgsConfData :: W.Parser Ros1Abb_rapid_msgsConfData
readRos1Abb_rapid_msgsConfData = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros1Abb_rapid_msgsConfData value0 value1 value2 value3
    case encodeRos1Abb_rapid_msgsConfData value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/ConfData.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_msgsConfData :: [Word8] -> Either Word32 Ros1Abb_rapid_msgsConfData
decodeRos1Abb_rapid_msgsConfData bytes
    | length bytes < 16 || length bytes > 16 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_msgsConfData bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/ExtJoint value.
-- | @details Retain every original field in declaration order. Canonical extent 24..24 bytes.
data Ros1Abb_rapid_msgsExtJoint = Ros1Abb_rapid_msgsExtJoint
    {
    -- | @brief Original abb_rapid_msgs/ExtJoint.eax_a field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsExtJoint_eax_a :: Float
    ,
    -- | @brief Original abb_rapid_msgs/ExtJoint.eax_b field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsExtJoint_eax_b :: Float
    ,
    -- | @brief Original abb_rapid_msgs/ExtJoint.eax_c field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsExtJoint_eax_c :: Float
    ,
    -- | @brief Original abb_rapid_msgs/ExtJoint.eax_d field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsExtJoint_eax_d :: Float
    ,
    -- | @brief Original abb_rapid_msgs/ExtJoint.eax_e field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsExtJoint_eax_e :: Float
    ,
    -- | @brief Original abb_rapid_msgs/ExtJoint.eax_f field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsExtJoint_eax_f :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_msgsExtJointCodecIdentity :: String
ros1Abb_rapid_msgsExtJointCodecIdentity = "UWVMROS1_653a47c44ab85151fd9e6215901fb154962c32fe1082386733ec6205eaae613a"
-- | @brief Encode every field of complete abb_rapid_msgs/ExtJoint.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_msgsExtJoint :: Ros1Abb_rapid_msgsExtJoint -> Either Word32 [Word8]
encodeRos1Abb_rapid_msgsExtJoint value = do
    chunk0 <- finite4 (ros1Abb_rapid_msgsExtJoint_eax_a value) castFloatToWord32
    chunk1 <- finite4 (ros1Abb_rapid_msgsExtJoint_eax_b value) castFloatToWord32
    chunk2 <- finite4 (ros1Abb_rapid_msgsExtJoint_eax_c value) castFloatToWord32
    chunk3 <- finite4 (ros1Abb_rapid_msgsExtJoint_eax_d value) castFloatToWord32
    chunk4 <- finite4 (ros1Abb_rapid_msgsExtJoint_eax_e value) castFloatToWord32
    chunk5 <- finite4 (ros1Abb_rapid_msgsExtJoint_eax_f value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5]
    if length bytes > 24 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/ExtJoint.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_msgsExtJoint :: W.Parser Ros1Abb_rapid_msgsExtJoint
readRos1Abb_rapid_msgsExtJoint = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros1Abb_rapid_msgsExtJoint value0 value1 value2 value3 value4 value5
    case encodeRos1Abb_rapid_msgsExtJoint value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/ExtJoint.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_msgsExtJoint :: [Word8] -> Either Word32 Ros1Abb_rapid_msgsExtJoint
decodeRos1Abb_rapid_msgsExtJoint bytes
    | length bytes < 24 || length bytes > 24 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_msgsExtJoint bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/RobJoint value.
-- | @details Retain every original field in declaration order. Canonical extent 24..24 bytes.
data Ros1Abb_rapid_msgsRobJoint = Ros1Abb_rapid_msgsRobJoint
    {
    -- | @brief Original abb_rapid_msgs/RobJoint.rax_1 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsRobJoint_rax_1 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/RobJoint.rax_2 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsRobJoint_rax_2 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/RobJoint.rax_3 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsRobJoint_rax_3 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/RobJoint.rax_4 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsRobJoint_rax_4 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/RobJoint.rax_5 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsRobJoint_rax_5 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/RobJoint.rax_6 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsRobJoint_rax_6 :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_msgsRobJointCodecIdentity :: String
ros1Abb_rapid_msgsRobJointCodecIdentity = "UWVMROS1_5d45bc0efae8c4f5b26e4043fe537e163c4cc4c6458d1eac9be429c37aaf82f0"
-- | @brief Encode every field of complete abb_rapid_msgs/RobJoint.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_msgsRobJoint :: Ros1Abb_rapid_msgsRobJoint -> Either Word32 [Word8]
encodeRos1Abb_rapid_msgsRobJoint value = do
    chunk0 <- finite4 (ros1Abb_rapid_msgsRobJoint_rax_1 value) castFloatToWord32
    chunk1 <- finite4 (ros1Abb_rapid_msgsRobJoint_rax_2 value) castFloatToWord32
    chunk2 <- finite4 (ros1Abb_rapid_msgsRobJoint_rax_3 value) castFloatToWord32
    chunk3 <- finite4 (ros1Abb_rapid_msgsRobJoint_rax_4 value) castFloatToWord32
    chunk4 <- finite4 (ros1Abb_rapid_msgsRobJoint_rax_5 value) castFloatToWord32
    chunk5 <- finite4 (ros1Abb_rapid_msgsRobJoint_rax_6 value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5]
    if length bytes > 24 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/RobJoint.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_msgsRobJoint :: W.Parser Ros1Abb_rapid_msgsRobJoint
readRos1Abb_rapid_msgsRobJoint = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros1Abb_rapid_msgsRobJoint value0 value1 value2 value3 value4 value5
    case encodeRos1Abb_rapid_msgsRobJoint value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/RobJoint.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_msgsRobJoint :: [Word8] -> Either Word32 Ros1Abb_rapid_msgsRobJoint
decodeRos1Abb_rapid_msgsRobJoint bytes
    | length bytes < 24 || length bytes > 24 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_msgsRobJoint bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/JointTarget value.
-- | @details Retain every original field in declaration order. Canonical extent 48..48 bytes.
data Ros1Abb_rapid_msgsJointTarget = Ros1Abb_rapid_msgsJointTarget
    {
    -- | @brief Original abb_rapid_msgs/JointTarget.robax field.
    -- | @details Original type abb_rapid_msgs/RobJoint. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros1Abb_rapid_msgsJointTarget_robax :: Ros1Abb_rapid_msgsRobJoint
    ,
    -- | @brief Original abb_rapid_msgs/JointTarget.extax field.
    -- | @details Original type abb_rapid_msgs/ExtJoint. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros1Abb_rapid_msgsJointTarget_extax :: Ros1Abb_rapid_msgsExtJoint
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_msgsJointTargetCodecIdentity :: String
ros1Abb_rapid_msgsJointTargetCodecIdentity = "UWVMROS1_4a1cc175468da9204c5f2f399b76712617daec21a0d1675a6e73c84ff170dc24"
-- | @brief Encode every field of complete abb_rapid_msgs/JointTarget.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_msgsJointTarget :: Ros1Abb_rapid_msgsJointTarget -> Either Word32 [Word8]
encodeRos1Abb_rapid_msgsJointTarget value = do
    chunk0 <- encodeRos1Abb_rapid_msgsRobJoint (ros1Abb_rapid_msgsJointTarget_robax value)
    chunk1 <- encodeRos1Abb_rapid_msgsExtJoint (ros1Abb_rapid_msgsJointTarget_extax value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 48 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/JointTarget.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_msgsJointTarget :: W.Parser Ros1Abb_rapid_msgsJointTarget
readRos1Abb_rapid_msgsJointTarget = do
    value0 <- readRos1Abb_rapid_msgsRobJoint
    value1 <- readRos1Abb_rapid_msgsExtJoint
    let value = Ros1Abb_rapid_msgsJointTarget value0 value1
    case encodeRos1Abb_rapid_msgsJointTarget value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/JointTarget.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_msgsJointTarget :: [Word8] -> Either Word32 Ros1Abb_rapid_msgsJointTarget
decodeRos1Abb_rapid_msgsJointTarget bytes
    | length bytes < 48 || length bytes > 48 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_msgsJointTarget bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/Pos value.
-- | @details Retain every original field in declaration order. Canonical extent 12..12 bytes.
data Ros1Abb_rapid_msgsPos = Ros1Abb_rapid_msgsPos
    {
    -- | @brief Original abb_rapid_msgs/Pos.x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsPos_x :: Float
    ,
    -- | @brief Original abb_rapid_msgs/Pos.y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsPos_y :: Float
    ,
    -- | @brief Original abb_rapid_msgs/Pos.z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsPos_z :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_msgsPosCodecIdentity :: String
ros1Abb_rapid_msgsPosCodecIdentity = "UWVMROS1_79edd4553fad8a8f833a3399e354c93538d4971bc3820cc14cf540e960356c01"
-- | @brief Encode every field of complete abb_rapid_msgs/Pos.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_msgsPos :: Ros1Abb_rapid_msgsPos -> Either Word32 [Word8]
encodeRos1Abb_rapid_msgsPos value = do
    chunk0 <- finite4 (ros1Abb_rapid_msgsPos_x value) castFloatToWord32
    chunk1 <- finite4 (ros1Abb_rapid_msgsPos_y value) castFloatToWord32
    chunk2 <- finite4 (ros1Abb_rapid_msgsPos_z value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 12 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/Pos.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_msgsPos :: W.Parser Ros1Abb_rapid_msgsPos
readRos1Abb_rapid_msgsPos = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros1Abb_rapid_msgsPos value0 value1 value2
    case encodeRos1Abb_rapid_msgsPos value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/Pos.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_msgsPos :: [Word8] -> Either Word32 Ros1Abb_rapid_msgsPos
decodeRos1Abb_rapid_msgsPos bytes
    | length bytes < 12 || length bytes > 12 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_msgsPos bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/Orient value.
-- | @details Retain every original field in declaration order. Canonical extent 16..16 bytes.
data Ros1Abb_rapid_msgsOrient = Ros1Abb_rapid_msgsOrient
    {
    -- | @brief Original abb_rapid_msgs/Orient.q1 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsOrient_q1 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/Orient.q2 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsOrient_q2 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/Orient.q3 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsOrient_q3 :: Float
    ,
    -- | @brief Original abb_rapid_msgs/Orient.q4 field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsOrient_q4 :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_msgsOrientCodecIdentity :: String
ros1Abb_rapid_msgsOrientCodecIdentity = "UWVMROS1_5a9c29323a5e3bc0c4c0afa7d305738cd52b49ae339e72f6b34b35b165f3d270"
-- | @brief Encode every field of complete abb_rapid_msgs/Orient.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_msgsOrient :: Ros1Abb_rapid_msgsOrient -> Either Word32 [Word8]
encodeRos1Abb_rapid_msgsOrient value = do
    chunk0 <- finite4 (ros1Abb_rapid_msgsOrient_q1 value) castFloatToWord32
    chunk1 <- finite4 (ros1Abb_rapid_msgsOrient_q2 value) castFloatToWord32
    chunk2 <- finite4 (ros1Abb_rapid_msgsOrient_q3 value) castFloatToWord32
    chunk3 <- finite4 (ros1Abb_rapid_msgsOrient_q4 value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 16 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/Orient.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_msgsOrient :: W.Parser Ros1Abb_rapid_msgsOrient
readRos1Abb_rapid_msgsOrient = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros1Abb_rapid_msgsOrient value0 value1 value2 value3
    case encodeRos1Abb_rapid_msgsOrient value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/Orient.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_msgsOrient :: [Word8] -> Either Word32 Ros1Abb_rapid_msgsOrient
decodeRos1Abb_rapid_msgsOrient bytes
    | length bytes < 16 || length bytes > 16 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_msgsOrient bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/LoadData value.
-- | @details Retain every original field in declaration order. Canonical extent 44..44 bytes.
data Ros1Abb_rapid_msgsLoadData = Ros1Abb_rapid_msgsLoadData
    {
    -- | @brief Original abb_rapid_msgs/LoadData.mass field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsLoadData_mass :: Float
    ,
    -- | @brief Original abb_rapid_msgs/LoadData.cog field.
    -- | @details Original type abb_rapid_msgs/Pos. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Abb_rapid_msgsLoadData_cog :: Ros1Abb_rapid_msgsPos
    ,
    -- | @brief Original abb_rapid_msgs/LoadData.aom field.
    -- | @details Original type abb_rapid_msgs/Orient. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros1Abb_rapid_msgsLoadData_aom :: Ros1Abb_rapid_msgsOrient
    ,
    -- | @brief Original abb_rapid_msgs/LoadData.ix field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsLoadData_ix :: Float
    ,
    -- | @brief Original abb_rapid_msgs/LoadData.iy field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsLoadData_iy :: Float
    ,
    -- | @brief Original abb_rapid_msgs/LoadData.iz field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsLoadData_iz :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_msgsLoadDataCodecIdentity :: String
ros1Abb_rapid_msgsLoadDataCodecIdentity = "UWVMROS1_2cc985cc188a03e7c6de3d22310802cac1e0a748bae7f828d957436c1e03303d"
-- | @brief Encode every field of complete abb_rapid_msgs/LoadData.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_msgsLoadData :: Ros1Abb_rapid_msgsLoadData -> Either Word32 [Word8]
encodeRos1Abb_rapid_msgsLoadData value = do
    chunk0 <- finite4 (ros1Abb_rapid_msgsLoadData_mass value) castFloatToWord32
    chunk1 <- encodeRos1Abb_rapid_msgsPos (ros1Abb_rapid_msgsLoadData_cog value)
    chunk2 <- encodeRos1Abb_rapid_msgsOrient (ros1Abb_rapid_msgsLoadData_aom value)
    chunk3 <- finite4 (ros1Abb_rapid_msgsLoadData_ix value) castFloatToWord32
    chunk4 <- finite4 (ros1Abb_rapid_msgsLoadData_iy value) castFloatToWord32
    chunk5 <- finite4 (ros1Abb_rapid_msgsLoadData_iz value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5]
    if length bytes > 44 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/LoadData.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_msgsLoadData :: W.Parser Ros1Abb_rapid_msgsLoadData
readRos1Abb_rapid_msgsLoadData = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- readRos1Abb_rapid_msgsPos
    value2 <- readRos1Abb_rapid_msgsOrient
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros1Abb_rapid_msgsLoadData value0 value1 value2 value3 value4 value5
    case encodeRos1Abb_rapid_msgsLoadData value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/LoadData.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_msgsLoadData :: [Word8] -> Either Word32 Ros1Abb_rapid_msgsLoadData
decodeRos1Abb_rapid_msgsLoadData bytes
    | length bytes < 44 || length bytes > 44 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_msgsLoadData bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/Pose value.
-- | @details Retain every original field in declaration order. Canonical extent 28..28 bytes.
data Ros1Abb_rapid_msgsPose = Ros1Abb_rapid_msgsPose
    {
    -- | @brief Original abb_rapid_msgs/Pose.trans field.
    -- | @details Original type abb_rapid_msgs/Pos. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Abb_rapid_msgsPose_trans :: Ros1Abb_rapid_msgsPos
    ,
    -- | @brief Original abb_rapid_msgs/Pose.rot field.
    -- | @details Original type abb_rapid_msgs/Orient. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros1Abb_rapid_msgsPose_rot :: Ros1Abb_rapid_msgsOrient
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_msgsPoseCodecIdentity :: String
ros1Abb_rapid_msgsPoseCodecIdentity = "UWVMROS1_3e0cfbb7e25376639d1ff6e555a86e69f8c9ed177c1ef14b301d90b206a19c99"
-- | @brief Encode every field of complete abb_rapid_msgs/Pose.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_msgsPose :: Ros1Abb_rapid_msgsPose -> Either Word32 [Word8]
encodeRos1Abb_rapid_msgsPose value = do
    chunk0 <- encodeRos1Abb_rapid_msgsPos (ros1Abb_rapid_msgsPose_trans value)
    chunk1 <- encodeRos1Abb_rapid_msgsOrient (ros1Abb_rapid_msgsPose_rot value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 28 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/Pose.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_msgsPose :: W.Parser Ros1Abb_rapid_msgsPose
readRos1Abb_rapid_msgsPose = do
    value0 <- readRos1Abb_rapid_msgsPos
    value1 <- readRos1Abb_rapid_msgsOrient
    let value = Ros1Abb_rapid_msgsPose value0 value1
    case encodeRos1Abb_rapid_msgsPose value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/Pose.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_msgsPose :: [Word8] -> Either Word32 Ros1Abb_rapid_msgsPose
decodeRos1Abb_rapid_msgsPose bytes
    | length bytes < 28 || length bytes > 28 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_msgsPose bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/RobTarget value.
-- | @details Retain every original field in declaration order. Canonical extent 68..68 bytes.
data Ros1Abb_rapid_msgsRobTarget = Ros1Abb_rapid_msgsRobTarget
    {
    -- | @brief Original abb_rapid_msgs/RobTarget.trans field.
    -- | @details Original type abb_rapid_msgs/Pos. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Abb_rapid_msgsRobTarget_trans :: Ros1Abb_rapid_msgsPos
    ,
    -- | @brief Original abb_rapid_msgs/RobTarget.rot field.
    -- | @details Original type abb_rapid_msgs/Orient. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros1Abb_rapid_msgsRobTarget_rot :: Ros1Abb_rapid_msgsOrient
    ,
    -- | @brief Original abb_rapid_msgs/RobTarget.robconf field.
    -- | @details Original type abb_rapid_msgs/ConfData. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros1Abb_rapid_msgsRobTarget_robconf :: Ros1Abb_rapid_msgsConfData
    ,
    -- | @brief Original abb_rapid_msgs/RobTarget.extax field.
    -- | @details Original type abb_rapid_msgs/ExtJoint. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros1Abb_rapid_msgsRobTarget_extax :: Ros1Abb_rapid_msgsExtJoint
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_msgsRobTargetCodecIdentity :: String
ros1Abb_rapid_msgsRobTargetCodecIdentity = "UWVMROS1_0abb3aee8b1303ccf9419f2774829d1231de3ac033e4b644d585f195972f09ce"
-- | @brief Encode every field of complete abb_rapid_msgs/RobTarget.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_msgsRobTarget :: Ros1Abb_rapid_msgsRobTarget -> Either Word32 [Word8]
encodeRos1Abb_rapid_msgsRobTarget value = do
    chunk0 <- encodeRos1Abb_rapid_msgsPos (ros1Abb_rapid_msgsRobTarget_trans value)
    chunk1 <- encodeRos1Abb_rapid_msgsOrient (ros1Abb_rapid_msgsRobTarget_rot value)
    chunk2 <- encodeRos1Abb_rapid_msgsConfData (ros1Abb_rapid_msgsRobTarget_robconf value)
    chunk3 <- encodeRos1Abb_rapid_msgsExtJoint (ros1Abb_rapid_msgsRobTarget_extax value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 68 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/RobTarget.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_msgsRobTarget :: W.Parser Ros1Abb_rapid_msgsRobTarget
readRos1Abb_rapid_msgsRobTarget = do
    value0 <- readRos1Abb_rapid_msgsPos
    value1 <- readRos1Abb_rapid_msgsOrient
    value2 <- readRos1Abb_rapid_msgsConfData
    value3 <- readRos1Abb_rapid_msgsExtJoint
    let value = Ros1Abb_rapid_msgsRobTarget value0 value1 value2 value3
    case encodeRos1Abb_rapid_msgsRobTarget value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/RobTarget.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_msgsRobTarget :: [Word8] -> Either Word32 Ros1Abb_rapid_msgsRobTarget
decodeRos1Abb_rapid_msgsRobTarget bytes
    | length bytes < 68 || length bytes > 68 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_msgsRobTarget bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/ToolData value.
-- | @details Retain every original field in declaration order. Canonical extent 73..73 bytes.
data Ros1Abb_rapid_msgsToolData = Ros1Abb_rapid_msgsToolData
    {
    -- | @brief Original abb_rapid_msgs/ToolData.robhold field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsToolData_robhold :: Bool
    ,
    -- | @brief Original abb_rapid_msgs/ToolData.tframe field.
    -- | @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Abb_rapid_msgsToolData_tframe :: Ros1Abb_rapid_msgsPose
    ,
    -- | @brief Original abb_rapid_msgs/ToolData.tload field.
    -- | @details Original type abb_rapid_msgs/LoadData. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros1Abb_rapid_msgsToolData_tload :: Ros1Abb_rapid_msgsLoadData
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_msgsToolDataCodecIdentity :: String
ros1Abb_rapid_msgsToolDataCodecIdentity = "UWVMROS1_e2feaee4bda891f594542384d70883184262777e359fb037a648b7526ef76cba"
-- | @brief Encode every field of complete abb_rapid_msgs/ToolData.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_msgsToolData :: Ros1Abb_rapid_msgsToolData -> Either Word32 [Word8]
encodeRos1Abb_rapid_msgsToolData value = do
    chunk0 <- Right (W.putBool (ros1Abb_rapid_msgsToolData_robhold value))
    chunk1 <- encodeRos1Abb_rapid_msgsPose (ros1Abb_rapid_msgsToolData_tframe value)
    chunk2 <- encodeRos1Abb_rapid_msgsLoadData (ros1Abb_rapid_msgsToolData_tload value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 73 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/ToolData.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_msgsToolData :: W.Parser Ros1Abb_rapid_msgsToolData
readRos1Abb_rapid_msgsToolData = do
    value0 <- W.boolean
    value1 <- readRos1Abb_rapid_msgsPose
    value2 <- readRos1Abb_rapid_msgsLoadData
    let value = Ros1Abb_rapid_msgsToolData value0 value1 value2
    case encodeRos1Abb_rapid_msgsToolData value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/ToolData.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_msgsToolData :: [Word8] -> Either Word32 Ros1Abb_rapid_msgsToolData
decodeRos1Abb_rapid_msgsToolData bytes
    | length bytes < 73 || length bytes > 73 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_msgsToolData bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_msgs/WObjData value.
-- | @details Retain every original field in declaration order. Canonical extent 62..574 bytes.
data Ros1Abb_rapid_msgsWObjData = Ros1Abb_rapid_msgsWObjData
    {
    -- | @brief Original abb_rapid_msgs/WObjData.robhold field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsWObjData_robhold :: Bool
    ,
    -- | @brief Original abb_rapid_msgs/WObjData.ufprog field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_msgsWObjData_ufprog :: Bool
    ,
    -- | @brief Original abb_rapid_msgs/WObjData.ufmec field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_rapid_msgsWObjData_ufmec :: [Word8]
    ,
    -- | @brief Original abb_rapid_msgs/WObjData.uframe field.
    -- | @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Abb_rapid_msgsWObjData_uframe :: Ros1Abb_rapid_msgsPose
    ,
    -- | @brief Original abb_rapid_msgs/WObjData.oframe field.
    -- | @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Abb_rapid_msgsWObjData_oframe :: Ros1Abb_rapid_msgsPose
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_msgsWObjDataCodecIdentity :: String
ros1Abb_rapid_msgsWObjDataCodecIdentity = "UWVMROS1_6de4cf654a15ef3b63d9b0f3d0984438f21963c10ffd1b00238113b6fae8454f"
-- | @brief Encode every field of complete abb_rapid_msgs/WObjData.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_msgsWObjData :: Ros1Abb_rapid_msgsWObjData -> Either Word32 [Word8]
encodeRos1Abb_rapid_msgsWObjData value = do
    chunk0 <- Right (W.putBool (ros1Abb_rapid_msgsWObjData_robhold value))
    chunk1 <- Right (W.putBool (ros1Abb_rapid_msgsWObjData_ufprog value))
    chunk2 <- W.putText 512 (ros1Abb_rapid_msgsWObjData_ufmec value)
    chunk3 <- encodeRos1Abb_rapid_msgsPose (ros1Abb_rapid_msgsWObjData_uframe value)
    chunk4 <- encodeRos1Abb_rapid_msgsPose (ros1Abb_rapid_msgsWObjData_oframe value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4]
    if length bytes > 574 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_msgs/WObjData.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_msgsWObjData :: W.Parser Ros1Abb_rapid_msgsWObjData
readRos1Abb_rapid_msgsWObjData = do
    value0 <- W.boolean
    value1 <- W.boolean
    value2 <- W.text 512
    value3 <- readRos1Abb_rapid_msgsPose
    value4 <- readRos1Abb_rapid_msgsPose
    let value = Ros1Abb_rapid_msgsWObjData value0 value1 value2 value3 value4
    case encodeRos1Abb_rapid_msgsWObjData value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_msgs/WObjData.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_msgsWObjData :: [Word8] -> Either Word32 Ros1Abb_rapid_msgsWObjData
decodeRos1Abb_rapid_msgsWObjData bytes
    | length bytes < 62 || length bytes > 574 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_msgsWObjData bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/EGMActivateSettings value.
-- | @details Retain every original field in declaration order. Canonical extent 204..716 bytes.
data Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings = Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.tool field.
    -- | @details Original type abb_rapid_msgs/ToolData. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_tool :: Ros1Abb_rapid_msgsToolData
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.wobj field.
    -- | @details Original type abb_rapid_msgs/WObjData. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_wobj :: Ros1Abb_rapid_msgsWObjData
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.correction_frame field.
    -- | @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_correction_frame :: Ros1Abb_rapid_msgsPose
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.sensor_frame field.
    -- | @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_sensor_frame :: Ros1Abb_rapid_msgsPose
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.cond_min_max field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_cond_min_max :: Float
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.lp_filter field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_lp_filter :: Float
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.sample_rate field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_sample_rate :: Word8
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.max_speed_deviation field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_max_speed_deviation :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_sm_addin_msgsEGMActivateSettingsCodecIdentity :: String
ros1Abb_rapid_sm_addin_msgsEGMActivateSettingsCodecIdentity = "UWVMROS1_c50be5682021e5d1a7a938e6fe3595cec7c0b0ae727070c0924da731c2c73d4d"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/EGMActivateSettings.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_sm_addin_msgsEGMActivateSettings :: Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings -> Either Word32 [Word8]
encodeRos1Abb_rapid_sm_addin_msgsEGMActivateSettings value = do
    chunk0 <- encodeRos1Abb_rapid_msgsToolData (ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_tool value)
    chunk1 <- encodeRos1Abb_rapid_msgsWObjData (ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_wobj value)
    chunk2 <- encodeRos1Abb_rapid_msgsPose (ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_correction_frame value)
    chunk3 <- encodeRos1Abb_rapid_msgsPose (ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_sensor_frame value)
    chunk4 <- finite4 (ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_cond_min_max value) castFloatToWord32
    chunk5 <- finite4 (ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_lp_filter value) castFloatToWord32
    chunk6 <- Right (W.putNumber 1 (ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_sample_rate value))
    chunk7 <- finite4 (ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_max_speed_deviation value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5, chunk6, chunk7]
    if length bytes > 716 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/EGMActivateSettings.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_sm_addin_msgsEGMActivateSettings :: W.Parser Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings
readRos1Abb_rapid_sm_addin_msgsEGMActivateSettings = do
    value0 <- readRos1Abb_rapid_msgsToolData
    value1 <- readRos1Abb_rapid_msgsWObjData
    value2 <- readRos1Abb_rapid_msgsPose
    value3 <- readRos1Abb_rapid_msgsPose
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- fromIntegral <$> W.number 1
    value7 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings value0 value1 value2 value3 value4 value5 value6 value7
    case encodeRos1Abb_rapid_sm_addin_msgsEGMActivateSettings value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/EGMActivateSettings.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_sm_addin_msgsEGMActivateSettings :: [Word8] -> Either Word32 Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings
decodeRos1Abb_rapid_sm_addin_msgsEGMActivateSettings bytes
    | length bytes < 204 || length bytes > 716 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_sm_addin_msgsEGMActivateSettings bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/EGMRunSettings value.
-- | @details Retain every original field in declaration order. Canonical extent 40..40 bytes.
data Ros1Abb_rapid_sm_addin_msgsEGMRunSettings = Ros1Abb_rapid_sm_addin_msgsEGMRunSettings
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.cond_time field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsEGMRunSettings_cond_time :: Float
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.ramp_in_time field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsEGMRunSettings_ramp_in_time :: Float
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.offset field.
    -- | @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Abb_rapid_sm_addin_msgsEGMRunSettings_offset :: Ros1Abb_rapid_msgsPose
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.pos_corr_gain field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsEGMRunSettings_pos_corr_gain :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_sm_addin_msgsEGMRunSettingsCodecIdentity :: String
ros1Abb_rapid_sm_addin_msgsEGMRunSettingsCodecIdentity = "UWVMROS1_09a843da7aa89c60e6404f8d36b9a1a57f75e330329ac043449fd438b7029506"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/EGMRunSettings.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_sm_addin_msgsEGMRunSettings :: Ros1Abb_rapid_sm_addin_msgsEGMRunSettings -> Either Word32 [Word8]
encodeRos1Abb_rapid_sm_addin_msgsEGMRunSettings value = do
    chunk0 <- finite4 (ros1Abb_rapid_sm_addin_msgsEGMRunSettings_cond_time value) castFloatToWord32
    chunk1 <- finite4 (ros1Abb_rapid_sm_addin_msgsEGMRunSettings_ramp_in_time value) castFloatToWord32
    chunk2 <- encodeRos1Abb_rapid_msgsPose (ros1Abb_rapid_sm_addin_msgsEGMRunSettings_offset value)
    chunk3 <- finite4 (ros1Abb_rapid_sm_addin_msgsEGMRunSettings_pos_corr_gain value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 40 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/EGMRunSettings.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_sm_addin_msgsEGMRunSettings :: W.Parser Ros1Abb_rapid_sm_addin_msgsEGMRunSettings
readRos1Abb_rapid_sm_addin_msgsEGMRunSettings = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- readRos1Abb_rapid_msgsPose
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros1Abb_rapid_sm_addin_msgsEGMRunSettings value0 value1 value2 value3
    case encodeRos1Abb_rapid_sm_addin_msgsEGMRunSettings value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/EGMRunSettings.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_sm_addin_msgsEGMRunSettings :: [Word8] -> Either Word32 Ros1Abb_rapid_sm_addin_msgsEGMRunSettings
decodeRos1Abb_rapid_sm_addin_msgsEGMRunSettings bytes
    | length bytes < 40 || length bytes > 40 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_sm_addin_msgsEGMRunSettings bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/EGMSetupSettings value.
-- | @details Retain every original field in declaration order. Canonical extent 5..5 bytes.
data Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings = Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMSetupSettings.use_filtering field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsEGMSetupSettings_use_filtering :: Bool
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMSetupSettings.comm_timeout field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsEGMSetupSettings_comm_timeout :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_sm_addin_msgsEGMSetupSettingsCodecIdentity :: String
ros1Abb_rapid_sm_addin_msgsEGMSetupSettingsCodecIdentity = "UWVMROS1_ece31a7631bb3bb248aece52d4d5f6e190a94dcc3052b2761b759bed24513779"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/EGMSetupSettings.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_sm_addin_msgsEGMSetupSettings :: Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings -> Either Word32 [Word8]
encodeRos1Abb_rapid_sm_addin_msgsEGMSetupSettings value = do
    chunk0 <- Right (W.putBool (ros1Abb_rapid_sm_addin_msgsEGMSetupSettings_use_filtering value))
    chunk1 <- finite4 (ros1Abb_rapid_sm_addin_msgsEGMSetupSettings_comm_timeout value) castFloatToWord32
    let bytes = concat [chunk0, chunk1]
    if length bytes > 5 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/EGMSetupSettings.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_sm_addin_msgsEGMSetupSettings :: W.Parser Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings
readRos1Abb_rapid_sm_addin_msgsEGMSetupSettings = do
    value0 <- W.boolean
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings value0 value1
    case encodeRos1Abb_rapid_sm_addin_msgsEGMSetupSettings value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/EGMSetupSettings.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_sm_addin_msgsEGMSetupSettings :: [Word8] -> Either Word32 Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings
decodeRos1Abb_rapid_sm_addin_msgsEGMSetupSettings bytes
    | length bytes < 5 || length bytes > 5 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_sm_addin_msgsEGMSetupSettings bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/EGMStopSettings value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros1Abb_rapid_sm_addin_msgsEGMStopSettings = Ros1Abb_rapid_sm_addin_msgsEGMStopSettings
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMStopSettings.ramp_out_time field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsEGMStopSettings_ramp_out_time :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_sm_addin_msgsEGMStopSettingsCodecIdentity :: String
ros1Abb_rapid_sm_addin_msgsEGMStopSettingsCodecIdentity = "UWVMROS1_64009cc452b9b2b12b3501d150e8c88c9cc07c796df06775195fa17c2a103a08"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/EGMStopSettings.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_sm_addin_msgsEGMStopSettings :: Ros1Abb_rapid_sm_addin_msgsEGMStopSettings -> Either Word32 [Word8]
encodeRos1Abb_rapid_sm_addin_msgsEGMStopSettings value = do
    chunk0 <- finite4 (ros1Abb_rapid_sm_addin_msgsEGMStopSettings_ramp_out_time value) castFloatToWord32
    let bytes = concat [chunk0]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/EGMStopSettings.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_sm_addin_msgsEGMStopSettings :: W.Parser Ros1Abb_rapid_sm_addin_msgsEGMStopSettings
readRos1Abb_rapid_sm_addin_msgsEGMStopSettings = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros1Abb_rapid_sm_addin_msgsEGMStopSettings value0
    case encodeRos1Abb_rapid_sm_addin_msgsEGMStopSettings value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/EGMStopSettings.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_sm_addin_msgsEGMStopSettings :: [Word8] -> Either Word32 Ros1Abb_rapid_sm_addin_msgsEGMStopSettings
decodeRos1Abb_rapid_sm_addin_msgsEGMStopSettings bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_sm_addin_msgsEGMStopSettings bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/EGMSettings value.
-- | @details Retain every original field in declaration order. Canonical extent 255..767 bytes.
data Ros1Abb_rapid_sm_addin_msgsEGMSettings = Ros1Abb_rapid_sm_addin_msgsEGMSettings
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMSettings.allow_egm_motions field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsEGMSettings_allow_egm_motions :: Bool
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMSettings.use_presync field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsEGMSettings_use_presync :: Bool
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMSettings.setup_uc field.
    -- | @details Original type abb_rapid_sm_addin_msgs/EGMSetupSettings. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsEGMSettings_setup_uc :: Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMSettings.activate field.
    -- | @details Original type abb_rapid_sm_addin_msgs/EGMActivateSettings. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsEGMSettings_activate :: Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMSettings.run field.
    -- | @details Original type abb_rapid_sm_addin_msgs/EGMRunSettings. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsEGMSettings_run :: Ros1Abb_rapid_sm_addin_msgsEGMRunSettings
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/EGMSettings.stop field.
    -- | @details Original type abb_rapid_sm_addin_msgs/EGMStopSettings. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsEGMSettings_stop :: Ros1Abb_rapid_sm_addin_msgsEGMStopSettings
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_sm_addin_msgsEGMSettingsCodecIdentity :: String
ros1Abb_rapid_sm_addin_msgsEGMSettingsCodecIdentity = "UWVMROS1_ebc0ca24a54451f863964c74bf0257b5b25546d0d4b8a75ac75c265e1d62317b"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/EGMSettings.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_sm_addin_msgsEGMSettings :: Ros1Abb_rapid_sm_addin_msgsEGMSettings -> Either Word32 [Word8]
encodeRos1Abb_rapid_sm_addin_msgsEGMSettings value = do
    chunk0 <- Right (W.putBool (ros1Abb_rapid_sm_addin_msgsEGMSettings_allow_egm_motions value))
    chunk1 <- Right (W.putBool (ros1Abb_rapid_sm_addin_msgsEGMSettings_use_presync value))
    chunk2 <- encodeRos1Abb_rapid_sm_addin_msgsEGMSetupSettings (ros1Abb_rapid_sm_addin_msgsEGMSettings_setup_uc value)
    chunk3 <- encodeRos1Abb_rapid_sm_addin_msgsEGMActivateSettings (ros1Abb_rapid_sm_addin_msgsEGMSettings_activate value)
    chunk4 <- encodeRos1Abb_rapid_sm_addin_msgsEGMRunSettings (ros1Abb_rapid_sm_addin_msgsEGMSettings_run value)
    chunk5 <- encodeRos1Abb_rapid_sm_addin_msgsEGMStopSettings (ros1Abb_rapid_sm_addin_msgsEGMSettings_stop value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5]
    if length bytes > 767 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/EGMSettings.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_sm_addin_msgsEGMSettings :: W.Parser Ros1Abb_rapid_sm_addin_msgsEGMSettings
readRos1Abb_rapid_sm_addin_msgsEGMSettings = do
    value0 <- W.boolean
    value1 <- W.boolean
    value2 <- readRos1Abb_rapid_sm_addin_msgsEGMSetupSettings
    value3 <- readRos1Abb_rapid_sm_addin_msgsEGMActivateSettings
    value4 <- readRos1Abb_rapid_sm_addin_msgsEGMRunSettings
    value5 <- readRos1Abb_rapid_sm_addin_msgsEGMStopSettings
    let value = Ros1Abb_rapid_sm_addin_msgsEGMSettings value0 value1 value2 value3 value4 value5
    case encodeRos1Abb_rapid_sm_addin_msgsEGMSettings value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/EGMSettings.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_sm_addin_msgsEGMSettings :: [Word8] -> Either Word32 Ros1Abb_rapid_sm_addin_msgsEGMSettings
decodeRos1Abb_rapid_sm_addin_msgsEGMSettings bytes
    | length bytes < 255 || length bytes > 767 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_sm_addin_msgsEGMSettings bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/GetEGMSettingsRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 4..68 bytes.
data Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest = Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.task field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest_task :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequestCodecIdentity :: String
ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequestCodecIdentity = "UWVMROS1_42cca857367e08720f989416d18d6a1f7d677f7e5bf49435b9735a9eb10a8f9c"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest :: Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest -> Either Word32 [Word8]
encodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest value = do
    chunk0 <- W.putText 64 (ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest_task value)
    let bytes = concat [chunk0]
    if length bytes > 68 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest :: W.Parser Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest
readRos1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest = do
    value0 <- W.text 64
    let value = Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest value0
    case encodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest :: [Word8] -> Either Word32 Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest
decodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest bytes
    | length bytes < 4 || length bytes > 68 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 261..1285 bytes.
data Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse = Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.settings field.
    -- | @details Original type abb_rapid_sm_addin_msgs/EGMSettings. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse_settings :: Ros1Abb_rapid_sm_addin_msgsEGMSettings
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse_result_code :: Word16
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponseCodecIdentity :: String
ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponseCodecIdentity = "UWVMROS1_094fd8b0b992c26d708bbd09952d36a3921ad5e5e66f45edb9d19af5ec3472bc"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse :: Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse -> Either Word32 [Word8]
encodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse value = do
    chunk0 <- encodeRos1Abb_rapid_sm_addin_msgsEGMSettings (ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse_settings value)
    chunk1 <- Right (W.putNumber 2 (ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse_result_code value))
    chunk2 <- W.putText 512 (ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 1285 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse :: W.Parser Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse
readRos1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse = do
    value0 <- readRos1Abb_rapid_sm_addin_msgsEGMSettings
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse value0 value1 value2
    case encodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse :: [Word8] -> Either Word32 Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse
decodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse bytes
    | length bytes < 261 || length bytes > 1285 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/StateMachineState value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros1Abb_rapid_sm_addin_msgsStateMachineState = Ros1Abb_rapid_sm_addin_msgsStateMachineState
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/StateMachineState.rapid_task field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsStateMachineState_rapid_task :: [Word8]
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/StateMachineState.sm_state field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsStateMachineState_sm_state :: Word8
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/StateMachineState.egm_action field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsStateMachineState_egm_action :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_sm_addin_msgsStateMachineStateCodecIdentity :: String
ros1Abb_rapid_sm_addin_msgsStateMachineStateCodecIdentity = "UWVMROS1_9ef8cc3a0438ad892acc1a2f485039ca49abce6fedf40cc5d9b2fe03dd9490bb"
-- | @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_UNKNOWN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_UNKNOWN :: Word8
ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_UNKNOWN = 1
-- | @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_IDLE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_IDLE :: Word8
ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_IDLE = 2
-- | @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_INITIALIZE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_INITIALIZE :: Word8
ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_INITIALIZE = 3
-- | @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_RUN_RAPID_ROUTINE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_RUN_RAPID_ROUTINE :: Word8
ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_RUN_RAPID_ROUTINE = 4
-- | @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_RUN_EGM_ROUTINE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_RUN_EGM_ROUTINE :: Word8
ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_RUN_EGM_ROUTINE = 5
-- | @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_UNKNOWN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_UNKNOWN :: Word8
ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_UNKNOWN = 1
-- | @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_NONE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_NONE :: Word8
ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_NONE = 2
-- | @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_RUN_JOINT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_RUN_JOINT :: Word8
ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_RUN_JOINT = 3
-- | @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_RUN_POSE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_RUN_POSE :: Word8
ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_RUN_POSE = 4
-- | @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_STOP constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_STOP :: Word8
ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_STOP = 5
-- | @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_START_STREAM constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_START_STREAM :: Word8
ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_START_STREAM = 6
-- | @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_STOP_STREAM constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_STOP_STREAM :: Word8
ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_STOP_STREAM = 7
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/StateMachineState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_sm_addin_msgsStateMachineState :: Ros1Abb_rapid_sm_addin_msgsStateMachineState -> Either Word32 [Word8]
encodeRos1Abb_rapid_sm_addin_msgsStateMachineState value = do
    chunk0 <- W.putText 512 (ros1Abb_rapid_sm_addin_msgsStateMachineState_rapid_task value)
    chunk1 <- Right (W.putNumber 1 (ros1Abb_rapid_sm_addin_msgsStateMachineState_sm_state value))
    chunk2 <- Right (W.putNumber 1 (ros1Abb_rapid_sm_addin_msgsStateMachineState_egm_action value))
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/StateMachineState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_sm_addin_msgsStateMachineState :: W.Parser Ros1Abb_rapid_sm_addin_msgsStateMachineState
readRos1Abb_rapid_sm_addin_msgsStateMachineState = do
    value0 <- W.text 512
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    let value = Ros1Abb_rapid_sm_addin_msgsStateMachineState value0 value1 value2
    case encodeRos1Abb_rapid_sm_addin_msgsStateMachineState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/StateMachineState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_sm_addin_msgsStateMachineState :: [Word8] -> Either Word32 Ros1Abb_rapid_sm_addin_msgsStateMachineState
decodeRos1Abb_rapid_sm_addin_msgsStateMachineState bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_sm_addin_msgsStateMachineState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/RuntimeState value.
-- | @details Retain every original field in declaration order. Canonical extent 20..8372 bytes.
data Ros1Abb_rapid_sm_addin_msgsRuntimeState = Ros1Abb_rapid_sm_addin_msgsRuntimeState
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/RuntimeState.header field.
    -- | @details Original type std_msgs/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Abb_rapid_sm_addin_msgsRuntimeState_header :: Ros1Std_msgsHeader
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/RuntimeState.state_machines field.
    -- | @details Original type abb_rapid_sm_addin_msgs/StateMachineState. Shape sequence;
    -- | bound/count 16 elements. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsRuntimeState_state_machines :: [Ros1Abb_rapid_sm_addin_msgsStateMachineState]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_sm_addin_msgsRuntimeStateCodecIdentity :: String
ros1Abb_rapid_sm_addin_msgsRuntimeStateCodecIdentity = "UWVMROS1_50d7eab2eed3ce0b55160e85b44b4108d966290f6b8f126980ee452846f3660c"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/RuntimeState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_sm_addin_msgsRuntimeState :: Ros1Abb_rapid_sm_addin_msgsRuntimeState -> Either Word32 [Word8]
encodeRos1Abb_rapid_sm_addin_msgsRuntimeState value = do
    chunk0 <- encodeRos1Std_msgsHeader (ros1Abb_rapid_sm_addin_msgsRuntimeState_header value)
    if length (ros1Abb_rapid_sm_addin_msgsRuntimeState_state_machines value) <= 16 then Right () else Left 22
    item1 <- concat <$> mapM
        (\element -> encodeRos1Abb_rapid_sm_addin_msgsStateMachineState (element))
        (ros1Abb_rapid_sm_addin_msgsRuntimeState_state_machines value)
    chunk1 <- Right (W.putNumber 4 (length (ros1Abb_rapid_sm_addin_msgsRuntimeState_state_machines value)) ++ item1)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8372 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/RuntimeState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_sm_addin_msgsRuntimeState :: W.Parser Ros1Abb_rapid_sm_addin_msgsRuntimeState
readRos1Abb_rapid_sm_addin_msgsRuntimeState = do
    value0 <- readRos1Std_msgsHeader
    count1 <- W.number 4
    if count1 > 16 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (readRos1Abb_rapid_sm_addin_msgsStateMachineState)
    let value = Ros1Abb_rapid_sm_addin_msgsRuntimeState value0 value1
    case encodeRos1Abb_rapid_sm_addin_msgsRuntimeState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/RuntimeState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_sm_addin_msgsRuntimeState :: [Word8] -> Either Word32 Ros1Abb_rapid_sm_addin_msgsRuntimeState
decodeRos1Abb_rapid_sm_addin_msgsRuntimeState bytes
    | length bytes < 20 || length bytes > 8372 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_sm_addin_msgsRuntimeState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 259..835 bytes.
data Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest = Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.task field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest_task :: [Word8]
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.settings field.
    -- | @details Original type abb_rapid_sm_addin_msgs/EGMSettings. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest_settings :: Ros1Abb_rapid_sm_addin_msgsEGMSettings
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequestCodecIdentity :: String
ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequestCodecIdentity = "UWVMROS1_fe85c34f8dff2c0a547f89385d75771af13a03d997b880ab7be2eb84ea800155"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest :: Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest -> Either Word32 [Word8]
encodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest value = do
    chunk0 <- W.putText 64 (ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest_task value)
    chunk1 <- encodeRos1Abb_rapid_sm_addin_msgsEGMSettings (ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest_settings value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 835 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest :: W.Parser Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest
readRos1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest = do
    value0 <- W.text 64
    value1 <- readRos1Abb_rapid_sm_addin_msgsEGMSettings
    let value = Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest value0 value1
    case encodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest :: [Word8] -> Either Word32 Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest
decodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest bytes
    | length bytes < 259 || length bytes > 835 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse = Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse_result_code :: Word16
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponseCodecIdentity :: String
ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponseCodecIdentity = "UWVMROS1_c0d4e594a51a6cdd245ad03b6e27bbdc298c5c9fbe26cc25fa3594deef9b2591"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse :: Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse -> Either Word32 [Word8]
encodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse value = do
    chunk0 <- Right (W.putNumber 2 (ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse_result_code value))
    chunk1 <- W.putText 512 (ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse :: W.Parser Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse
readRos1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse value0 value1
    case encodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse :: [Word8] -> Either Word32 Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse
decodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 8..584 bytes.
data Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest = Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.task field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest_task :: [Word8]
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.routine field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest_routine :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequestCodecIdentity :: String
ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequestCodecIdentity = "UWVMROS1_b16ba3e98ee1d45864532b01f914746f041e49463b9330ef6056e427d199a5a3"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest :: Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest -> Either Word32 [Word8]
encodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest value = do
    chunk0 <- W.putText 64 (ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest_task value)
    chunk1 <- W.putText 512 (ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest_routine value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 584 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest :: W.Parser Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest
readRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest = do
    value0 <- W.text 64
    value1 <- W.text 512
    let value = Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest value0 value1
    case encodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest :: [Word8] -> Either Word32 Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest
decodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest bytes
    | length bytes < 8 || length bytes > 584 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse = Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse_result_code :: Word16
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponseCodecIdentity :: String
ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponseCodecIdentity = "UWVMROS1_44de2385f12a8612fa75ca7c3f97b07f22d04e920bdeca0f0bd7fed5322c680e"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse :: Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse -> Either Word32 [Word8]
encodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse value = do
    chunk0 <- Right (W.putNumber 2 (ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse_result_code value))
    chunk1 <- W.putText 512 (ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse :: W.Parser Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse
readRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse value0 value1
    case encodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse :: [Word8] -> Either Word32 Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse
decodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/SetSGCommandRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 9..73 bytes.
data Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest = Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.task field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_task :: [Word8]
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.command field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_command :: Word8
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.target_position field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_target_position :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodecIdentity :: String
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodecIdentity = "UWVMROS1_e39d7fee66c1efb9ea963216823f6e10bd632d78634d8c47f3283a1a1779f0c2"
-- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_UNKNOWN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_UNKNOWN :: Word8
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_UNKNOWN = 1
-- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_NONE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_NONE :: Word8
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_NONE = 2
-- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_INITIALIZE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_INITIALIZE :: Word8
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_INITIALIZE = 3
-- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_CALIBRATE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_CALIBRATE :: Word8
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_CALIBRATE = 4
-- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_MOVE_TO constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_MOVE_TO :: Word8
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_MOVE_TO = 5
-- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_GRIP_IN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_GRIP_IN :: Word8
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_GRIP_IN = 6
-- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_GRIP_OUT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_GRIP_OUT :: Word8
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_GRIP_OUT = 7
-- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_ON_1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_BLOW_ON_1 :: Word8
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_BLOW_ON_1 = 8
-- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_ON_2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_BLOW_ON_2 :: Word8
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_BLOW_ON_2 = 9
-- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_OFF_1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_BLOW_OFF_1 :: Word8
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_BLOW_OFF_1 = 10
-- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_OFF_2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_BLOW_OFF_2 :: Word8
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_BLOW_OFF_2 = 11
-- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_ON_1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_VACUUM_ON_1 :: Word8
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_VACUUM_ON_1 = 12
-- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_ON_2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_VACUUM_ON_2 :: Word8
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_VACUUM_ON_2 = 13
-- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_OFF_1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_VACUUM_OFF_1 :: Word8
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_VACUUM_OFF_1 = 14
-- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_OFF_2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_VACUUM_OFF_2 :: Word8
ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_VACUUM_OFF_2 = 15
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetSGCommandRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_sm_addin_msgsSetSGCommandRequest :: Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest -> Either Word32 [Word8]
encodeRos1Abb_rapid_sm_addin_msgsSetSGCommandRequest value = do
    chunk0 <- W.putText 64 (ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_task value)
    chunk1 <- Right (W.putNumber 1 (ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_command value))
    chunk2 <- finite4 (ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_target_position value) castFloatToWord32
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 73 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/SetSGCommandRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_sm_addin_msgsSetSGCommandRequest :: W.Parser Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest
readRos1Abb_rapid_sm_addin_msgsSetSGCommandRequest = do
    value0 <- W.text 64
    value1 <- fromIntegral <$> W.number 1
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest value0 value1 value2
    case encodeRos1Abb_rapid_sm_addin_msgsSetSGCommandRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/SetSGCommandRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_sm_addin_msgsSetSGCommandRequest :: [Word8] -> Either Word32 Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest
decodeRos1Abb_rapid_sm_addin_msgsSetSGCommandRequest bytes
    | length bytes < 9 || length bytes > 73 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_sm_addin_msgsSetSGCommandRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_rapid_sm_addin_msgs/SetSGCommandResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse = Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse
    {
    -- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse_result_code :: Word16
    ,
    -- | @brief Original abb_rapid_sm_addin_msgs/SetSGCommandResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_rapid_sm_addin_msgsSetSGCommandResponseCodecIdentity :: String
ros1Abb_rapid_sm_addin_msgsSetSGCommandResponseCodecIdentity = "UWVMROS1_2f22b2098d86dd0764277247eb7f64dccecebf0cddce85654b01c1928eb9c192"
-- | @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetSGCommandResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_rapid_sm_addin_msgsSetSGCommandResponse :: Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse -> Either Word32 [Word8]
encodeRos1Abb_rapid_sm_addin_msgsSetSGCommandResponse value = do
    chunk0 <- Right (W.putNumber 2 (ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse_result_code value))
    chunk1 <- W.putText 512 (ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_rapid_sm_addin_msgs/SetSGCommandResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_rapid_sm_addin_msgsSetSGCommandResponse :: W.Parser Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse
readRos1Abb_rapid_sm_addin_msgsSetSGCommandResponse = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse value0 value1
    case encodeRos1Abb_rapid_sm_addin_msgsSetSGCommandResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_rapid_sm_addin_msgs/SetSGCommandResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_rapid_sm_addin_msgsSetSGCommandResponse :: [Word8] -> Either Word32 Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse
decodeRos1Abb_rapid_sm_addin_msgsSetSGCommandResponse bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_rapid_sm_addin_msgsSetSGCommandResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetFileContentsRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 4..516 bytes.
data Ros1Abb_robot_msgsGetFileContentsRequest = Ros1Abb_robot_msgsGetFileContentsRequest
    {
    -- | @brief Original abb_robot_msgs/GetFileContentsRequest.filename field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsGetFileContentsRequest_filename :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetFileContentsRequestCodecIdentity :: String
ros1Abb_robot_msgsGetFileContentsRequestCodecIdentity = "UWVMROS1_75f5802b385cc1efb524fadea657fda1d5cc4298c5720222d33cd3dd39656f21"
-- | @brief Encode every field of complete abb_robot_msgs/GetFileContentsRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetFileContentsRequest :: Ros1Abb_robot_msgsGetFileContentsRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetFileContentsRequest value = do
    chunk0 <- W.putText 512 (ros1Abb_robot_msgsGetFileContentsRequest_filename value)
    let bytes = concat [chunk0]
    if length bytes > 516 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetFileContentsRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetFileContentsRequest :: W.Parser Ros1Abb_robot_msgsGetFileContentsRequest
readRos1Abb_robot_msgsGetFileContentsRequest = do
    value0 <- W.text 512
    let value = Ros1Abb_robot_msgsGetFileContentsRequest value0
    case encodeRos1Abb_robot_msgsGetFileContentsRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetFileContentsRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetFileContentsRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetFileContentsRequest
decodeRos1Abb_robot_msgsGetFileContentsRequest bytes
    | length bytes < 4 || length bytes > 516 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetFileContentsRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetFileContentsResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 10..4618 bytes.
data Ros1Abb_robot_msgsGetFileContentsResponse = Ros1Abb_robot_msgsGetFileContentsResponse
    {
    -- | @brief Original abb_robot_msgs/GetFileContentsResponse.contents field.
    -- | @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsGetFileContentsResponse_contents :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/GetFileContentsResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsGetFileContentsResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/GetFileContentsResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsGetFileContentsResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetFileContentsResponseCodecIdentity :: String
ros1Abb_robot_msgsGetFileContentsResponseCodecIdentity = "UWVMROS1_693b53ed168f81a7c93ac8083977c4f8bd6f4a3999d079f5b47029699ba68fdb"
-- | @brief Encode every field of complete abb_robot_msgs/GetFileContentsResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetFileContentsResponse :: Ros1Abb_robot_msgsGetFileContentsResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetFileContentsResponse value = do
    chunk0 <- W.putText 4096 (ros1Abb_robot_msgsGetFileContentsResponse_contents value)
    chunk1 <- Right (W.putNumber 2 (ros1Abb_robot_msgsGetFileContentsResponse_result_code value))
    chunk2 <- W.putText 512 (ros1Abb_robot_msgsGetFileContentsResponse_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 4618 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetFileContentsResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetFileContentsResponse :: W.Parser Ros1Abb_robot_msgsGetFileContentsResponse
readRos1Abb_robot_msgsGetFileContentsResponse = do
    value0 <- W.text 4096
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros1Abb_robot_msgsGetFileContentsResponse value0 value1 value2
    case encodeRos1Abb_robot_msgsGetFileContentsResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetFileContentsResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetFileContentsResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetFileContentsResponse
decodeRos1Abb_robot_msgsGetFileContentsResponse bytes
    | length bytes < 10 || length bytes > 4618 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetFileContentsResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetIOSignalRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 4..516 bytes.
data Ros1Abb_robot_msgsGetIOSignalRequest = Ros1Abb_robot_msgsGetIOSignalRequest
    {
    -- | @brief Original abb_robot_msgs/GetIOSignalRequest.signal field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsGetIOSignalRequest_signal :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetIOSignalRequestCodecIdentity :: String
ros1Abb_robot_msgsGetIOSignalRequestCodecIdentity = "UWVMROS1_d98f7577756b476cac0dd325d45f333fcd2b735df7dce58fb660790b5a91f83b"
-- | @brief Encode every field of complete abb_robot_msgs/GetIOSignalRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetIOSignalRequest :: Ros1Abb_robot_msgsGetIOSignalRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetIOSignalRequest value = do
    chunk0 <- W.putText 512 (ros1Abb_robot_msgsGetIOSignalRequest_signal value)
    let bytes = concat [chunk0]
    if length bytes > 516 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetIOSignalRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetIOSignalRequest :: W.Parser Ros1Abb_robot_msgsGetIOSignalRequest
readRos1Abb_robot_msgsGetIOSignalRequest = do
    value0 <- W.text 512
    let value = Ros1Abb_robot_msgsGetIOSignalRequest value0
    case encodeRos1Abb_robot_msgsGetIOSignalRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetIOSignalRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetIOSignalRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetIOSignalRequest
decodeRos1Abb_robot_msgsGetIOSignalRequest bytes
    | length bytes < 4 || length bytes > 516 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetIOSignalRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetIOSignalResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 10..1034 bytes.
data Ros1Abb_robot_msgsGetIOSignalResponse = Ros1Abb_robot_msgsGetIOSignalResponse
    {
    -- | @brief Original abb_robot_msgs/GetIOSignalResponse.value field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsGetIOSignalResponse_value :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/GetIOSignalResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsGetIOSignalResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/GetIOSignalResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsGetIOSignalResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetIOSignalResponseCodecIdentity :: String
ros1Abb_robot_msgsGetIOSignalResponseCodecIdentity = "UWVMROS1_10a66146c4815b0d758ec81dde1c552695c97a8727ee995299018b23f129d79e"
-- | @brief Encode every field of complete abb_robot_msgs/GetIOSignalResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetIOSignalResponse :: Ros1Abb_robot_msgsGetIOSignalResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetIOSignalResponse value = do
    chunk0 <- W.putText 512 (ros1Abb_robot_msgsGetIOSignalResponse_value value)
    chunk1 <- Right (W.putNumber 2 (ros1Abb_robot_msgsGetIOSignalResponse_result_code value))
    chunk2 <- W.putText 512 (ros1Abb_robot_msgsGetIOSignalResponse_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 1034 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetIOSignalResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetIOSignalResponse :: W.Parser Ros1Abb_robot_msgsGetIOSignalResponse
readRos1Abb_robot_msgsGetIOSignalResponse = do
    value0 <- W.text 512
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros1Abb_robot_msgsGetIOSignalResponse value0 value1 value2
    case encodeRos1Abb_robot_msgsGetIOSignalResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetIOSignalResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetIOSignalResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetIOSignalResponse
decodeRos1Abb_robot_msgsGetIOSignalResponse bytes
    | length bytes < 10 || length bytes > 1034 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetIOSignalResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/RAPIDSymbolPath value.
-- | @details Retain every original field in declaration order. Canonical extent 12..204 bytes.
data Ros1Abb_robot_msgsRAPIDSymbolPath = Ros1Abb_robot_msgsRAPIDSymbolPath
    {
    -- | @brief Original abb_robot_msgs/RAPIDSymbolPath.task field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Abb_robot_msgsRAPIDSymbolPath_task :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/RAPIDSymbolPath.module field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Abb_robot_msgsRAPIDSymbolPath_module :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/RAPIDSymbolPath.symbol field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Abb_robot_msgsRAPIDSymbolPath_symbol :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsRAPIDSymbolPathCodecIdentity :: String
ros1Abb_robot_msgsRAPIDSymbolPathCodecIdentity = "UWVMROS1_07308d9ce1e71a02f5cc3546cdbaaa0b24a06534a55aa3ee3354b498038faad2"
-- | @brief Encode every field of complete abb_robot_msgs/RAPIDSymbolPath.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsRAPIDSymbolPath :: Ros1Abb_robot_msgsRAPIDSymbolPath -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsRAPIDSymbolPath value = do
    chunk0 <- W.putText 64 (ros1Abb_robot_msgsRAPIDSymbolPath_task value)
    chunk1 <- W.putText 64 (ros1Abb_robot_msgsRAPIDSymbolPath_module value)
    chunk2 <- W.putText 64 (ros1Abb_robot_msgsRAPIDSymbolPath_symbol value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 204 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/RAPIDSymbolPath.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsRAPIDSymbolPath :: W.Parser Ros1Abb_robot_msgsRAPIDSymbolPath
readRos1Abb_robot_msgsRAPIDSymbolPath = do
    value0 <- W.text 64
    value1 <- W.text 64
    value2 <- W.text 64
    let value = Ros1Abb_robot_msgsRAPIDSymbolPath value0 value1 value2
    case encodeRos1Abb_robot_msgsRAPIDSymbolPath value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/RAPIDSymbolPath.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsRAPIDSymbolPath :: [Word8] -> Either Word32 Ros1Abb_robot_msgsRAPIDSymbolPath
decodeRos1Abb_robot_msgsRAPIDSymbolPath bytes
    | length bytes < 12 || length bytes > 204 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsRAPIDSymbolPath bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetRAPIDBoolRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 12..204 bytes.
data Ros1Abb_robot_msgsGetRAPIDBoolRequest = Ros1Abb_robot_msgsGetRAPIDBoolRequest
    {
    -- | @brief Original abb_robot_msgs/GetRAPIDBoolRequest.path field.
    -- | @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Abb_robot_msgsGetRAPIDBoolRequest_path :: Ros1Abb_robot_msgsRAPIDSymbolPath
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetRAPIDBoolRequestCodecIdentity :: String
ros1Abb_robot_msgsGetRAPIDBoolRequestCodecIdentity = "UWVMROS1_46e49c0d6796175d0c56460dd4c7d2557deaa8db4f1a3bec40b53636d3b44b96"
-- | @brief Encode every field of complete abb_robot_msgs/GetRAPIDBoolRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetRAPIDBoolRequest :: Ros1Abb_robot_msgsGetRAPIDBoolRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetRAPIDBoolRequest value = do
    chunk0 <- encodeRos1Abb_robot_msgsRAPIDSymbolPath (ros1Abb_robot_msgsGetRAPIDBoolRequest_path value)
    let bytes = concat [chunk0]
    if length bytes > 204 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetRAPIDBoolRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetRAPIDBoolRequest :: W.Parser Ros1Abb_robot_msgsGetRAPIDBoolRequest
readRos1Abb_robot_msgsGetRAPIDBoolRequest = do
    value0 <- readRos1Abb_robot_msgsRAPIDSymbolPath
    let value = Ros1Abb_robot_msgsGetRAPIDBoolRequest value0
    case encodeRos1Abb_robot_msgsGetRAPIDBoolRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetRAPIDBoolRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetRAPIDBoolRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetRAPIDBoolRequest
decodeRos1Abb_robot_msgsGetRAPIDBoolRequest bytes
    | length bytes < 12 || length bytes > 204 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetRAPIDBoolRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetRAPIDBoolResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 7..519 bytes.
data Ros1Abb_robot_msgsGetRAPIDBoolResponse = Ros1Abb_robot_msgsGetRAPIDBoolResponse
    {
    -- | @brief Original abb_robot_msgs/GetRAPIDBoolResponse.value field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsGetRAPIDBoolResponse_value :: Bool
    ,
    -- | @brief Original abb_robot_msgs/GetRAPIDBoolResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsGetRAPIDBoolResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/GetRAPIDBoolResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsGetRAPIDBoolResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetRAPIDBoolResponseCodecIdentity :: String
ros1Abb_robot_msgsGetRAPIDBoolResponseCodecIdentity = "UWVMROS1_bfe21e95cb79f1d9bc1bc1dc2f61c744a2a7dc49e5a5ed07b6c8619344b97b3f"
-- | @brief Encode every field of complete abb_robot_msgs/GetRAPIDBoolResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetRAPIDBoolResponse :: Ros1Abb_robot_msgsGetRAPIDBoolResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetRAPIDBoolResponse value = do
    chunk0 <- Right (W.putBool (ros1Abb_robot_msgsGetRAPIDBoolResponse_value value))
    chunk1 <- Right (W.putNumber 2 (ros1Abb_robot_msgsGetRAPIDBoolResponse_result_code value))
    chunk2 <- W.putText 512 (ros1Abb_robot_msgsGetRAPIDBoolResponse_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 519 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetRAPIDBoolResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetRAPIDBoolResponse :: W.Parser Ros1Abb_robot_msgsGetRAPIDBoolResponse
readRos1Abb_robot_msgsGetRAPIDBoolResponse = do
    value0 <- W.boolean
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros1Abb_robot_msgsGetRAPIDBoolResponse value0 value1 value2
    case encodeRos1Abb_robot_msgsGetRAPIDBoolResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetRAPIDBoolResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetRAPIDBoolResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetRAPIDBoolResponse
decodeRos1Abb_robot_msgsGetRAPIDBoolResponse bytes
    | length bytes < 7 || length bytes > 519 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetRAPIDBoolResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetRAPIDDnumRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 12..204 bytes.
data Ros1Abb_robot_msgsGetRAPIDDnumRequest = Ros1Abb_robot_msgsGetRAPIDDnumRequest
    {
    -- | @brief Original abb_robot_msgs/GetRAPIDDnumRequest.path field.
    -- | @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Abb_robot_msgsGetRAPIDDnumRequest_path :: Ros1Abb_robot_msgsRAPIDSymbolPath
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetRAPIDDnumRequestCodecIdentity :: String
ros1Abb_robot_msgsGetRAPIDDnumRequestCodecIdentity = "UWVMROS1_9058d8774de0da657344a00d75a7f75878da2b0453bf25708bc8ed7f45c90c9d"
-- | @brief Encode every field of complete abb_robot_msgs/GetRAPIDDnumRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetRAPIDDnumRequest :: Ros1Abb_robot_msgsGetRAPIDDnumRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetRAPIDDnumRequest value = do
    chunk0 <- encodeRos1Abb_robot_msgsRAPIDSymbolPath (ros1Abb_robot_msgsGetRAPIDDnumRequest_path value)
    let bytes = concat [chunk0]
    if length bytes > 204 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetRAPIDDnumRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetRAPIDDnumRequest :: W.Parser Ros1Abb_robot_msgsGetRAPIDDnumRequest
readRos1Abb_robot_msgsGetRAPIDDnumRequest = do
    value0 <- readRos1Abb_robot_msgsRAPIDSymbolPath
    let value = Ros1Abb_robot_msgsGetRAPIDDnumRequest value0
    case encodeRos1Abb_robot_msgsGetRAPIDDnumRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetRAPIDDnumRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetRAPIDDnumRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetRAPIDDnumRequest
decodeRos1Abb_robot_msgsGetRAPIDDnumRequest bytes
    | length bytes < 12 || length bytes > 204 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetRAPIDDnumRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetRAPIDDnumResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 14..526 bytes.
data Ros1Abb_robot_msgsGetRAPIDDnumResponse = Ros1Abb_robot_msgsGetRAPIDDnumResponse
    {
    -- | @brief Original abb_robot_msgs/GetRAPIDDnumResponse.value field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsGetRAPIDDnumResponse_value :: Double
    ,
    -- | @brief Original abb_robot_msgs/GetRAPIDDnumResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsGetRAPIDDnumResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/GetRAPIDDnumResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsGetRAPIDDnumResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetRAPIDDnumResponseCodecIdentity :: String
ros1Abb_robot_msgsGetRAPIDDnumResponseCodecIdentity = "UWVMROS1_9c209b4b12d733e33b76cc33ae93b6d561ce1eb7f8864429a56bd073317a01b3"
-- | @brief Encode every field of complete abb_robot_msgs/GetRAPIDDnumResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetRAPIDDnumResponse :: Ros1Abb_robot_msgsGetRAPIDDnumResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetRAPIDDnumResponse value = do
    chunk0 <- finite8 (ros1Abb_robot_msgsGetRAPIDDnumResponse_value value) castDoubleToWord64
    chunk1 <- Right (W.putNumber 2 (ros1Abb_robot_msgsGetRAPIDDnumResponse_result_code value))
    chunk2 <- W.putText 512 (ros1Abb_robot_msgsGetRAPIDDnumResponse_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 526 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetRAPIDDnumResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetRAPIDDnumResponse :: W.Parser Ros1Abb_robot_msgsGetRAPIDDnumResponse
readRos1Abb_robot_msgsGetRAPIDDnumResponse = do
    value0 <- castWord64ToDouble <$> W.number 8
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros1Abb_robot_msgsGetRAPIDDnumResponse value0 value1 value2
    case encodeRos1Abb_robot_msgsGetRAPIDDnumResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetRAPIDDnumResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetRAPIDDnumResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetRAPIDDnumResponse
decodeRos1Abb_robot_msgsGetRAPIDDnumResponse bytes
    | length bytes < 14 || length bytes > 526 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetRAPIDDnumResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetRAPIDNumRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 12..204 bytes.
data Ros1Abb_robot_msgsGetRAPIDNumRequest = Ros1Abb_robot_msgsGetRAPIDNumRequest
    {
    -- | @brief Original abb_robot_msgs/GetRAPIDNumRequest.path field.
    -- | @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Abb_robot_msgsGetRAPIDNumRequest_path :: Ros1Abb_robot_msgsRAPIDSymbolPath
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetRAPIDNumRequestCodecIdentity :: String
ros1Abb_robot_msgsGetRAPIDNumRequestCodecIdentity = "UWVMROS1_a316395c8a19b7c0a9c3a555e625fffc7d647c7b567f38c53b1c3735b50ee910"
-- | @brief Encode every field of complete abb_robot_msgs/GetRAPIDNumRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetRAPIDNumRequest :: Ros1Abb_robot_msgsGetRAPIDNumRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetRAPIDNumRequest value = do
    chunk0 <- encodeRos1Abb_robot_msgsRAPIDSymbolPath (ros1Abb_robot_msgsGetRAPIDNumRequest_path value)
    let bytes = concat [chunk0]
    if length bytes > 204 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetRAPIDNumRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetRAPIDNumRequest :: W.Parser Ros1Abb_robot_msgsGetRAPIDNumRequest
readRos1Abb_robot_msgsGetRAPIDNumRequest = do
    value0 <- readRos1Abb_robot_msgsRAPIDSymbolPath
    let value = Ros1Abb_robot_msgsGetRAPIDNumRequest value0
    case encodeRos1Abb_robot_msgsGetRAPIDNumRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetRAPIDNumRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetRAPIDNumRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetRAPIDNumRequest
decodeRos1Abb_robot_msgsGetRAPIDNumRequest bytes
    | length bytes < 12 || length bytes > 204 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetRAPIDNumRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetRAPIDNumResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 10..522 bytes.
data Ros1Abb_robot_msgsGetRAPIDNumResponse = Ros1Abb_robot_msgsGetRAPIDNumResponse
    {
    -- | @brief Original abb_robot_msgs/GetRAPIDNumResponse.value field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsGetRAPIDNumResponse_value :: Float
    ,
    -- | @brief Original abb_robot_msgs/GetRAPIDNumResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsGetRAPIDNumResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/GetRAPIDNumResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsGetRAPIDNumResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetRAPIDNumResponseCodecIdentity :: String
ros1Abb_robot_msgsGetRAPIDNumResponseCodecIdentity = "UWVMROS1_1573cba9a9046a6b304a49e3a77266fa0d6f615d2ea9a24692c25616970fd9b0"
-- | @brief Encode every field of complete abb_robot_msgs/GetRAPIDNumResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetRAPIDNumResponse :: Ros1Abb_robot_msgsGetRAPIDNumResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetRAPIDNumResponse value = do
    chunk0 <- finite4 (ros1Abb_robot_msgsGetRAPIDNumResponse_value value) castFloatToWord32
    chunk1 <- Right (W.putNumber 2 (ros1Abb_robot_msgsGetRAPIDNumResponse_result_code value))
    chunk2 <- W.putText 512 (ros1Abb_robot_msgsGetRAPIDNumResponse_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 522 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetRAPIDNumResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetRAPIDNumResponse :: W.Parser Ros1Abb_robot_msgsGetRAPIDNumResponse
readRos1Abb_robot_msgsGetRAPIDNumResponse = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros1Abb_robot_msgsGetRAPIDNumResponse value0 value1 value2
    case encodeRos1Abb_robot_msgsGetRAPIDNumResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetRAPIDNumResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetRAPIDNumResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetRAPIDNumResponse
decodeRos1Abb_robot_msgsGetRAPIDNumResponse bytes
    | length bytes < 10 || length bytes > 522 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetRAPIDNumResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetRAPIDStringRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 12..204 bytes.
data Ros1Abb_robot_msgsGetRAPIDStringRequest = Ros1Abb_robot_msgsGetRAPIDStringRequest
    {
    -- | @brief Original abb_robot_msgs/GetRAPIDStringRequest.path field.
    -- | @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Abb_robot_msgsGetRAPIDStringRequest_path :: Ros1Abb_robot_msgsRAPIDSymbolPath
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetRAPIDStringRequestCodecIdentity :: String
ros1Abb_robot_msgsGetRAPIDStringRequestCodecIdentity = "UWVMROS1_56514142e9e064aa43d09078b49ed8ee0366189727c35a9bc130b35007da4c9c"
-- | @brief Encode every field of complete abb_robot_msgs/GetRAPIDStringRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetRAPIDStringRequest :: Ros1Abb_robot_msgsGetRAPIDStringRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetRAPIDStringRequest value = do
    chunk0 <- encodeRos1Abb_robot_msgsRAPIDSymbolPath (ros1Abb_robot_msgsGetRAPIDStringRequest_path value)
    let bytes = concat [chunk0]
    if length bytes > 204 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetRAPIDStringRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetRAPIDStringRequest :: W.Parser Ros1Abb_robot_msgsGetRAPIDStringRequest
readRos1Abb_robot_msgsGetRAPIDStringRequest = do
    value0 <- readRos1Abb_robot_msgsRAPIDSymbolPath
    let value = Ros1Abb_robot_msgsGetRAPIDStringRequest value0
    case encodeRos1Abb_robot_msgsGetRAPIDStringRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetRAPIDStringRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetRAPIDStringRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetRAPIDStringRequest
decodeRos1Abb_robot_msgsGetRAPIDStringRequest bytes
    | length bytes < 12 || length bytes > 204 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetRAPIDStringRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetRAPIDStringResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 10..1034 bytes.
data Ros1Abb_robot_msgsGetRAPIDStringResponse = Ros1Abb_robot_msgsGetRAPIDStringResponse
    {
    -- | @brief Original abb_robot_msgs/GetRAPIDStringResponse.value field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsGetRAPIDStringResponse_value :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/GetRAPIDStringResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsGetRAPIDStringResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/GetRAPIDStringResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsGetRAPIDStringResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetRAPIDStringResponseCodecIdentity :: String
ros1Abb_robot_msgsGetRAPIDStringResponseCodecIdentity = "UWVMROS1_d1188827af3c307a721f8128b6f14fa6020f3187afce8a4162ce6562cdd1c854"
-- | @brief Encode every field of complete abb_robot_msgs/GetRAPIDStringResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetRAPIDStringResponse :: Ros1Abb_robot_msgsGetRAPIDStringResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetRAPIDStringResponse value = do
    chunk0 <- W.putText 512 (ros1Abb_robot_msgsGetRAPIDStringResponse_value value)
    chunk1 <- Right (W.putNumber 2 (ros1Abb_robot_msgsGetRAPIDStringResponse_result_code value))
    chunk2 <- W.putText 512 (ros1Abb_robot_msgsGetRAPIDStringResponse_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 1034 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetRAPIDStringResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetRAPIDStringResponse :: W.Parser Ros1Abb_robot_msgsGetRAPIDStringResponse
readRos1Abb_robot_msgsGetRAPIDStringResponse = do
    value0 <- W.text 512
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros1Abb_robot_msgsGetRAPIDStringResponse value0 value1 value2
    case encodeRos1Abb_robot_msgsGetRAPIDStringResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetRAPIDStringResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetRAPIDStringResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetRAPIDStringResponse
decodeRos1Abb_robot_msgsGetRAPIDStringResponse bytes
    | length bytes < 10 || length bytes > 1034 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetRAPIDStringResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetRAPIDSymbolRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 12..204 bytes.
data Ros1Abb_robot_msgsGetRAPIDSymbolRequest = Ros1Abb_robot_msgsGetRAPIDSymbolRequest
    {
    -- | @brief Original abb_robot_msgs/GetRAPIDSymbolRequest.path field.
    -- | @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Abb_robot_msgsGetRAPIDSymbolRequest_path :: Ros1Abb_robot_msgsRAPIDSymbolPath
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetRAPIDSymbolRequestCodecIdentity :: String
ros1Abb_robot_msgsGetRAPIDSymbolRequestCodecIdentity = "UWVMROS1_31302ad912a8ff39b56a429bc9dae22cbfc2c2101b8cd05162d00d9206aecf5b"
-- | @brief Encode every field of complete abb_robot_msgs/GetRAPIDSymbolRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetRAPIDSymbolRequest :: Ros1Abb_robot_msgsGetRAPIDSymbolRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetRAPIDSymbolRequest value = do
    chunk0 <- encodeRos1Abb_robot_msgsRAPIDSymbolPath (ros1Abb_robot_msgsGetRAPIDSymbolRequest_path value)
    let bytes = concat [chunk0]
    if length bytes > 204 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetRAPIDSymbolRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetRAPIDSymbolRequest :: W.Parser Ros1Abb_robot_msgsGetRAPIDSymbolRequest
readRos1Abb_robot_msgsGetRAPIDSymbolRequest = do
    value0 <- readRos1Abb_robot_msgsRAPIDSymbolPath
    let value = Ros1Abb_robot_msgsGetRAPIDSymbolRequest value0
    case encodeRos1Abb_robot_msgsGetRAPIDSymbolRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetRAPIDSymbolRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetRAPIDSymbolRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetRAPIDSymbolRequest
decodeRos1Abb_robot_msgsGetRAPIDSymbolRequest bytes
    | length bytes < 12 || length bytes > 204 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetRAPIDSymbolRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetRAPIDSymbolResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 10..1034 bytes.
data Ros1Abb_robot_msgsGetRAPIDSymbolResponse = Ros1Abb_robot_msgsGetRAPIDSymbolResponse
    {
    -- | @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.value field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsGetRAPIDSymbolResponse_value :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsGetRAPIDSymbolResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsGetRAPIDSymbolResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetRAPIDSymbolResponseCodecIdentity :: String
ros1Abb_robot_msgsGetRAPIDSymbolResponseCodecIdentity = "UWVMROS1_182dc465ea5fb9543791b6fb76520313cee1ed472ab0296c8ef7a9ed3d4d110f"
-- | @brief Encode every field of complete abb_robot_msgs/GetRAPIDSymbolResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetRAPIDSymbolResponse :: Ros1Abb_robot_msgsGetRAPIDSymbolResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetRAPIDSymbolResponse value = do
    chunk0 <- W.putText 512 (ros1Abb_robot_msgsGetRAPIDSymbolResponse_value value)
    chunk1 <- Right (W.putNumber 2 (ros1Abb_robot_msgsGetRAPIDSymbolResponse_result_code value))
    chunk2 <- W.putText 512 (ros1Abb_robot_msgsGetRAPIDSymbolResponse_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 1034 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetRAPIDSymbolResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetRAPIDSymbolResponse :: W.Parser Ros1Abb_robot_msgsGetRAPIDSymbolResponse
readRos1Abb_robot_msgsGetRAPIDSymbolResponse = do
    value0 <- W.text 512
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros1Abb_robot_msgsGetRAPIDSymbolResponse value0 value1 value2
    case encodeRos1Abb_robot_msgsGetRAPIDSymbolResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetRAPIDSymbolResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetRAPIDSymbolResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetRAPIDSymbolResponse
decodeRos1Abb_robot_msgsGetRAPIDSymbolResponse bytes
    | length bytes < 10 || length bytes > 1034 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetRAPIDSymbolResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetRobotControllerDescriptionRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest = Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetRobotControllerDescriptionRequestCodecIdentity :: String
ros1Abb_robot_msgsGetRobotControllerDescriptionRequestCodecIdentity = "UWVMROS1_bc5f87f4d0f33cbc640c8188fbb15c9b0f43b3067f2406700d6f5bd2475089b6"
-- | @brief Encode every field of complete abb_robot_msgs/GetRobotControllerDescriptionRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetRobotControllerDescriptionRequest :: Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetRobotControllerDescriptionRequest value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetRobotControllerDescriptionRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetRobotControllerDescriptionRequest :: W.Parser Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest
readRos1Abb_robot_msgsGetRobotControllerDescriptionRequest = do
    let value = Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest 
    case encodeRos1Abb_robot_msgsGetRobotControllerDescriptionRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetRobotControllerDescriptionRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetRobotControllerDescriptionRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest
decodeRos1Abb_robot_msgsGetRobotControllerDescriptionRequest bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetRobotControllerDescriptionRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetRobotControllerDescriptionResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 10..4618 bytes.
data Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse = Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse
    {
    -- | @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.description field.
    -- | @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsGetRobotControllerDescriptionResponse_description :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsGetRobotControllerDescriptionResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsGetRobotControllerDescriptionResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetRobotControllerDescriptionResponseCodecIdentity :: String
ros1Abb_robot_msgsGetRobotControllerDescriptionResponseCodecIdentity = "UWVMROS1_7db41283fbe12a010e526b87d77a5bb7faecdf85595ef2dc13f14bfed56b6e39"
-- | @brief Encode every field of complete abb_robot_msgs/GetRobotControllerDescriptionResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetRobotControllerDescriptionResponse :: Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetRobotControllerDescriptionResponse value = do
    chunk0 <- W.putText 4096 (ros1Abb_robot_msgsGetRobotControllerDescriptionResponse_description value)
    chunk1 <- Right (W.putNumber 2 (ros1Abb_robot_msgsGetRobotControllerDescriptionResponse_result_code value))
    chunk2 <- W.putText 512 (ros1Abb_robot_msgsGetRobotControllerDescriptionResponse_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 4618 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetRobotControllerDescriptionResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetRobotControllerDescriptionResponse :: W.Parser Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse
readRos1Abb_robot_msgsGetRobotControllerDescriptionResponse = do
    value0 <- W.text 4096
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse value0 value1 value2
    case encodeRos1Abb_robot_msgsGetRobotControllerDescriptionResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetRobotControllerDescriptionResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetRobotControllerDescriptionResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse
decodeRos1Abb_robot_msgsGetRobotControllerDescriptionResponse bytes
    | length bytes < 10 || length bytes > 4618 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetRobotControllerDescriptionResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetSpeedRatioRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros1Abb_robot_msgsGetSpeedRatioRequest = Ros1Abb_robot_msgsGetSpeedRatioRequest
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetSpeedRatioRequestCodecIdentity :: String
ros1Abb_robot_msgsGetSpeedRatioRequestCodecIdentity = "UWVMROS1_82230aebf6fa923e09bcd413ecb3b4803a6f1cfd3e8334e0ce0c496b73008373"
-- | @brief Encode every field of complete abb_robot_msgs/GetSpeedRatioRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetSpeedRatioRequest :: Ros1Abb_robot_msgsGetSpeedRatioRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetSpeedRatioRequest value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetSpeedRatioRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetSpeedRatioRequest :: W.Parser Ros1Abb_robot_msgsGetSpeedRatioRequest
readRos1Abb_robot_msgsGetSpeedRatioRequest = do
    let value = Ros1Abb_robot_msgsGetSpeedRatioRequest 
    case encodeRos1Abb_robot_msgsGetSpeedRatioRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetSpeedRatioRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetSpeedRatioRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetSpeedRatioRequest
decodeRos1Abb_robot_msgsGetSpeedRatioRequest bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetSpeedRatioRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/GetSpeedRatioResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 7..519 bytes.
data Ros1Abb_robot_msgsGetSpeedRatioResponse = Ros1Abb_robot_msgsGetSpeedRatioResponse
    {
    -- | @brief Original abb_robot_msgs/GetSpeedRatioResponse.speed_ratio field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsGetSpeedRatioResponse_speed_ratio :: Word8
    ,
    -- | @brief Original abb_robot_msgs/GetSpeedRatioResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsGetSpeedRatioResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/GetSpeedRatioResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsGetSpeedRatioResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsGetSpeedRatioResponseCodecIdentity :: String
ros1Abb_robot_msgsGetSpeedRatioResponseCodecIdentity = "UWVMROS1_7784360ddafa1b8ad9626fde0afa2b2335f6a294507036c3aee953df99e91940"
-- | @brief Encode every field of complete abb_robot_msgs/GetSpeedRatioResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsGetSpeedRatioResponse :: Ros1Abb_robot_msgsGetSpeedRatioResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsGetSpeedRatioResponse value = do
    chunk0 <- Right (W.putNumber 1 (ros1Abb_robot_msgsGetSpeedRatioResponse_speed_ratio value))
    chunk1 <- Right (W.putNumber 2 (ros1Abb_robot_msgsGetSpeedRatioResponse_result_code value))
    chunk2 <- W.putText 512 (ros1Abb_robot_msgsGetSpeedRatioResponse_message value)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 519 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/GetSpeedRatioResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsGetSpeedRatioResponse :: W.Parser Ros1Abb_robot_msgsGetSpeedRatioResponse
readRos1Abb_robot_msgsGetSpeedRatioResponse = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- fromIntegral <$> W.number 2
    value2 <- W.text 512
    let value = Ros1Abb_robot_msgsGetSpeedRatioResponse value0 value1 value2
    case encodeRos1Abb_robot_msgsGetSpeedRatioResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/GetSpeedRatioResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsGetSpeedRatioResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsGetSpeedRatioResponse
decodeRos1Abb_robot_msgsGetSpeedRatioResponse bytes
    | length bytes < 7 || length bytes > 519 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsGetSpeedRatioResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/MechanicalUnitState value.
-- | @details Retain every original field in declaration order. Canonical extent 5..69 bytes.
data Ros1Abb_robot_msgsMechanicalUnitState = Ros1Abb_robot_msgsMechanicalUnitState
    {
    -- | @brief Original abb_robot_msgs/MechanicalUnitState.name field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Abb_robot_msgsMechanicalUnitState_name :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/MechanicalUnitState.activated field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsMechanicalUnitState_activated :: Bool
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsMechanicalUnitStateCodecIdentity :: String
ros1Abb_robot_msgsMechanicalUnitStateCodecIdentity = "UWVMROS1_872cc6e8bdf32426bb9e24322c951452aab6ebcbc1f2998f4fb19c34abece8fa"
-- | @brief Encode every field of complete abb_robot_msgs/MechanicalUnitState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsMechanicalUnitState :: Ros1Abb_robot_msgsMechanicalUnitState -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsMechanicalUnitState value = do
    chunk0 <- W.putText 64 (ros1Abb_robot_msgsMechanicalUnitState_name value)
    chunk1 <- Right (W.putBool (ros1Abb_robot_msgsMechanicalUnitState_activated value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 69 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/MechanicalUnitState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsMechanicalUnitState :: W.Parser Ros1Abb_robot_msgsMechanicalUnitState
readRos1Abb_robot_msgsMechanicalUnitState = do
    value0 <- W.text 64
    value1 <- W.boolean
    let value = Ros1Abb_robot_msgsMechanicalUnitState value0 value1
    case encodeRos1Abb_robot_msgsMechanicalUnitState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/MechanicalUnitState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsMechanicalUnitState :: [Word8] -> Either Word32 Ros1Abb_robot_msgsMechanicalUnitState
decodeRos1Abb_robot_msgsMechanicalUnitState bytes
    | length bytes < 5 || length bytes > 69 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsMechanicalUnitState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/RAPIDTaskState value.
-- | @details Retain every original field in declaration order. Canonical extent 7..71 bytes.
data Ros1Abb_robot_msgsRAPIDTaskState = Ros1Abb_robot_msgsRAPIDTaskState
    {
    -- | @brief Original abb_robot_msgs/RAPIDTaskState.name field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Abb_robot_msgsRAPIDTaskState_name :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/RAPIDTaskState.activated field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsRAPIDTaskState_activated :: Bool
    ,
    -- | @brief Original abb_robot_msgs/RAPIDTaskState.execution_state field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsRAPIDTaskState_execution_state :: Word8
    ,
    -- | @brief Original abb_robot_msgs/RAPIDTaskState.motion_task field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsRAPIDTaskState_motion_task :: Bool
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsRAPIDTaskStateCodecIdentity :: String
ros1Abb_robot_msgsRAPIDTaskStateCodecIdentity = "UWVMROS1_ab1245cc352efa91cdcc8de801392857e25a4101a141439554b761525b31b947"
-- | @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_UNKNOWN constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_UNKNOWN :: Word8
ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_UNKNOWN = 1
-- | @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_READY constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_READY :: Word8
ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_READY = 2
-- | @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_STOPPED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_STOPPED :: Word8
ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_STOPPED = 3
-- | @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_STARTED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_STARTED :: Word8
ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_STARTED = 4
-- | @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_UNINITIALIZED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_UNINITIALIZED :: Word8
ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_UNINITIALIZED = 5
-- | @brief Encode every field of complete abb_robot_msgs/RAPIDTaskState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsRAPIDTaskState :: Ros1Abb_robot_msgsRAPIDTaskState -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsRAPIDTaskState value = do
    chunk0 <- W.putText 64 (ros1Abb_robot_msgsRAPIDTaskState_name value)
    chunk1 <- Right (W.putBool (ros1Abb_robot_msgsRAPIDTaskState_activated value))
    chunk2 <- Right (W.putNumber 1 (ros1Abb_robot_msgsRAPIDTaskState_execution_state value))
    chunk3 <- Right (W.putBool (ros1Abb_robot_msgsRAPIDTaskState_motion_task value))
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 71 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/RAPIDTaskState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsRAPIDTaskState :: W.Parser Ros1Abb_robot_msgsRAPIDTaskState
readRos1Abb_robot_msgsRAPIDTaskState = do
    value0 <- W.text 64
    value1 <- W.boolean
    value2 <- fromIntegral <$> W.number 1
    value3 <- W.boolean
    let value = Ros1Abb_robot_msgsRAPIDTaskState value0 value1 value2 value3
    case encodeRos1Abb_robot_msgsRAPIDTaskState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/RAPIDTaskState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsRAPIDTaskState :: [Word8] -> Either Word32 Ros1Abb_robot_msgsRAPIDTaskState
decodeRos1Abb_robot_msgsRAPIDTaskState bytes
    | length bytes < 7 || length bytes > 71 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsRAPIDTaskState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/ServiceResponses value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros1Abb_robot_msgsServiceResponses = Ros1Abb_robot_msgsServiceResponses
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsServiceResponsesCodecIdentity :: String
ros1Abb_robot_msgsServiceResponsesCodecIdentity = "UWVMROS1_f0a3c4b160bf0ca52dbbb4e26d2c8a7d3c6a40ac70787ba59cf181945e4276d4"
-- | @brief Original abb_robot_msgs/ServiceResponses.SUCCESS constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_SUCCESS :: String
ros1Abb_robot_msgsServiceResponses_SUCCESS = ""
-- | @brief Original abb_robot_msgs/ServiceResponses.RC_SUCCESS constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RC_SUCCESS :: Word16
ros1Abb_robot_msgsServiceResponses_RC_SUCCESS = 1
-- | @brief Original abb_robot_msgs/ServiceResponses.FAILED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_FAILED :: String
ros1Abb_robot_msgsServiceResponses_FAILED = "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)"
-- | @brief Original abb_robot_msgs/ServiceResponses.RC_FAILED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RC_FAILED :: Word16
ros1Abb_robot_msgsServiceResponses_RC_FAILED = 2
-- | @brief Original abb_robot_msgs/ServiceResponses.SERVER_IS_BUSY constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_SERVER_IS_BUSY :: String
ros1Abb_robot_msgsServiceResponses_SERVER_IS_BUSY = "Server is busy"
-- | @brief Original abb_robot_msgs/ServiceResponses.RC_SERVER_IS_BUSY constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RC_SERVER_IS_BUSY :: Word16
ros1Abb_robot_msgsServiceResponses_RC_SERVER_IS_BUSY = 1001
-- | @brief Original abb_robot_msgs/ServiceResponses.EMPTY_FILENAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_EMPTY_FILENAME :: String
ros1Abb_robot_msgsServiceResponses_EMPTY_FILENAME = "Filename is empty"
-- | @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_FILENAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RC_EMPTY_FILENAME :: Word16
ros1Abb_robot_msgsServiceResponses_RC_EMPTY_FILENAME = 2001
-- | @brief Original abb_robot_msgs/ServiceResponses.EMPTY_SIGNAL_NAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_EMPTY_SIGNAL_NAME :: String
ros1Abb_robot_msgsServiceResponses_EMPTY_SIGNAL_NAME = "Signal name is empty"
-- | @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_SIGNAL_NAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RC_EMPTY_SIGNAL_NAME :: Word16
ros1Abb_robot_msgsServiceResponses_RC_EMPTY_SIGNAL_NAME = 2002
-- | @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_TASK_NAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_EMPTY_RAPID_TASK_NAME :: String
ros1Abb_robot_msgsServiceResponses_EMPTY_RAPID_TASK_NAME = "RAPID task name is empty"
-- | @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_TASK_NAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RC_EMPTY_RAPID_TASK_NAME :: Word16
ros1Abb_robot_msgsServiceResponses_RC_EMPTY_RAPID_TASK_NAME = 2003
-- | @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_MODULE_NAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_EMPTY_RAPID_MODULE_NAME :: String
ros1Abb_robot_msgsServiceResponses_EMPTY_RAPID_MODULE_NAME = "RAPID module name is empty"
-- | @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_MODULE_NAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RC_EMPTY_RAPID_MODULE_NAME :: Word16
ros1Abb_robot_msgsServiceResponses_RC_EMPTY_RAPID_MODULE_NAME = 2004
-- | @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_SYMBOL_NAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_EMPTY_RAPID_SYMBOL_NAME :: String
ros1Abb_robot_msgsServiceResponses_EMPTY_RAPID_SYMBOL_NAME = "RAPID symbol name is empty"
-- | @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_SYMBOL_NAME constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RC_EMPTY_RAPID_SYMBOL_NAME :: Word16
ros1Abb_robot_msgsServiceResponses_RC_EMPTY_RAPID_SYMBOL_NAME = 2005
-- | @brief Original abb_robot_msgs/ServiceResponses.NOT_IN_AUTO_MODE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_NOT_IN_AUTO_MODE :: String
ros1Abb_robot_msgsServiceResponses_NOT_IN_AUTO_MODE = "Robot controller is not in AUTO mode"
-- | @brief Original abb_robot_msgs/ServiceResponses.RC_NOT_IN_AUTO_MODE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RC_NOT_IN_AUTO_MODE :: Word16
ros1Abb_robot_msgsServiceResponses_RC_NOT_IN_AUTO_MODE = 3001
-- | @brief Original abb_robot_msgs/ServiceResponses.MOTORS_ARE_OFF constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_MOTORS_ARE_OFF :: String
ros1Abb_robot_msgsServiceResponses_MOTORS_ARE_OFF = "Motors are off"
-- | @brief Original abb_robot_msgs/ServiceResponses.RC_MOTORS_ARE_OFF constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RC_MOTORS_ARE_OFF :: Word16
ros1Abb_robot_msgsServiceResponses_RC_MOTORS_ARE_OFF = 3002
-- | @brief Original abb_robot_msgs/ServiceResponses.MOTORS_ARE_ON constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_MOTORS_ARE_ON :: String
ros1Abb_robot_msgsServiceResponses_MOTORS_ARE_ON = "Motors are on"
-- | @brief Original abb_robot_msgs/ServiceResponses.RC_MOTORS_ARE_ON constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RC_MOTORS_ARE_ON :: Word16
ros1Abb_robot_msgsServiceResponses_RC_MOTORS_ARE_ON = 3003
-- | @brief Original abb_robot_msgs/ServiceResponses.RAPID_NOT_STOPPED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RAPID_NOT_STOPPED :: String
ros1Abb_robot_msgsServiceResponses_RAPID_NOT_STOPPED = "RAPID has not been stopped"
-- | @brief Original abb_robot_msgs/ServiceResponses.RC_RAPID_NOT_STOPPED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RC_RAPID_NOT_STOPPED :: Word16
ros1Abb_robot_msgsServiceResponses_RC_RAPID_NOT_STOPPED = 3004
-- | @brief Original abb_robot_msgs/ServiceResponses.RAPID_NOT_RUNNING constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RAPID_NOT_RUNNING :: String
ros1Abb_robot_msgsServiceResponses_RAPID_NOT_RUNNING = "RAPID is not running"
-- | @brief Original abb_robot_msgs/ServiceResponses.RC_RAPID_NOT_RUNNING constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RC_RAPID_NOT_RUNNING :: Word16
ros1Abb_robot_msgsServiceResponses_RC_RAPID_NOT_RUNNING = 3005
-- | @brief Original abb_robot_msgs/ServiceResponses.SM_RUNTIME_STATES_MISSING constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_SM_RUNTIME_STATES_MISSING :: String
ros1Abb_robot_msgsServiceResponses_SM_RUNTIME_STATES_MISSING = "No runtime states received for any StateMachine Add-In instance"
-- | @brief Original abb_robot_msgs/ServiceResponses.RC_SM_RUNTIME_STATES_MISSING constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RC_SM_RUNTIME_STATES_MISSING :: Word16
ros1Abb_robot_msgsServiceResponses_RC_SM_RUNTIME_STATES_MISSING = 4001
-- | @brief Original abb_robot_msgs/ServiceResponses.SM_UNKNOWN_RAPID_TASK constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_SM_UNKNOWN_RAPID_TASK :: String
ros1Abb_robot_msgsServiceResponses_SM_UNKNOWN_RAPID_TASK = "RAPID task not found among known StateMachine Add-In instances"
-- | @brief Original abb_robot_msgs/ServiceResponses.RC_SM_UNKNOWN_RAPID_TASK constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RC_SM_UNKNOWN_RAPID_TASK :: Word16
ros1Abb_robot_msgsServiceResponses_RC_SM_UNKNOWN_RAPID_TASK = 4002
-- | @brief Original abb_robot_msgs/ServiceResponses.SM_UNINITIALIZED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_SM_UNINITIALIZED :: String
ros1Abb_robot_msgsServiceResponses_SM_UNINITIALIZED = "StateMachine Add-In instance has not been initialized"
-- | @brief Original abb_robot_msgs/ServiceResponses.RC_SM_UNINITIALIZED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Abb_robot_msgsServiceResponses_RC_SM_UNINITIALIZED :: Word16
ros1Abb_robot_msgsServiceResponses_RC_SM_UNINITIALIZED = 4003
-- | @brief Encode every field of complete abb_robot_msgs/ServiceResponses.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsServiceResponses :: Ros1Abb_robot_msgsServiceResponses -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsServiceResponses value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/ServiceResponses.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsServiceResponses :: W.Parser Ros1Abb_robot_msgsServiceResponses
readRos1Abb_robot_msgsServiceResponses = do
    let value = Ros1Abb_robot_msgsServiceResponses 
    case encodeRos1Abb_robot_msgsServiceResponses value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/ServiceResponses.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsServiceResponses :: [Word8] -> Either Word32 Ros1Abb_robot_msgsServiceResponses
decodeRos1Abb_robot_msgsServiceResponses bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsServiceResponses bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/SetFileContentsRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 8..4616 bytes.
data Ros1Abb_robot_msgsSetFileContentsRequest = Ros1Abb_robot_msgsSetFileContentsRequest
    {
    -- | @brief Original abb_robot_msgs/SetFileContentsRequest.filename field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsSetFileContentsRequest_filename :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/SetFileContentsRequest.contents field.
    -- | @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsSetFileContentsRequest_contents :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsSetFileContentsRequestCodecIdentity :: String
ros1Abb_robot_msgsSetFileContentsRequestCodecIdentity = "UWVMROS1_f764448d9754e9ebc5e5fab64f0c8ebb01c534ec7b95751ed7d58e8ce0bd3012"
-- | @brief Encode every field of complete abb_robot_msgs/SetFileContentsRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsSetFileContentsRequest :: Ros1Abb_robot_msgsSetFileContentsRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsSetFileContentsRequest value = do
    chunk0 <- W.putText 512 (ros1Abb_robot_msgsSetFileContentsRequest_filename value)
    chunk1 <- W.putText 4096 (ros1Abb_robot_msgsSetFileContentsRequest_contents value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 4616 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/SetFileContentsRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsSetFileContentsRequest :: W.Parser Ros1Abb_robot_msgsSetFileContentsRequest
readRos1Abb_robot_msgsSetFileContentsRequest = do
    value0 <- W.text 512
    value1 <- W.text 4096
    let value = Ros1Abb_robot_msgsSetFileContentsRequest value0 value1
    case encodeRos1Abb_robot_msgsSetFileContentsRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/SetFileContentsRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsSetFileContentsRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsSetFileContentsRequest
decodeRos1Abb_robot_msgsSetFileContentsRequest bytes
    | length bytes < 8 || length bytes > 4616 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsSetFileContentsRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/SetFileContentsResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros1Abb_robot_msgsSetFileContentsResponse = Ros1Abb_robot_msgsSetFileContentsResponse
    {
    -- | @brief Original abb_robot_msgs/SetFileContentsResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsSetFileContentsResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/SetFileContentsResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsSetFileContentsResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsSetFileContentsResponseCodecIdentity :: String
ros1Abb_robot_msgsSetFileContentsResponseCodecIdentity = "UWVMROS1_3de2a08b8e158e0612898880d6d9c98f1995828eb53bd5639b47f730c6cbefd0"
-- | @brief Encode every field of complete abb_robot_msgs/SetFileContentsResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsSetFileContentsResponse :: Ros1Abb_robot_msgsSetFileContentsResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsSetFileContentsResponse value = do
    chunk0 <- Right (W.putNumber 2 (ros1Abb_robot_msgsSetFileContentsResponse_result_code value))
    chunk1 <- W.putText 512 (ros1Abb_robot_msgsSetFileContentsResponse_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/SetFileContentsResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsSetFileContentsResponse :: W.Parser Ros1Abb_robot_msgsSetFileContentsResponse
readRos1Abb_robot_msgsSetFileContentsResponse = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros1Abb_robot_msgsSetFileContentsResponse value0 value1
    case encodeRos1Abb_robot_msgsSetFileContentsResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/SetFileContentsResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsSetFileContentsResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsSetFileContentsResponse
decodeRos1Abb_robot_msgsSetFileContentsResponse bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsSetFileContentsResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/SetIOSignalRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 8..1032 bytes.
data Ros1Abb_robot_msgsSetIOSignalRequest = Ros1Abb_robot_msgsSetIOSignalRequest
    {
    -- | @brief Original abb_robot_msgs/SetIOSignalRequest.signal field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsSetIOSignalRequest_signal :: [Word8]
    ,
    -- | @brief Original abb_robot_msgs/SetIOSignalRequest.value field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsSetIOSignalRequest_value :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsSetIOSignalRequestCodecIdentity :: String
ros1Abb_robot_msgsSetIOSignalRequestCodecIdentity = "UWVMROS1_57a0197e2a5de7efd2fc91d945d699be24559baec6651179a1256f1d9d35bbc9"
-- | @brief Encode every field of complete abb_robot_msgs/SetIOSignalRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsSetIOSignalRequest :: Ros1Abb_robot_msgsSetIOSignalRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsSetIOSignalRequest value = do
    chunk0 <- W.putText 512 (ros1Abb_robot_msgsSetIOSignalRequest_signal value)
    chunk1 <- W.putText 512 (ros1Abb_robot_msgsSetIOSignalRequest_value value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 1032 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/SetIOSignalRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsSetIOSignalRequest :: W.Parser Ros1Abb_robot_msgsSetIOSignalRequest
readRos1Abb_robot_msgsSetIOSignalRequest = do
    value0 <- W.text 512
    value1 <- W.text 512
    let value = Ros1Abb_robot_msgsSetIOSignalRequest value0 value1
    case encodeRos1Abb_robot_msgsSetIOSignalRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/SetIOSignalRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsSetIOSignalRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsSetIOSignalRequest
decodeRos1Abb_robot_msgsSetIOSignalRequest bytes
    | length bytes < 8 || length bytes > 1032 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsSetIOSignalRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/SetIOSignalResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros1Abb_robot_msgsSetIOSignalResponse = Ros1Abb_robot_msgsSetIOSignalResponse
    {
    -- | @brief Original abb_robot_msgs/SetIOSignalResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsSetIOSignalResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/SetIOSignalResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsSetIOSignalResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsSetIOSignalResponseCodecIdentity :: String
ros1Abb_robot_msgsSetIOSignalResponseCodecIdentity = "UWVMROS1_becc0f844ce6a7fabd8a683175edd8033ba5c943c2de152991755ee112b460e5"
-- | @brief Encode every field of complete abb_robot_msgs/SetIOSignalResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsSetIOSignalResponse :: Ros1Abb_robot_msgsSetIOSignalResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsSetIOSignalResponse value = do
    chunk0 <- Right (W.putNumber 2 (ros1Abb_robot_msgsSetIOSignalResponse_result_code value))
    chunk1 <- W.putText 512 (ros1Abb_robot_msgsSetIOSignalResponse_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/SetIOSignalResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsSetIOSignalResponse :: W.Parser Ros1Abb_robot_msgsSetIOSignalResponse
readRos1Abb_robot_msgsSetIOSignalResponse = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros1Abb_robot_msgsSetIOSignalResponse value0 value1
    case encodeRos1Abb_robot_msgsSetIOSignalResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/SetIOSignalResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsSetIOSignalResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsSetIOSignalResponse
decodeRos1Abb_robot_msgsSetIOSignalResponse bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsSetIOSignalResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/SetRAPIDBoolRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 13..205 bytes.
data Ros1Abb_robot_msgsSetRAPIDBoolRequest = Ros1Abb_robot_msgsSetRAPIDBoolRequest
    {
    -- | @brief Original abb_robot_msgs/SetRAPIDBoolRequest.path field.
    -- | @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Abb_robot_msgsSetRAPIDBoolRequest_path :: Ros1Abb_robot_msgsRAPIDSymbolPath
    ,
    -- | @brief Original abb_robot_msgs/SetRAPIDBoolRequest.value field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsSetRAPIDBoolRequest_value :: Bool
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsSetRAPIDBoolRequestCodecIdentity :: String
ros1Abb_robot_msgsSetRAPIDBoolRequestCodecIdentity = "UWVMROS1_d8e5420678fe5feeffa20ad9ab8431678ec346f764c94871c4496c62e9dd8e8d"
-- | @brief Encode every field of complete abb_robot_msgs/SetRAPIDBoolRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsSetRAPIDBoolRequest :: Ros1Abb_robot_msgsSetRAPIDBoolRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsSetRAPIDBoolRequest value = do
    chunk0 <- encodeRos1Abb_robot_msgsRAPIDSymbolPath (ros1Abb_robot_msgsSetRAPIDBoolRequest_path value)
    chunk1 <- Right (W.putBool (ros1Abb_robot_msgsSetRAPIDBoolRequest_value value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 205 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/SetRAPIDBoolRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsSetRAPIDBoolRequest :: W.Parser Ros1Abb_robot_msgsSetRAPIDBoolRequest
readRos1Abb_robot_msgsSetRAPIDBoolRequest = do
    value0 <- readRos1Abb_robot_msgsRAPIDSymbolPath
    value1 <- W.boolean
    let value = Ros1Abb_robot_msgsSetRAPIDBoolRequest value0 value1
    case encodeRos1Abb_robot_msgsSetRAPIDBoolRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/SetRAPIDBoolRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsSetRAPIDBoolRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsSetRAPIDBoolRequest
decodeRos1Abb_robot_msgsSetRAPIDBoolRequest bytes
    | length bytes < 13 || length bytes > 205 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsSetRAPIDBoolRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/SetRAPIDBoolResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros1Abb_robot_msgsSetRAPIDBoolResponse = Ros1Abb_robot_msgsSetRAPIDBoolResponse
    {
    -- | @brief Original abb_robot_msgs/SetRAPIDBoolResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsSetRAPIDBoolResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/SetRAPIDBoolResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsSetRAPIDBoolResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsSetRAPIDBoolResponseCodecIdentity :: String
ros1Abb_robot_msgsSetRAPIDBoolResponseCodecIdentity = "UWVMROS1_da2ae1231cb0c1ec452fb2733d5c99dcae78ad0bfd10771241708931b271bf13"
-- | @brief Encode every field of complete abb_robot_msgs/SetRAPIDBoolResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsSetRAPIDBoolResponse :: Ros1Abb_robot_msgsSetRAPIDBoolResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsSetRAPIDBoolResponse value = do
    chunk0 <- Right (W.putNumber 2 (ros1Abb_robot_msgsSetRAPIDBoolResponse_result_code value))
    chunk1 <- W.putText 512 (ros1Abb_robot_msgsSetRAPIDBoolResponse_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/SetRAPIDBoolResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsSetRAPIDBoolResponse :: W.Parser Ros1Abb_robot_msgsSetRAPIDBoolResponse
readRos1Abb_robot_msgsSetRAPIDBoolResponse = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros1Abb_robot_msgsSetRAPIDBoolResponse value0 value1
    case encodeRos1Abb_robot_msgsSetRAPIDBoolResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/SetRAPIDBoolResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsSetRAPIDBoolResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsSetRAPIDBoolResponse
decodeRos1Abb_robot_msgsSetRAPIDBoolResponse bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsSetRAPIDBoolResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/SetRAPIDDnumRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 20..212 bytes.
data Ros1Abb_robot_msgsSetRAPIDDnumRequest = Ros1Abb_robot_msgsSetRAPIDDnumRequest
    {
    -- | @brief Original abb_robot_msgs/SetRAPIDDnumRequest.path field.
    -- | @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Abb_robot_msgsSetRAPIDDnumRequest_path :: Ros1Abb_robot_msgsRAPIDSymbolPath
    ,
    -- | @brief Original abb_robot_msgs/SetRAPIDDnumRequest.value field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsSetRAPIDDnumRequest_value :: Double
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsSetRAPIDDnumRequestCodecIdentity :: String
ros1Abb_robot_msgsSetRAPIDDnumRequestCodecIdentity = "UWVMROS1_0f17e3068f86bca6effb99f3bc850234b0163028f372340c450fce31657b9cf9"
-- | @brief Encode every field of complete abb_robot_msgs/SetRAPIDDnumRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsSetRAPIDDnumRequest :: Ros1Abb_robot_msgsSetRAPIDDnumRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsSetRAPIDDnumRequest value = do
    chunk0 <- encodeRos1Abb_robot_msgsRAPIDSymbolPath (ros1Abb_robot_msgsSetRAPIDDnumRequest_path value)
    chunk1 <- finite8 (ros1Abb_robot_msgsSetRAPIDDnumRequest_value value) castDoubleToWord64
    let bytes = concat [chunk0, chunk1]
    if length bytes > 212 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/SetRAPIDDnumRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsSetRAPIDDnumRequest :: W.Parser Ros1Abb_robot_msgsSetRAPIDDnumRequest
readRos1Abb_robot_msgsSetRAPIDDnumRequest = do
    value0 <- readRos1Abb_robot_msgsRAPIDSymbolPath
    value1 <- castWord64ToDouble <$> W.number 8
    let value = Ros1Abb_robot_msgsSetRAPIDDnumRequest value0 value1
    case encodeRos1Abb_robot_msgsSetRAPIDDnumRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/SetRAPIDDnumRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsSetRAPIDDnumRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsSetRAPIDDnumRequest
decodeRos1Abb_robot_msgsSetRAPIDDnumRequest bytes
    | length bytes < 20 || length bytes > 212 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsSetRAPIDDnumRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/SetRAPIDDnumResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros1Abb_robot_msgsSetRAPIDDnumResponse = Ros1Abb_robot_msgsSetRAPIDDnumResponse
    {
    -- | @brief Original abb_robot_msgs/SetRAPIDDnumResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsSetRAPIDDnumResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/SetRAPIDDnumResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsSetRAPIDDnumResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsSetRAPIDDnumResponseCodecIdentity :: String
ros1Abb_robot_msgsSetRAPIDDnumResponseCodecIdentity = "UWVMROS1_1905aed9683e03494baa54627ddbaf4aed0b92357823c0c042f9b7c6a970c8ed"
-- | @brief Encode every field of complete abb_robot_msgs/SetRAPIDDnumResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsSetRAPIDDnumResponse :: Ros1Abb_robot_msgsSetRAPIDDnumResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsSetRAPIDDnumResponse value = do
    chunk0 <- Right (W.putNumber 2 (ros1Abb_robot_msgsSetRAPIDDnumResponse_result_code value))
    chunk1 <- W.putText 512 (ros1Abb_robot_msgsSetRAPIDDnumResponse_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/SetRAPIDDnumResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsSetRAPIDDnumResponse :: W.Parser Ros1Abb_robot_msgsSetRAPIDDnumResponse
readRos1Abb_robot_msgsSetRAPIDDnumResponse = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros1Abb_robot_msgsSetRAPIDDnumResponse value0 value1
    case encodeRos1Abb_robot_msgsSetRAPIDDnumResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/SetRAPIDDnumResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsSetRAPIDDnumResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsSetRAPIDDnumResponse
decodeRos1Abb_robot_msgsSetRAPIDDnumResponse bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsSetRAPIDDnumResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/SetRAPIDNumRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 16..208 bytes.
data Ros1Abb_robot_msgsSetRAPIDNumRequest = Ros1Abb_robot_msgsSetRAPIDNumRequest
    {
    -- | @brief Original abb_robot_msgs/SetRAPIDNumRequest.path field.
    -- | @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Abb_robot_msgsSetRAPIDNumRequest_path :: Ros1Abb_robot_msgsRAPIDSymbolPath
    ,
    -- | @brief Original abb_robot_msgs/SetRAPIDNumRequest.value field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsSetRAPIDNumRequest_value :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsSetRAPIDNumRequestCodecIdentity :: String
ros1Abb_robot_msgsSetRAPIDNumRequestCodecIdentity = "UWVMROS1_9982d02cb0b6ee5813f5fb38072d665226b7885aeb90517af881f4fc990f392f"
-- | @brief Encode every field of complete abb_robot_msgs/SetRAPIDNumRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsSetRAPIDNumRequest :: Ros1Abb_robot_msgsSetRAPIDNumRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsSetRAPIDNumRequest value = do
    chunk0 <- encodeRos1Abb_robot_msgsRAPIDSymbolPath (ros1Abb_robot_msgsSetRAPIDNumRequest_path value)
    chunk1 <- finite4 (ros1Abb_robot_msgsSetRAPIDNumRequest_value value) castFloatToWord32
    let bytes = concat [chunk0, chunk1]
    if length bytes > 208 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/SetRAPIDNumRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsSetRAPIDNumRequest :: W.Parser Ros1Abb_robot_msgsSetRAPIDNumRequest
readRos1Abb_robot_msgsSetRAPIDNumRequest = do
    value0 <- readRos1Abb_robot_msgsRAPIDSymbolPath
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value = Ros1Abb_robot_msgsSetRAPIDNumRequest value0 value1
    case encodeRos1Abb_robot_msgsSetRAPIDNumRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/SetRAPIDNumRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsSetRAPIDNumRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsSetRAPIDNumRequest
decodeRos1Abb_robot_msgsSetRAPIDNumRequest bytes
    | length bytes < 16 || length bytes > 208 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsSetRAPIDNumRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/SetRAPIDNumResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros1Abb_robot_msgsSetRAPIDNumResponse = Ros1Abb_robot_msgsSetRAPIDNumResponse
    {
    -- | @brief Original abb_robot_msgs/SetRAPIDNumResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsSetRAPIDNumResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/SetRAPIDNumResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsSetRAPIDNumResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsSetRAPIDNumResponseCodecIdentity :: String
ros1Abb_robot_msgsSetRAPIDNumResponseCodecIdentity = "UWVMROS1_af1181242b4afdb6d387d39c24d0bc343e872fb9ab21c0ec1e451785786a4e64"
-- | @brief Encode every field of complete abb_robot_msgs/SetRAPIDNumResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsSetRAPIDNumResponse :: Ros1Abb_robot_msgsSetRAPIDNumResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsSetRAPIDNumResponse value = do
    chunk0 <- Right (W.putNumber 2 (ros1Abb_robot_msgsSetRAPIDNumResponse_result_code value))
    chunk1 <- W.putText 512 (ros1Abb_robot_msgsSetRAPIDNumResponse_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/SetRAPIDNumResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsSetRAPIDNumResponse :: W.Parser Ros1Abb_robot_msgsSetRAPIDNumResponse
readRos1Abb_robot_msgsSetRAPIDNumResponse = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros1Abb_robot_msgsSetRAPIDNumResponse value0 value1
    case encodeRos1Abb_robot_msgsSetRAPIDNumResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/SetRAPIDNumResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsSetRAPIDNumResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsSetRAPIDNumResponse
decodeRos1Abb_robot_msgsSetRAPIDNumResponse bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsSetRAPIDNumResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/SetRAPIDStringRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 16..720 bytes.
data Ros1Abb_robot_msgsSetRAPIDStringRequest = Ros1Abb_robot_msgsSetRAPIDStringRequest
    {
    -- | @brief Original abb_robot_msgs/SetRAPIDStringRequest.path field.
    -- | @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Abb_robot_msgsSetRAPIDStringRequest_path :: Ros1Abb_robot_msgsRAPIDSymbolPath
    ,
    -- | @brief Original abb_robot_msgs/SetRAPIDStringRequest.value field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsSetRAPIDStringRequest_value :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsSetRAPIDStringRequestCodecIdentity :: String
ros1Abb_robot_msgsSetRAPIDStringRequestCodecIdentity = "UWVMROS1_e06839324f8abfa8780b683386f87bab1ec04f1e6463e63c0599f5c2f8a75f0c"
-- | @brief Encode every field of complete abb_robot_msgs/SetRAPIDStringRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsSetRAPIDStringRequest :: Ros1Abb_robot_msgsSetRAPIDStringRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsSetRAPIDStringRequest value = do
    chunk0 <- encodeRos1Abb_robot_msgsRAPIDSymbolPath (ros1Abb_robot_msgsSetRAPIDStringRequest_path value)
    chunk1 <- W.putText 512 (ros1Abb_robot_msgsSetRAPIDStringRequest_value value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 720 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/SetRAPIDStringRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsSetRAPIDStringRequest :: W.Parser Ros1Abb_robot_msgsSetRAPIDStringRequest
readRos1Abb_robot_msgsSetRAPIDStringRequest = do
    value0 <- readRos1Abb_robot_msgsRAPIDSymbolPath
    value1 <- W.text 512
    let value = Ros1Abb_robot_msgsSetRAPIDStringRequest value0 value1
    case encodeRos1Abb_robot_msgsSetRAPIDStringRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/SetRAPIDStringRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsSetRAPIDStringRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsSetRAPIDStringRequest
decodeRos1Abb_robot_msgsSetRAPIDStringRequest bytes
    | length bytes < 16 || length bytes > 720 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsSetRAPIDStringRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/SetRAPIDStringResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros1Abb_robot_msgsSetRAPIDStringResponse = Ros1Abb_robot_msgsSetRAPIDStringResponse
    {
    -- | @brief Original abb_robot_msgs/SetRAPIDStringResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsSetRAPIDStringResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/SetRAPIDStringResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsSetRAPIDStringResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsSetRAPIDStringResponseCodecIdentity :: String
ros1Abb_robot_msgsSetRAPIDStringResponseCodecIdentity = "UWVMROS1_e175bdff5a150722b8c50cf2e1c0f28a99289a0b148339efdee4b034ea3b96b4"
-- | @brief Encode every field of complete abb_robot_msgs/SetRAPIDStringResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsSetRAPIDStringResponse :: Ros1Abb_robot_msgsSetRAPIDStringResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsSetRAPIDStringResponse value = do
    chunk0 <- Right (W.putNumber 2 (ros1Abb_robot_msgsSetRAPIDStringResponse_result_code value))
    chunk1 <- W.putText 512 (ros1Abb_robot_msgsSetRAPIDStringResponse_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/SetRAPIDStringResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsSetRAPIDStringResponse :: W.Parser Ros1Abb_robot_msgsSetRAPIDStringResponse
readRos1Abb_robot_msgsSetRAPIDStringResponse = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros1Abb_robot_msgsSetRAPIDStringResponse value0 value1
    case encodeRos1Abb_robot_msgsSetRAPIDStringResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/SetRAPIDStringResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsSetRAPIDStringResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsSetRAPIDStringResponse
decodeRos1Abb_robot_msgsSetRAPIDStringResponse bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsSetRAPIDStringResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/SetRAPIDSymbolRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 16..720 bytes.
data Ros1Abb_robot_msgsSetRAPIDSymbolRequest = Ros1Abb_robot_msgsSetRAPIDSymbolRequest
    {
    -- | @brief Original abb_robot_msgs/SetRAPIDSymbolRequest.path field.
    -- | @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Abb_robot_msgsSetRAPIDSymbolRequest_path :: Ros1Abb_robot_msgsRAPIDSymbolPath
    ,
    -- | @brief Original abb_robot_msgs/SetRAPIDSymbolRequest.value field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsSetRAPIDSymbolRequest_value :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsSetRAPIDSymbolRequestCodecIdentity :: String
ros1Abb_robot_msgsSetRAPIDSymbolRequestCodecIdentity = "UWVMROS1_0654a5a8e5ec42f4feab54b086a008e02a74d44df65d2fcf60f007736e3fec7d"
-- | @brief Encode every field of complete abb_robot_msgs/SetRAPIDSymbolRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsSetRAPIDSymbolRequest :: Ros1Abb_robot_msgsSetRAPIDSymbolRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsSetRAPIDSymbolRequest value = do
    chunk0 <- encodeRos1Abb_robot_msgsRAPIDSymbolPath (ros1Abb_robot_msgsSetRAPIDSymbolRequest_path value)
    chunk1 <- W.putText 512 (ros1Abb_robot_msgsSetRAPIDSymbolRequest_value value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 720 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/SetRAPIDSymbolRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsSetRAPIDSymbolRequest :: W.Parser Ros1Abb_robot_msgsSetRAPIDSymbolRequest
readRos1Abb_robot_msgsSetRAPIDSymbolRequest = do
    value0 <- readRos1Abb_robot_msgsRAPIDSymbolPath
    value1 <- W.text 512
    let value = Ros1Abb_robot_msgsSetRAPIDSymbolRequest value0 value1
    case encodeRos1Abb_robot_msgsSetRAPIDSymbolRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/SetRAPIDSymbolRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsSetRAPIDSymbolRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsSetRAPIDSymbolRequest
decodeRos1Abb_robot_msgsSetRAPIDSymbolRequest bytes
    | length bytes < 16 || length bytes > 720 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsSetRAPIDSymbolRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/SetRAPIDSymbolResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros1Abb_robot_msgsSetRAPIDSymbolResponse = Ros1Abb_robot_msgsSetRAPIDSymbolResponse
    {
    -- | @brief Original abb_robot_msgs/SetRAPIDSymbolResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsSetRAPIDSymbolResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/SetRAPIDSymbolResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsSetRAPIDSymbolResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsSetRAPIDSymbolResponseCodecIdentity :: String
ros1Abb_robot_msgsSetRAPIDSymbolResponseCodecIdentity = "UWVMROS1_a4ca0a8821337d1f16ba1f2ad2b232aceaba419308ca03b27f43dac427a32846"
-- | @brief Encode every field of complete abb_robot_msgs/SetRAPIDSymbolResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsSetRAPIDSymbolResponse :: Ros1Abb_robot_msgsSetRAPIDSymbolResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsSetRAPIDSymbolResponse value = do
    chunk0 <- Right (W.putNumber 2 (ros1Abb_robot_msgsSetRAPIDSymbolResponse_result_code value))
    chunk1 <- W.putText 512 (ros1Abb_robot_msgsSetRAPIDSymbolResponse_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/SetRAPIDSymbolResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsSetRAPIDSymbolResponse :: W.Parser Ros1Abb_robot_msgsSetRAPIDSymbolResponse
readRos1Abb_robot_msgsSetRAPIDSymbolResponse = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros1Abb_robot_msgsSetRAPIDSymbolResponse value0 value1
    case encodeRos1Abb_robot_msgsSetRAPIDSymbolResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/SetRAPIDSymbolResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsSetRAPIDSymbolResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsSetRAPIDSymbolResponse
decodeRos1Abb_robot_msgsSetRAPIDSymbolResponse bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsSetRAPIDSymbolResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/SetSpeedRatioRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros1Abb_robot_msgsSetSpeedRatioRequest = Ros1Abb_robot_msgsSetSpeedRatioRequest
    {
    -- | @brief Original abb_robot_msgs/SetSpeedRatioRequest.speed_ratio field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsSetSpeedRatioRequest_speed_ratio :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsSetSpeedRatioRequestCodecIdentity :: String
ros1Abb_robot_msgsSetSpeedRatioRequestCodecIdentity = "UWVMROS1_a6ac368d243d488901b03d5e4303600d5f0eaf62150801103e5f5f9c0863fab5"
-- | @brief Encode every field of complete abb_robot_msgs/SetSpeedRatioRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsSetSpeedRatioRequest :: Ros1Abb_robot_msgsSetSpeedRatioRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsSetSpeedRatioRequest value = do
    chunk0 <- Right (W.putNumber 1 (ros1Abb_robot_msgsSetSpeedRatioRequest_speed_ratio value))
    let bytes = concat [chunk0]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/SetSpeedRatioRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsSetSpeedRatioRequest :: W.Parser Ros1Abb_robot_msgsSetSpeedRatioRequest
readRos1Abb_robot_msgsSetSpeedRatioRequest = do
    value0 <- fromIntegral <$> W.number 1
    let value = Ros1Abb_robot_msgsSetSpeedRatioRequest value0
    case encodeRos1Abb_robot_msgsSetSpeedRatioRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/SetSpeedRatioRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsSetSpeedRatioRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsSetSpeedRatioRequest
decodeRos1Abb_robot_msgsSetSpeedRatioRequest bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsSetSpeedRatioRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/SetSpeedRatioResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros1Abb_robot_msgsSetSpeedRatioResponse = Ros1Abb_robot_msgsSetSpeedRatioResponse
    {
    -- | @brief Original abb_robot_msgs/SetSpeedRatioResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsSetSpeedRatioResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/SetSpeedRatioResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsSetSpeedRatioResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsSetSpeedRatioResponseCodecIdentity :: String
ros1Abb_robot_msgsSetSpeedRatioResponseCodecIdentity = "UWVMROS1_9775dc1029993d1dfdf5f3080e6ae4262177ba96cdc0fbe9851dc4fea16c70d8"
-- | @brief Encode every field of complete abb_robot_msgs/SetSpeedRatioResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsSetSpeedRatioResponse :: Ros1Abb_robot_msgsSetSpeedRatioResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsSetSpeedRatioResponse value = do
    chunk0 <- Right (W.putNumber 2 (ros1Abb_robot_msgsSetSpeedRatioResponse_result_code value))
    chunk1 <- W.putText 512 (ros1Abb_robot_msgsSetSpeedRatioResponse_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/SetSpeedRatioResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsSetSpeedRatioResponse :: W.Parser Ros1Abb_robot_msgsSetSpeedRatioResponse
readRos1Abb_robot_msgsSetSpeedRatioResponse = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros1Abb_robot_msgsSetSpeedRatioResponse value0 value1
    case encodeRos1Abb_robot_msgsSetSpeedRatioResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/SetSpeedRatioResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsSetSpeedRatioResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsSetSpeedRatioResponse
decodeRos1Abb_robot_msgsSetSpeedRatioResponse bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsSetSpeedRatioResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/SystemState value.
-- | @details Retain every original field in declaration order. Canonical extent 27..2331 bytes.
data Ros1Abb_robot_msgsSystemState = Ros1Abb_robot_msgsSystemState
    {
    -- | @brief Original abb_robot_msgs/SystemState.header field.
    -- | @details Original type std_msgs/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Abb_robot_msgsSystemState_header :: Ros1Std_msgsHeader
    ,
    -- | @brief Original abb_robot_msgs/SystemState.motors_on field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsSystemState_motors_on :: Bool
    ,
    -- | @brief Original abb_robot_msgs/SystemState.auto_mode field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsSystemState_auto_mode :: Bool
    ,
    -- | @brief Original abb_robot_msgs/SystemState.rapid_running field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsSystemState_rapid_running :: Bool
    ,
    -- | @brief Original abb_robot_msgs/SystemState.rapid_tasks field.
    -- | @details Original type abb_robot_msgs/RAPIDTaskState. Shape sequence; bound/count 16
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsSystemState_rapid_tasks :: [Ros1Abb_robot_msgsRAPIDTaskState]
    ,
    -- | @brief Original abb_robot_msgs/SystemState.mechanical_units field.
    -- | @details Original type abb_robot_msgs/MechanicalUnitState. Shape sequence; bound/count 16
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsSystemState_mechanical_units :: [Ros1Abb_robot_msgsMechanicalUnitState]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsSystemStateCodecIdentity :: String
ros1Abb_robot_msgsSystemStateCodecIdentity = "UWVMROS1_b57aa1fdf098aa78c51a96bd2978e02f97cbae67148c0028557d2a3e1e8630f2"
-- | @brief Encode every field of complete abb_robot_msgs/SystemState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsSystemState :: Ros1Abb_robot_msgsSystemState -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsSystemState value = do
    chunk0 <- encodeRos1Std_msgsHeader (ros1Abb_robot_msgsSystemState_header value)
    chunk1 <- Right (W.putBool (ros1Abb_robot_msgsSystemState_motors_on value))
    chunk2 <- Right (W.putBool (ros1Abb_robot_msgsSystemState_auto_mode value))
    chunk3 <- Right (W.putBool (ros1Abb_robot_msgsSystemState_rapid_running value))
    if length (ros1Abb_robot_msgsSystemState_rapid_tasks value) <= 16 then Right () else Left 22
    item4 <- concat <$> mapM
        (\element -> encodeRos1Abb_robot_msgsRAPIDTaskState (element))
        (ros1Abb_robot_msgsSystemState_rapid_tasks value)
    chunk4 <- Right (W.putNumber 4 (length (ros1Abb_robot_msgsSystemState_rapid_tasks value)) ++ item4)
    if length (ros1Abb_robot_msgsSystemState_mechanical_units value) <= 16 then Right () else Left 22
    item5 <- concat <$> mapM
        (\element -> encodeRos1Abb_robot_msgsMechanicalUnitState (element))
        (ros1Abb_robot_msgsSystemState_mechanical_units value)
    chunk5 <- Right (W.putNumber 4 (length (ros1Abb_robot_msgsSystemState_mechanical_units value)) ++ item5)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4, chunk5]
    if length bytes > 2331 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/SystemState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsSystemState :: W.Parser Ros1Abb_robot_msgsSystemState
readRos1Abb_robot_msgsSystemState = do
    value0 <- readRos1Std_msgsHeader
    value1 <- W.boolean
    value2 <- W.boolean
    value3 <- W.boolean
    count4 <- W.number 4
    if count4 > 16 then W.reject else pure ()
    value4 <- replicateM (fromIntegral count4) (readRos1Abb_robot_msgsRAPIDTaskState)
    count5 <- W.number 4
    if count5 > 16 then W.reject else pure ()
    value5 <- replicateM (fromIntegral count5) (readRos1Abb_robot_msgsMechanicalUnitState)
    let value = Ros1Abb_robot_msgsSystemState value0 value1 value2 value3 value4 value5
    case encodeRos1Abb_robot_msgsSystemState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/SystemState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsSystemState :: [Word8] -> Either Word32 Ros1Abb_robot_msgsSystemState
decodeRos1Abb_robot_msgsSystemState bytes
    | length bytes < 27 || length bytes > 2331 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsSystemState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/TriggerWithResultCodeRequest value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros1Abb_robot_msgsTriggerWithResultCodeRequest = Ros1Abb_robot_msgsTriggerWithResultCodeRequest
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsTriggerWithResultCodeRequestCodecIdentity :: String
ros1Abb_robot_msgsTriggerWithResultCodeRequestCodecIdentity = "UWVMROS1_999f63504788e522f7d0108a895cf35cd101e9a50856e480ae9edabf791bcf94"
-- | @brief Encode every field of complete abb_robot_msgs/TriggerWithResultCodeRequest.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsTriggerWithResultCodeRequest :: Ros1Abb_robot_msgsTriggerWithResultCodeRequest -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsTriggerWithResultCodeRequest value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/TriggerWithResultCodeRequest.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsTriggerWithResultCodeRequest :: W.Parser Ros1Abb_robot_msgsTriggerWithResultCodeRequest
readRos1Abb_robot_msgsTriggerWithResultCodeRequest = do
    let value = Ros1Abb_robot_msgsTriggerWithResultCodeRequest 
    case encodeRos1Abb_robot_msgsTriggerWithResultCodeRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/TriggerWithResultCodeRequest.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsTriggerWithResultCodeRequest :: [Word8] -> Either Word32 Ros1Abb_robot_msgsTriggerWithResultCodeRequest
decodeRos1Abb_robot_msgsTriggerWithResultCodeRequest bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsTriggerWithResultCodeRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original abb_robot_msgs/TriggerWithResultCodeResponse value.
-- | @details Retain every original field in declaration order. Canonical extent 6..518 bytes.
data Ros1Abb_robot_msgsTriggerWithResultCodeResponse = Ros1Abb_robot_msgsTriggerWithResultCodeResponse
    {
    -- | @brief Original abb_robot_msgs/TriggerWithResultCodeResponse.result_code field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Abb_robot_msgsTriggerWithResultCodeResponse_result_code :: Word16
    ,
    -- | @brief Original abb_robot_msgs/TriggerWithResultCodeResponse.message field.
    -- | @details Original type string. String bound 512 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Abb_robot_msgsTriggerWithResultCodeResponse_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Abb_robot_msgsTriggerWithResultCodeResponseCodecIdentity :: String
ros1Abb_robot_msgsTriggerWithResultCodeResponseCodecIdentity = "UWVMROS1_4ef5c987592e849766b82b7fd99a65b7a1e17605f3e3341c99803181887967ff"
-- | @brief Encode every field of complete abb_robot_msgs/TriggerWithResultCodeResponse.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Abb_robot_msgsTriggerWithResultCodeResponse :: Ros1Abb_robot_msgsTriggerWithResultCodeResponse -> Either Word32 [Word8]
encodeRos1Abb_robot_msgsTriggerWithResultCodeResponse value = do
    chunk0 <- Right (W.putNumber 2 (ros1Abb_robot_msgsTriggerWithResultCodeResponse_result_code value))
    chunk1 <- W.putText 512 (ros1Abb_robot_msgsTriggerWithResultCodeResponse_message value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 518 then Left 22 else Right bytes
-- | @brief Read every field of nested abb_robot_msgs/TriggerWithResultCodeResponse.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Abb_robot_msgsTriggerWithResultCodeResponse :: W.Parser Ros1Abb_robot_msgsTriggerWithResultCodeResponse
readRos1Abb_robot_msgsTriggerWithResultCodeResponse = do
    value0 <- fromIntegral <$> W.number 2
    value1 <- W.text 512
    let value = Ros1Abb_robot_msgsTriggerWithResultCodeResponse value0 value1
    case encodeRos1Abb_robot_msgsTriggerWithResultCodeResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete abb_robot_msgs/TriggerWithResultCodeResponse.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Abb_robot_msgsTriggerWithResultCodeResponse :: [Word8] -> Either Word32 Ros1Abb_robot_msgsTriggerWithResultCodeResponse
decodeRos1Abb_robot_msgsTriggerWithResultCodeResponse bytes
    | length bytes < 6 || length bytes > 518 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Abb_robot_msgsTriggerWithResultCodeResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original duration value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros1Duration = Ros1Duration
    {
    -- | @brief Original duration.sec field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Duration_sec :: Int32
    ,
    -- | @brief Original duration.nsec field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Duration_nsec :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1DurationCodecIdentity :: String
ros1DurationCodecIdentity = "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8"
-- | @brief Encode every field of complete duration.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Duration :: Ros1Duration -> Either Word32 [Word8]
encodeRos1Duration value = do
    if ros1Duration_nsec value >= 1000000000 || ros1Duration_nsec value < 0 then Left 22 else Right ()
    chunk0 <- Right (W.putNumber 4 (ros1Duration_sec value))
    chunk1 <- Right (W.putNumber 4 (ros1Duration_nsec value))
    let bytes = concat [chunk0, chunk1]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested duration.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Duration :: W.Parser Ros1Duration
readRos1Duration = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value = Ros1Duration value0 value1
    case encodeRos1Duration value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete duration.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Duration :: [Word8] -> Either Word32 Ros1Duration
decodeRos1Duration bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Duration bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original trajectory_msgs/JointTrajectoryPoint value.
-- | @details Retain every original field in declaration order. Canonical extent 24..408 bytes.
data Ros1Trajectory_msgsJointTrajectoryPoint = Ros1Trajectory_msgsJointTrajectoryPoint
    {
    -- | @brief Original trajectory_msgs/JointTrajectoryPoint.positions field.
    -- | @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Trajectory_msgsJointTrajectoryPoint_positions :: [Double]
    ,
    -- | @brief Original trajectory_msgs/JointTrajectoryPoint.velocities field.
    -- | @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Trajectory_msgsJointTrajectoryPoint_velocities :: [Double]
    ,
    -- | @brief Original trajectory_msgs/JointTrajectoryPoint.accelerations field.
    -- | @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Trajectory_msgsJointTrajectoryPoint_accelerations :: [Double]
    ,
    -- | @brief Original trajectory_msgs/JointTrajectoryPoint.effort field.
    -- | @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Trajectory_msgsJointTrajectoryPoint_effort :: [Double]
    ,
    -- | @brief Original trajectory_msgs/JointTrajectoryPoint.time_from_start field.
    -- | @details Original type duration. Preserve declared units, frame, signedness and field
    -- | order. Backing storage belongs to this value; constructing or copying it creates no native
    -- | ROS owner.
      ros1Trajectory_msgsJointTrajectoryPoint_time_from_start :: Ros1Duration
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Trajectory_msgsJointTrajectoryPointCodecIdentity :: String
ros1Trajectory_msgsJointTrajectoryPointCodecIdentity = "UWVMROS1_9773572fff8616235c4d7e23fccbe01f28dcfa62c7c80323a65c8c305feba3c5"
-- | @brief Encode every field of complete trajectory_msgs/JointTrajectoryPoint.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Trajectory_msgsJointTrajectoryPoint :: Ros1Trajectory_msgsJointTrajectoryPoint -> Either Word32 [Word8]
encodeRos1Trajectory_msgsJointTrajectoryPoint value = do
    if length (ros1Trajectory_msgsJointTrajectoryPoint_positions value) <= 12 then Right () else Left 22
    item0 <- concat <$> mapM
        (\element -> finite8 (element) castDoubleToWord64)
        (ros1Trajectory_msgsJointTrajectoryPoint_positions value)
    chunk0 <- Right (W.putNumber 4 (length (ros1Trajectory_msgsJointTrajectoryPoint_positions value)) ++ item0)
    if length (ros1Trajectory_msgsJointTrajectoryPoint_velocities value) <= 12 then Right () else Left 22
    item1 <- concat <$> mapM
        (\element -> finite8 (element) castDoubleToWord64)
        (ros1Trajectory_msgsJointTrajectoryPoint_velocities value)
    chunk1 <- Right (W.putNumber 4 (length (ros1Trajectory_msgsJointTrajectoryPoint_velocities value)) ++ item1)
    if length (ros1Trajectory_msgsJointTrajectoryPoint_accelerations value) <= 12 then Right () else Left 22
    item2 <- concat <$> mapM
        (\element -> finite8 (element) castDoubleToWord64)
        (ros1Trajectory_msgsJointTrajectoryPoint_accelerations value)
    chunk2 <- Right (W.putNumber 4 (length (ros1Trajectory_msgsJointTrajectoryPoint_accelerations value)) ++ item2)
    if length (ros1Trajectory_msgsJointTrajectoryPoint_effort value) <= 12 then Right () else Left 22
    item3 <- concat <$> mapM
        (\element -> finite8 (element) castDoubleToWord64)
        (ros1Trajectory_msgsJointTrajectoryPoint_effort value)
    chunk3 <- Right (W.putNumber 4 (length (ros1Trajectory_msgsJointTrajectoryPoint_effort value)) ++ item3)
    chunk4 <- encodeRos1Duration (ros1Trajectory_msgsJointTrajectoryPoint_time_from_start value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4]
    if length bytes > 408 then Left 22 else Right bytes
-- | @brief Read every field of nested trajectory_msgs/JointTrajectoryPoint.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Trajectory_msgsJointTrajectoryPoint :: W.Parser Ros1Trajectory_msgsJointTrajectoryPoint
readRos1Trajectory_msgsJointTrajectoryPoint = do
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
    value4 <- readRos1Duration
    let value = Ros1Trajectory_msgsJointTrajectoryPoint value0 value1 value2 value3 value4
    case encodeRos1Trajectory_msgsJointTrajectoryPoint value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete trajectory_msgs/JointTrajectoryPoint.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Trajectory_msgsJointTrajectoryPoint :: [Word8] -> Either Word32 Ros1Trajectory_msgsJointTrajectoryPoint
decodeRos1Trajectory_msgsJointTrajectoryPoint bytes
    | length bytes < 24 || length bytes > 408 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Trajectory_msgsJointTrajectoryPoint bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original trajectory_msgs/JointTrajectory value.
-- | @details Retain every original field in declaration order. Canonical extent 24..4168 bytes.
data Ros1Trajectory_msgsJointTrajectory = Ros1Trajectory_msgsJointTrajectory
    {
    -- | @brief Original trajectory_msgs/JointTrajectory.header field.
    -- | @details Original type std_msgs/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Trajectory_msgsJointTrajectory_header :: Ros1Std_msgsHeader
    ,
    -- | @brief Original trajectory_msgs/JointTrajectory.joint_names field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    -- | bound/count 12 elements. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Trajectory_msgsJointTrajectory_joint_names :: [[Word8]]
    ,
    -- | @brief Original trajectory_msgs/JointTrajectory.points field.
    -- | @details Original type trajectory_msgs/JointTrajectoryPoint. Shape sequence; bound/count 8
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros1Trajectory_msgsJointTrajectory_points :: [Ros1Trajectory_msgsJointTrajectoryPoint]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Trajectory_msgsJointTrajectoryCodecIdentity :: String
ros1Trajectory_msgsJointTrajectoryCodecIdentity = "UWVMROS1_079e6c432f0a858d6bd47c87aaf353a8b0676706809e0f984705b1a688de282b"
-- | @brief Encode every field of complete trajectory_msgs/JointTrajectory.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Trajectory_msgsJointTrajectory :: Ros1Trajectory_msgsJointTrajectory -> Either Word32 [Word8]
encodeRos1Trajectory_msgsJointTrajectory value = do
    chunk0 <- encodeRos1Std_msgsHeader (ros1Trajectory_msgsJointTrajectory_header value)
    if length (ros1Trajectory_msgsJointTrajectory_joint_names value) <= 12 then Right () else Left 22
    item1 <- concat <$> mapM (\element -> W.putText 64 (element)) (ros1Trajectory_msgsJointTrajectory_joint_names value)
    chunk1 <- Right (W.putNumber 4 (length (ros1Trajectory_msgsJointTrajectory_joint_names value)) ++ item1)
    if length (ros1Trajectory_msgsJointTrajectory_points value) <= 8 then Right () else Left 22
    item2 <- concat <$> mapM
        (\element -> encodeRos1Trajectory_msgsJointTrajectoryPoint (element))
        (ros1Trajectory_msgsJointTrajectory_points value)
    chunk2 <- Right (W.putNumber 4 (length (ros1Trajectory_msgsJointTrajectory_points value)) ++ item2)
    let bytes = concat [chunk0, chunk1, chunk2]
    if length bytes > 4168 then Left 22 else Right bytes
-- | @brief Read every field of nested trajectory_msgs/JointTrajectory.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Trajectory_msgsJointTrajectory :: W.Parser Ros1Trajectory_msgsJointTrajectory
readRos1Trajectory_msgsJointTrajectory = do
    value0 <- readRos1Std_msgsHeader
    count1 <- W.number 4
    if count1 > 12 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (W.text 64)
    count2 <- W.number 4
    if count2 > 8 then W.reject else pure ()
    value2 <- replicateM (fromIntegral count2) (readRos1Trajectory_msgsJointTrajectoryPoint)
    let value = Ros1Trajectory_msgsJointTrajectory value0 value1 value2
    case encodeRos1Trajectory_msgsJointTrajectory value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete trajectory_msgs/JointTrajectory.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Trajectory_msgsJointTrajectory :: [Word8] -> Either Word32 Ros1Trajectory_msgsJointTrajectory
decodeRos1Trajectory_msgsJointTrajectory bytes
    | length bytes < 24 || length bytes > 4168 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Trajectory_msgsJointTrajectory bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original control_msgs/JointTolerance value.
-- | @details Retain every original field in declaration order. Canonical extent 28..92 bytes.
data Ros1Control_msgsJointTolerance = Ros1Control_msgsJointTolerance
    {
    -- | @brief Original control_msgs/JointTolerance.name field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Control_msgsJointTolerance_name :: [Word8]
    ,
    -- | @brief Original control_msgs/JointTolerance.position field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Control_msgsJointTolerance_position :: Double
    ,
    -- | @brief Original control_msgs/JointTolerance.velocity field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Control_msgsJointTolerance_velocity :: Double
    ,
    -- | @brief Original control_msgs/JointTolerance.acceleration field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Control_msgsJointTolerance_acceleration :: Double
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Control_msgsJointToleranceCodecIdentity :: String
ros1Control_msgsJointToleranceCodecIdentity = "UWVMROS1_c9f71f98726d4a6621dcc8db96a394a24941a79d9041c8ad7a07724ee64d3c88"
-- | @brief Encode every field of complete control_msgs/JointTolerance.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Control_msgsJointTolerance :: Ros1Control_msgsJointTolerance -> Either Word32 [Word8]
encodeRos1Control_msgsJointTolerance value = do
    chunk0 <- W.putText 64 (ros1Control_msgsJointTolerance_name value)
    chunk1 <- finite8 (ros1Control_msgsJointTolerance_position value) castDoubleToWord64
    chunk2 <- finite8 (ros1Control_msgsJointTolerance_velocity value) castDoubleToWord64
    chunk3 <- finite8 (ros1Control_msgsJointTolerance_acceleration value) castDoubleToWord64
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 92 then Left 22 else Right bytes
-- | @brief Read every field of nested control_msgs/JointTolerance.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Control_msgsJointTolerance :: W.Parser Ros1Control_msgsJointTolerance
readRos1Control_msgsJointTolerance = do
    value0 <- W.text 64
    value1 <- castWord64ToDouble <$> W.number 8
    value2 <- castWord64ToDouble <$> W.number 8
    value3 <- castWord64ToDouble <$> W.number 8
    let value = Ros1Control_msgsJointTolerance value0 value1 value2 value3
    case encodeRos1Control_msgsJointTolerance value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete control_msgs/JointTolerance.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Control_msgsJointTolerance :: [Word8] -> Either Word32 Ros1Control_msgsJointTolerance
decodeRos1Control_msgsJointTolerance bytes
    | length bytes < 28 || length bytes > 92 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Control_msgsJointTolerance bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original control_msgs/FollowJointTrajectoryGoal value.
-- | @details Retain every original field in declaration order. Canonical extent 40..6392 bytes.
data Ros1Control_msgsFollowJointTrajectoryGoal = Ros1Control_msgsFollowJointTrajectoryGoal
    {
    -- | @brief Original control_msgs/FollowJointTrajectoryGoal.trajectory field.
    -- | @details Original type trajectory_msgs/JointTrajectory. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Control_msgsFollowJointTrajectoryGoal_trajectory :: Ros1Trajectory_msgsJointTrajectory
    ,
    -- | @brief Original control_msgs/FollowJointTrajectoryGoal.path_tolerance field.
    -- | @details Original type control_msgs/JointTolerance. Shape sequence; bound/count 12
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros1Control_msgsFollowJointTrajectoryGoal_path_tolerance :: [Ros1Control_msgsJointTolerance]
    ,
    -- | @brief Original control_msgs/FollowJointTrajectoryGoal.goal_tolerance field.
    -- | @details Original type control_msgs/JointTolerance. Shape sequence; bound/count 12
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros1Control_msgsFollowJointTrajectoryGoal_goal_tolerance :: [Ros1Control_msgsJointTolerance]
    ,
    -- | @brief Original control_msgs/FollowJointTrajectoryGoal.goal_time_tolerance field.
    -- | @details Original type duration. Preserve declared units, frame, signedness and field
    -- | order. Backing storage belongs to this value; constructing or copying it creates no native
    -- | ROS owner.
      ros1Control_msgsFollowJointTrajectoryGoal_goal_time_tolerance :: Ros1Duration
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Control_msgsFollowJointTrajectoryGoalCodecIdentity :: String
ros1Control_msgsFollowJointTrajectoryGoalCodecIdentity = "UWVMROS1_e9fda6f9e732450f2cf1af046ceb67815e6e1a22105eda2fee38f8f470252d40"
-- | @brief Encode every field of complete control_msgs/FollowJointTrajectoryGoal.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Control_msgsFollowJointTrajectoryGoal :: Ros1Control_msgsFollowJointTrajectoryGoal -> Either Word32 [Word8]
encodeRos1Control_msgsFollowJointTrajectoryGoal value = do
    chunk0 <- encodeRos1Trajectory_msgsJointTrajectory (ros1Control_msgsFollowJointTrajectoryGoal_trajectory value)
    if length (ros1Control_msgsFollowJointTrajectoryGoal_path_tolerance value) <= 12 then Right () else Left 22
    item1 <- concat <$> mapM
        (\element -> encodeRos1Control_msgsJointTolerance (element))
        (ros1Control_msgsFollowJointTrajectoryGoal_path_tolerance value)
    chunk1 <- Right (W.putNumber 4 (length (ros1Control_msgsFollowJointTrajectoryGoal_path_tolerance value)) ++ item1)
    if length (ros1Control_msgsFollowJointTrajectoryGoal_goal_tolerance value) <= 12 then Right () else Left 22
    item2 <- concat <$> mapM
        (\element -> encodeRos1Control_msgsJointTolerance (element))
        (ros1Control_msgsFollowJointTrajectoryGoal_goal_tolerance value)
    chunk2 <- Right (W.putNumber 4 (length (ros1Control_msgsFollowJointTrajectoryGoal_goal_tolerance value)) ++ item2)
    chunk3 <- encodeRos1Duration (ros1Control_msgsFollowJointTrajectoryGoal_goal_time_tolerance value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3]
    if length bytes > 6392 then Left 22 else Right bytes
-- | @brief Read every field of nested control_msgs/FollowJointTrajectoryGoal.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Control_msgsFollowJointTrajectoryGoal :: W.Parser Ros1Control_msgsFollowJointTrajectoryGoal
readRos1Control_msgsFollowJointTrajectoryGoal = do
    value0 <- readRos1Trajectory_msgsJointTrajectory
    count1 <- W.number 4
    if count1 > 12 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (readRos1Control_msgsJointTolerance)
    count2 <- W.number 4
    if count2 > 12 then W.reject else pure ()
    value2 <- replicateM (fromIntegral count2) (readRos1Control_msgsJointTolerance)
    value3 <- readRos1Duration
    let value = Ros1Control_msgsFollowJointTrajectoryGoal value0 value1 value2 value3
    case encodeRos1Control_msgsFollowJointTrajectoryGoal value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete control_msgs/FollowJointTrajectoryGoal.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Control_msgsFollowJointTrajectoryGoal :: [Word8] -> Either Word32 Ros1Control_msgsFollowJointTrajectoryGoal
decodeRos1Control_msgsFollowJointTrajectoryGoal bytes
    | length bytes < 40 || length bytes > 6392 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Control_msgsFollowJointTrajectoryGoal bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original control_msgs/FollowJointTrajectoryResult value.
-- | @details Retain every original field in declaration order. Canonical extent 8..4104 bytes.
data Ros1Control_msgsFollowJointTrajectoryResult = Ros1Control_msgsFollowJointTrajectoryResult
    {
    -- | @brief Original control_msgs/FollowJointTrajectoryResult.error_code field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Control_msgsFollowJointTrajectoryResult_error_code :: Int32
    ,
    -- | @brief Original control_msgs/FollowJointTrajectoryResult.error_string field.
    -- | @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Control_msgsFollowJointTrajectoryResult_error_string :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Control_msgsFollowJointTrajectoryResultCodecIdentity :: String
ros1Control_msgsFollowJointTrajectoryResultCodecIdentity = "UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281"
-- | @brief Original control_msgs/FollowJointTrajectoryResult.SUCCESSFUL constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Control_msgsFollowJointTrajectoryResult_SUCCESSFUL :: Int32
ros1Control_msgsFollowJointTrajectoryResult_SUCCESSFUL = 0
-- | @brief Original control_msgs/FollowJointTrajectoryResult.INVALID_GOAL constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Control_msgsFollowJointTrajectoryResult_INVALID_GOAL :: Int32
ros1Control_msgsFollowJointTrajectoryResult_INVALID_GOAL = -1
-- | @brief Original control_msgs/FollowJointTrajectoryResult.INVALID_JOINTS constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Control_msgsFollowJointTrajectoryResult_INVALID_JOINTS :: Int32
ros1Control_msgsFollowJointTrajectoryResult_INVALID_JOINTS = -2
-- | @brief Original control_msgs/FollowJointTrajectoryResult.OLD_HEADER_TIMESTAMP constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Control_msgsFollowJointTrajectoryResult_OLD_HEADER_TIMESTAMP :: Int32
ros1Control_msgsFollowJointTrajectoryResult_OLD_HEADER_TIMESTAMP = -3
-- | @brief Original control_msgs/FollowJointTrajectoryResult.PATH_TOLERANCE_VIOLATED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Control_msgsFollowJointTrajectoryResult_PATH_TOLERANCE_VIOLATED :: Int32
ros1Control_msgsFollowJointTrajectoryResult_PATH_TOLERANCE_VIOLATED = -4
-- | @brief Original control_msgs/FollowJointTrajectoryResult.GOAL_TOLERANCE_VIOLATED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros1Control_msgsFollowJointTrajectoryResult_GOAL_TOLERANCE_VIOLATED :: Int32
ros1Control_msgsFollowJointTrajectoryResult_GOAL_TOLERANCE_VIOLATED = -5
-- | @brief Encode every field of complete control_msgs/FollowJointTrajectoryResult.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Control_msgsFollowJointTrajectoryResult :: Ros1Control_msgsFollowJointTrajectoryResult -> Either Word32 [Word8]
encodeRos1Control_msgsFollowJointTrajectoryResult value = do
    chunk0 <- Right (W.putNumber 4 (ros1Control_msgsFollowJointTrajectoryResult_error_code value))
    chunk1 <- W.putText 4096 (ros1Control_msgsFollowJointTrajectoryResult_error_string value)
    let bytes = concat [chunk0, chunk1]
    if length bytes > 4104 then Left 22 else Right bytes
-- | @brief Read every field of nested control_msgs/FollowJointTrajectoryResult.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Control_msgsFollowJointTrajectoryResult :: W.Parser Ros1Control_msgsFollowJointTrajectoryResult
readRos1Control_msgsFollowJointTrajectoryResult = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- W.text 4096
    let value = Ros1Control_msgsFollowJointTrajectoryResult value0 value1
    case encodeRos1Control_msgsFollowJointTrajectoryResult value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete control_msgs/FollowJointTrajectoryResult.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Control_msgsFollowJointTrajectoryResult :: [Word8] -> Either Word32 Ros1Control_msgsFollowJointTrajectoryResult
decodeRos1Control_msgsFollowJointTrajectoryResult bytes
    | length bytes < 8 || length bytes > 4104 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Control_msgsFollowJointTrajectoryResult bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original control_msgs/FollowJointTrajectoryFeedback value.
-- | @details Retain every original field in declaration order. Canonical extent 92..2124 bytes.
data Ros1Control_msgsFollowJointTrajectoryFeedback = Ros1Control_msgsFollowJointTrajectoryFeedback
    {
    -- | @brief Original control_msgs/FollowJointTrajectoryFeedback.header field.
    -- | @details Original type std_msgs/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Control_msgsFollowJointTrajectoryFeedback_header :: Ros1Std_msgsHeader
    ,
    -- | @brief Original control_msgs/FollowJointTrajectoryFeedback.joint_names field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    -- | bound/count 12 elements. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Control_msgsFollowJointTrajectoryFeedback_joint_names :: [[Word8]]
    ,
    -- | @brief Original control_msgs/FollowJointTrajectoryFeedback.desired field.
    -- | @details Original type trajectory_msgs/JointTrajectoryPoint. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Control_msgsFollowJointTrajectoryFeedback_desired :: Ros1Trajectory_msgsJointTrajectoryPoint
    ,
    -- | @brief Original control_msgs/FollowJointTrajectoryFeedback.actual field.
    -- | @details Original type trajectory_msgs/JointTrajectoryPoint. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Control_msgsFollowJointTrajectoryFeedback_actual :: Ros1Trajectory_msgsJointTrajectoryPoint
    ,
    -- | @brief Original control_msgs/FollowJointTrajectoryFeedback.error field.
    -- | @details Original type trajectory_msgs/JointTrajectoryPoint. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Control_msgsFollowJointTrajectoryFeedback_error :: Ros1Trajectory_msgsJointTrajectoryPoint
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Control_msgsFollowJointTrajectoryFeedbackCodecIdentity :: String
ros1Control_msgsFollowJointTrajectoryFeedbackCodecIdentity = "UWVMROS1_a1ad5a1f8a00b60f97d06209737993bd395d83d1a008705d65193b63933b62a8"
-- | @brief Encode every field of complete control_msgs/FollowJointTrajectoryFeedback.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Control_msgsFollowJointTrajectoryFeedback :: Ros1Control_msgsFollowJointTrajectoryFeedback -> Either Word32 [Word8]
encodeRos1Control_msgsFollowJointTrajectoryFeedback value = do
    chunk0 <- encodeRos1Std_msgsHeader (ros1Control_msgsFollowJointTrajectoryFeedback_header value)
    if length (ros1Control_msgsFollowJointTrajectoryFeedback_joint_names value) <= 12 then Right () else Left 22
    item1 <- concat <$> mapM
        (\element -> W.putText 64 (element))
        (ros1Control_msgsFollowJointTrajectoryFeedback_joint_names value)
    chunk1 <- Right (W.putNumber 4 (length (ros1Control_msgsFollowJointTrajectoryFeedback_joint_names value)) ++ item1)
    chunk2 <- encodeRos1Trajectory_msgsJointTrajectoryPoint (ros1Control_msgsFollowJointTrajectoryFeedback_desired value)
    chunk3 <- encodeRos1Trajectory_msgsJointTrajectoryPoint (ros1Control_msgsFollowJointTrajectoryFeedback_actual value)
    chunk4 <- encodeRos1Trajectory_msgsJointTrajectoryPoint (ros1Control_msgsFollowJointTrajectoryFeedback_error value)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4]
    if length bytes > 2124 then Left 22 else Right bytes
-- | @brief Read every field of nested control_msgs/FollowJointTrajectoryFeedback.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Control_msgsFollowJointTrajectoryFeedback :: W.Parser Ros1Control_msgsFollowJointTrajectoryFeedback
readRos1Control_msgsFollowJointTrajectoryFeedback = do
    value0 <- readRos1Std_msgsHeader
    count1 <- W.number 4
    if count1 > 12 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (W.text 64)
    value2 <- readRos1Trajectory_msgsJointTrajectoryPoint
    value3 <- readRos1Trajectory_msgsJointTrajectoryPoint
    value4 <- readRos1Trajectory_msgsJointTrajectoryPoint
    let value = Ros1Control_msgsFollowJointTrajectoryFeedback value0 value1 value2 value3 value4
    case encodeRos1Control_msgsFollowJointTrajectoryFeedback value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete control_msgs/FollowJointTrajectoryFeedback.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Control_msgsFollowJointTrajectoryFeedback :: [Word8] -> Either Word32 Ros1Control_msgsFollowJointTrajectoryFeedback
decodeRos1Control_msgsFollowJointTrajectoryFeedback bytes
    | length bytes < 92 || length bytes > 2124 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Control_msgsFollowJointTrajectoryFeedback bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original sensor_msgs/JointState value.
-- | @details Retain every original field in declaration order. Canonical extent 32..1200 bytes.
data Ros1Sensor_msgsJointState = Ros1Sensor_msgsJointState
    {
    -- | @brief Original sensor_msgs/JointState.header field.
    -- | @details Original type std_msgs/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros1Sensor_msgsJointState_header :: Ros1Std_msgsHeader
    ,
    -- | @brief Original sensor_msgs/JointState.name field.
    -- | @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    -- | bound/count 12 elements. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Sensor_msgsJointState_name :: [[Word8]]
    ,
    -- | @brief Original sensor_msgs/JointState.position field.
    -- | @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Sensor_msgsJointState_position :: [Double]
    ,
    -- | @brief Original sensor_msgs/JointState.velocity field.
    -- | @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Sensor_msgsJointState_velocity :: [Double]
    ,
    -- | @brief Original sensor_msgs/JointState.effort field.
    -- | @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Sensor_msgsJointState_effort :: [Double]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Sensor_msgsJointStateCodecIdentity :: String
ros1Sensor_msgsJointStateCodecIdentity = "UWVMROS1_8d1bb9c4903dd4b070a5ab157b3590815722d6b574d610c9b9fb5ead8be7a057"
-- | @brief Encode every field of complete sensor_msgs/JointState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Sensor_msgsJointState :: Ros1Sensor_msgsJointState -> Either Word32 [Word8]
encodeRos1Sensor_msgsJointState value = do
    chunk0 <- encodeRos1Std_msgsHeader (ros1Sensor_msgsJointState_header value)
    if length (ros1Sensor_msgsJointState_name value) <= 12 then Right () else Left 22
    item1 <- concat <$> mapM (\element -> W.putText 64 (element)) (ros1Sensor_msgsJointState_name value)
    chunk1 <- Right (W.putNumber 4 (length (ros1Sensor_msgsJointState_name value)) ++ item1)
    if length (ros1Sensor_msgsJointState_position value) <= 12 then Right () else Left 22
    item2 <- concat <$> mapM
        (\element -> finite8 (element) castDoubleToWord64)
        (ros1Sensor_msgsJointState_position value)
    chunk2 <- Right (W.putNumber 4 (length (ros1Sensor_msgsJointState_position value)) ++ item2)
    if length (ros1Sensor_msgsJointState_velocity value) <= 12 then Right () else Left 22
    item3 <- concat <$> mapM
        (\element -> finite8 (element) castDoubleToWord64)
        (ros1Sensor_msgsJointState_velocity value)
    chunk3 <- Right (W.putNumber 4 (length (ros1Sensor_msgsJointState_velocity value)) ++ item3)
    if length (ros1Sensor_msgsJointState_effort value) <= 12 then Right () else Left 22
    item4 <- concat <$> mapM (\element -> finite8 (element) castDoubleToWord64) (ros1Sensor_msgsJointState_effort value)
    chunk4 <- Right (W.putNumber 4 (length (ros1Sensor_msgsJointState_effort value)) ++ item4)
    let bytes = concat [chunk0, chunk1, chunk2, chunk3, chunk4]
    if length bytes > 1200 then Left 22 else Right bytes
-- | @brief Read every field of nested sensor_msgs/JointState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Sensor_msgsJointState :: W.Parser Ros1Sensor_msgsJointState
readRos1Sensor_msgsJointState = do
    value0 <- readRos1Std_msgsHeader
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
    let value = Ros1Sensor_msgsJointState value0 value1 value2 value3 value4
    case encodeRos1Sensor_msgsJointState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete sensor_msgs/JointState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Sensor_msgsJointState :: [Word8] -> Either Word32 Ros1Sensor_msgsJointState
decodeRos1Sensor_msgsJointState bytes
    | length bytes < 32 || length bytes > 1200 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Sensor_msgsJointState bytes
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

-- | @brief Construct complete original abb_egm_msgs/EGMChannelState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_egm_msgsEGMChannelState :: Either Word32 Ros1Abb_egm_msgsEGMChannelState
defaultRos1Abb_egm_msgsEGMChannelState = decodeRos1Abb_egm_msgsEGMChannelState
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original time defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Time :: Either Word32 Ros1Time
defaultRos1Time = decodeRos1Time
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original std_msgs/Header defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Std_msgsHeader :: Either Word32 Ros1Std_msgsHeader
defaultRos1Std_msgsHeader = decodeRos1Std_msgsHeader
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_egm_msgs/EGMState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_egm_msgsEGMState :: Either Word32 Ros1Abb_egm_msgsEGMState
defaultRos1Abb_egm_msgsEGMState = decodeRos1Abb_egm_msgsEGMState
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_msgs/ConfData defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_msgsConfData :: Either Word32 Ros1Abb_rapid_msgsConfData
defaultRos1Abb_rapid_msgsConfData = decodeRos1Abb_rapid_msgsConfData
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_msgs/ExtJoint defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_msgsExtJoint :: Either Word32 Ros1Abb_rapid_msgsExtJoint
defaultRos1Abb_rapid_msgsExtJoint = decodeRos1Abb_rapid_msgsExtJoint
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_msgs/RobJoint defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_msgsRobJoint :: Either Word32 Ros1Abb_rapid_msgsRobJoint
defaultRos1Abb_rapid_msgsRobJoint = decodeRos1Abb_rapid_msgsRobJoint
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_msgs/JointTarget defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_msgsJointTarget :: Either Word32 Ros1Abb_rapid_msgsJointTarget
defaultRos1Abb_rapid_msgsJointTarget = decodeRos1Abb_rapid_msgsJointTarget
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_msgs/Pos defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_msgsPos :: Either Word32 Ros1Abb_rapid_msgsPos
defaultRos1Abb_rapid_msgsPos = decodeRos1Abb_rapid_msgsPos
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_msgs/Orient defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_msgsOrient :: Either Word32 Ros1Abb_rapid_msgsOrient
defaultRos1Abb_rapid_msgsOrient = decodeRos1Abb_rapid_msgsOrient
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_msgs/LoadData defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_msgsLoadData :: Either Word32 Ros1Abb_rapid_msgsLoadData
defaultRos1Abb_rapid_msgsLoadData = decodeRos1Abb_rapid_msgsLoadData
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_msgs/Pose defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_msgsPose :: Either Word32 Ros1Abb_rapid_msgsPose
defaultRos1Abb_rapid_msgsPose = decodeRos1Abb_rapid_msgsPose
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_msgs/RobTarget defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_msgsRobTarget :: Either Word32 Ros1Abb_rapid_msgsRobTarget
defaultRos1Abb_rapid_msgsRobTarget = decodeRos1Abb_rapid_msgsRobTarget
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_msgs/ToolData defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_msgsToolData :: Either Word32 Ros1Abb_rapid_msgsToolData
defaultRos1Abb_rapid_msgsToolData = decodeRos1Abb_rapid_msgsToolData
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0
    ]

-- | @brief Construct complete original abb_rapid_msgs/WObjData defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_msgsWObjData :: Either Word32 Ros1Abb_rapid_msgsWObjData
defaultRos1Abb_rapid_msgsWObjData = decodeRos1Abb_rapid_msgsWObjData
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0
    ]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/EGMActivateSettings defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_sm_addin_msgsEGMActivateSettings :: Either Word32 Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings
defaultRos1Abb_rapid_sm_addin_msgsEGMActivateSettings = decodeRos1Abb_rapid_sm_addin_msgsEGMActivateSettings
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

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/EGMRunSettings defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_sm_addin_msgsEGMRunSettings :: Either Word32 Ros1Abb_rapid_sm_addin_msgsEGMRunSettings
defaultRos1Abb_rapid_sm_addin_msgsEGMRunSettings = decodeRos1Abb_rapid_sm_addin_msgsEGMRunSettings
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/EGMSetupSettings defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_sm_addin_msgsEGMSetupSettings :: Either Word32 Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings
defaultRos1Abb_rapid_sm_addin_msgsEGMSetupSettings = decodeRos1Abb_rapid_sm_addin_msgsEGMSetupSettings
    [0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/EGMStopSettings defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_sm_addin_msgsEGMStopSettings :: Either Word32 Ros1Abb_rapid_sm_addin_msgsEGMStopSettings
defaultRos1Abb_rapid_sm_addin_msgsEGMStopSettings = decodeRos1Abb_rapid_sm_addin_msgsEGMStopSettings
    [0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/EGMSettings defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_sm_addin_msgsEGMSettings :: Either Word32 Ros1Abb_rapid_sm_addin_msgsEGMSettings
defaultRos1Abb_rapid_sm_addin_msgsEGMSettings = decodeRos1Abb_rapid_sm_addin_msgsEGMSettings
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

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/GetEGMSettingsRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest :: Either Word32 Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest
defaultRos1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest = decodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest
    [0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse :: Either Word32 Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse
defaultRos1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse = decodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse
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

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/StateMachineState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_sm_addin_msgsStateMachineState :: Either Word32 Ros1Abb_rapid_sm_addin_msgsStateMachineState
defaultRos1Abb_rapid_sm_addin_msgsStateMachineState = decodeRos1Abb_rapid_sm_addin_msgsStateMachineState
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/RuntimeState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_sm_addin_msgsRuntimeState :: Either Word32 Ros1Abb_rapid_sm_addin_msgsRuntimeState
defaultRos1Abb_rapid_sm_addin_msgsRuntimeState = decodeRos1Abb_rapid_sm_addin_msgsRuntimeState
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest :: Either Word32 Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest
defaultRos1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest = decodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest
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

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse :: Either Word32 Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse
defaultRos1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse = decodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest :: Either Word32 Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest
defaultRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest = decodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse :: Either Word32 Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse
defaultRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse = decodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/SetSGCommandRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_sm_addin_msgsSetSGCommandRequest :: Either Word32 Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest
defaultRos1Abb_rapid_sm_addin_msgsSetSGCommandRequest = decodeRos1Abb_rapid_sm_addin_msgsSetSGCommandRequest
    [0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_rapid_sm_addin_msgs/SetSGCommandResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_rapid_sm_addin_msgsSetSGCommandResponse :: Either Word32 Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse
defaultRos1Abb_rapid_sm_addin_msgsSetSGCommandResponse = decodeRos1Abb_rapid_sm_addin_msgsSetSGCommandResponse
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/GetFileContentsRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetFileContentsRequest :: Either Word32 Ros1Abb_robot_msgsGetFileContentsRequest
defaultRos1Abb_robot_msgsGetFileContentsRequest = decodeRos1Abb_robot_msgsGetFileContentsRequest
    [0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/GetFileContentsResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetFileContentsResponse :: Either Word32 Ros1Abb_robot_msgsGetFileContentsResponse
defaultRos1Abb_robot_msgsGetFileContentsResponse = decodeRos1Abb_robot_msgsGetFileContentsResponse
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/GetIOSignalRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetIOSignalRequest :: Either Word32 Ros1Abb_robot_msgsGetIOSignalRequest
defaultRos1Abb_robot_msgsGetIOSignalRequest = decodeRos1Abb_robot_msgsGetIOSignalRequest
    [0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/GetIOSignalResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetIOSignalResponse :: Either Word32 Ros1Abb_robot_msgsGetIOSignalResponse
defaultRos1Abb_robot_msgsGetIOSignalResponse = decodeRos1Abb_robot_msgsGetIOSignalResponse
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/RAPIDSymbolPath defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsRAPIDSymbolPath :: Either Word32 Ros1Abb_robot_msgsRAPIDSymbolPath
defaultRos1Abb_robot_msgsRAPIDSymbolPath = decodeRos1Abb_robot_msgsRAPIDSymbolPath
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/GetRAPIDBoolRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetRAPIDBoolRequest :: Either Word32 Ros1Abb_robot_msgsGetRAPIDBoolRequest
defaultRos1Abb_robot_msgsGetRAPIDBoolRequest = decodeRos1Abb_robot_msgsGetRAPIDBoolRequest
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/GetRAPIDBoolResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetRAPIDBoolResponse :: Either Word32 Ros1Abb_robot_msgsGetRAPIDBoolResponse
defaultRos1Abb_robot_msgsGetRAPIDBoolResponse = decodeRos1Abb_robot_msgsGetRAPIDBoolResponse
    [0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/GetRAPIDDnumRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetRAPIDDnumRequest :: Either Word32 Ros1Abb_robot_msgsGetRAPIDDnumRequest
defaultRos1Abb_robot_msgsGetRAPIDDnumRequest = decodeRos1Abb_robot_msgsGetRAPIDDnumRequest
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/GetRAPIDDnumResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetRAPIDDnumResponse :: Either Word32 Ros1Abb_robot_msgsGetRAPIDDnumResponse
defaultRos1Abb_robot_msgsGetRAPIDDnumResponse = decodeRos1Abb_robot_msgsGetRAPIDDnumResponse
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/GetRAPIDNumRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetRAPIDNumRequest :: Either Word32 Ros1Abb_robot_msgsGetRAPIDNumRequest
defaultRos1Abb_robot_msgsGetRAPIDNumRequest = decodeRos1Abb_robot_msgsGetRAPIDNumRequest
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/GetRAPIDNumResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetRAPIDNumResponse :: Either Word32 Ros1Abb_robot_msgsGetRAPIDNumResponse
defaultRos1Abb_robot_msgsGetRAPIDNumResponse = decodeRos1Abb_robot_msgsGetRAPIDNumResponse
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/GetRAPIDStringRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetRAPIDStringRequest :: Either Word32 Ros1Abb_robot_msgsGetRAPIDStringRequest
defaultRos1Abb_robot_msgsGetRAPIDStringRequest = decodeRos1Abb_robot_msgsGetRAPIDStringRequest
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/GetRAPIDStringResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetRAPIDStringResponse :: Either Word32 Ros1Abb_robot_msgsGetRAPIDStringResponse
defaultRos1Abb_robot_msgsGetRAPIDStringResponse = decodeRos1Abb_robot_msgsGetRAPIDStringResponse
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/GetRAPIDSymbolRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetRAPIDSymbolRequest :: Either Word32 Ros1Abb_robot_msgsGetRAPIDSymbolRequest
defaultRos1Abb_robot_msgsGetRAPIDSymbolRequest = decodeRos1Abb_robot_msgsGetRAPIDSymbolRequest
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/GetRAPIDSymbolResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetRAPIDSymbolResponse :: Either Word32 Ros1Abb_robot_msgsGetRAPIDSymbolResponse
defaultRos1Abb_robot_msgsGetRAPIDSymbolResponse = decodeRos1Abb_robot_msgsGetRAPIDSymbolResponse
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/GetRobotControllerDescriptionRequest defaults without ROS
-- | I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetRobotControllerDescriptionRequest :: Either Word32 Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest
defaultRos1Abb_robot_msgsGetRobotControllerDescriptionRequest = decodeRos1Abb_robot_msgsGetRobotControllerDescriptionRequest
    []

-- | @brief Construct complete original abb_robot_msgs/GetRobotControllerDescriptionResponse defaults without
-- | ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetRobotControllerDescriptionResponse :: Either Word32 Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse
defaultRos1Abb_robot_msgsGetRobotControllerDescriptionResponse = decodeRos1Abb_robot_msgsGetRobotControllerDescriptionResponse
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/GetSpeedRatioRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetSpeedRatioRequest :: Either Word32 Ros1Abb_robot_msgsGetSpeedRatioRequest
defaultRos1Abb_robot_msgsGetSpeedRatioRequest = decodeRos1Abb_robot_msgsGetSpeedRatioRequest
    []

-- | @brief Construct complete original abb_robot_msgs/GetSpeedRatioResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsGetSpeedRatioResponse :: Either Word32 Ros1Abb_robot_msgsGetSpeedRatioResponse
defaultRos1Abb_robot_msgsGetSpeedRatioResponse = decodeRos1Abb_robot_msgsGetSpeedRatioResponse
    [0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/MechanicalUnitState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsMechanicalUnitState :: Either Word32 Ros1Abb_robot_msgsMechanicalUnitState
defaultRos1Abb_robot_msgsMechanicalUnitState = decodeRos1Abb_robot_msgsMechanicalUnitState
    [0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/RAPIDTaskState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsRAPIDTaskState :: Either Word32 Ros1Abb_robot_msgsRAPIDTaskState
defaultRos1Abb_robot_msgsRAPIDTaskState = decodeRos1Abb_robot_msgsRAPIDTaskState
    [0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/ServiceResponses defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsServiceResponses :: Either Word32 Ros1Abb_robot_msgsServiceResponses
defaultRos1Abb_robot_msgsServiceResponses = decodeRos1Abb_robot_msgsServiceResponses
    []

-- | @brief Construct complete original abb_robot_msgs/SetFileContentsRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsSetFileContentsRequest :: Either Word32 Ros1Abb_robot_msgsSetFileContentsRequest
defaultRos1Abb_robot_msgsSetFileContentsRequest = decodeRos1Abb_robot_msgsSetFileContentsRequest
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/SetFileContentsResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsSetFileContentsResponse :: Either Word32 Ros1Abb_robot_msgsSetFileContentsResponse
defaultRos1Abb_robot_msgsSetFileContentsResponse = decodeRos1Abb_robot_msgsSetFileContentsResponse
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/SetIOSignalRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsSetIOSignalRequest :: Either Word32 Ros1Abb_robot_msgsSetIOSignalRequest
defaultRos1Abb_robot_msgsSetIOSignalRequest = decodeRos1Abb_robot_msgsSetIOSignalRequest
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/SetIOSignalResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsSetIOSignalResponse :: Either Word32 Ros1Abb_robot_msgsSetIOSignalResponse
defaultRos1Abb_robot_msgsSetIOSignalResponse = decodeRos1Abb_robot_msgsSetIOSignalResponse
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/SetRAPIDBoolRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsSetRAPIDBoolRequest :: Either Word32 Ros1Abb_robot_msgsSetRAPIDBoolRequest
defaultRos1Abb_robot_msgsSetRAPIDBoolRequest = decodeRos1Abb_robot_msgsSetRAPIDBoolRequest
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/SetRAPIDBoolResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsSetRAPIDBoolResponse :: Either Word32 Ros1Abb_robot_msgsSetRAPIDBoolResponse
defaultRos1Abb_robot_msgsSetRAPIDBoolResponse = decodeRos1Abb_robot_msgsSetRAPIDBoolResponse
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/SetRAPIDDnumRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsSetRAPIDDnumRequest :: Either Word32 Ros1Abb_robot_msgsSetRAPIDDnumRequest
defaultRos1Abb_robot_msgsSetRAPIDDnumRequest = decodeRos1Abb_robot_msgsSetRAPIDDnumRequest
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original abb_robot_msgs/SetRAPIDDnumResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsSetRAPIDDnumResponse :: Either Word32 Ros1Abb_robot_msgsSetRAPIDDnumResponse
defaultRos1Abb_robot_msgsSetRAPIDDnumResponse = decodeRos1Abb_robot_msgsSetRAPIDDnumResponse
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/SetRAPIDNumRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsSetRAPIDNumRequest :: Either Word32 Ros1Abb_robot_msgsSetRAPIDNumRequest
defaultRos1Abb_robot_msgsSetRAPIDNumRequest = decodeRos1Abb_robot_msgsSetRAPIDNumRequest
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/SetRAPIDNumResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsSetRAPIDNumResponse :: Either Word32 Ros1Abb_robot_msgsSetRAPIDNumResponse
defaultRos1Abb_robot_msgsSetRAPIDNumResponse = decodeRos1Abb_robot_msgsSetRAPIDNumResponse
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/SetRAPIDStringRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsSetRAPIDStringRequest :: Either Word32 Ros1Abb_robot_msgsSetRAPIDStringRequest
defaultRos1Abb_robot_msgsSetRAPIDStringRequest = decodeRos1Abb_robot_msgsSetRAPIDStringRequest
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/SetRAPIDStringResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsSetRAPIDStringResponse :: Either Word32 Ros1Abb_robot_msgsSetRAPIDStringResponse
defaultRos1Abb_robot_msgsSetRAPIDStringResponse = decodeRos1Abb_robot_msgsSetRAPIDStringResponse
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/SetRAPIDSymbolRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsSetRAPIDSymbolRequest :: Either Word32 Ros1Abb_robot_msgsSetRAPIDSymbolRequest
defaultRos1Abb_robot_msgsSetRAPIDSymbolRequest = decodeRos1Abb_robot_msgsSetRAPIDSymbolRequest
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/SetRAPIDSymbolResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsSetRAPIDSymbolResponse :: Either Word32 Ros1Abb_robot_msgsSetRAPIDSymbolResponse
defaultRos1Abb_robot_msgsSetRAPIDSymbolResponse = decodeRos1Abb_robot_msgsSetRAPIDSymbolResponse
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/SetSpeedRatioRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsSetSpeedRatioRequest :: Either Word32 Ros1Abb_robot_msgsSetSpeedRatioRequest
defaultRos1Abb_robot_msgsSetSpeedRatioRequest = decodeRos1Abb_robot_msgsSetSpeedRatioRequest
    [0]

-- | @brief Construct complete original abb_robot_msgs/SetSpeedRatioResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsSetSpeedRatioResponse :: Either Word32 Ros1Abb_robot_msgsSetSpeedRatioResponse
defaultRos1Abb_robot_msgsSetSpeedRatioResponse = decodeRos1Abb_robot_msgsSetSpeedRatioResponse
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original abb_robot_msgs/SystemState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsSystemState :: Either Word32 Ros1Abb_robot_msgsSystemState
defaultRos1Abb_robot_msgsSystemState = decodeRos1Abb_robot_msgsSystemState
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0
    ]

-- | @brief Construct complete original abb_robot_msgs/TriggerWithResultCodeRequest defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsTriggerWithResultCodeRequest :: Either Word32 Ros1Abb_robot_msgsTriggerWithResultCodeRequest
defaultRos1Abb_robot_msgsTriggerWithResultCodeRequest = decodeRos1Abb_robot_msgsTriggerWithResultCodeRequest
    []

-- | @brief Construct complete original abb_robot_msgs/TriggerWithResultCodeResponse defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Abb_robot_msgsTriggerWithResultCodeResponse :: Either Word32 Ros1Abb_robot_msgsTriggerWithResultCodeResponse
defaultRos1Abb_robot_msgsTriggerWithResultCodeResponse = decodeRos1Abb_robot_msgsTriggerWithResultCodeResponse
    [0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original duration defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Duration :: Either Word32 Ros1Duration
defaultRos1Duration = decodeRos1Duration
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original trajectory_msgs/JointTrajectoryPoint defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Trajectory_msgsJointTrajectoryPoint :: Either Word32 Ros1Trajectory_msgsJointTrajectoryPoint
defaultRos1Trajectory_msgsJointTrajectoryPoint = decodeRos1Trajectory_msgsJointTrajectoryPoint
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original trajectory_msgs/JointTrajectory defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Trajectory_msgsJointTrajectory :: Either Word32 Ros1Trajectory_msgsJointTrajectory
defaultRos1Trajectory_msgsJointTrajectory = decodeRos1Trajectory_msgsJointTrajectory
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original control_msgs/JointTolerance defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Control_msgsJointTolerance :: Either Word32 Ros1Control_msgsJointTolerance
defaultRos1Control_msgsJointTolerance = decodeRos1Control_msgsJointTolerance
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0
    ]

-- | @brief Construct complete original control_msgs/FollowJointTrajectoryGoal defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Control_msgsFollowJointTrajectoryGoal :: Either Word32 Ros1Control_msgsFollowJointTrajectoryGoal
defaultRos1Control_msgsFollowJointTrajectoryGoal = decodeRos1Control_msgsFollowJointTrajectoryGoal
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0
    ]

-- | @brief Construct complete original control_msgs/FollowJointTrajectoryResult defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Control_msgsFollowJointTrajectoryResult :: Either Word32 Ros1Control_msgsFollowJointTrajectoryResult
defaultRos1Control_msgsFollowJointTrajectoryResult = decodeRos1Control_msgsFollowJointTrajectoryResult
    [0, 0, 0, 0, 0, 0, 0, 0]

-- | @brief Construct complete original control_msgs/FollowJointTrajectoryFeedback defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Control_msgsFollowJointTrajectoryFeedback :: Either Word32 Ros1Control_msgsFollowJointTrajectoryFeedback
defaultRos1Control_msgsFollowJointTrajectoryFeedback = decodeRos1Control_msgsFollowJointTrajectoryFeedback
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]

-- | @brief Construct complete original sensor_msgs/JointState defaults without ROS I/O.
-- @return Independent immutable value or original canonical error.
defaultRos1Sensor_msgsJointState :: Either Word32 Ros1Sensor_msgsJointState
defaultRos1Sensor_msgsJointState = decodeRos1Sensor_msgsJointState
    [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0
    ]
