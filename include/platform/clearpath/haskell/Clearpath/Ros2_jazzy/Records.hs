-- | @file Records.hs
-- @brief Complete original clearpath ROS 2 Haskell records and codecs.
-- @details Owned immutable values preserve all fields; constructing them grants no ROS authority.
module Clearpath.Ros2_jazzy.Records where
import Data.Int
import Data.Word
import Data.Bits
import GHC.Float
import qualified Data.Text as T
import Control.Monad (replicateM)
import qualified Native.Wire as W

-- | @brief Complete original clearpath_motor_msgs/action/LynxCalibrate_Goal value.
-- | @details Retain every original field in declaration order. Canonical extent 0..0 bytes.
data Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal = Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsActionLynxCalibrate_Goal :: Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal
defaultRos2Clearpath_motor_msgsActionLynxCalibrate_Goal =
    Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsActionLynxCalibrate_GoalCodecIdentity :: String
ros2Clearpath_motor_msgsActionLynxCalibrate_GoalCodecIdentity =
    "UWVMROS1_61b01a6234b41f96464de9449b3e8d1b955decf6afa12aa3ba94062c98cec681"
-- | @brief Encode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Goal.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsActionLynxCalibrate_Goal :: Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsActionLynxCalibrate_Goal value = do
    let bytes = []
    if length bytes > 0 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/action/LynxCalibrate_Goal.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsActionLynxCalibrate_Goal :: W.Parser Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal
readRos2Clearpath_motor_msgsActionLynxCalibrate_Goal = do
    let value =
            Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal
    case encodeRos2Clearpath_motor_msgsActionLynxCalibrate_Goal value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/action/LynxCalibrate_Goal.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsActionLynxCalibrate_Goal :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal
decodeRos2Clearpath_motor_msgsActionLynxCalibrate_Goal bytes
    | length bytes < 0 || length bytes > 0 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsActionLynxCalibrate_Goal bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_motor_msgs/action/LynxCalibrate_Result value.
-- | @details Retain every original field in declaration order. Canonical extent 4..12 bytes.
data Ros2Clearpath_motor_msgsActionLynxCalibrate_Result = Ros2Clearpath_motor_msgsActionLynxCalibrate_Result
    {
    -- | @brief Original clearpath_motor_msgs/action/LynxCalibrate_Result.offset field.
    -- | @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsActionLynxCalibrate_Result_offset :: [Float]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsActionLynxCalibrate_Result :: Ros2Clearpath_motor_msgsActionLynxCalibrate_Result
defaultRos2Clearpath_motor_msgsActionLynxCalibrate_Result =
    Ros2Clearpath_motor_msgsActionLynxCalibrate_Result
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsActionLynxCalibrate_ResultCodecIdentity :: String
ros2Clearpath_motor_msgsActionLynxCalibrate_ResultCodecIdentity =
    "UWVMROS1_686450363b8b15eba1e9e9e9ff05c9aacfb95bb0d113eaa7c443e4c70d55d41f"
-- | @brief Encode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Result.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsActionLynxCalibrate_Result :: Ros2Clearpath_motor_msgsActionLynxCalibrate_Result -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsActionLynxCalibrate_Result value = do
    if length (ros2Clearpath_motor_msgsActionLynxCalibrate_Result_offset value) <= 2 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Clearpath_motor_msgsActionLynxCalibrate_Result_offset value)
    chunk0 <- Right (
        W.putNumber 4 (length (ros2Clearpath_motor_msgsActionLynxCalibrate_Result_offset value))
        ++ item0
        )
    let bytes =
            concat
                [ chunk0
                ]
    if length bytes > 12 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/action/LynxCalibrate_Result.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsActionLynxCalibrate_Result :: W.Parser Ros2Clearpath_motor_msgsActionLynxCalibrate_Result
readRos2Clearpath_motor_msgsActionLynxCalibrate_Result = do
    count0 <- W.number 4
    if count0 > 2 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (castWord32ToFloat . fromIntegral <$> W.number 4)
    let value =
            Ros2Clearpath_motor_msgsActionLynxCalibrate_Result
                value0
    case encodeRos2Clearpath_motor_msgsActionLynxCalibrate_Result value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/action/LynxCalibrate_Result.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsActionLynxCalibrate_Result :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsActionLynxCalibrate_Result
decodeRos2Clearpath_motor_msgsActionLynxCalibrate_Result bytes
    | length bytes < 4 || length bytes > 12 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsActionLynxCalibrate_Result bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_motor_msgs/action/LynxCalibrate_Feedback value.
-- | @details Retain every original field in declaration order. Canonical extent 4..8 bytes.
data Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback = Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback
    {
    -- | @brief Original clearpath_motor_msgs/action/LynxCalibrate_Feedback.iteration field.
    -- | @details Original type uint16. Shape sequence; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback_iteration :: [Word16]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsActionLynxCalibrate_Feedback :: Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback
defaultRos2Clearpath_motor_msgsActionLynxCalibrate_Feedback =
    Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsActionLynxCalibrate_FeedbackCodecIdentity :: String
ros2Clearpath_motor_msgsActionLynxCalibrate_FeedbackCodecIdentity =
    "UWVMROS1_ebe7badd3f72982079911d8aa72c4ddd27ff0a12d2f948e5970649317a592b53"
-- | @brief Encode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Feedback.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsActionLynxCalibrate_Feedback :: Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsActionLynxCalibrate_Feedback value = do
    if length (ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback_iteration value) <= 2 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 2 (element)))
            (ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback_iteration value)
    chunk0 <- Right (
        W.putNumber 4 (length (ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback_iteration value))
        ++ item0
        )
    let bytes =
            concat
                [ chunk0
                ]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/action/LynxCalibrate_Feedback.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsActionLynxCalibrate_Feedback :: W.Parser Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback
readRos2Clearpath_motor_msgsActionLynxCalibrate_Feedback = do
    count0 <- W.number 4
    if count0 > 2 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (fromIntegral <$> W.number 2)
    let value =
            Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback
                value0
    case encodeRos2Clearpath_motor_msgsActionLynxCalibrate_Feedback value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/action/LynxCalibrate_Feedback.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsActionLynxCalibrate_Feedback :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback
decodeRos2Clearpath_motor_msgsActionLynxCalibrate_Feedback bytes
    | length bytes < 4 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsActionLynxCalibrate_Feedback bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_motor_msgs/action/LynxUpdate_Goal value.
-- | @details Retain every original field in declaration order. Canonical extent 4..260 bytes.
data Ros2Clearpath_motor_msgsActionLynxUpdate_Goal = Ros2Clearpath_motor_msgsActionLynxUpdate_Goal
    {
    -- | @brief Original clearpath_motor_msgs/action/LynxUpdate_Goal.file field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsActionLynxUpdate_Goal_file :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsActionLynxUpdate_Goal :: Ros2Clearpath_motor_msgsActionLynxUpdate_Goal
defaultRos2Clearpath_motor_msgsActionLynxUpdate_Goal =
    Ros2Clearpath_motor_msgsActionLynxUpdate_Goal
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsActionLynxUpdate_GoalCodecIdentity :: String
ros2Clearpath_motor_msgsActionLynxUpdate_GoalCodecIdentity =
    "UWVMROS1_f0362f8a90391e8ffda2e8f3b798769b644091058361882c4e9457196f007565"
-- | @brief Encode every field of complete clearpath_motor_msgs/action/LynxUpdate_Goal.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsActionLynxUpdate_Goal :: Ros2Clearpath_motor_msgsActionLynxUpdate_Goal -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsActionLynxUpdate_Goal value = do
    chunk0 <- W.putText 256 (ros2Clearpath_motor_msgsActionLynxUpdate_Goal_file value)
    let bytes =
            concat
                [ chunk0
                ]
    if length bytes > 260 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/action/LynxUpdate_Goal.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsActionLynxUpdate_Goal :: W.Parser Ros2Clearpath_motor_msgsActionLynxUpdate_Goal
readRos2Clearpath_motor_msgsActionLynxUpdate_Goal = do
    value0 <- W.text 256
    let value =
            Ros2Clearpath_motor_msgsActionLynxUpdate_Goal
                value0
    case encodeRos2Clearpath_motor_msgsActionLynxUpdate_Goal value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/action/LynxUpdate_Goal.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsActionLynxUpdate_Goal :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsActionLynxUpdate_Goal
decodeRos2Clearpath_motor_msgsActionLynxUpdate_Goal bytes
    | length bytes < 4 || length bytes > 260 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsActionLynxUpdate_Goal bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_motor_msgs/action/LynxUpdate_Result value.
-- | @details Retain every original field in declaration order. Canonical extent 4..6 bytes.
data Ros2Clearpath_motor_msgsActionLynxUpdate_Result = Ros2Clearpath_motor_msgsActionLynxUpdate_Result
    {
    -- | @brief Original clearpath_motor_msgs/action/LynxUpdate_Result.success field.
    -- | @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsActionLynxUpdate_Result_success :: [Bool]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsActionLynxUpdate_Result :: Ros2Clearpath_motor_msgsActionLynxUpdate_Result
defaultRos2Clearpath_motor_msgsActionLynxUpdate_Result =
    Ros2Clearpath_motor_msgsActionLynxUpdate_Result
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsActionLynxUpdate_ResultCodecIdentity :: String
ros2Clearpath_motor_msgsActionLynxUpdate_ResultCodecIdentity =
    "UWVMROS1_126fe871dbcb036e485d20e8ccdc8e9fb7be01757f539bfba895aabf44d341d8"
-- | @brief Encode every field of complete clearpath_motor_msgs/action/LynxUpdate_Result.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsActionLynxUpdate_Result :: Ros2Clearpath_motor_msgsActionLynxUpdate_Result -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsActionLynxUpdate_Result value = do
    if length (ros2Clearpath_motor_msgsActionLynxUpdate_Result_success value) <= 2 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> Right (W.putBool (element)))
            (ros2Clearpath_motor_msgsActionLynxUpdate_Result_success value)
    chunk0 <- Right (
        W.putNumber 4 (length (ros2Clearpath_motor_msgsActionLynxUpdate_Result_success value))
        ++ item0
        )
    let bytes =
            concat
                [ chunk0
                ]
    if length bytes > 6 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/action/LynxUpdate_Result.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsActionLynxUpdate_Result :: W.Parser Ros2Clearpath_motor_msgsActionLynxUpdate_Result
readRos2Clearpath_motor_msgsActionLynxUpdate_Result = do
    count0 <- W.number 4
    if count0 > 2 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (W.boolean)
    let value =
            Ros2Clearpath_motor_msgsActionLynxUpdate_Result
                value0
    case encodeRos2Clearpath_motor_msgsActionLynxUpdate_Result value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/action/LynxUpdate_Result.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsActionLynxUpdate_Result :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsActionLynxUpdate_Result
decodeRos2Clearpath_motor_msgsActionLynxUpdate_Result bytes
    | length bytes < 4 || length bytes > 6 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsActionLynxUpdate_Result bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_motor_msgs/action/LynxUpdate_Feedback value.
-- | @details Retain every original field in declaration order. Canonical extent 4..12 bytes.
data Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback = Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback
    {
    -- | @brief Original clearpath_motor_msgs/action/LynxUpdate_Feedback.progress field.
    -- | @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsActionLynxUpdate_Feedback_progress :: [Float]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsActionLynxUpdate_Feedback :: Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback
defaultRos2Clearpath_motor_msgsActionLynxUpdate_Feedback =
    Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsActionLynxUpdate_FeedbackCodecIdentity :: String
ros2Clearpath_motor_msgsActionLynxUpdate_FeedbackCodecIdentity =
    "UWVMROS1_2179ec9dee627234a1a31e9681ff214cc45ca837349cd8e407e019a354121b19"
-- | @brief Encode every field of complete clearpath_motor_msgs/action/LynxUpdate_Feedback.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsActionLynxUpdate_Feedback :: Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsActionLynxUpdate_Feedback value = do
    if length (ros2Clearpath_motor_msgsActionLynxUpdate_Feedback_progress value) <= 2 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Clearpath_motor_msgsActionLynxUpdate_Feedback_progress value)
    chunk0 <- Right (
        W.putNumber 4 (length (ros2Clearpath_motor_msgsActionLynxUpdate_Feedback_progress value))
        ++ item0
        )
    let bytes =
            concat
                [ chunk0
                ]
    if length bytes > 12 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/action/LynxUpdate_Feedback.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsActionLynxUpdate_Feedback :: W.Parser Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback
readRos2Clearpath_motor_msgsActionLynxUpdate_Feedback = do
    count0 <- W.number 4
    if count0 > 2 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (castWord32ToFloat . fromIntegral <$> W.number 4)
    let value =
            Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback
                value0
    case encodeRos2Clearpath_motor_msgsActionLynxUpdate_Feedback value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/action/LynxUpdate_Feedback.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsActionLynxUpdate_Feedback :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback
decodeRos2Clearpath_motor_msgsActionLynxUpdate_Feedback bytes
    | length bytes < 4 || length bytes > 12 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsActionLynxUpdate_Feedback bytes
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
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Builtin_interfacesMsgDuration :: Ros2Builtin_interfacesMsgDuration
defaultRos2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Builtin_interfacesMsgDurationCodecIdentity :: String
ros2Builtin_interfacesMsgDurationCodecIdentity =
    "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"
-- | @brief Encode every field of complete builtin_interfaces/msg/Duration.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Builtin_interfacesMsgDuration :: Ros2Builtin_interfacesMsgDuration -> Either Word32 [Word8]
encodeRos2Builtin_interfacesMsgDuration value = do
    if
        ((ros2Builtin_interfacesMsgDuration_nanosec value) >= 1000000000
        ) then Left 22 else Right ()
    chunk0 <- Right (W.putNumber 4 (ros2Builtin_interfacesMsgDuration_sec value))
    chunk1 <- Right (W.putNumber 4 (ros2Builtin_interfacesMsgDuration_nanosec value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested builtin_interfaces/msg/Duration.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Builtin_interfacesMsgDuration :: W.Parser Ros2Builtin_interfacesMsgDuration
readRos2Builtin_interfacesMsgDuration = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value =
            Ros2Builtin_interfacesMsgDuration
                value0
                value1
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

-- | @brief Complete original clearpath_control_msgs/msg/DeviceInfo value.
-- | @details Retain every original field in declaration order. Canonical extent 28..1820 bytes.
data Ros2Clearpath_control_msgsMsgDeviceInfo = Ros2Clearpath_control_msgsMsgDeviceInfo
    {
    -- | @brief Original clearpath_control_msgs/msg/DeviceInfo.device_id field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_control_msgsMsgDeviceInfo_device_id :: [Word8]
    ,
    -- | @brief Original clearpath_control_msgs/msg/DeviceInfo.device_class field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_control_msgsMsgDeviceInfo_device_class :: [Word8]
    ,
    -- | @brief Original clearpath_control_msgs/msg/DeviceInfo.model field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_control_msgsMsgDeviceInfo_model :: [Word8]
    ,
    -- | @brief Original clearpath_control_msgs/msg/DeviceInfo.manufacturer field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_control_msgsMsgDeviceInfo_manufacturer :: [Word8]
    ,
    -- | @brief Original clearpath_control_msgs/msg/DeviceInfo.firmware_version field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_control_msgsMsgDeviceInfo_firmware_version :: [Word8]
    ,
    -- | @brief Original clearpath_control_msgs/msg/DeviceInfo.hardware_version field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_control_msgsMsgDeviceInfo_hardware_version :: [Word8]
    ,
    -- | @brief Original clearpath_control_msgs/msg/DeviceInfo.serial_number field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_control_msgsMsgDeviceInfo_serial_number :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_control_msgsMsgDeviceInfo :: Ros2Clearpath_control_msgsMsgDeviceInfo
defaultRos2Clearpath_control_msgsMsgDeviceInfo =
    Ros2Clearpath_control_msgsMsgDeviceInfo
        ([])
        ([])
        ([])
        ([])
        ([])
        ([])
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_control_msgsMsgDeviceInfoCodecIdentity :: String
ros2Clearpath_control_msgsMsgDeviceInfoCodecIdentity =
    "UWVMROS1_9111f5d4b5324c36eb85f01e6fdbc3c589479ff5b64a8fa7b9d467aa14675c3e"
-- | @brief Encode every field of complete clearpath_control_msgs/msg/DeviceInfo.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_control_msgsMsgDeviceInfo :: Ros2Clearpath_control_msgsMsgDeviceInfo -> Either Word32 [Word8]
encodeRos2Clearpath_control_msgsMsgDeviceInfo value = do
    chunk0 <- W.putText 256 (ros2Clearpath_control_msgsMsgDeviceInfo_device_id value)
    chunk1 <- W.putText 256 (ros2Clearpath_control_msgsMsgDeviceInfo_device_class value)
    chunk2 <- W.putText 256 (ros2Clearpath_control_msgsMsgDeviceInfo_model value)
    chunk3 <- W.putText 256 (ros2Clearpath_control_msgsMsgDeviceInfo_manufacturer value)
    chunk4 <- W.putText 256 (ros2Clearpath_control_msgsMsgDeviceInfo_firmware_version value)
    chunk5 <- W.putText 256 (ros2Clearpath_control_msgsMsgDeviceInfo_hardware_version value)
    chunk6 <- W.putText 256 (ros2Clearpath_control_msgsMsgDeviceInfo_serial_number value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                , chunk5
                , chunk6
                ]
    if length bytes > 1820 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_control_msgs/msg/DeviceInfo.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_control_msgsMsgDeviceInfo :: W.Parser Ros2Clearpath_control_msgsMsgDeviceInfo
readRos2Clearpath_control_msgsMsgDeviceInfo = do
    value0 <- W.text 256
    value1 <- W.text 256
    value2 <- W.text 256
    value3 <- W.text 256
    value4 <- W.text 256
    value5 <- W.text 256
    value6 <- W.text 256
    let value =
            Ros2Clearpath_control_msgsMsgDeviceInfo
                value0
                value1
                value2
                value3
                value4
                value5
                value6
    case encodeRos2Clearpath_control_msgsMsgDeviceInfo value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_control_msgs/msg/DeviceInfo.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_control_msgsMsgDeviceInfo :: [Word8] -> Either Word32 Ros2Clearpath_control_msgsMsgDeviceInfo
decodeRos2Clearpath_control_msgsMsgDeviceInfo bytes
    | length bytes < 28 || length bytes > 1820 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_control_msgsMsgDeviceInfo bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_control_msgs/msg/StreamControl value.
-- | @details Retain every original field in declaration order. Canonical extent 5..261 bytes.
data Ros2Clearpath_control_msgsMsgStreamControl = Ros2Clearpath_control_msgsMsgStreamControl
    {
    -- | @brief Original clearpath_control_msgs/msg/StreamControl.stream field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_control_msgsMsgStreamControl_stream :: [Word8]
    ,
    -- | @brief Original clearpath_control_msgs/msg/StreamControl.enabled field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_control_msgsMsgStreamControl_enabled :: Bool
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_control_msgsMsgStreamControl :: Ros2Clearpath_control_msgsMsgStreamControl
defaultRos2Clearpath_control_msgsMsgStreamControl =
    Ros2Clearpath_control_msgsMsgStreamControl
        ([])
        (False)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_control_msgsMsgStreamControlCodecIdentity :: String
ros2Clearpath_control_msgsMsgStreamControlCodecIdentity =
    "UWVMROS1_26208e266c9185bfb0e715407ab0fe313f2d47e6bc9f54594a102c3a09d34734"
-- | @brief Encode every field of complete clearpath_control_msgs/msg/StreamControl.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_control_msgsMsgStreamControl :: Ros2Clearpath_control_msgsMsgStreamControl -> Either Word32 [Word8]
encodeRos2Clearpath_control_msgsMsgStreamControl value = do
    chunk0 <- W.putText 256 (ros2Clearpath_control_msgsMsgStreamControl_stream value)
    chunk1 <- Right (W.putBool (ros2Clearpath_control_msgsMsgStreamControl_enabled value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 261 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_control_msgs/msg/StreamControl.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_control_msgsMsgStreamControl :: W.Parser Ros2Clearpath_control_msgsMsgStreamControl
readRos2Clearpath_control_msgsMsgStreamControl = do
    value0 <- W.text 256
    value1 <- W.boolean
    let value =
            Ros2Clearpath_control_msgsMsgStreamControl
                value0
                value1
    case encodeRos2Clearpath_control_msgsMsgStreamControl value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_control_msgs/msg/StreamControl.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_control_msgsMsgStreamControl :: [Word8] -> Either Word32 Ros2Clearpath_control_msgsMsgStreamControl
decodeRos2Clearpath_control_msgsMsgStreamControl bytes
    | length bytes < 5 || length bytes > 261 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_control_msgsMsgStreamControl bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_motor_msgs/msg/LynxDebug value.
-- | @details Retain every original field in declaration order. Canonical extent 19..291 bytes.
data Ros2Clearpath_motor_msgsMsgLynxDebug = Ros2Clearpath_motor_msgsMsgLynxDebug
    {
    -- | @brief Original clearpath_motor_msgs/msg/LynxDebug.can_id field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxDebug_can_id :: Word8
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxDebug.joint_name field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsMsgLynxDebug_joint_name :: [Word8]
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxDebug.fault_frequency field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxDebug_fault_frequency :: Word16
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxDebug.accumulator_flags field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxDebug_accumulator_flags :: Word32
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxDebug.accumulators field.
    -- | @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsMsgLynxDebug_accumulators :: [Float]
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxDebug.currents field.
    -- | @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsMsgLynxDebug_currents :: [Float]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsMsgLynxDebug :: Ros2Clearpath_motor_msgsMsgLynxDebug
defaultRos2Clearpath_motor_msgsMsgLynxDebug =
    Ros2Clearpath_motor_msgsMsgLynxDebug
        (0)
        ([])
        (0)
        (0)
        ([])
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsMsgLynxDebugCodecIdentity :: String
ros2Clearpath_motor_msgsMsgLynxDebugCodecIdentity =
    "UWVMROS1_0341ae040f1e8a1f980bde84498c4a4f8b9c55c3806839a73727c1579ab4416e"
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_ABOVE_RATED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_ABOVE_RATED :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_ABOVE_RATED = 0
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_1 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_1 = 1
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_2 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_2 = 2
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_3 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_3 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_3 = 3
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_4 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_4 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_4 = 4
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_5 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_5 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_5 = 5
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_6 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_6 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_6 = 6
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_7 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_7 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_7 = 7
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_8 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_8 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_8 = 8
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_9 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_9 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_9 = 9
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_0 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_0 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_0 = 10
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_1 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_1 = 11
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_2 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_2 = 12
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_3 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_3 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_3 = 13
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_4 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_4 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_4 = 14
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_5 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_5 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_5 = 15
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_6 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_6 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_6 = 16
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_7 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_7 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_7 = 17
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_8 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_8 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_8 = 18
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_9 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_9 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_9 = 19
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_3_0 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_3_0 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_3_0 = 20
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_ABOVE_RATED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_ABOVE_RATED :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_ABOVE_RATED = 0
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_1_1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_1_1 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_1_1 = 1
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_1_5 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_1_5 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_1_5 = 2
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_2_0 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_2_0 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_2_0 = 3
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_2_5 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_2_5 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_2_5 = 4
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_3_0 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_3_0 :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_3_0 = 5
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_FB constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_ID_FB :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_ID_FB = 0
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_FF constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_ID_FF :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_ID_FF = 1
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_REF constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_ID_REF :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_ID_REF = 2
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_FB constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_IQ_FB :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_IQ_FB = 3
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_FF constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_IQ_FF :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_IQ_FF = 4
-- | @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_REF constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_IQ_REF :: Word8
ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_IQ_REF = 5
-- | @brief Encode every field of complete clearpath_motor_msgs/msg/LynxDebug.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsMsgLynxDebug :: Ros2Clearpath_motor_msgsMsgLynxDebug -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsMsgLynxDebug value = do
    chunk0 <- Right (W.putNumber 1 (ros2Clearpath_motor_msgsMsgLynxDebug_can_id value))
    chunk1 <- W.putText 256 (ros2Clearpath_motor_msgsMsgLynxDebug_joint_name value)
    chunk2 <- Right (W.putNumber 2 (ros2Clearpath_motor_msgsMsgLynxDebug_fault_frequency value))
    chunk3 <- Right (W.putNumber 4 (ros2Clearpath_motor_msgsMsgLynxDebug_accumulator_flags value))
    if length (ros2Clearpath_motor_msgsMsgLynxDebug_accumulators value) <= 2 then Right () else Left 22
    item4 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Clearpath_motor_msgsMsgLynxDebug_accumulators value)
    chunk4 <- Right (
        W.putNumber 4 (length (ros2Clearpath_motor_msgsMsgLynxDebug_accumulators value))
        ++ item4
        )
    if length (ros2Clearpath_motor_msgsMsgLynxDebug_currents value) <= 2 then Right () else Left 22
    item5 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Clearpath_motor_msgsMsgLynxDebug_currents value)
    chunk5 <- Right (
        W.putNumber 4 (length (ros2Clearpath_motor_msgsMsgLynxDebug_currents value))
        ++ item5
        )
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                , chunk5
                ]
    if length bytes > 291 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/msg/LynxDebug.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsMsgLynxDebug :: W.Parser Ros2Clearpath_motor_msgsMsgLynxDebug
readRos2Clearpath_motor_msgsMsgLynxDebug = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- W.text 256
    value2 <- fromIntegral <$> W.number 2
    value3 <- fromIntegral <$> W.number 4
    count4 <- W.number 4
    if count4 > 2 then W.reject else pure ()
    value4 <- replicateM (fromIntegral count4) (castWord32ToFloat . fromIntegral <$> W.number 4)
    count5 <- W.number 4
    if count5 > 2 then W.reject else pure ()
    value5 <- replicateM (fromIntegral count5) (castWord32ToFloat . fromIntegral <$> W.number 4)
    let value =
            Ros2Clearpath_motor_msgsMsgLynxDebug
                value0
                value1
                value2
                value3
                value4
                value5
    case encodeRos2Clearpath_motor_msgsMsgLynxDebug value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/msg/LynxDebug.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsMsgLynxDebug :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsMsgLynxDebug
decodeRos2Clearpath_motor_msgsMsgLynxDebug bytes
    | length bytes < 19 || length bytes > 291 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsMsgLynxDebug bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_motor_msgs/msg/LynxFeedback value.
-- | @details Retain every original field in declaration order. Canonical extent 21..277 bytes.
data Ros2Clearpath_motor_msgsMsgLynxFeedback = Ros2Clearpath_motor_msgsMsgLynxFeedback
    {
    -- | @brief Original clearpath_motor_msgs/msg/LynxFeedback.can_id field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxFeedback_can_id :: Word8
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxFeedback.joint_name field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsMsgLynxFeedback_joint_name :: [Word8]
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxFeedback.current field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxFeedback_current :: Float
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxFeedback.voltage field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxFeedback_voltage :: Float
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxFeedback.velocity field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxFeedback_velocity :: Float
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxFeedback.travel field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxFeedback_travel :: Float
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsMsgLynxFeedback :: Ros2Clearpath_motor_msgsMsgLynxFeedback
defaultRos2Clearpath_motor_msgsMsgLynxFeedback =
    Ros2Clearpath_motor_msgsMsgLynxFeedback
        (0)
        ([])
        (0)
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsMsgLynxFeedbackCodecIdentity :: String
ros2Clearpath_motor_msgsMsgLynxFeedbackCodecIdentity =
    "UWVMROS1_5d92c7085019ebf00ba93788b5b2f4055ad40b2c6714575a66fb75cf314429eb"
-- | @brief Encode every field of complete clearpath_motor_msgs/msg/LynxFeedback.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsMsgLynxFeedback :: Ros2Clearpath_motor_msgsMsgLynxFeedback -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsMsgLynxFeedback value = do
    chunk0 <- Right (W.putNumber 1 (ros2Clearpath_motor_msgsMsgLynxFeedback_can_id value))
    chunk1 <- W.putText 256 (ros2Clearpath_motor_msgsMsgLynxFeedback_joint_name value)
    chunk2 <- finite4 (ros2Clearpath_motor_msgsMsgLynxFeedback_current value) castFloatToWord32
    chunk3 <- finite4 (ros2Clearpath_motor_msgsMsgLynxFeedback_voltage value) castFloatToWord32
    chunk4 <- finite4 (ros2Clearpath_motor_msgsMsgLynxFeedback_velocity value) castFloatToWord32
    chunk5 <- finite4 (ros2Clearpath_motor_msgsMsgLynxFeedback_travel value) castFloatToWord32
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                , chunk5
                ]
    if length bytes > 277 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/msg/LynxFeedback.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsMsgLynxFeedback :: W.Parser Ros2Clearpath_motor_msgsMsgLynxFeedback
readRos2Clearpath_motor_msgsMsgLynxFeedback = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- W.text 256
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value =
            Ros2Clearpath_motor_msgsMsgLynxFeedback
                value0
                value1
                value2
                value3
                value4
                value5
    case encodeRos2Clearpath_motor_msgsMsgLynxFeedback value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/msg/LynxFeedback.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsMsgLynxFeedback :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsMsgLynxFeedback
decodeRos2Clearpath_motor_msgsMsgLynxFeedback bytes
    | length bytes < 21 || length bytes > 277 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsMsgLynxFeedback bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_motor_msgs/msg/LynxMotorProtection value.
-- | @details Retain every original field in declaration order. Canonical extent 6..262 bytes.
data Ros2Clearpath_motor_msgsMsgLynxMotorProtection = Ros2Clearpath_motor_msgsMsgLynxMotorProtection
    {
    -- | @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.can_id field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxMotorProtection_can_id :: Word8
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.joint_name field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsMsgLynxMotorProtection_joint_name :: [Word8]
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.state field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxMotorProtection_state :: Word8
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsMsgLynxMotorProtection :: Ros2Clearpath_motor_msgsMsgLynxMotorProtection
defaultRos2Clearpath_motor_msgsMsgLynxMotorProtection =
    Ros2Clearpath_motor_msgsMsgLynxMotorProtection
        (0)
        ([])
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsMsgLynxMotorProtectionCodecIdentity :: String
ros2Clearpath_motor_msgsMsgLynxMotorProtectionCodecIdentity =
    "UWVMROS1_f824abfa97f6f24934e04094d66170167f19a14fb933f325cbef4ed6fca16630"
-- | @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.NORMAL constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxMotorProtection_NORMAL :: Word8
ros2Clearpath_motor_msgsMsgLynxMotorProtection_NORMAL = 0
-- | @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.THROTTLED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxMotorProtection_THROTTLED :: Word8
ros2Clearpath_motor_msgsMsgLynxMotorProtection_THROTTLED = 1
-- | @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.OVERHEATED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxMotorProtection_OVERHEATED :: Word8
ros2Clearpath_motor_msgsMsgLynxMotorProtection_OVERHEATED = 2
-- | @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.ERROR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxMotorProtection_ERROR :: Word8
ros2Clearpath_motor_msgsMsgLynxMotorProtection_ERROR = 3
-- | @brief Encode every field of complete clearpath_motor_msgs/msg/LynxMotorProtection.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsMsgLynxMotorProtection :: Ros2Clearpath_motor_msgsMsgLynxMotorProtection -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsMsgLynxMotorProtection value = do
    chunk0 <- Right (W.putNumber 1 (ros2Clearpath_motor_msgsMsgLynxMotorProtection_can_id value))
    chunk1 <- W.putText 256 (ros2Clearpath_motor_msgsMsgLynxMotorProtection_joint_name value)
    chunk2 <- Right (W.putNumber 1 (ros2Clearpath_motor_msgsMsgLynxMotorProtection_state value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 262 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/msg/LynxMotorProtection.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsMsgLynxMotorProtection :: W.Parser Ros2Clearpath_motor_msgsMsgLynxMotorProtection
readRos2Clearpath_motor_msgsMsgLynxMotorProtection = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- W.text 256
    value2 <- fromIntegral <$> W.number 1
    let value =
            Ros2Clearpath_motor_msgsMsgLynxMotorProtection
                value0
                value1
                value2
    case encodeRos2Clearpath_motor_msgsMsgLynxMotorProtection value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/msg/LynxMotorProtection.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsMsgLynxMotorProtection :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsMsgLynxMotorProtection
decodeRos2Clearpath_motor_msgsMsgLynxMotorProtection bytes
    | length bytes < 6 || length bytes > 262 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsMsgLynxMotorProtection bytes
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

-- | @brief Complete original clearpath_motor_msgs/msg/LynxMultiDebug value.
-- | @details Retain every original field in declaration order. Canonical extent 16..1308 bytes.
data Ros2Clearpath_motor_msgsMsgLynxMultiDebug = Ros2Clearpath_motor_msgsMsgLynxMultiDebug
    {
    -- | @brief Original clearpath_motor_msgs/msg/LynxMultiDebug.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Clearpath_motor_msgsMsgLynxMultiDebug_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxMultiDebug.drivers field.
    -- | @details Original type clearpath_motor_msgs/msg/LynxDebug. Shape sequence; bound/count 4
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsMsgLynxMultiDebug_drivers :: [Ros2Clearpath_motor_msgsMsgLynxDebug]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsMsgLynxMultiDebug :: Ros2Clearpath_motor_msgsMsgLynxMultiDebug
defaultRos2Clearpath_motor_msgsMsgLynxMultiDebug =
    Ros2Clearpath_motor_msgsMsgLynxMultiDebug
        (defaultRos2Std_msgsMsgHeader)
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsMsgLynxMultiDebugCodecIdentity :: String
ros2Clearpath_motor_msgsMsgLynxMultiDebugCodecIdentity =
    "UWVMROS1_056abd2153e7f1a6df223bf5daba581e6c218bb7ef365444fc5c3171dfc62e95"
-- | @brief Encode every field of complete clearpath_motor_msgs/msg/LynxMultiDebug.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsMsgLynxMultiDebug :: Ros2Clearpath_motor_msgsMsgLynxMultiDebug -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsMsgLynxMultiDebug value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Clearpath_motor_msgsMsgLynxMultiDebug_header value)
    if length (ros2Clearpath_motor_msgsMsgLynxMultiDebug_drivers value) <= 4 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> encodeRos2Clearpath_motor_msgsMsgLynxDebug (element))
            (ros2Clearpath_motor_msgsMsgLynxMultiDebug_drivers value)
    chunk1 <- Right (
        W.putNumber 4 (length (ros2Clearpath_motor_msgsMsgLynxMultiDebug_drivers value))
        ++ item1
        )
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 1308 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/msg/LynxMultiDebug.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsMsgLynxMultiDebug :: W.Parser Ros2Clearpath_motor_msgsMsgLynxMultiDebug
readRos2Clearpath_motor_msgsMsgLynxMultiDebug = do
    value0 <- readRos2Std_msgsMsgHeader
    count1 <- W.number 4
    if count1 > 4 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (readRos2Clearpath_motor_msgsMsgLynxDebug)
    let value =
            Ros2Clearpath_motor_msgsMsgLynxMultiDebug
                value0
                value1
    case encodeRos2Clearpath_motor_msgsMsgLynxMultiDebug value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/msg/LynxMultiDebug.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsMsgLynxMultiDebug :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsMsgLynxMultiDebug
decodeRos2Clearpath_motor_msgsMsgLynxMultiDebug bytes
    | length bytes < 16 || length bytes > 1308 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsMsgLynxMultiDebug bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_motor_msgs/msg/LynxMultiFeedback value.
-- | @details Retain every original field in declaration order. Canonical extent 16..1252 bytes.
data Ros2Clearpath_motor_msgsMsgLynxMultiFeedback = Ros2Clearpath_motor_msgsMsgLynxMultiFeedback
    {
    -- | @brief Original clearpath_motor_msgs/msg/LynxMultiFeedback.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Clearpath_motor_msgsMsgLynxMultiFeedback_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxMultiFeedback.drivers field.
    -- | @details Original type clearpath_motor_msgs/msg/LynxFeedback. Shape sequence; bound/count 4
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsMsgLynxMultiFeedback_drivers :: [Ros2Clearpath_motor_msgsMsgLynxFeedback]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsMsgLynxMultiFeedback :: Ros2Clearpath_motor_msgsMsgLynxMultiFeedback
defaultRos2Clearpath_motor_msgsMsgLynxMultiFeedback =
    Ros2Clearpath_motor_msgsMsgLynxMultiFeedback
        (defaultRos2Std_msgsMsgHeader)
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsMsgLynxMultiFeedbackCodecIdentity :: String
ros2Clearpath_motor_msgsMsgLynxMultiFeedbackCodecIdentity =
    "UWVMROS1_2c83cade6bec4d766fd2cff97338642b3d2065d41e9968ccf5054c6f231242c7"
-- | @brief Encode every field of complete clearpath_motor_msgs/msg/LynxMultiFeedback.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsMsgLynxMultiFeedback :: Ros2Clearpath_motor_msgsMsgLynxMultiFeedback -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsMsgLynxMultiFeedback value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Clearpath_motor_msgsMsgLynxMultiFeedback_header value)
    if length (ros2Clearpath_motor_msgsMsgLynxMultiFeedback_drivers value) <= 4 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> encodeRos2Clearpath_motor_msgsMsgLynxFeedback (element))
            (ros2Clearpath_motor_msgsMsgLynxMultiFeedback_drivers value)
    chunk1 <- Right (
        W.putNumber 4 (length (ros2Clearpath_motor_msgsMsgLynxMultiFeedback_drivers value))
        ++ item1
        )
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 1252 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/msg/LynxMultiFeedback.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsMsgLynxMultiFeedback :: W.Parser Ros2Clearpath_motor_msgsMsgLynxMultiFeedback
readRos2Clearpath_motor_msgsMsgLynxMultiFeedback = do
    value0 <- readRos2Std_msgsMsgHeader
    count1 <- W.number 4
    if count1 > 4 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (readRos2Clearpath_motor_msgsMsgLynxFeedback)
    let value =
            Ros2Clearpath_motor_msgsMsgLynxMultiFeedback
                value0
                value1
    case encodeRos2Clearpath_motor_msgsMsgLynxMultiFeedback value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/msg/LynxMultiFeedback.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsMsgLynxMultiFeedback :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsMsgLynxMultiFeedback
decodeRos2Clearpath_motor_msgsMsgLynxMultiFeedback bytes
    | length bytes < 16 || length bytes > 1252 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsMsgLynxMultiFeedback bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_motor_msgs/msg/LynxStatus value.
-- | @details Retain every original field in declaration order. Canonical extent 34..546 bytes.
data Ros2Clearpath_motor_msgsMsgLynxStatus = Ros2Clearpath_motor_msgsMsgLynxStatus
    {
    -- | @brief Original clearpath_motor_msgs/msg/LynxStatus.can_id field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxStatus_can_id :: Word8
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxStatus.joint_name field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsMsgLynxStatus_joint_name :: [Word8]
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxStatus.firmware_version field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsMsgLynxStatus_firmware_version :: [Word8]
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxStatus.motor_temperature field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxStatus_motor_temperature :: Float
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxStatus.mcu_temperature field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxStatus_mcu_temperature :: Float
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxStatus.pcb_temperature field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxStatus_pcb_temperature :: Float
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxStatus.stopped field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxStatus_stopped :: Bool
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxStatus.status_flags field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxStatus_status_flags :: Word32
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxStatus.warning_flags field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxStatus_warning_flags :: Word32
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxStatus.error_flags field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxStatus_error_flags :: Word32
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsMsgLynxStatus :: Ros2Clearpath_motor_msgsMsgLynxStatus
defaultRos2Clearpath_motor_msgsMsgLynxStatus =
    Ros2Clearpath_motor_msgsMsgLynxStatus
        (0)
        ([])
        ([])
        (0)
        (0)
        (0)
        (False)
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsMsgLynxStatusCodecIdentity :: String
ros2Clearpath_motor_msgsMsgLynxStatusCodecIdentity =
    "UWVMROS1_b68a7ab9bc5312c59d2ef86e49313468b631e8cacdf52468374b67f4eced5c6d"
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_ADC_CALIBRATED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_ADC_CALIBRATED :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_ADC_CALIBRATED = 0
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_FOC_ENABLED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_FOC_ENABLED :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_FOC_ENABLED = 1
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_CALIBRATION_REQUESTED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_CALIBRATION_REQUESTED :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_CALIBRATION_REQUESTED = 2
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_CALIBRATION_CANCELLED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_CALIBRATION_CANCELLED :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_CALIBRATION_CANCELLED = 3
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_ESTOPPED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_ESTOPPED :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_ESTOPPED = 4
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_MOTOR_THERMISTOR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_MOTOR_THERMISTOR :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_MOTOR_THERMISTOR = 0
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PCB_THERMISTOR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PCB_THERMISTOR :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PCB_THERMISTOR = 1
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PHASE :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PHASE = 2
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_A constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PHASE_A :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PHASE_A = 3
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_B constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PHASE_B :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PHASE_B = 4
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_C constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PHASE_C :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PHASE_C = 5
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_INDEX constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_ENCODER_INDEX :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_ENCODER_INDEX = 6
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_OUTPUT_A constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_ENCODER_OUTPUT_A :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_ENCODER_OUTPUT_A = 7
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_OUTPUT_B constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_ENCODER_OUTPUT_B :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_ENCODER_OUTPUT_B = 8
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_NOT_CALIBRATED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_NOT_CALIBRATED :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_NOT_CALIBRATED = 0
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_FAULT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_MOTOR_FAULT :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_MOTOR_FAULT = 1
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_STALLING constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_MOTOR_STALLING :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_MOTOR_STALLING = 2
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_THERMISTOR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_MOTOR_THERMISTOR :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_MOTOR_THERMISTOR = 3
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PCB_THERMISTOR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PCB_THERMISTOR :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PCB_THERMISTOR = 4
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PHASE :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PHASE = 5
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_A constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PHASE_A :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PHASE_A = 6
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_B constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PHASE_B :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PHASE_B = 7
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_C constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PHASE_C :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PHASE_C = 8
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_POWER constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_ENCODER_POWER :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_ENCODER_POWER = 9
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_INDEX constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_ENCODER_INDEX :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_ENCODER_INDEX = 10
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_OUTPUT_A constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_ENCODER_OUTPUT_A :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_ENCODER_OUTPUT_A = 11
-- | @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_OUTPUT_B constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_ENCODER_OUTPUT_B :: Word8
ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_ENCODER_OUTPUT_B = 12
-- | @brief Encode every field of complete clearpath_motor_msgs/msg/LynxStatus.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsMsgLynxStatus :: Ros2Clearpath_motor_msgsMsgLynxStatus -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsMsgLynxStatus value = do
    chunk0 <- Right (W.putNumber 1 (ros2Clearpath_motor_msgsMsgLynxStatus_can_id value))
    chunk1 <- W.putText 256 (ros2Clearpath_motor_msgsMsgLynxStatus_joint_name value)
    chunk2 <- W.putText 256 (ros2Clearpath_motor_msgsMsgLynxStatus_firmware_version value)
    chunk3 <- finite4 (ros2Clearpath_motor_msgsMsgLynxStatus_motor_temperature value) castFloatToWord32
    chunk4 <- finite4 (ros2Clearpath_motor_msgsMsgLynxStatus_mcu_temperature value) castFloatToWord32
    chunk5 <- finite4 (ros2Clearpath_motor_msgsMsgLynxStatus_pcb_temperature value) castFloatToWord32
    chunk6 <- Right (W.putBool (ros2Clearpath_motor_msgsMsgLynxStatus_stopped value))
    chunk7 <- Right (W.putNumber 4 (ros2Clearpath_motor_msgsMsgLynxStatus_status_flags value))
    chunk8 <- Right (W.putNumber 4 (ros2Clearpath_motor_msgsMsgLynxStatus_warning_flags value))
    chunk9 <- Right (W.putNumber 4 (ros2Clearpath_motor_msgsMsgLynxStatus_error_flags value))
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
    if length bytes > 546 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/msg/LynxStatus.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsMsgLynxStatus :: W.Parser Ros2Clearpath_motor_msgsMsgLynxStatus
readRos2Clearpath_motor_msgsMsgLynxStatus = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- W.text 256
    value2 <- W.text 256
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- W.boolean
    value7 <- fromIntegral <$> W.number 4
    value8 <- fromIntegral <$> W.number 4
    value9 <- fromIntegral <$> W.number 4
    let value =
            Ros2Clearpath_motor_msgsMsgLynxStatus
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
    case encodeRos2Clearpath_motor_msgsMsgLynxStatus value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/msg/LynxStatus.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsMsgLynxStatus :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsMsgLynxStatus
decodeRos2Clearpath_motor_msgsMsgLynxStatus bytes
    | length bytes < 34 || length bytes > 546 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsMsgLynxStatus bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_motor_msgs/msg/LynxMultiStatus value.
-- | @details Retain every original field in declaration order. Canonical extent 16..2328 bytes.
data Ros2Clearpath_motor_msgsMsgLynxMultiStatus = Ros2Clearpath_motor_msgsMsgLynxMultiStatus
    {
    -- | @brief Original clearpath_motor_msgs/msg/LynxMultiStatus.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Clearpath_motor_msgsMsgLynxMultiStatus_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxMultiStatus.drivers field.
    -- | @details Original type clearpath_motor_msgs/msg/LynxStatus. Shape sequence; bound/count 4
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsMsgLynxMultiStatus_drivers :: [Ros2Clearpath_motor_msgsMsgLynxStatus]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsMsgLynxMultiStatus :: Ros2Clearpath_motor_msgsMsgLynxMultiStatus
defaultRos2Clearpath_motor_msgsMsgLynxMultiStatus =
    Ros2Clearpath_motor_msgsMsgLynxMultiStatus
        (defaultRos2Std_msgsMsgHeader)
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsMsgLynxMultiStatusCodecIdentity :: String
ros2Clearpath_motor_msgsMsgLynxMultiStatusCodecIdentity =
    "UWVMROS1_595cd0847b4332e14cc067b916166e9a6e1d1e12a7a68cdb7e1cd414a9ea9ce1"
-- | @brief Encode every field of complete clearpath_motor_msgs/msg/LynxMultiStatus.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsMsgLynxMultiStatus :: Ros2Clearpath_motor_msgsMsgLynxMultiStatus -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsMsgLynxMultiStatus value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Clearpath_motor_msgsMsgLynxMultiStatus_header value)
    if length (ros2Clearpath_motor_msgsMsgLynxMultiStatus_drivers value) <= 4 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> encodeRos2Clearpath_motor_msgsMsgLynxStatus (element))
            (ros2Clearpath_motor_msgsMsgLynxMultiStatus_drivers value)
    chunk1 <- Right (
        W.putNumber 4 (length (ros2Clearpath_motor_msgsMsgLynxMultiStatus_drivers value))
        ++ item1
        )
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 2328 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/msg/LynxMultiStatus.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsMsgLynxMultiStatus :: W.Parser Ros2Clearpath_motor_msgsMsgLynxMultiStatus
readRos2Clearpath_motor_msgsMsgLynxMultiStatus = do
    value0 <- readRos2Std_msgsMsgHeader
    count1 <- W.number 4
    if count1 > 4 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (readRos2Clearpath_motor_msgsMsgLynxStatus)
    let value =
            Ros2Clearpath_motor_msgsMsgLynxMultiStatus
                value0
                value1
    case encodeRos2Clearpath_motor_msgsMsgLynxMultiStatus value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/msg/LynxMultiStatus.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsMsgLynxMultiStatus :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsMsgLynxMultiStatus
decodeRos2Clearpath_motor_msgsMsgLynxMultiStatus bytes
    | length bytes < 16 || length bytes > 2328 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsMsgLynxMultiStatus bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_motor_msgs/msg/LynxSystemProtection value.
-- | @details Retain every original field in declaration order. Canonical extent 17..669 bytes.
data Ros2Clearpath_motor_msgsMsgLynxSystemProtection = Ros2Clearpath_motor_msgsMsgLynxSystemProtection
    {
    -- | @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Clearpath_motor_msgsMsgLynxSystemProtection_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.system_state field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgLynxSystemProtection_system_state :: Word8
    ,
    -- | @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.motor_states field.
    -- | @details Original type clearpath_motor_msgs/msg/LynxMotorProtection. Shape sequence;
    -- | bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
    -- | storage belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsMsgLynxSystemProtection_motor_states :: [Ros2Clearpath_motor_msgsMsgLynxMotorProtection]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsMsgLynxSystemProtection :: Ros2Clearpath_motor_msgsMsgLynxSystemProtection
defaultRos2Clearpath_motor_msgsMsgLynxSystemProtection =
    Ros2Clearpath_motor_msgsMsgLynxSystemProtection
        (defaultRos2Std_msgsMsgHeader)
        (0)
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsMsgLynxSystemProtectionCodecIdentity :: String
ros2Clearpath_motor_msgsMsgLynxSystemProtectionCodecIdentity =
    "UWVMROS1_4d662de03c34bb633a122399be1a1aaea6187550c83231bf6d8a06b95fa82d9f"
-- | @brief Encode every field of complete clearpath_motor_msgs/msg/LynxSystemProtection.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsMsgLynxSystemProtection :: Ros2Clearpath_motor_msgsMsgLynxSystemProtection -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsMsgLynxSystemProtection value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Clearpath_motor_msgsMsgLynxSystemProtection_header value)
    chunk1 <- Right (W.putNumber 1 (ros2Clearpath_motor_msgsMsgLynxSystemProtection_system_state value))
    if length (ros2Clearpath_motor_msgsMsgLynxSystemProtection_motor_states value) <= 2 then Right () else Left 22
    item2 <-
        concat <$> mapM
            (\element -> encodeRos2Clearpath_motor_msgsMsgLynxMotorProtection (element))
            (ros2Clearpath_motor_msgsMsgLynxSystemProtection_motor_states value)
    chunk2 <- Right (
        W.putNumber 4 (length (ros2Clearpath_motor_msgsMsgLynxSystemProtection_motor_states value))
        ++ item2
        )
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 669 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/msg/LynxSystemProtection.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsMsgLynxSystemProtection :: W.Parser Ros2Clearpath_motor_msgsMsgLynxSystemProtection
readRos2Clearpath_motor_msgsMsgLynxSystemProtection = do
    value0 <- readRos2Std_msgsMsgHeader
    value1 <- fromIntegral <$> W.number 1
    count2 <- W.number 4
    if count2 > 2 then W.reject else pure ()
    value2 <- replicateM (fromIntegral count2) (readRos2Clearpath_motor_msgsMsgLynxMotorProtection)
    let value =
            Ros2Clearpath_motor_msgsMsgLynxSystemProtection
                value0
                value1
                value2
    case encodeRos2Clearpath_motor_msgsMsgLynxSystemProtection value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/msg/LynxSystemProtection.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsMsgLynxSystemProtection :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsMsgLynxSystemProtection
decodeRos2Clearpath_motor_msgsMsgLynxSystemProtection bytes
    | length bytes < 17 || length bytes > 669 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsMsgLynxSystemProtection bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_motor_msgs/msg/PumaFeedback value.
-- | @details Retain every original field in declaration order. Canonical extent 37..293 bytes.
data Ros2Clearpath_motor_msgsMsgPumaFeedback = Ros2Clearpath_motor_msgsMsgPumaFeedback
    {
    -- | @brief Original clearpath_motor_msgs/msg/PumaFeedback.device_number field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgPumaFeedback_device_number :: Word8
    ,
    -- | @brief Original clearpath_motor_msgs/msg/PumaFeedback.device_name field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsMsgPumaFeedback_device_name :: [Word8]
    ,
    -- | @brief Original clearpath_motor_msgs/msg/PumaFeedback.duty_cycle field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgPumaFeedback_duty_cycle :: Float
    ,
    -- | @brief Original clearpath_motor_msgs/msg/PumaFeedback.current field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgPumaFeedback_current :: Float
    ,
    -- | @brief Original clearpath_motor_msgs/msg/PumaFeedback.travel field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgPumaFeedback_travel :: Double
    ,
    -- | @brief Original clearpath_motor_msgs/msg/PumaFeedback.speed field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgPumaFeedback_speed :: Double
    ,
    -- | @brief Original clearpath_motor_msgs/msg/PumaFeedback.setpoint field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgPumaFeedback_setpoint :: Double
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsMsgPumaFeedback :: Ros2Clearpath_motor_msgsMsgPumaFeedback
defaultRos2Clearpath_motor_msgsMsgPumaFeedback =
    Ros2Clearpath_motor_msgsMsgPumaFeedback
        (0)
        ([])
        (0)
        (0)
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsMsgPumaFeedbackCodecIdentity :: String
ros2Clearpath_motor_msgsMsgPumaFeedbackCodecIdentity =
    "UWVMROS1_c020162b07a55ac5f41df6021c0d3053d7302863f4e544a738b6cc5bc4dc9659"
-- | @brief Encode every field of complete clearpath_motor_msgs/msg/PumaFeedback.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsMsgPumaFeedback :: Ros2Clearpath_motor_msgsMsgPumaFeedback -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsMsgPumaFeedback value = do
    chunk0 <- Right (W.putNumber 1 (ros2Clearpath_motor_msgsMsgPumaFeedback_device_number value))
    chunk1 <- W.putText 256 (ros2Clearpath_motor_msgsMsgPumaFeedback_device_name value)
    chunk2 <- finite4 (ros2Clearpath_motor_msgsMsgPumaFeedback_duty_cycle value) castFloatToWord32
    chunk3 <- finite4 (ros2Clearpath_motor_msgsMsgPumaFeedback_current value) castFloatToWord32
    chunk4 <- finite8 (ros2Clearpath_motor_msgsMsgPumaFeedback_travel value) castDoubleToWord64
    chunk5 <- finite8 (ros2Clearpath_motor_msgsMsgPumaFeedback_speed value) castDoubleToWord64
    chunk6 <- finite8 (ros2Clearpath_motor_msgsMsgPumaFeedback_setpoint value) castDoubleToWord64
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                , chunk5
                , chunk6
                ]
    if length bytes > 293 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/msg/PumaFeedback.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsMsgPumaFeedback :: W.Parser Ros2Clearpath_motor_msgsMsgPumaFeedback
readRos2Clearpath_motor_msgsMsgPumaFeedback = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- W.text 256
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord64ToDouble <$> W.number 8
    value5 <- castWord64ToDouble <$> W.number 8
    value6 <- castWord64ToDouble <$> W.number 8
    let value =
            Ros2Clearpath_motor_msgsMsgPumaFeedback
                value0
                value1
                value2
                value3
                value4
                value5
                value6
    case encodeRos2Clearpath_motor_msgsMsgPumaFeedback value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/msg/PumaFeedback.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsMsgPumaFeedback :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsMsgPumaFeedback
decodeRos2Clearpath_motor_msgsMsgPumaFeedback bytes
    | length bytes < 37 || length bytes > 293 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsMsgPumaFeedback bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_motor_msgs/msg/PumaMultiFeedback value.
-- | @details Retain every original field in declaration order. Canonical extent 16..1316 bytes.
data Ros2Clearpath_motor_msgsMsgPumaMultiFeedback = Ros2Clearpath_motor_msgsMsgPumaMultiFeedback
    {
    -- | @brief Original clearpath_motor_msgs/msg/PumaMultiFeedback.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Clearpath_motor_msgsMsgPumaMultiFeedback_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original clearpath_motor_msgs/msg/PumaMultiFeedback.drivers_feedback field.
    -- | @details Original type clearpath_motor_msgs/msg/PumaFeedback. Shape sequence; bound/count 4
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsMsgPumaMultiFeedback_drivers_feedback :: [Ros2Clearpath_motor_msgsMsgPumaFeedback]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsMsgPumaMultiFeedback :: Ros2Clearpath_motor_msgsMsgPumaMultiFeedback
defaultRos2Clearpath_motor_msgsMsgPumaMultiFeedback =
    Ros2Clearpath_motor_msgsMsgPumaMultiFeedback
        (defaultRos2Std_msgsMsgHeader)
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsMsgPumaMultiFeedbackCodecIdentity :: String
ros2Clearpath_motor_msgsMsgPumaMultiFeedbackCodecIdentity =
    "UWVMROS1_638309564580ad23d585799dcd46156e1e4261ebf9febfbb91754c250907c947"
-- | @brief Encode every field of complete clearpath_motor_msgs/msg/PumaMultiFeedback.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsMsgPumaMultiFeedback :: Ros2Clearpath_motor_msgsMsgPumaMultiFeedback -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsMsgPumaMultiFeedback value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Clearpath_motor_msgsMsgPumaMultiFeedback_header value)
    if length (ros2Clearpath_motor_msgsMsgPumaMultiFeedback_drivers_feedback value) <= 4 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> encodeRos2Clearpath_motor_msgsMsgPumaFeedback (element))
            (ros2Clearpath_motor_msgsMsgPumaMultiFeedback_drivers_feedback value)
    chunk1 <- Right (
        W.putNumber 4 (length (ros2Clearpath_motor_msgsMsgPumaMultiFeedback_drivers_feedback value))
        ++ item1
        )
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 1316 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/msg/PumaMultiFeedback.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsMsgPumaMultiFeedback :: W.Parser Ros2Clearpath_motor_msgsMsgPumaMultiFeedback
readRos2Clearpath_motor_msgsMsgPumaMultiFeedback = do
    value0 <- readRos2Std_msgsMsgHeader
    count1 <- W.number 4
    if count1 > 4 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (readRos2Clearpath_motor_msgsMsgPumaFeedback)
    let value =
            Ros2Clearpath_motor_msgsMsgPumaMultiFeedback
                value0
                value1
    case encodeRos2Clearpath_motor_msgsMsgPumaMultiFeedback value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/msg/PumaMultiFeedback.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsMsgPumaMultiFeedback :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsMsgPumaMultiFeedback
decodeRos2Clearpath_motor_msgsMsgPumaMultiFeedback bytes
    | length bytes < 16 || length bytes > 1316 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsMsgPumaMultiFeedback bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_motor_msgs/msg/PumaStatus value.
-- | @details Retain every original field in declaration order. Canonical extent 23..279 bytes.
data Ros2Clearpath_motor_msgsMsgPumaStatus = Ros2Clearpath_motor_msgsMsgPumaStatus
    {
    -- | @brief Original clearpath_motor_msgs/msg/PumaStatus.device_number field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgPumaStatus_device_number :: Word8
    ,
    -- | @brief Original clearpath_motor_msgs/msg/PumaStatus.device_name field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsMsgPumaStatus_device_name :: [Word8]
    ,
    -- | @brief Original clearpath_motor_msgs/msg/PumaStatus.bus_voltage field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgPumaStatus_bus_voltage :: Float
    ,
    -- | @brief Original clearpath_motor_msgs/msg/PumaStatus.temperature field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgPumaStatus_temperature :: Float
    ,
    -- | @brief Original clearpath_motor_msgs/msg/PumaStatus.output_voltage field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgPumaStatus_output_voltage :: Float
    ,
    -- | @brief Original clearpath_motor_msgs/msg/PumaStatus.analog_input field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgPumaStatus_analog_input :: Float
    ,
    -- | @brief Original clearpath_motor_msgs/msg/PumaStatus.mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgPumaStatus_mode :: Word8
    ,
    -- | @brief Original clearpath_motor_msgs/msg/PumaStatus.fault field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_motor_msgsMsgPumaStatus_fault :: Word8
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsMsgPumaStatus :: Ros2Clearpath_motor_msgsMsgPumaStatus
defaultRos2Clearpath_motor_msgsMsgPumaStatus =
    Ros2Clearpath_motor_msgsMsgPumaStatus
        (0)
        ([])
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsMsgPumaStatusCodecIdentity :: String
ros2Clearpath_motor_msgsMsgPumaStatusCodecIdentity =
    "UWVMROS1_a027229db2c8500f707d97064548b27e77e24ae4840ad9722d2dc74726099da8"
-- | @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgPumaStatus_MODE_VOLTAGE :: Word8
ros2Clearpath_motor_msgsMsgPumaStatus_MODE_VOLTAGE = 0
-- | @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgPumaStatus_MODE_CURRENT :: Word8
ros2Clearpath_motor_msgsMsgPumaStatus_MODE_CURRENT = 1
-- | @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_SPEED constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgPumaStatus_MODE_SPEED :: Word8
ros2Clearpath_motor_msgsMsgPumaStatus_MODE_SPEED = 2
-- | @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_POSITION constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgPumaStatus_MODE_POSITION :: Word8
ros2Clearpath_motor_msgsMsgPumaStatus_MODE_POSITION = 3
-- | @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_VCOMP constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgPumaStatus_MODE_VCOMP :: Word8
ros2Clearpath_motor_msgsMsgPumaStatus_MODE_VCOMP = 4
-- | @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgPumaStatus_FAULT_CURRENT :: Word8
ros2Clearpath_motor_msgsMsgPumaStatus_FAULT_CURRENT = 1
-- | @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_TEMPERATURE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgPumaStatus_FAULT_TEMPERATURE :: Word8
ros2Clearpath_motor_msgsMsgPumaStatus_FAULT_TEMPERATURE = 2
-- | @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_BUS_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgPumaStatus_FAULT_BUS_VOLTAGE :: Word8
ros2Clearpath_motor_msgsMsgPumaStatus_FAULT_BUS_VOLTAGE = 4
-- | @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_BRIDGE_DRIVER constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_motor_msgsMsgPumaStatus_FAULT_BRIDGE_DRIVER :: Word8
ros2Clearpath_motor_msgsMsgPumaStatus_FAULT_BRIDGE_DRIVER = 8
-- | @brief Encode every field of complete clearpath_motor_msgs/msg/PumaStatus.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsMsgPumaStatus :: Ros2Clearpath_motor_msgsMsgPumaStatus -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsMsgPumaStatus value = do
    chunk0 <- Right (W.putNumber 1 (ros2Clearpath_motor_msgsMsgPumaStatus_device_number value))
    chunk1 <- W.putText 256 (ros2Clearpath_motor_msgsMsgPumaStatus_device_name value)
    chunk2 <- finite4 (ros2Clearpath_motor_msgsMsgPumaStatus_bus_voltage value) castFloatToWord32
    chunk3 <- finite4 (ros2Clearpath_motor_msgsMsgPumaStatus_temperature value) castFloatToWord32
    chunk4 <- finite4 (ros2Clearpath_motor_msgsMsgPumaStatus_output_voltage value) castFloatToWord32
    chunk5 <- finite4 (ros2Clearpath_motor_msgsMsgPumaStatus_analog_input value) castFloatToWord32
    chunk6 <- Right (W.putNumber 1 (ros2Clearpath_motor_msgsMsgPumaStatus_mode value))
    chunk7 <- Right (W.putNumber 1 (ros2Clearpath_motor_msgsMsgPumaStatus_fault value))
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
                ]
    if length bytes > 279 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/msg/PumaStatus.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsMsgPumaStatus :: W.Parser Ros2Clearpath_motor_msgsMsgPumaStatus
readRos2Clearpath_motor_msgsMsgPumaStatus = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- W.text 256
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- fromIntegral <$> W.number 1
    value7 <- fromIntegral <$> W.number 1
    let value =
            Ros2Clearpath_motor_msgsMsgPumaStatus
                value0
                value1
                value2
                value3
                value4
                value5
                value6
                value7
    case encodeRos2Clearpath_motor_msgsMsgPumaStatus value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/msg/PumaStatus.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsMsgPumaStatus :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsMsgPumaStatus
decodeRos2Clearpath_motor_msgsMsgPumaStatus bytes
    | length bytes < 23 || length bytes > 279 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsMsgPumaStatus bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_motor_msgs/msg/PumaMultiStatus value.
-- | @details Retain every original field in declaration order. Canonical extent 16..1260 bytes.
data Ros2Clearpath_motor_msgsMsgPumaMultiStatus = Ros2Clearpath_motor_msgsMsgPumaMultiStatus
    {
    -- | @brief Original clearpath_motor_msgs/msg/PumaMultiStatus.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Clearpath_motor_msgsMsgPumaMultiStatus_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original clearpath_motor_msgs/msg/PumaMultiStatus.drivers field.
    -- | @details Original type clearpath_motor_msgs/msg/PumaStatus. Shape sequence; bound/count 4
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Clearpath_motor_msgsMsgPumaMultiStatus_drivers :: [Ros2Clearpath_motor_msgsMsgPumaStatus]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_motor_msgsMsgPumaMultiStatus :: Ros2Clearpath_motor_msgsMsgPumaMultiStatus
defaultRos2Clearpath_motor_msgsMsgPumaMultiStatus =
    Ros2Clearpath_motor_msgsMsgPumaMultiStatus
        (defaultRos2Std_msgsMsgHeader)
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_motor_msgsMsgPumaMultiStatusCodecIdentity :: String
ros2Clearpath_motor_msgsMsgPumaMultiStatusCodecIdentity =
    "UWVMROS1_30a0210fea4fffe07371c898c365ef9696501a7541935dd80770671a7163c8f2"
-- | @brief Encode every field of complete clearpath_motor_msgs/msg/PumaMultiStatus.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_motor_msgsMsgPumaMultiStatus :: Ros2Clearpath_motor_msgsMsgPumaMultiStatus -> Either Word32 [Word8]
encodeRos2Clearpath_motor_msgsMsgPumaMultiStatus value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Clearpath_motor_msgsMsgPumaMultiStatus_header value)
    if length (ros2Clearpath_motor_msgsMsgPumaMultiStatus_drivers value) <= 4 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> encodeRos2Clearpath_motor_msgsMsgPumaStatus (element))
            (ros2Clearpath_motor_msgsMsgPumaMultiStatus_drivers value)
    chunk1 <- Right (
        W.putNumber 4 (length (ros2Clearpath_motor_msgsMsgPumaMultiStatus_drivers value))
        ++ item1
        )
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 1260 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_motor_msgs/msg/PumaMultiStatus.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_motor_msgsMsgPumaMultiStatus :: W.Parser Ros2Clearpath_motor_msgsMsgPumaMultiStatus
readRos2Clearpath_motor_msgsMsgPumaMultiStatus = do
    value0 <- readRos2Std_msgsMsgHeader
    count1 <- W.number 4
    if count1 > 4 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (readRos2Clearpath_motor_msgsMsgPumaStatus)
    let value =
            Ros2Clearpath_motor_msgsMsgPumaMultiStatus
                value0
                value1
    case encodeRos2Clearpath_motor_msgsMsgPumaMultiStatus value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_motor_msgs/msg/PumaMultiStatus.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_motor_msgsMsgPumaMultiStatus :: [Word8] -> Either Word32 Ros2Clearpath_motor_msgsMsgPumaMultiStatus
decodeRos2Clearpath_motor_msgsMsgPumaMultiStatus bytes
    | length bytes < 16 || length bytes > 1260 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_motor_msgsMsgPumaMultiStatus bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_platform_msgs/msg/DisplayStatus value.
-- | @details Retain every original field in declaration order. Canonical extent 8..106 bytes.
data Ros2Clearpath_platform_msgsMsgDisplayStatus = Ros2Clearpath_platform_msgsMsgDisplayStatus
    {
    -- | @brief Original clearpath_platform_msgs/msg/DisplayStatus.string1 field.
    -- | @details Original type string. String bound 49 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgDisplayStatus_string1 :: [Word8]
    ,
    -- | @brief Original clearpath_platform_msgs/msg/DisplayStatus.string2 field.
    -- | @details Original type string. String bound 49 bytes; domain utf8. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgDisplayStatus_string2 :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_platform_msgsMsgDisplayStatus :: Ros2Clearpath_platform_msgsMsgDisplayStatus
defaultRos2Clearpath_platform_msgsMsgDisplayStatus =
    Ros2Clearpath_platform_msgsMsgDisplayStatus
        ([])
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsMsgDisplayStatusCodecIdentity :: String
ros2Clearpath_platform_msgsMsgDisplayStatusCodecIdentity =
    "UWVMROS1_e4585117414581491304a26d528b44c770799f622c3f1cde037078f5cb2462c2"
-- | @brief Encode every field of complete clearpath_platform_msgs/msg/DisplayStatus.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_platform_msgsMsgDisplayStatus :: Ros2Clearpath_platform_msgsMsgDisplayStatus -> Either Word32 [Word8]
encodeRos2Clearpath_platform_msgsMsgDisplayStatus value = do
    chunk0 <- W.putText 49 (ros2Clearpath_platform_msgsMsgDisplayStatus_string1 value)
    chunk1 <- W.putText 49 (ros2Clearpath_platform_msgsMsgDisplayStatus_string2 value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 106 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_platform_msgs/msg/DisplayStatus.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_platform_msgsMsgDisplayStatus :: W.Parser Ros2Clearpath_platform_msgsMsgDisplayStatus
readRos2Clearpath_platform_msgsMsgDisplayStatus = do
    value0 <- W.text 49
    value1 <- W.text 49
    let value =
            Ros2Clearpath_platform_msgsMsgDisplayStatus
                value0
                value1
    case encodeRos2Clearpath_platform_msgsMsgDisplayStatus value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_platform_msgs/msg/DisplayStatus.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_platform_msgsMsgDisplayStatus :: [Word8] -> Either Word32 Ros2Clearpath_platform_msgsMsgDisplayStatus
decodeRos2Clearpath_platform_msgsMsgDisplayStatus bytes
    | length bytes < 8 || length bytes > 106 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_platform_msgsMsgDisplayStatus bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_platform_msgs/msg/Drive value.
-- | @details Retain every original field in declaration order. Canonical extent 9..9 bytes.
data Ros2Clearpath_platform_msgsMsgDrive = Ros2Clearpath_platform_msgsMsgDrive
    {
    -- | @brief Original clearpath_platform_msgs/msg/Drive.mode field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgDrive_mode :: Int8
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Drive.drivers field.
    -- | @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgDrive_drivers :: [Float]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_platform_msgsMsgDrive :: Ros2Clearpath_platform_msgsMsgDrive
defaultRos2Clearpath_platform_msgsMsgDrive =
    Ros2Clearpath_platform_msgsMsgDrive
        (0)
        (replicate 2 (0))
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsMsgDriveCodecIdentity :: String
ros2Clearpath_platform_msgsMsgDriveCodecIdentity =
    "UWVMROS1_be8664128ff89a066550f1a2496c30396f39bafd1d96483c545048a328138785"
-- | @brief Original clearpath_platform_msgs/msg/Drive.MODE_VELOCITY constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgDrive_MODE_VELOCITY :: Int8
ros2Clearpath_platform_msgsMsgDrive_MODE_VELOCITY = 0
-- | @brief Original clearpath_platform_msgs/msg/Drive.MODE_PWM constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgDrive_MODE_PWM :: Int8
ros2Clearpath_platform_msgsMsgDrive_MODE_PWM = 1
-- | @brief Original clearpath_platform_msgs/msg/Drive.MODE_NONE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgDrive_MODE_NONE :: Int8
ros2Clearpath_platform_msgsMsgDrive_MODE_NONE = -1
-- | @brief Original clearpath_platform_msgs/msg/Drive.LEFT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgDrive_LEFT :: Int8
ros2Clearpath_platform_msgsMsgDrive_LEFT = 0
-- | @brief Original clearpath_platform_msgs/msg/Drive.RIGHT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgDrive_RIGHT :: Int8
ros2Clearpath_platform_msgsMsgDrive_RIGHT = 1
-- | @brief Encode every field of complete clearpath_platform_msgs/msg/Drive.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_platform_msgsMsgDrive :: Ros2Clearpath_platform_msgsMsgDrive -> Either Word32 [Word8]
encodeRos2Clearpath_platform_msgsMsgDrive value = do
    chunk0 <- Right (W.putNumber 1 (ros2Clearpath_platform_msgsMsgDrive_mode value))
    if length (ros2Clearpath_platform_msgsMsgDrive_drivers value) == 2 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Clearpath_platform_msgsMsgDrive_drivers value)
    chunk1 <- Right item1
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 9 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_platform_msgs/msg/Drive.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_platform_msgsMsgDrive :: W.Parser Ros2Clearpath_platform_msgsMsgDrive
readRos2Clearpath_platform_msgsMsgDrive = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- replicateM 2 (castWord32ToFloat . fromIntegral <$> W.number 4)
    let value =
            Ros2Clearpath_platform_msgsMsgDrive
                value0
                value1
    case encodeRos2Clearpath_platform_msgsMsgDrive value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_platform_msgs/msg/Drive.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_platform_msgsMsgDrive :: [Word8] -> Either Word32 Ros2Clearpath_platform_msgsMsgDrive
decodeRos2Clearpath_platform_msgsMsgDrive bytes
    | length bytes < 9 || length bytes > 9 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_platform_msgsMsgDrive bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_platform_msgs/msg/DriveFeedback value.
-- | @details Retain every original field in declaration order. Canonical extent 25..25 bytes.
data Ros2Clearpath_platform_msgsMsgDriveFeedback = Ros2Clearpath_platform_msgsMsgDriveFeedback
    {
    -- | @brief Original clearpath_platform_msgs/msg/DriveFeedback.current field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgDriveFeedback_current :: Float
    ,
    -- | @brief Original clearpath_platform_msgs/msg/DriveFeedback.duty_cycle field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgDriveFeedback_duty_cycle :: Float
    ,
    -- | @brief Original clearpath_platform_msgs/msg/DriveFeedback.bridge_temperature field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgDriveFeedback_bridge_temperature :: Float
    ,
    -- | @brief Original clearpath_platform_msgs/msg/DriveFeedback.motor_temperature field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgDriveFeedback_motor_temperature :: Float
    ,
    -- | @brief Original clearpath_platform_msgs/msg/DriveFeedback.measured_velocity field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgDriveFeedback_measured_velocity :: Float
    ,
    -- | @brief Original clearpath_platform_msgs/msg/DriveFeedback.measured_travel field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgDriveFeedback_measured_travel :: Float
    ,
    -- | @brief Original clearpath_platform_msgs/msg/DriveFeedback.driver_fault field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgDriveFeedback_driver_fault :: Bool
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_platform_msgsMsgDriveFeedback :: Ros2Clearpath_platform_msgsMsgDriveFeedback
defaultRos2Clearpath_platform_msgsMsgDriveFeedback =
    Ros2Clearpath_platform_msgsMsgDriveFeedback
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (False)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsMsgDriveFeedbackCodecIdentity :: String
ros2Clearpath_platform_msgsMsgDriveFeedbackCodecIdentity =
    "UWVMROS1_008f51d4c8341723ffec72651f93c00db0f9feceb037ee7b6b460ffcafd3f287"
-- | @brief Encode every field of complete clearpath_platform_msgs/msg/DriveFeedback.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_platform_msgsMsgDriveFeedback :: Ros2Clearpath_platform_msgsMsgDriveFeedback -> Either Word32 [Word8]
encodeRos2Clearpath_platform_msgsMsgDriveFeedback value = do
    chunk0 <- finite4 (ros2Clearpath_platform_msgsMsgDriveFeedback_current value) castFloatToWord32
    chunk1 <- finite4 (ros2Clearpath_platform_msgsMsgDriveFeedback_duty_cycle value) castFloatToWord32
    chunk2 <- finite4 (ros2Clearpath_platform_msgsMsgDriveFeedback_bridge_temperature value) castFloatToWord32
    chunk3 <- finite4 (ros2Clearpath_platform_msgsMsgDriveFeedback_motor_temperature value) castFloatToWord32
    chunk4 <- finite4 (ros2Clearpath_platform_msgsMsgDriveFeedback_measured_velocity value) castFloatToWord32
    chunk5 <- finite4 (ros2Clearpath_platform_msgsMsgDriveFeedback_measured_travel value) castFloatToWord32
    chunk6 <- Right (W.putBool (ros2Clearpath_platform_msgsMsgDriveFeedback_driver_fault value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                , chunk5
                , chunk6
                ]
    if length bytes > 25 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_platform_msgs/msg/DriveFeedback.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_platform_msgsMsgDriveFeedback :: W.Parser Ros2Clearpath_platform_msgsMsgDriveFeedback
readRos2Clearpath_platform_msgsMsgDriveFeedback = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- W.boolean
    let value =
            Ros2Clearpath_platform_msgsMsgDriveFeedback
                value0
                value1
                value2
                value3
                value4
                value5
                value6
    case encodeRos2Clearpath_platform_msgsMsgDriveFeedback value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_platform_msgs/msg/DriveFeedback.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_platform_msgsMsgDriveFeedback :: [Word8] -> Either Word32 Ros2Clearpath_platform_msgsMsgDriveFeedback
decodeRos2Clearpath_platform_msgsMsgDriveFeedback bytes
    | length bytes < 25 || length bytes > 25 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_platform_msgsMsgDriveFeedback bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_platform_msgs/msg/Fans value.
-- | @details Retain every original field in declaration order. Canonical extent 4..6 bytes.
data Ros2Clearpath_platform_msgsMsgFans = Ros2Clearpath_platform_msgsMsgFans
    {
    -- | @brief Original clearpath_platform_msgs/msg/Fans.fans field.
    -- | @details Original type uint8. Shape sequence; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgFans_fans :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_platform_msgsMsgFans :: Ros2Clearpath_platform_msgsMsgFans
defaultRos2Clearpath_platform_msgsMsgFans =
    Ros2Clearpath_platform_msgsMsgFans
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsMsgFansCodecIdentity :: String
ros2Clearpath_platform_msgsMsgFansCodecIdentity =
    "UWVMROS1_a7d96f2242d992baf96f31bd8f93088547f92c72912c241c2d237f7714800cc8"
-- | @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgFans_CC01_FAN1 :: Word8
ros2Clearpath_platform_msgsMsgFans_CC01_FAN1 = 0
-- | @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgFans_CC01_FAN2 :: Word8
ros2Clearpath_platform_msgsMsgFans_CC01_FAN2 = 1
-- | @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN3 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgFans_CC01_FAN3 :: Word8
ros2Clearpath_platform_msgsMsgFans_CC01_FAN3 = 2
-- | @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN4 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgFans_CC01_FAN4 :: Word8
ros2Clearpath_platform_msgsMsgFans_CC01_FAN4 = 3
-- | @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN5 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgFans_CC01_FAN5 :: Word8
ros2Clearpath_platform_msgsMsgFans_CC01_FAN5 = 4
-- | @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN6 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgFans_CC01_FAN6 :: Word8
ros2Clearpath_platform_msgsMsgFans_CC01_FAN6 = 5
-- | @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN7 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgFans_CC01_FAN7 :: Word8
ros2Clearpath_platform_msgsMsgFans_CC01_FAN7 = 6
-- | @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN8 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgFans_CC01_FAN8 :: Word8
ros2Clearpath_platform_msgsMsgFans_CC01_FAN8 = 7
-- | @brief Original clearpath_platform_msgs/msg/Fans.R100_EQUIPMENT_BAY_INTAKE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgFans_R100_EQUIPMENT_BAY_INTAKE :: Word8
ros2Clearpath_platform_msgsMsgFans_R100_EQUIPMENT_BAY_INTAKE = 0
-- | @brief Original clearpath_platform_msgs/msg/Fans.R100_EQUIPMENT_BAY_EXHAUST constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgFans_R100_EQUIPMENT_BAY_EXHAUST :: Word8
ros2Clearpath_platform_msgsMsgFans_R100_EQUIPMENT_BAY_EXHAUST = 1
-- | @brief Original clearpath_platform_msgs/msg/Fans.R100_CHARGER_BAY_INTAKE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgFans_R100_CHARGER_BAY_INTAKE :: Word8
ros2Clearpath_platform_msgsMsgFans_R100_CHARGER_BAY_INTAKE = 2
-- | @brief Original clearpath_platform_msgs/msg/Fans.R100_CHARGER_BAY_EXHAUST constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgFans_R100_CHARGER_BAY_EXHAUST :: Word8
ros2Clearpath_platform_msgsMsgFans_R100_CHARGER_BAY_EXHAUST = 3
-- | @brief Original clearpath_platform_msgs/msg/Fans.R100_USER_BAY_INTAKE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgFans_R100_USER_BAY_INTAKE :: Word8
ros2Clearpath_platform_msgsMsgFans_R100_USER_BAY_INTAKE = 4
-- | @brief Original clearpath_platform_msgs/msg/Fans.R100_USER_BAY_EXHAUST constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgFans_R100_USER_BAY_EXHAUST :: Word8
ros2Clearpath_platform_msgsMsgFans_R100_USER_BAY_EXHAUST = 5
-- | @brief Original clearpath_platform_msgs/msg/Fans.FAN_OFF constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgFans_FAN_OFF :: Word8
ros2Clearpath_platform_msgsMsgFans_FAN_OFF = 0
-- | @brief Original clearpath_platform_msgs/msg/Fans.FAN_ON_HIGH constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgFans_FAN_ON_HIGH :: Word8
ros2Clearpath_platform_msgsMsgFans_FAN_ON_HIGH = 1
-- | @brief Original clearpath_platform_msgs/msg/Fans.FAN_ON_LOW constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgFans_FAN_ON_LOW :: Word8
ros2Clearpath_platform_msgsMsgFans_FAN_ON_LOW = 2
-- | @brief Encode every field of complete clearpath_platform_msgs/msg/Fans.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_platform_msgsMsgFans :: Ros2Clearpath_platform_msgsMsgFans -> Either Word32 [Word8]
encodeRos2Clearpath_platform_msgsMsgFans value = do
    if length (ros2Clearpath_platform_msgsMsgFans_fans value) <= 2 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Clearpath_platform_msgsMsgFans_fans value)
    chunk0 <- Right (
        W.putNumber 4 (length (ros2Clearpath_platform_msgsMsgFans_fans value))
        ++ item0
        )
    let bytes =
            concat
                [ chunk0
                ]
    if length bytes > 6 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_platform_msgs/msg/Fans.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_platform_msgsMsgFans :: W.Parser Ros2Clearpath_platform_msgsMsgFans
readRos2Clearpath_platform_msgsMsgFans = do
    count0 <- W.number 4
    if count0 > 2 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (fromIntegral <$> W.number 1)
    let value =
            Ros2Clearpath_platform_msgsMsgFans
                value0
    case encodeRos2Clearpath_platform_msgsMsgFans value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_platform_msgs/msg/Fans.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_platform_msgsMsgFans :: [Word8] -> Either Word32 Ros2Clearpath_platform_msgsMsgFans
decodeRos2Clearpath_platform_msgsMsgFans bytes
    | length bytes < 4 || length bytes > 6 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_platform_msgsMsgFans bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_platform_msgs/msg/Feedback value.
-- | @details Retain every original field in declaration order. Canonical extent 64..192 bytes.
data Ros2Clearpath_platform_msgsMsgFeedback = Ros2Clearpath_platform_msgsMsgFeedback
    {
    -- | @brief Original clearpath_platform_msgs/msg/Feedback.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Clearpath_platform_msgsMsgFeedback_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Feedback.drivers field.
    -- | @details Original type clearpath_platform_msgs/msg/DriveFeedback. Shape array; bound/count
    -- | 2 elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgFeedback_drivers :: [Ros2Clearpath_platform_msgsMsgDriveFeedback]
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Feedback.commanded_mode field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgFeedback_commanded_mode :: Int8
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Feedback.actual_mode field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgFeedback_actual_mode :: Int8
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_platform_msgsMsgFeedback :: Ros2Clearpath_platform_msgsMsgFeedback
defaultRos2Clearpath_platform_msgsMsgFeedback =
    Ros2Clearpath_platform_msgsMsgFeedback
        (defaultRos2Std_msgsMsgHeader)
        (replicate 2 (defaultRos2Clearpath_platform_msgsMsgDriveFeedback))
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsMsgFeedbackCodecIdentity :: String
ros2Clearpath_platform_msgsMsgFeedbackCodecIdentity =
    "UWVMROS1_15fdfd2e12df38bab09bf083beb61ce23d3c1082e794c34d51eec4c473e29442"
-- | @brief Encode every field of complete clearpath_platform_msgs/msg/Feedback.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_platform_msgsMsgFeedback :: Ros2Clearpath_platform_msgsMsgFeedback -> Either Word32 [Word8]
encodeRos2Clearpath_platform_msgsMsgFeedback value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Clearpath_platform_msgsMsgFeedback_header value)
    if length (ros2Clearpath_platform_msgsMsgFeedback_drivers value) == 2 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> encodeRos2Clearpath_platform_msgsMsgDriveFeedback (element))
            (ros2Clearpath_platform_msgsMsgFeedback_drivers value)
    chunk1 <- Right item1
    chunk2 <- Right (W.putNumber 1 (ros2Clearpath_platform_msgsMsgFeedback_commanded_mode value))
    chunk3 <- Right (W.putNumber 1 (ros2Clearpath_platform_msgsMsgFeedback_actual_mode value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                ]
    if length bytes > 192 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_platform_msgs/msg/Feedback.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_platform_msgsMsgFeedback :: W.Parser Ros2Clearpath_platform_msgsMsgFeedback
readRos2Clearpath_platform_msgsMsgFeedback = do
    value0 <- readRos2Std_msgsMsgHeader
    value1 <- replicateM 2 (readRos2Clearpath_platform_msgsMsgDriveFeedback)
    value2 <- fromIntegral <$> W.number 1
    value3 <- fromIntegral <$> W.number 1
    let value =
            Ros2Clearpath_platform_msgsMsgFeedback
                value0
                value1
                value2
                value3
    case encodeRos2Clearpath_platform_msgsMsgFeedback value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_platform_msgs/msg/Feedback.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_platform_msgsMsgFeedback :: [Word8] -> Either Word32 Ros2Clearpath_platform_msgsMsgFeedback
decodeRos2Clearpath_platform_msgsMsgFeedback bytes
    | length bytes < 64 || length bytes > 192 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_platform_msgsMsgFeedback bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_platform_msgs/msg/RGB value.
-- | @details Retain every original field in declaration order. Canonical extent 3..3 bytes.
data Ros2Clearpath_platform_msgsMsgRGB = Ros2Clearpath_platform_msgsMsgRGB
    {
    -- | @brief Original clearpath_platform_msgs/msg/RGB.red field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgRGB_red :: Word8
    ,
    -- | @brief Original clearpath_platform_msgs/msg/RGB.green field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgRGB_green :: Word8
    ,
    -- | @brief Original clearpath_platform_msgs/msg/RGB.blue field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgRGB_blue :: Word8
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_platform_msgsMsgRGB :: Ros2Clearpath_platform_msgsMsgRGB
defaultRos2Clearpath_platform_msgsMsgRGB =
    Ros2Clearpath_platform_msgsMsgRGB
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsMsgRGBCodecIdentity :: String
ros2Clearpath_platform_msgsMsgRGBCodecIdentity =
    "UWVMROS1_42db8731293054ef44002afc54c16dac45544354932d5353cf749fb376cef1a1"
-- | @brief Encode every field of complete clearpath_platform_msgs/msg/RGB.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_platform_msgsMsgRGB :: Ros2Clearpath_platform_msgsMsgRGB -> Either Word32 [Word8]
encodeRos2Clearpath_platform_msgsMsgRGB value = do
    chunk0 <- Right (W.putNumber 1 (ros2Clearpath_platform_msgsMsgRGB_red value))
    chunk1 <- Right (W.putNumber 1 (ros2Clearpath_platform_msgsMsgRGB_green value))
    chunk2 <- Right (W.putNumber 1 (ros2Clearpath_platform_msgsMsgRGB_blue value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 3 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_platform_msgs/msg/RGB.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_platform_msgsMsgRGB :: W.Parser Ros2Clearpath_platform_msgsMsgRGB
readRos2Clearpath_platform_msgsMsgRGB = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    let value =
            Ros2Clearpath_platform_msgsMsgRGB
                value0
                value1
                value2
    case encodeRos2Clearpath_platform_msgsMsgRGB value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_platform_msgs/msg/RGB.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_platform_msgsMsgRGB :: [Word8] -> Either Word32 Ros2Clearpath_platform_msgsMsgRGB
decodeRos2Clearpath_platform_msgsMsgRGB bytes
    | length bytes < 3 || length bytes > 3 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_platform_msgsMsgRGB bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_platform_msgs/msg/Lights value.
-- | @details Retain every original field in declaration order. Canonical extent 4..10 bytes.
data Ros2Clearpath_platform_msgsMsgLights = Ros2Clearpath_platform_msgsMsgLights
    {
    -- | @brief Original clearpath_platform_msgs/msg/Lights.lights field.
    -- | @details Original type clearpath_platform_msgs/msg/RGB. Shape sequence; bound/count 2
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgLights_lights :: [Ros2Clearpath_platform_msgsMsgRGB]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_platform_msgsMsgLights :: Ros2Clearpath_platform_msgsMsgLights
defaultRos2Clearpath_platform_msgsMsgLights =
    Ros2Clearpath_platform_msgsMsgLights
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsMsgLightsCodecIdentity :: String
ros2Clearpath_platform_msgsMsgLightsCodecIdentity =
    "UWVMROS1_3f975a3ec1fca4f8add9523d4f9f99963be520c0e2982e644551b71cbd4b8a27"
-- | @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_REAR_LEFT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_D100_LIGHTS_REAR_LEFT :: Word8
ros2Clearpath_platform_msgsMsgLights_D100_LIGHTS_REAR_LEFT = 0
-- | @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_FRONT_LEFT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_D100_LIGHTS_FRONT_LEFT :: Word8
ros2Clearpath_platform_msgsMsgLights_D100_LIGHTS_FRONT_LEFT = 1
-- | @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_FRONT_RIGHT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_D100_LIGHTS_FRONT_RIGHT :: Word8
ros2Clearpath_platform_msgsMsgLights_D100_LIGHTS_FRONT_RIGHT = 2
-- | @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_REAR_RIGHT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_D100_LIGHTS_REAR_RIGHT :: Word8
ros2Clearpath_platform_msgsMsgLights_D100_LIGHTS_REAR_RIGHT = 3
-- | @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_REAR_LEFT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_D150_LIGHTS_REAR_LEFT :: Word8
ros2Clearpath_platform_msgsMsgLights_D150_LIGHTS_REAR_LEFT = 0
-- | @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_FRONT_LEFT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_D150_LIGHTS_FRONT_LEFT :: Word8
ros2Clearpath_platform_msgsMsgLights_D150_LIGHTS_FRONT_LEFT = 1
-- | @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_FRONT_RIGHT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_D150_LIGHTS_FRONT_RIGHT :: Word8
ros2Clearpath_platform_msgsMsgLights_D150_LIGHTS_FRONT_RIGHT = 2
-- | @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_REAR_RIGHT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_D150_LIGHTS_REAR_RIGHT :: Word8
ros2Clearpath_platform_msgsMsgLights_D150_LIGHTS_REAR_RIGHT = 3
-- | @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_PORT_UPPER constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_FRONT_PORT_UPPER :: Word8
ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_FRONT_PORT_UPPER = 0
-- | @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_PORT_LOWER constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_FRONT_PORT_LOWER :: Word8
ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_FRONT_PORT_LOWER = 1
-- | @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_STARBOARD_UPPER constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_FRONT_STARBOARD_UPPER :: Word8
ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_FRONT_STARBOARD_UPPER = 2
-- | @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_STARBOARD_LOWER constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_FRONT_STARBOARD_LOWER :: Word8
ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_FRONT_STARBOARD_LOWER = 3
-- | @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_PORT_UPPER constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_REAR_PORT_UPPER :: Word8
ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_REAR_PORT_UPPER = 4
-- | @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_PORT_LOWER constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_REAR_PORT_LOWER :: Word8
ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_REAR_PORT_LOWER = 5
-- | @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_STARBOARD_UPPER constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_REAR_STARBOARD_UPPER :: Word8
ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_REAR_STARBOARD_UPPER = 6
-- | @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_STARBOARD_LOWER constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_REAR_STARBOARD_LOWER :: Word8
ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_REAR_STARBOARD_LOWER = 7
-- | @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_FRONT_LEFT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_W200_LIGHTS_FRONT_LEFT :: Word8
ros2Clearpath_platform_msgsMsgLights_W200_LIGHTS_FRONT_LEFT = 0
-- | @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_FRONT_RIGHT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_W200_LIGHTS_FRONT_RIGHT :: Word8
ros2Clearpath_platform_msgsMsgLights_W200_LIGHTS_FRONT_RIGHT = 1
-- | @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_REAR_LEFT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_W200_LIGHTS_REAR_LEFT :: Word8
ros2Clearpath_platform_msgsMsgLights_W200_LIGHTS_REAR_LEFT = 2
-- | @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_REAR_RIGHT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_W200_LIGHTS_REAR_RIGHT :: Word8
ros2Clearpath_platform_msgsMsgLights_W200_LIGHTS_REAR_RIGHT = 3
-- | @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_FRONT_RIGHT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_A300_LIGHTS_FRONT_RIGHT :: Word8
ros2Clearpath_platform_msgsMsgLights_A300_LIGHTS_FRONT_RIGHT = 0
-- | @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_FRONT_LEFT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_A300_LIGHTS_FRONT_LEFT :: Word8
ros2Clearpath_platform_msgsMsgLights_A300_LIGHTS_FRONT_LEFT = 1
-- | @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_REAR_LEFT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_A300_LIGHTS_REAR_LEFT :: Word8
ros2Clearpath_platform_msgsMsgLights_A300_LIGHTS_REAR_LEFT = 2
-- | @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_REAR_RIGHT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgLights_A300_LIGHTS_REAR_RIGHT :: Word8
ros2Clearpath_platform_msgsMsgLights_A300_LIGHTS_REAR_RIGHT = 3
-- | @brief Encode every field of complete clearpath_platform_msgs/msg/Lights.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_platform_msgsMsgLights :: Ros2Clearpath_platform_msgsMsgLights -> Either Word32 [Word8]
encodeRos2Clearpath_platform_msgsMsgLights value = do
    if length (ros2Clearpath_platform_msgsMsgLights_lights value) <= 2 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> encodeRos2Clearpath_platform_msgsMsgRGB (element))
            (ros2Clearpath_platform_msgsMsgLights_lights value)
    chunk0 <- Right (
        W.putNumber 4 (length (ros2Clearpath_platform_msgsMsgLights_lights value))
        ++ item0
        )
    let bytes =
            concat
                [ chunk0
                ]
    if length bytes > 10 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_platform_msgs/msg/Lights.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_platform_msgsMsgLights :: W.Parser Ros2Clearpath_platform_msgsMsgLights
readRos2Clearpath_platform_msgsMsgLights = do
    count0 <- W.number 4
    if count0 > 2 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (readRos2Clearpath_platform_msgsMsgRGB)
    let value =
            Ros2Clearpath_platform_msgsMsgLights
                value0
    case encodeRos2Clearpath_platform_msgsMsgLights value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_platform_msgs/msg/Lights.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_platform_msgsMsgLights :: [Word8] -> Either Word32 Ros2Clearpath_platform_msgsMsgLights
decodeRos2Clearpath_platform_msgsMsgLights bytes
    | length bytes < 4 || length bytes > 10 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_platform_msgsMsgLights bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_platform_msgs/msg/PinoutCommand value.
-- | @details Retain every original field in declaration order. Canonical extent 8..18 bytes.
data Ros2Clearpath_platform_msgsMsgPinoutCommand = Ros2Clearpath_platform_msgsMsgPinoutCommand
    {
    -- | @brief Original clearpath_platform_msgs/msg/PinoutCommand.rails field.
    -- | @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgPinoutCommand_rails :: [Bool]
    ,
    -- | @brief Original clearpath_platform_msgs/msg/PinoutCommand.outputs field.
    -- | @details Original type uint32. Shape sequence; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgPinoutCommand_outputs :: [Word32]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_platform_msgsMsgPinoutCommand :: Ros2Clearpath_platform_msgsMsgPinoutCommand
defaultRos2Clearpath_platform_msgsMsgPinoutCommand =
    Ros2Clearpath_platform_msgsMsgPinoutCommand
        ([])
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsMsgPinoutCommandCodecIdentity :: String
ros2Clearpath_platform_msgsMsgPinoutCommandCodecIdentity =
    "UWVMROS1_b26c2baf1e64cefa889c4ac6bd6b7f4647d9247eca0626b83cd726547a4e80ff"
-- | @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_USER_PWR_CTRL constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_USER_PWR_CTRL :: Word8
ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_USER_PWR_CTRL = 0
-- | @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutCommand_D100_AUX_OUT1 :: Word8
ros2Clearpath_platform_msgsMsgPinoutCommand_D100_AUX_OUT1 = 0
-- | @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutCommand_D100_AUX_OUT2 :: Word8
ros2Clearpath_platform_msgsMsgPinoutCommand_D100_AUX_OUT2 = 1
-- | @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT3 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutCommand_D100_AUX_OUT3 :: Word8
ros2Clearpath_platform_msgsMsgPinoutCommand_D100_AUX_OUT3 = 2
-- | @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutCommand_D150_AUX_OUT1 :: Word8
ros2Clearpath_platform_msgsMsgPinoutCommand_D150_AUX_OUT1 = 0
-- | @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutCommand_D150_AUX_OUT2 :: Word8
ros2Clearpath_platform_msgsMsgPinoutCommand_D150_AUX_OUT2 = 1
-- | @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT3 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutCommand_D150_AUX_OUT3 :: Word8
ros2Clearpath_platform_msgsMsgPinoutCommand_D150_AUX_OUT3 = 2
-- | @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_AUX_OUT1 :: Word8
ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_AUX_OUT1 = 0
-- | @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_AUX_OUT2 :: Word8
ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_AUX_OUT2 = 1
-- | @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT3 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_AUX_OUT3 :: Word8
ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_AUX_OUT3 = 2
-- | @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO0 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_GPO0 :: Word8
ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_GPO0 = 3
-- | @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_GPO1 :: Word8
ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_GPO1 = 4
-- | @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_GPO2 :: Word8
ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_GPO2 = 5
-- | @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO3 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_GPO3 :: Word8
ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_GPO3 = 6
-- | @brief Encode every field of complete clearpath_platform_msgs/msg/PinoutCommand.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_platform_msgsMsgPinoutCommand :: Ros2Clearpath_platform_msgsMsgPinoutCommand -> Either Word32 [Word8]
encodeRos2Clearpath_platform_msgsMsgPinoutCommand value = do
    if length (ros2Clearpath_platform_msgsMsgPinoutCommand_rails value) <= 2 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> Right (W.putBool (element)))
            (ros2Clearpath_platform_msgsMsgPinoutCommand_rails value)
    chunk0 <- Right (
        W.putNumber 4 (length (ros2Clearpath_platform_msgsMsgPinoutCommand_rails value))
        ++ item0
        )
    if length (ros2Clearpath_platform_msgsMsgPinoutCommand_outputs value) <= 2 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Clearpath_platform_msgsMsgPinoutCommand_outputs value)
    chunk1 <- Right (
        W.putNumber 4 (length (ros2Clearpath_platform_msgsMsgPinoutCommand_outputs value))
        ++ item1
        )
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 18 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_platform_msgs/msg/PinoutCommand.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_platform_msgsMsgPinoutCommand :: W.Parser Ros2Clearpath_platform_msgsMsgPinoutCommand
readRos2Clearpath_platform_msgsMsgPinoutCommand = do
    count0 <- W.number 4
    if count0 > 2 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (W.boolean)
    count1 <- W.number 4
    if count1 > 2 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (fromIntegral <$> W.number 4)
    let value =
            Ros2Clearpath_platform_msgsMsgPinoutCommand
                value0
                value1
    case encodeRos2Clearpath_platform_msgsMsgPinoutCommand value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_platform_msgs/msg/PinoutCommand.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_platform_msgsMsgPinoutCommand :: [Word8] -> Either Word32 Ros2Clearpath_platform_msgsMsgPinoutCommand
decodeRos2Clearpath_platform_msgsMsgPinoutCommand bytes
    | length bytes < 8 || length bytes > 18 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_platform_msgsMsgPinoutCommand bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_platform_msgs/msg/PinoutState value.
-- | @details Retain every original field in declaration order. Canonical extent 28..170 bytes.
data Ros2Clearpath_platform_msgsMsgPinoutState = Ros2Clearpath_platform_msgsMsgPinoutState
    {
    -- | @brief Original clearpath_platform_msgs/msg/PinoutState.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Clearpath_platform_msgsMsgPinoutState_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original clearpath_platform_msgs/msg/PinoutState.rails field.
    -- | @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgPinoutState_rails :: [Bool]
    ,
    -- | @brief Original clearpath_platform_msgs/msg/PinoutState.inputs field.
    -- | @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgPinoutState_inputs :: [Bool]
    ,
    -- | @brief Original clearpath_platform_msgs/msg/PinoutState.outputs field.
    -- | @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgPinoutState_outputs :: [Bool]
    ,
    -- | @brief Original clearpath_platform_msgs/msg/PinoutState.output_periods field.
    -- | @details Original type uint32. Shape sequence; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgPinoutState_output_periods :: [Word32]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_platform_msgsMsgPinoutState :: Ros2Clearpath_platform_msgsMsgPinoutState
defaultRos2Clearpath_platform_msgsMsgPinoutState =
    Ros2Clearpath_platform_msgsMsgPinoutState
        (defaultRos2Std_msgsMsgHeader)
        ([])
        ([])
        ([])
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsMsgPinoutStateCodecIdentity :: String
ros2Clearpath_platform_msgsMsgPinoutStateCodecIdentity =
    "UWVMROS1_a936c6d91440709d50fa9b0be8fb567a9ce793e84f57e5379f6a160c8cbf73e7"
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_USER_PWR_CTRL constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_CC01_USER_PWR_CTRL :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_CC01_USER_PWR_CTRL = 0
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_IN1 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_IN1 = 0
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_IN2 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_IN2 = 1
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN3 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_IN3 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_IN3 = 2
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_IN1 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_IN1 = 0
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_IN2 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_IN2 = 1
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN3 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_IN3 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_IN3 = 2
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_IN1 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_IN1 = 0
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_IN2 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_IN2 = 1
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN3 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_IN3 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_IN3 = 2
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI0 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPI0 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPI0 = 3
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPI1 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPI1 = 4
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPI2 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPI2 = 5
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI3 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPI3 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPI3 = 6
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_OUT1 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_OUT1 = 0
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_OUT2 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_OUT2 = 1
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT3 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_OUT3 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_OUT3 = 2
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_OUT1 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_OUT1 = 0
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_OUT2 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_OUT2 = 1
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT3 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_OUT3 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_OUT3 = 2
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_OUT1 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_OUT1 = 0
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_OUT2 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_OUT2 = 1
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT3 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_OUT3 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_OUT3 = 2
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO0 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPO0 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPO0 = 3
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPO1 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPO1 = 4
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPO2 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPO2 = 5
-- | @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO3 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPO3 :: Word8
ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPO3 = 6
-- | @brief Encode every field of complete clearpath_platform_msgs/msg/PinoutState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_platform_msgsMsgPinoutState :: Ros2Clearpath_platform_msgsMsgPinoutState -> Either Word32 [Word8]
encodeRos2Clearpath_platform_msgsMsgPinoutState value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Clearpath_platform_msgsMsgPinoutState_header value)
    if length (ros2Clearpath_platform_msgsMsgPinoutState_rails value) <= 2 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> Right (W.putBool (element)))
            (ros2Clearpath_platform_msgsMsgPinoutState_rails value)
    chunk1 <- Right (
        W.putNumber 4 (length (ros2Clearpath_platform_msgsMsgPinoutState_rails value))
        ++ item1
        )
    if length (ros2Clearpath_platform_msgsMsgPinoutState_inputs value) <= 2 then Right () else Left 22
    item2 <-
        concat <$> mapM
            (\element -> Right (W.putBool (element)))
            (ros2Clearpath_platform_msgsMsgPinoutState_inputs value)
    chunk2 <- Right (
        W.putNumber 4 (length (ros2Clearpath_platform_msgsMsgPinoutState_inputs value))
        ++ item2
        )
    if length (ros2Clearpath_platform_msgsMsgPinoutState_outputs value) <= 2 then Right () else Left 22
    item3 <-
        concat <$> mapM
            (\element -> Right (W.putBool (element)))
            (ros2Clearpath_platform_msgsMsgPinoutState_outputs value)
    chunk3 <- Right (
        W.putNumber 4 (length (ros2Clearpath_platform_msgsMsgPinoutState_outputs value))
        ++ item3
        )
    if length (ros2Clearpath_platform_msgsMsgPinoutState_output_periods value) <= 2 then Right () else Left 22
    item4 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Clearpath_platform_msgsMsgPinoutState_output_periods value)
    chunk4 <- Right (
        W.putNumber 4 (length (ros2Clearpath_platform_msgsMsgPinoutState_output_periods value))
        ++ item4
        )
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                ]
    if length bytes > 170 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_platform_msgs/msg/PinoutState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_platform_msgsMsgPinoutState :: W.Parser Ros2Clearpath_platform_msgsMsgPinoutState
readRos2Clearpath_platform_msgsMsgPinoutState = do
    value0 <- readRos2Std_msgsMsgHeader
    count1 <- W.number 4
    if count1 > 2 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (W.boolean)
    count2 <- W.number 4
    if count2 > 2 then W.reject else pure ()
    value2 <- replicateM (fromIntegral count2) (W.boolean)
    count3 <- W.number 4
    if count3 > 2 then W.reject else pure ()
    value3 <- replicateM (fromIntegral count3) (W.boolean)
    count4 <- W.number 4
    if count4 > 2 then W.reject else pure ()
    value4 <- replicateM (fromIntegral count4) (fromIntegral <$> W.number 4)
    let value =
            Ros2Clearpath_platform_msgsMsgPinoutState
                value0
                value1
                value2
                value3
                value4
    case encodeRos2Clearpath_platform_msgsMsgPinoutState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_platform_msgs/msg/PinoutState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_platform_msgsMsgPinoutState :: [Word8] -> Either Word32 Ros2Clearpath_platform_msgsMsgPinoutState
decodeRos2Clearpath_platform_msgsMsgPinoutState bytes
    | length bytes < 28 || length bytes > 170 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_platform_msgsMsgPinoutState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_platform_msgs/msg/Power value.
-- | @details Retain every original field in declaration order. Canonical extent 25..169 bytes.
data Ros2Clearpath_platform_msgsMsgPower = Ros2Clearpath_platform_msgsMsgPower
    {
    -- | @brief Original clearpath_platform_msgs/msg/Power.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Clearpath_platform_msgsMsgPower_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Power.shore_power_connected field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgPower_shore_power_connected :: Int8
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Power.battery_connected field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgPower_battery_connected :: Int8
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Power.power_12v_user_nominal field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgPower_power_12v_user_nominal :: Int8
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Power.charger_connected field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgPower_charger_connected :: Int8
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Power.charging_complete field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgPower_charging_complete :: Int8
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Power.measured_voltages field.
    -- | @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgPower_measured_voltages :: [Float]
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Power.measured_currents field.
    -- | @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgPower_measured_currents :: [Float]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_platform_msgsMsgPower :: Ros2Clearpath_platform_msgsMsgPower
defaultRos2Clearpath_platform_msgsMsgPower =
    Ros2Clearpath_platform_msgsMsgPower
        (defaultRos2Std_msgsMsgHeader)
        (0)
        (0)
        (0)
        (0)
        (0)
        ([])
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsMsgPowerCodecIdentity :: String
ros2Clearpath_platform_msgsMsgPowerCodecIdentity =
    "UWVMROS1_3fc241d6b81da2f80bfce22933b81786b5e582715dc66cd238fa40b239e7aecc"
-- | @brief Original clearpath_platform_msgs/msg/Power.NOT_APPLICABLE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_NOT_APPLICABLE :: Int8
ros2Clearpath_platform_msgsMsgPower_NOT_APPLICABLE = -1
-- | @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_BATTERY constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_J100_MEASURED_BATTERY :: Word8
ros2Clearpath_platform_msgsMsgPower_J100_MEASURED_BATTERY = 0
-- | @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_5V constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_J100_MEASURED_5V :: Word8
ros2Clearpath_platform_msgsMsgPower_J100_MEASURED_5V = 1
-- | @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_12V constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_J100_MEASURED_12V :: Word8
ros2Clearpath_platform_msgsMsgPower_J100_MEASURED_12V = 2
-- | @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_BATTERY constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_D100_MEASURED_BATTERY :: Word8
ros2Clearpath_platform_msgsMsgPower_D100_MEASURED_BATTERY = 0
-- | @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_5V constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_D100_MEASURED_5V :: Word8
ros2Clearpath_platform_msgsMsgPower_D100_MEASURED_5V = 1
-- | @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_12V constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_D100_MEASURED_12V :: Word8
ros2Clearpath_platform_msgsMsgPower_D100_MEASURED_12V = 2
-- | @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_BATTERY constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_D150_MEASURED_BATTERY :: Word8
ros2Clearpath_platform_msgsMsgPower_D150_MEASURED_BATTERY = 0
-- | @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_5V constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_D150_MEASURED_5V :: Word8
ros2Clearpath_platform_msgsMsgPower_D150_MEASURED_5V = 1
-- | @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_12V constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_D150_MEASURED_12V :: Word8
ros2Clearpath_platform_msgsMsgPower_D150_MEASURED_12V = 2
-- | @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_BATTERY constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_W200_MEASURED_BATTERY :: Word8
ros2Clearpath_platform_msgsMsgPower_W200_MEASURED_BATTERY = 0
-- | @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_12V constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_W200_MEASURED_12V :: Word8
ros2Clearpath_platform_msgsMsgPower_W200_MEASURED_12V = 1
-- | @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_24V constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_W200_MEASURED_24V :: Word8
ros2Clearpath_platform_msgsMsgPower_W200_MEASURED_24V = 2
-- | @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_48V constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_W200_MEASURED_48V :: Word8
ros2Clearpath_platform_msgsMsgPower_W200_MEASURED_48V = 3
-- | @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_BATTERY constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_BATTERY :: Word8
ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_BATTERY = 0
-- | @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_5V constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_5V :: Word8
ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_5V = 1
-- | @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_12V constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_12V :: Word8
ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_12V = 2
-- | @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_INVERTER constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_INVERTER :: Word8
ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_INVERTER = 3
-- | @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_FRONT_AXLE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_FRONT_AXLE :: Word8
ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_FRONT_AXLE = 4
-- | @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_REAR_AXLE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_REAR_AXLE :: Word8
ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_REAR_AXLE = 5
-- | @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_LIGHT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_LIGHT :: Word8
ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_LIGHT = 6
-- | @brief Original clearpath_platform_msgs/msg/Power.A200_BATTERY_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_A200_BATTERY_VOLTAGE :: Word8
ros2Clearpath_platform_msgsMsgPower_A200_BATTERY_VOLTAGE = 0
-- | @brief Original clearpath_platform_msgs/msg/Power.A200_LEFT_DRIVER_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_A200_LEFT_DRIVER_VOLTAGE :: Word8
ros2Clearpath_platform_msgsMsgPower_A200_LEFT_DRIVER_VOLTAGE = 1
-- | @brief Original clearpath_platform_msgs/msg/Power.A200_RIGHT_DRIVER_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_A200_RIGHT_DRIVER_VOLTAGE :: Word8
ros2Clearpath_platform_msgsMsgPower_A200_RIGHT_DRIVER_VOLTAGE = 2
-- | @brief Original clearpath_platform_msgs/msg/Power.A200_VOLTAGES_SIZE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_A200_VOLTAGES_SIZE :: Word8
ros2Clearpath_platform_msgsMsgPower_A200_VOLTAGES_SIZE = 3
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_BATTERY_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_BATTERY_VOLTAGE :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_BATTERY_VOLTAGE = 0
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_BATTERY_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_USER_BATTERY_VOLTAGE :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_USER_BATTERY_VOLTAGE = 1
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_24V_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_USER_24V_VOLTAGE :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_USER_24V_VOLTAGE = 2
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_12VB_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_USER_12VB_VOLTAGE :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_USER_12VB_VOLTAGE = 3
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_SYSTEM_12V_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_SYSTEM_12V_VOLTAGE :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_SYSTEM_12V_VOLTAGE = 4
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_EXPANSION_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_EXPANSION_VOLTAGE :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_EXPANSION_VOLTAGE = 5
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_24V_AUX_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_24V_AUX_VOLTAGE :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_24V_AUX_VOLTAGE = 6
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_12V_AUX_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_12V_AUX_VOLTAGE :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_12V_AUX_VOLTAGE = 7
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VA_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_12VA_VOLTAGE :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_12VA_VOLTAGE = 8
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX1_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_LYNX1_VOLTAGE :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_LYNX1_VOLTAGE = 9
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX2_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_LYNX2_VOLTAGE :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_LYNX2_VOLTAGE = 10
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX3_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_LYNX3_VOLTAGE :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_LYNX3_VOLTAGE = 11
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX4_VOLTAGE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_LYNX4_VOLTAGE :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_LYNX4_VOLTAGE = 12
-- | @brief Original clearpath_platform_msgs/msg/Power.J100_TOTAL_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_J100_TOTAL_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_J100_TOTAL_CURRENT = 0
-- | @brief Original clearpath_platform_msgs/msg/Power.J100_COMPUTER_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_J100_COMPUTER_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_J100_COMPUTER_CURRENT = 1
-- | @brief Original clearpath_platform_msgs/msg/Power.J100_DRIVE_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_J100_DRIVE_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_J100_DRIVE_CURRENT = 2
-- | @brief Original clearpath_platform_msgs/msg/Power.J100_USER_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_J100_USER_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_J100_USER_CURRENT = 3
-- | @brief Original clearpath_platform_msgs/msg/Power.D100_TOTAL_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_D100_TOTAL_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_D100_TOTAL_CURRENT = 0
-- | @brief Original clearpath_platform_msgs/msg/Power.D100_COMPUTER_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_D100_COMPUTER_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_D100_COMPUTER_CURRENT = 1
-- | @brief Original clearpath_platform_msgs/msg/Power.D150_TOTAL_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_D150_TOTAL_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_D150_TOTAL_CURRENT = 0
-- | @brief Original clearpath_platform_msgs/msg/Power.D150_COMPUTER_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_D150_COMPUTER_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_D150_COMPUTER_CURRENT = 1
-- | @brief Original clearpath_platform_msgs/msg/Power.W200_TOTAL_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_W200_TOTAL_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_W200_TOTAL_CURRENT = 0
-- | @brief Original clearpath_platform_msgs/msg/Power.W200_COMPUTER_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_W200_COMPUTER_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_W200_COMPUTER_CURRENT = 1
-- | @brief Original clearpath_platform_msgs/msg/Power.W200_12V_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_W200_12V_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_W200_12V_CURRENT = 2
-- | @brief Original clearpath_platform_msgs/msg/Power.W200_24V_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_W200_24V_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_W200_24V_CURRENT = 3
-- | @brief Original clearpath_platform_msgs/msg/Power.R100_TOTAL_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_R100_TOTAL_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_R100_TOTAL_CURRENT = 0
-- | @brief Original clearpath_platform_msgs/msg/Power.A200_MCU_AND_USER_PORT_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_A200_MCU_AND_USER_PORT_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_A200_MCU_AND_USER_PORT_CURRENT = 0
-- | @brief Original clearpath_platform_msgs/msg/Power.A200_LEFT_DRIVER_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_A200_LEFT_DRIVER_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_A200_LEFT_DRIVER_CURRENT = 1
-- | @brief Original clearpath_platform_msgs/msg/Power.A200_RIGHT_DRIVER_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_A200_RIGHT_DRIVER_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_A200_RIGHT_DRIVER_CURRENT = 2
-- | @brief Original clearpath_platform_msgs/msg/Power.A200_CURRENTS_SIZE constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_A200_CURRENTS_SIZE :: Word8
ros2Clearpath_platform_msgsMsgPower_A200_CURRENTS_SIZE = 3
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_BATTERY_PACK_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_BATTERY_PACK_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_BATTERY_PACK_CURRENT = 0
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_BATTERY_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_USER_BATTERY_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_USER_BATTERY_CURRENT = 1
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_AUX_HES_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_AUX_HES_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_AUX_HES_CURRENT = 2
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_SYSTEM_12V_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_SYSTEM_12V_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_SYSTEM_12V_CURRENT = 3
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_24V_AUX_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_24V_AUX_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_24V_AUX_CURRENT = 4
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_12V_AUX_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_12V_AUX_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_12V_AUX_CURRENT = 5
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_24V_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_24V_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_24V_CURRENT = 6
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VA_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_12VA_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_12VA_CURRENT = 7
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VB_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_12VB_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_12VB_CURRENT = 8
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX1_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_LYNX1_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_LYNX1_CURRENT = 9
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX2_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_LYNX2_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_LYNX2_CURRENT = 10
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX3_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_LYNX3_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_LYNX3_CURRENT = 11
-- | @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX4_CURRENT constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_LYNX4_CURRENT :: Word8
ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_LYNX4_CURRENT = 12
-- | @brief Encode every field of complete clearpath_platform_msgs/msg/Power.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_platform_msgsMsgPower :: Ros2Clearpath_platform_msgsMsgPower -> Either Word32 [Word8]
encodeRos2Clearpath_platform_msgsMsgPower value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Clearpath_platform_msgsMsgPower_header value)
    chunk1 <- Right (W.putNumber 1 (ros2Clearpath_platform_msgsMsgPower_shore_power_connected value))
    chunk2 <- Right (W.putNumber 1 (ros2Clearpath_platform_msgsMsgPower_battery_connected value))
    chunk3 <- Right (W.putNumber 1 (ros2Clearpath_platform_msgsMsgPower_power_12v_user_nominal value))
    chunk4 <- Right (W.putNumber 1 (ros2Clearpath_platform_msgsMsgPower_charger_connected value))
    chunk5 <- Right (W.putNumber 1 (ros2Clearpath_platform_msgsMsgPower_charging_complete value))
    if length (ros2Clearpath_platform_msgsMsgPower_measured_voltages value) <= 2 then Right () else Left 22
    item6 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Clearpath_platform_msgsMsgPower_measured_voltages value)
    chunk6 <- Right (
        W.putNumber 4 (length (ros2Clearpath_platform_msgsMsgPower_measured_voltages value))
        ++ item6
        )
    if length (ros2Clearpath_platform_msgsMsgPower_measured_currents value) <= 2 then Right () else Left 22
    item7 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Clearpath_platform_msgsMsgPower_measured_currents value)
    chunk7 <- Right (
        W.putNumber 4 (length (ros2Clearpath_platform_msgsMsgPower_measured_currents value))
        ++ item7
        )
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
                ]
    if length bytes > 169 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_platform_msgs/msg/Power.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_platform_msgsMsgPower :: W.Parser Ros2Clearpath_platform_msgsMsgPower
readRos2Clearpath_platform_msgsMsgPower = do
    value0 <- readRos2Std_msgsMsgHeader
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- fromIntegral <$> W.number 1
    value4 <- fromIntegral <$> W.number 1
    value5 <- fromIntegral <$> W.number 1
    count6 <- W.number 4
    if count6 > 2 then W.reject else pure ()
    value6 <- replicateM (fromIntegral count6) (castWord32ToFloat . fromIntegral <$> W.number 4)
    count7 <- W.number 4
    if count7 > 2 then W.reject else pure ()
    value7 <- replicateM (fromIntegral count7) (castWord32ToFloat . fromIntegral <$> W.number 4)
    let value =
            Ros2Clearpath_platform_msgsMsgPower
                value0
                value1
                value2
                value3
                value4
                value5
                value6
                value7
    case encodeRos2Clearpath_platform_msgsMsgPower value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_platform_msgs/msg/Power.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_platform_msgsMsgPower :: [Word8] -> Either Word32 Ros2Clearpath_platform_msgsMsgPower
decodeRos2Clearpath_platform_msgsMsgPower bytes
    | length bytes < 25 || length bytes > 169 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_platform_msgsMsgPower bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_platform_msgs/msg/Status value.
-- | @details Retain every original field in declaration order. Canonical extent 36..676 bytes.
data Ros2Clearpath_platform_msgsMsgStatus = Ros2Clearpath_platform_msgsMsgStatus
    {
    -- | @brief Original clearpath_platform_msgs/msg/Status.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Clearpath_platform_msgsMsgStatus_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Status.hardware_id field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgStatus_hardware_id :: [Word8]
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Status.firmware_version field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgStatus_firmware_version :: [Word8]
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Status.mcu_uptime field.
    -- | @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgStatus_mcu_uptime :: Ros2Builtin_interfacesMsgDuration
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Status.connection_uptime field.
    -- | @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgStatus_connection_uptime :: Ros2Builtin_interfacesMsgDuration
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_platform_msgsMsgStatus :: Ros2Clearpath_platform_msgsMsgStatus
defaultRos2Clearpath_platform_msgsMsgStatus =
    Ros2Clearpath_platform_msgsMsgStatus
        (defaultRos2Std_msgsMsgHeader)
        ([])
        ([])
        (defaultRos2Builtin_interfacesMsgDuration)
        (defaultRos2Builtin_interfacesMsgDuration)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsMsgStatusCodecIdentity :: String
ros2Clearpath_platform_msgsMsgStatusCodecIdentity =
    "UWVMROS1_1bd99cc11ea9efcb51eeba8fc1d599960c16e958a8adf33a56d47fe27be87782"
-- | @brief Encode every field of complete clearpath_platform_msgs/msg/Status.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_platform_msgsMsgStatus :: Ros2Clearpath_platform_msgsMsgStatus -> Either Word32 [Word8]
encodeRos2Clearpath_platform_msgsMsgStatus value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Clearpath_platform_msgsMsgStatus_header value)
    chunk1 <- W.putText 256 (ros2Clearpath_platform_msgsMsgStatus_hardware_id value)
    chunk2 <- W.putText 256 (ros2Clearpath_platform_msgsMsgStatus_firmware_version value)
    chunk3 <- encodeRos2Builtin_interfacesMsgDuration (ros2Clearpath_platform_msgsMsgStatus_mcu_uptime value)
    chunk4 <- encodeRos2Builtin_interfacesMsgDuration (ros2Clearpath_platform_msgsMsgStatus_connection_uptime value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                ]
    if length bytes > 676 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_platform_msgs/msg/Status.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_platform_msgsMsgStatus :: W.Parser Ros2Clearpath_platform_msgsMsgStatus
readRos2Clearpath_platform_msgsMsgStatus = do
    value0 <- readRos2Std_msgsMsgHeader
    value1 <- W.text 256
    value2 <- W.text 256
    value3 <- readRos2Builtin_interfacesMsgDuration
    value4 <- readRos2Builtin_interfacesMsgDuration
    let value =
            Ros2Clearpath_platform_msgsMsgStatus
                value0
                value1
                value2
                value3
                value4
    case encodeRos2Clearpath_platform_msgsMsgStatus value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_platform_msgs/msg/Status.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_platform_msgsMsgStatus :: [Word8] -> Either Word32 Ros2Clearpath_platform_msgsMsgStatus
decodeRos2Clearpath_platform_msgsMsgStatus bytes
    | length bytes < 36 || length bytes > 676 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_platform_msgsMsgStatus bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_platform_msgs/msg/StopStatus value.
-- | @details Retain every original field in declaration order. Canonical extent 15..143 bytes.
data Ros2Clearpath_platform_msgsMsgStopStatus = Ros2Clearpath_platform_msgsMsgStopStatus
    {
    -- | @brief Original clearpath_platform_msgs/msg/StopStatus.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Clearpath_platform_msgsMsgStopStatus_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original clearpath_platform_msgs/msg/StopStatus.stop_power_status field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgStopStatus_stop_power_status :: Bool
    ,
    -- | @brief Original clearpath_platform_msgs/msg/StopStatus.external_stop_present field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgStopStatus_external_stop_present :: Bool
    ,
    -- | @brief Original clearpath_platform_msgs/msg/StopStatus.needs_reset field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgStopStatus_needs_reset :: Bool
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_platform_msgsMsgStopStatus :: Ros2Clearpath_platform_msgsMsgStopStatus
defaultRos2Clearpath_platform_msgsMsgStopStatus =
    Ros2Clearpath_platform_msgsMsgStopStatus
        (defaultRos2Std_msgsMsgHeader)
        (False)
        (False)
        (False)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsMsgStopStatusCodecIdentity :: String
ros2Clearpath_platform_msgsMsgStopStatusCodecIdentity =
    "UWVMROS1_101f96c8d48e7a945a2f94108e7b48393fc9d4bd75507dd709b95180ff4794d2"
-- | @brief Encode every field of complete clearpath_platform_msgs/msg/StopStatus.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_platform_msgsMsgStopStatus :: Ros2Clearpath_platform_msgsMsgStopStatus -> Either Word32 [Word8]
encodeRos2Clearpath_platform_msgsMsgStopStatus value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Clearpath_platform_msgsMsgStopStatus_header value)
    chunk1 <- Right (W.putBool (ros2Clearpath_platform_msgsMsgStopStatus_stop_power_status value))
    chunk2 <- Right (W.putBool (ros2Clearpath_platform_msgsMsgStopStatus_external_stop_present value))
    chunk3 <- Right (W.putBool (ros2Clearpath_platform_msgsMsgStopStatus_needs_reset value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                ]
    if length bytes > 143 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_platform_msgs/msg/StopStatus.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_platform_msgsMsgStopStatus :: W.Parser Ros2Clearpath_platform_msgsMsgStopStatus
readRos2Clearpath_platform_msgsMsgStopStatus = do
    value0 <- readRos2Std_msgsMsgHeader
    value1 <- W.boolean
    value2 <- W.boolean
    value3 <- W.boolean
    let value =
            Ros2Clearpath_platform_msgsMsgStopStatus
                value0
                value1
                value2
                value3
    case encodeRos2Clearpath_platform_msgsMsgStopStatus value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_platform_msgs/msg/StopStatus.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_platform_msgsMsgStopStatus :: [Word8] -> Either Word32 Ros2Clearpath_platform_msgsMsgStopStatus
decodeRos2Clearpath_platform_msgsMsgStopStatus bytes
    | length bytes < 15 || length bytes > 143 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_platform_msgsMsgStopStatus bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_platform_msgs/msg/Temperature value.
-- | @details Retain every original field in declaration order. Canonical extent 16..152 bytes.
data Ros2Clearpath_platform_msgsMsgTemperature = Ros2Clearpath_platform_msgsMsgTemperature
    {
    -- | @brief Original clearpath_platform_msgs/msg/Temperature.header field.
    -- | @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    -- | field order. Backing storage belongs to this value; constructing or copying it creates no
    -- | native ROS owner.
      ros2Clearpath_platform_msgsMsgTemperature_header :: Ros2Std_msgsMsgHeader
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Temperature.temperatures field.
    -- | @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsMsgTemperature_temperatures :: [Float]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_platform_msgsMsgTemperature :: Ros2Clearpath_platform_msgsMsgTemperature
defaultRos2Clearpath_platform_msgsMsgTemperature =
    Ros2Clearpath_platform_msgsMsgTemperature
        (defaultRos2Std_msgsMsgHeader)
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsMsgTemperatureCodecIdentity :: String
ros2Clearpath_platform_msgsMsgTemperatureCodecIdentity =
    "UWVMROS1_b4ae4d6ace9045ce96b0931f08d3b2c7ec358ab9c6da7022afd9ea489f9b0466"
-- | @brief Original clearpath_platform_msgs/msg/Temperature.J100_MCU constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_J100_MCU :: Word8
ros2Clearpath_platform_msgsMsgTemperature_J100_MCU = 0
-- | @brief Original clearpath_platform_msgs/msg/Temperature.J100_PCB constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_J100_PCB :: Word8
ros2Clearpath_platform_msgsMsgTemperature_J100_PCB = 1
-- | @brief Original clearpath_platform_msgs/msg/Temperature.D100_MCU constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_D100_MCU :: Word8
ros2Clearpath_platform_msgsMsgTemperature_D100_MCU = 0
-- | @brief Original clearpath_platform_msgs/msg/Temperature.D100_PCB constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_D100_PCB :: Word8
ros2Clearpath_platform_msgsMsgTemperature_D100_PCB = 1
-- | @brief Original clearpath_platform_msgs/msg/Temperature.D150_MCU constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_D150_MCU :: Word8
ros2Clearpath_platform_msgsMsgTemperature_D150_MCU = 0
-- | @brief Original clearpath_platform_msgs/msg/Temperature.D150_PCB constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_D150_PCB :: Word8
ros2Clearpath_platform_msgsMsgTemperature_D150_PCB = 1
-- | @brief Original clearpath_platform_msgs/msg/Temperature.W200_MCU constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_W200_MCU :: Word8
ros2Clearpath_platform_msgsMsgTemperature_W200_MCU = 0
-- | @brief Original clearpath_platform_msgs/msg/Temperature.R100_MCU constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_R100_MCU :: Word8
ros2Clearpath_platform_msgsMsgTemperature_R100_MCU = 0
-- | @brief Original clearpath_platform_msgs/msg/Temperature.R100_PCB constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_R100_PCB :: Word8
ros2Clearpath_platform_msgsMsgTemperature_R100_PCB = 1
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_MCU constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_MCU :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_MCU = 0
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN1 :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN1 = 1
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN2 :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN2 = 2
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN3 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN3 :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN3 = 3
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN4 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN4 :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN4 = 4
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN5 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN5 :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN5 = 5
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN6 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN6 :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN6 = 6
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN7 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN7 :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN7 = 7
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN8 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN8 :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN8 = 8
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_5V_INDUCTOR constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_5V_INDUCTOR :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_5V_INDUCTOR = 9
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_MAIN_GND_LUG constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_MAIN_GND_LUG :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_MAIN_GND_LUG = 10
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_24V_DCDC constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_24V_DCDC :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_24V_DCDC = 11
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_12V_DCDC constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_12V_DCDC :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_12V_DCDC = 12
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_EXT_1 :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_EXT_1 = 13
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_EXT_2 :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_EXT_2 = 14
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_3 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_EXT_3 :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_EXT_3 = 15
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_4 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_EXT_4 :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_EXT_4 = 16
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_BREAKOUT_1 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_BREAKOUT_1 :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_BREAKOUT_1 = 17
-- | @brief Original clearpath_platform_msgs/msg/Temperature.CC01_BREAKOUT_2 constant.
-- | @details The immutable original constant consumes no canonical instance field.
ros2Clearpath_platform_msgsMsgTemperature_CC01_BREAKOUT_2 :: Word8
ros2Clearpath_platform_msgsMsgTemperature_CC01_BREAKOUT_2 = 18
-- | @brief Encode every field of complete clearpath_platform_msgs/msg/Temperature.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_platform_msgsMsgTemperature :: Ros2Clearpath_platform_msgsMsgTemperature -> Either Word32 [Word8]
encodeRos2Clearpath_platform_msgsMsgTemperature value = do
    chunk0 <- encodeRos2Std_msgsMsgHeader (ros2Clearpath_platform_msgsMsgTemperature_header value)
    if length (ros2Clearpath_platform_msgsMsgTemperature_temperatures value) <= 2 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Clearpath_platform_msgsMsgTemperature_temperatures value)
    chunk1 <- Right (
        W.putNumber 4 (length (ros2Clearpath_platform_msgsMsgTemperature_temperatures value))
        ++ item1
        )
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 152 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_platform_msgs/msg/Temperature.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_platform_msgsMsgTemperature :: W.Parser Ros2Clearpath_platform_msgsMsgTemperature
readRos2Clearpath_platform_msgsMsgTemperature = do
    value0 <- readRos2Std_msgsMsgHeader
    count1 <- W.number 4
    if count1 > 2 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (castWord32ToFloat . fromIntegral <$> W.number 4)
    let value =
            Ros2Clearpath_platform_msgsMsgTemperature
                value0
                value1
    case encodeRos2Clearpath_platform_msgsMsgTemperature value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_platform_msgs/msg/Temperature.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_platform_msgsMsgTemperature :: [Word8] -> Either Word32 Ros2Clearpath_platform_msgsMsgTemperature
decodeRos2Clearpath_platform_msgsMsgTemperature bytes
    | length bytes < 16 || length bytes > 152 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_platform_msgsMsgTemperature bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_control_msgs/srv/PowerControl_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Clearpath_control_msgsSrvPowerControl_Request = Ros2Clearpath_control_msgsSrvPowerControl_Request
    {
    -- | @brief Original clearpath_control_msgs/srv/PowerControl_Request.power_on field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_control_msgsSrvPowerControl_Request_power_on :: Bool
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_control_msgsSrvPowerControl_Request :: Ros2Clearpath_control_msgsSrvPowerControl_Request
defaultRos2Clearpath_control_msgsSrvPowerControl_Request =
    Ros2Clearpath_control_msgsSrvPowerControl_Request
        (False)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_control_msgsSrvPowerControl_RequestCodecIdentity :: String
ros2Clearpath_control_msgsSrvPowerControl_RequestCodecIdentity =
    "UWVMROS1_1ad49d42d8895b3bd219799ab9cc080cf09d23aa4bca4c1172d19bc18fa416c4"
-- | @brief Encode every field of complete clearpath_control_msgs/srv/PowerControl_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_control_msgsSrvPowerControl_Request :: Ros2Clearpath_control_msgsSrvPowerControl_Request -> Either Word32 [Word8]
encodeRos2Clearpath_control_msgsSrvPowerControl_Request value = do
    chunk0 <- Right (W.putBool (ros2Clearpath_control_msgsSrvPowerControl_Request_power_on value))
    let bytes =
            concat
                [ chunk0
                ]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_control_msgs/srv/PowerControl_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_control_msgsSrvPowerControl_Request :: W.Parser Ros2Clearpath_control_msgsSrvPowerControl_Request
readRos2Clearpath_control_msgsSrvPowerControl_Request = do
    value0 <- W.boolean
    let value =
            Ros2Clearpath_control_msgsSrvPowerControl_Request
                value0
    case encodeRos2Clearpath_control_msgsSrvPowerControl_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_control_msgs/srv/PowerControl_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_control_msgsSrvPowerControl_Request :: [Word8] -> Either Word32 Ros2Clearpath_control_msgsSrvPowerControl_Request
decodeRos2Clearpath_control_msgsSrvPowerControl_Request bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_control_msgsSrvPowerControl_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_control_msgs/srv/PowerControl_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 5..261 bytes.
data Ros2Clearpath_control_msgsSrvPowerControl_Response = Ros2Clearpath_control_msgsSrvPowerControl_Response
    {
    -- | @brief Original clearpath_control_msgs/srv/PowerControl_Response.success field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_control_msgsSrvPowerControl_Response_success :: Bool
    ,
    -- | @brief Original clearpath_control_msgs/srv/PowerControl_Response.message field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_control_msgsSrvPowerControl_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_control_msgsSrvPowerControl_Response :: Ros2Clearpath_control_msgsSrvPowerControl_Response
defaultRos2Clearpath_control_msgsSrvPowerControl_Response =
    Ros2Clearpath_control_msgsSrvPowerControl_Response
        (False)
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_control_msgsSrvPowerControl_ResponseCodecIdentity :: String
ros2Clearpath_control_msgsSrvPowerControl_ResponseCodecIdentity =
    "UWVMROS1_6d74d07d6a8ff1c41ed4ca13939d54e9e642f423dc2ff6598665238ebbf10a8b"
-- | @brief Encode every field of complete clearpath_control_msgs/srv/PowerControl_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_control_msgsSrvPowerControl_Response :: Ros2Clearpath_control_msgsSrvPowerControl_Response -> Either Word32 [Word8]
encodeRos2Clearpath_control_msgsSrvPowerControl_Response value = do
    chunk0 <- Right (W.putBool (ros2Clearpath_control_msgsSrvPowerControl_Response_success value))
    chunk1 <- W.putText 256 (ros2Clearpath_control_msgsSrvPowerControl_Response_message value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 261 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_control_msgs/srv/PowerControl_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_control_msgsSrvPowerControl_Response :: W.Parser Ros2Clearpath_control_msgsSrvPowerControl_Response
readRos2Clearpath_control_msgsSrvPowerControl_Response = do
    value0 <- W.boolean
    value1 <- W.text 256
    let value =
            Ros2Clearpath_control_msgsSrvPowerControl_Response
                value0
                value1
    case encodeRos2Clearpath_control_msgsSrvPowerControl_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_control_msgs/srv/PowerControl_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_control_msgsSrvPowerControl_Response :: [Word8] -> Either Word32 Ros2Clearpath_control_msgsSrvPowerControl_Response
decodeRos2Clearpath_control_msgsSrvPowerControl_Response bytes
    | length bytes < 5 || length bytes > 261 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_control_msgsSrvPowerControl_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_platform_msgs/srv/ConfigureMcu_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 5..261 bytes.
data Ros2Clearpath_platform_msgsSrvConfigureMcu_Request = Ros2Clearpath_platform_msgsSrvConfigureMcu_Request
    {
    -- | @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Request.domain_id field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsSrvConfigureMcu_Request_domain_id :: Word8
    ,
    -- | @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Request.robot_namespace field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsSrvConfigureMcu_Request_robot_namespace :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_platform_msgsSrvConfigureMcu_Request :: Ros2Clearpath_platform_msgsSrvConfigureMcu_Request
defaultRos2Clearpath_platform_msgsSrvConfigureMcu_Request =
    Ros2Clearpath_platform_msgsSrvConfigureMcu_Request
        (0)
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsSrvConfigureMcu_RequestCodecIdentity :: String
ros2Clearpath_platform_msgsSrvConfigureMcu_RequestCodecIdentity =
    "UWVMROS1_9c48451b208c4de7a51c5075587dfbe710e7ec6b249c7e1eef519022154023fa"
-- | @brief Encode every field of complete clearpath_platform_msgs/srv/ConfigureMcu_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_platform_msgsSrvConfigureMcu_Request :: Ros2Clearpath_platform_msgsSrvConfigureMcu_Request -> Either Word32 [Word8]
encodeRos2Clearpath_platform_msgsSrvConfigureMcu_Request value = do
    chunk0 <- Right (W.putNumber 1 (ros2Clearpath_platform_msgsSrvConfigureMcu_Request_domain_id value))
    chunk1 <- W.putText 256 (ros2Clearpath_platform_msgsSrvConfigureMcu_Request_robot_namespace value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 261 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_platform_msgs/srv/ConfigureMcu_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_platform_msgsSrvConfigureMcu_Request :: W.Parser Ros2Clearpath_platform_msgsSrvConfigureMcu_Request
readRos2Clearpath_platform_msgsSrvConfigureMcu_Request = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- W.text 256
    let value =
            Ros2Clearpath_platform_msgsSrvConfigureMcu_Request
                value0
                value1
    case encodeRos2Clearpath_platform_msgsSrvConfigureMcu_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_platform_msgs/srv/ConfigureMcu_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_platform_msgsSrvConfigureMcu_Request :: [Word8] -> Either Word32 Ros2Clearpath_platform_msgsSrvConfigureMcu_Request
decodeRos2Clearpath_platform_msgsSrvConfigureMcu_Request bytes
    | length bytes < 5 || length bytes > 261 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_platform_msgsSrvConfigureMcu_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_platform_msgs/srv/ConfigureMcu_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 5..261 bytes.
data Ros2Clearpath_platform_msgsSrvConfigureMcu_Response = Ros2Clearpath_platform_msgsSrvConfigureMcu_Response
    {
    -- | @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Response.success field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsSrvConfigureMcu_Response_success :: Bool
    ,
    -- | @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Response.message field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsSrvConfigureMcu_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_platform_msgsSrvConfigureMcu_Response :: Ros2Clearpath_platform_msgsSrvConfigureMcu_Response
defaultRos2Clearpath_platform_msgsSrvConfigureMcu_Response =
    Ros2Clearpath_platform_msgsSrvConfigureMcu_Response
        (False)
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsSrvConfigureMcu_ResponseCodecIdentity :: String
ros2Clearpath_platform_msgsSrvConfigureMcu_ResponseCodecIdentity =
    "UWVMROS1_552e715f290b5b9aa5dc926519cf2ab5120d6b2ae5eca9902efcc3f8c9e459ad"
-- | @brief Encode every field of complete clearpath_platform_msgs/srv/ConfigureMcu_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_platform_msgsSrvConfigureMcu_Response :: Ros2Clearpath_platform_msgsSrvConfigureMcu_Response -> Either Word32 [Word8]
encodeRos2Clearpath_platform_msgsSrvConfigureMcu_Response value = do
    chunk0 <- Right (W.putBool (ros2Clearpath_platform_msgsSrvConfigureMcu_Response_success value))
    chunk1 <- W.putText 256 (ros2Clearpath_platform_msgsSrvConfigureMcu_Response_message value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 261 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_platform_msgs/srv/ConfigureMcu_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_platform_msgsSrvConfigureMcu_Response :: W.Parser Ros2Clearpath_platform_msgsSrvConfigureMcu_Response
readRos2Clearpath_platform_msgsSrvConfigureMcu_Response = do
    value0 <- W.boolean
    value1 <- W.text 256
    let value =
            Ros2Clearpath_platform_msgsSrvConfigureMcu_Response
                value0
                value1
    case encodeRos2Clearpath_platform_msgsSrvConfigureMcu_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_platform_msgs/srv/ConfigureMcu_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_platform_msgsSrvConfigureMcu_Response :: [Word8] -> Either Word32 Ros2Clearpath_platform_msgsSrvConfigureMcu_Response
decodeRos2Clearpath_platform_msgsSrvConfigureMcu_Response bytes
    | length bytes < 5 || length bytes > 261 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_platform_msgsSrvConfigureMcu_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_platform_msgs/srv/SetPinout_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 5..5 bytes.
data Ros2Clearpath_platform_msgsSrvSetPinout_Request = Ros2Clearpath_platform_msgsSrvSetPinout_Request
    {
    -- | @brief Original clearpath_platform_msgs/srv/SetPinout_Request.state field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsSrvSetPinout_Request_state :: Bool
    ,
    -- | @brief Original clearpath_platform_msgs/srv/SetPinout_Request.toggle_period field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsSrvSetPinout_Request_toggle_period :: Word32
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_platform_msgsSrvSetPinout_Request :: Ros2Clearpath_platform_msgsSrvSetPinout_Request
defaultRos2Clearpath_platform_msgsSrvSetPinout_Request =
    Ros2Clearpath_platform_msgsSrvSetPinout_Request
        (False)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsSrvSetPinout_RequestCodecIdentity :: String
ros2Clearpath_platform_msgsSrvSetPinout_RequestCodecIdentity =
    "UWVMROS1_3a3a2f8f16279c2e7a057353cd1f7f11e1a65e887dd3ce0a4b7f584708afb238"
-- | @brief Encode every field of complete clearpath_platform_msgs/srv/SetPinout_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_platform_msgsSrvSetPinout_Request :: Ros2Clearpath_platform_msgsSrvSetPinout_Request -> Either Word32 [Word8]
encodeRos2Clearpath_platform_msgsSrvSetPinout_Request value = do
    chunk0 <- Right (W.putBool (ros2Clearpath_platform_msgsSrvSetPinout_Request_state value))
    chunk1 <- Right (W.putNumber 4 (ros2Clearpath_platform_msgsSrvSetPinout_Request_toggle_period value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 5 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_platform_msgs/srv/SetPinout_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_platform_msgsSrvSetPinout_Request :: W.Parser Ros2Clearpath_platform_msgsSrvSetPinout_Request
readRos2Clearpath_platform_msgsSrvSetPinout_Request = do
    value0 <- W.boolean
    value1 <- fromIntegral <$> W.number 4
    let value =
            Ros2Clearpath_platform_msgsSrvSetPinout_Request
                value0
                value1
    case encodeRos2Clearpath_platform_msgsSrvSetPinout_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_platform_msgs/srv/SetPinout_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_platform_msgsSrvSetPinout_Request :: [Word8] -> Either Word32 Ros2Clearpath_platform_msgsSrvSetPinout_Request
decodeRos2Clearpath_platform_msgsSrvSetPinout_Request bytes
    | length bytes < 5 || length bytes > 5 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_platform_msgsSrvSetPinout_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original clearpath_platform_msgs/srv/SetPinout_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 5..261 bytes.
data Ros2Clearpath_platform_msgsSrvSetPinout_Response = Ros2Clearpath_platform_msgsSrvSetPinout_Response
    {
    -- | @brief Original clearpath_platform_msgs/srv/SetPinout_Response.success field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsSrvSetPinout_Response_success :: Bool
    ,
    -- | @brief Original clearpath_platform_msgs/srv/SetPinout_Response.message field.
    -- | @details Original type string. String bound 256 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Clearpath_platform_msgsSrvSetPinout_Response_message :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Clearpath_platform_msgsSrvSetPinout_Response :: Ros2Clearpath_platform_msgsSrvSetPinout_Response
defaultRos2Clearpath_platform_msgsSrvSetPinout_Response =
    Ros2Clearpath_platform_msgsSrvSetPinout_Response
        (False)
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsSrvSetPinout_ResponseCodecIdentity :: String
ros2Clearpath_platform_msgsSrvSetPinout_ResponseCodecIdentity =
    "UWVMROS1_b643ef5de2dfb725906ef8f11d79601400953211b47220be7a6fcc05d1be8ee3"
-- | @brief Encode every field of complete clearpath_platform_msgs/srv/SetPinout_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Clearpath_platform_msgsSrvSetPinout_Response :: Ros2Clearpath_platform_msgsSrvSetPinout_Response -> Either Word32 [Word8]
encodeRos2Clearpath_platform_msgsSrvSetPinout_Response value = do
    chunk0 <- Right (W.putBool (ros2Clearpath_platform_msgsSrvSetPinout_Response_success value))
    chunk1 <- W.putText 256 (ros2Clearpath_platform_msgsSrvSetPinout_Response_message value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 261 then Left 22 else Right bytes
-- | @brief Read every field of nested clearpath_platform_msgs/srv/SetPinout_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Clearpath_platform_msgsSrvSetPinout_Response :: W.Parser Ros2Clearpath_platform_msgsSrvSetPinout_Response
readRos2Clearpath_platform_msgsSrvSetPinout_Response = do
    value0 <- W.boolean
    value1 <- W.text 256
    let value =
            Ros2Clearpath_platform_msgsSrvSetPinout_Response
                value0
                value1
    case encodeRos2Clearpath_platform_msgsSrvSetPinout_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete clearpath_platform_msgs/srv/SetPinout_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Clearpath_platform_msgsSrvSetPinout_Response :: [Word8] -> Either Word32 Ros2Clearpath_platform_msgsSrvSetPinout_Response
decodeRos2Clearpath_platform_msgsSrvSetPinout_Response bytes
    | length bytes < 5 || length bytes > 261 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Clearpath_platform_msgsSrvSetPinout_Response bytes
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

