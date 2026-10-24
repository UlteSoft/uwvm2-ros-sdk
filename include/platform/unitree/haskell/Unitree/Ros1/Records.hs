-- | @file Records.hs
-- @brief Complete original Unitree ROS 1 Haskell records and codecs.
-- @details Owned immutable values preserve all fields; constructing them grants no ROS authority.
module Unitree.Ros1.Records where
import Data.Int
import Data.Word
import Data.Bits
import GHC.Float
import Control.Monad (replicateM)
import qualified Unitree.Wire as W

-- | @brief Complete original unitree_legged_msgs/BmsCmd value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros1Unitree_legged_msgsBmsCmd = Ros1Unitree_legged_msgsBmsCmd
    {
    -- | @brief Original unitree_legged_msgs/BmsCmd.off field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsBmsCmd_off :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/BmsCmd.reserve field.
    -- | @details Original type uint8. Shape array; bound/count 3 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Unitree_legged_msgsBmsCmd_reserve :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Unitree_legged_msgsBmsCmdCodecIdentity :: String
ros1Unitree_legged_msgsBmsCmdCodecIdentity =
    "UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928"
-- | @brief Encode every field of complete unitree_legged_msgs/BmsCmd.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Unitree_legged_msgsBmsCmd :: Ros1Unitree_legged_msgsBmsCmd -> Either Word32 [Word8]
encodeRos1Unitree_legged_msgsBmsCmd value = do
    chunk0 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsBmsCmd_off value))
    if length (ros1Unitree_legged_msgsBmsCmd_reserve value) == 3 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros1Unitree_legged_msgsBmsCmd_reserve value)
    chunk1 <- Right item1
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_legged_msgs/BmsCmd.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Unitree_legged_msgsBmsCmd :: W.Parser Ros1Unitree_legged_msgsBmsCmd
readRos1Unitree_legged_msgsBmsCmd = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- replicateM 3 (fromIntegral <$> W.number 1)
    let value =
            Ros1Unitree_legged_msgsBmsCmd
                value0
                value1
    case encodeRos1Unitree_legged_msgsBmsCmd value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_legged_msgs/BmsCmd.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Unitree_legged_msgsBmsCmd :: [Word8] -> Either Word32 Ros1Unitree_legged_msgsBmsCmd
decodeRos1Unitree_legged_msgsBmsCmd bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Unitree_legged_msgsBmsCmd bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_legged_msgs/BmsState value.
-- | @details Retain every original field in declaration order. Canonical extent 34..34 bytes.
data Ros1Unitree_legged_msgsBmsState = Ros1Unitree_legged_msgsBmsState
    {
    -- | @brief Original unitree_legged_msgs/BmsState.version_h field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsBmsState_version_h :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/BmsState.version_l field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsBmsState_version_l :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/BmsState.bms_status field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsBmsState_bms_status :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/BmsState.SOC field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsBmsState_SOC :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/BmsState.current field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsBmsState_current :: Int32
    ,
    -- | @brief Original unitree_legged_msgs/BmsState.cycle field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsBmsState_cycle :: Word16
    ,
    -- | @brief Original unitree_legged_msgs/BmsState.BQ_NTC field.
    -- | @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Unitree_legged_msgsBmsState_BQ_NTC :: [Int8]
    ,
    -- | @brief Original unitree_legged_msgs/BmsState.MCU_NTC field.
    -- | @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Unitree_legged_msgsBmsState_MCU_NTC :: [Int8]
    ,
    -- | @brief Original unitree_legged_msgs/BmsState.cell_vol field.
    -- | @details Original type uint16. Shape array; bound/count 10 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsBmsState_cell_vol :: [Word16]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Unitree_legged_msgsBmsStateCodecIdentity :: String
ros1Unitree_legged_msgsBmsStateCodecIdentity =
    "UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a"
-- | @brief Encode every field of complete unitree_legged_msgs/BmsState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Unitree_legged_msgsBmsState :: Ros1Unitree_legged_msgsBmsState -> Either Word32 [Word8]
encodeRos1Unitree_legged_msgsBmsState value = do
    chunk0 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsBmsState_version_h value))
    chunk1 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsBmsState_version_l value))
    chunk2 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsBmsState_bms_status value))
    chunk3 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsBmsState_SOC value))
    chunk4 <- Right (W.putNumber 4 (ros1Unitree_legged_msgsBmsState_current value))
    chunk5 <- Right (W.putNumber 2 (ros1Unitree_legged_msgsBmsState_cycle value))
    if length (ros1Unitree_legged_msgsBmsState_BQ_NTC value) == 2 then Right () else Left 22
    item6 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros1Unitree_legged_msgsBmsState_BQ_NTC value)
    chunk6 <- Right item6
    if length (ros1Unitree_legged_msgsBmsState_MCU_NTC value) == 2 then Right () else Left 22
    item7 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros1Unitree_legged_msgsBmsState_MCU_NTC value)
    chunk7 <- Right item7
    if length (ros1Unitree_legged_msgsBmsState_cell_vol value) == 10 then Right () else Left 22
    item8 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 2 (element)))
            (ros1Unitree_legged_msgsBmsState_cell_vol value)
    chunk8 <- Right item8
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
    if length bytes > 34 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_legged_msgs/BmsState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Unitree_legged_msgsBmsState :: W.Parser Ros1Unitree_legged_msgsBmsState
readRos1Unitree_legged_msgsBmsState = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- fromIntegral <$> W.number 1
    value4 <- fromIntegral <$> W.number 4
    value5 <- fromIntegral <$> W.number 2
    value6 <- replicateM 2 (fromIntegral <$> W.number 1)
    value7 <- replicateM 2 (fromIntegral <$> W.number 1)
    value8 <- replicateM 10 (fromIntegral <$> W.number 2)
    let value =
            Ros1Unitree_legged_msgsBmsState
                value0
                value1
                value2
                value3
                value4
                value5
                value6
                value7
                value8
    case encodeRos1Unitree_legged_msgsBmsState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_legged_msgs/BmsState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Unitree_legged_msgsBmsState :: [Word8] -> Either Word32 Ros1Unitree_legged_msgsBmsState
decodeRos1Unitree_legged_msgsBmsState bytes
    | length bytes < 34 || length bytes > 34 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Unitree_legged_msgsBmsState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_legged_msgs/Cartesian value.
-- | @details Retain every original field in declaration order. Canonical extent 12..12 bytes.
data Ros1Unitree_legged_msgsCartesian = Ros1Unitree_legged_msgsCartesian
    {
    -- | @brief Original unitree_legged_msgs/Cartesian.x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsCartesian_x :: Float
    ,
    -- | @brief Original unitree_legged_msgs/Cartesian.y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsCartesian_y :: Float
    ,
    -- | @brief Original unitree_legged_msgs/Cartesian.z field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsCartesian_z :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Unitree_legged_msgsCartesianCodecIdentity :: String
ros1Unitree_legged_msgsCartesianCodecIdentity =
    "UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722"
-- | @brief Encode every field of complete unitree_legged_msgs/Cartesian.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Unitree_legged_msgsCartesian :: Ros1Unitree_legged_msgsCartesian -> Either Word32 [Word8]
encodeRos1Unitree_legged_msgsCartesian value = do
    chunk0 <- finite4 (ros1Unitree_legged_msgsCartesian_x value) castFloatToWord32
    chunk1 <- finite4 (ros1Unitree_legged_msgsCartesian_y value) castFloatToWord32
    chunk2 <- finite4 (ros1Unitree_legged_msgsCartesian_z value) castFloatToWord32
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 12 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_legged_msgs/Cartesian.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Unitree_legged_msgsCartesian :: W.Parser Ros1Unitree_legged_msgsCartesian
readRos1Unitree_legged_msgsCartesian = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value =
            Ros1Unitree_legged_msgsCartesian
                value0
                value1
                value2
    case encodeRos1Unitree_legged_msgsCartesian value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_legged_msgs/Cartesian.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Unitree_legged_msgsCartesian :: [Word8] -> Either Word32 Ros1Unitree_legged_msgsCartesian
decodeRos1Unitree_legged_msgsCartesian bytes
    | length bytes < 12 || length bytes > 12 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Unitree_legged_msgsCartesian bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_legged_msgs/LED value.
-- | @details Retain every original field in declaration order. Canonical extent 3..3 bytes.
data Ros1Unitree_legged_msgsLED = Ros1Unitree_legged_msgsLED
    {
    -- | @brief Original unitree_legged_msgs/LED.r field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsLED_r :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/LED.g field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsLED_g :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/LED.b field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsLED_b :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Unitree_legged_msgsLEDCodecIdentity :: String
ros1Unitree_legged_msgsLEDCodecIdentity =
    "UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5"
-- | @brief Encode every field of complete unitree_legged_msgs/LED.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Unitree_legged_msgsLED :: Ros1Unitree_legged_msgsLED -> Either Word32 [Word8]
encodeRos1Unitree_legged_msgsLED value = do
    chunk0 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsLED_r value))
    chunk1 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsLED_g value))
    chunk2 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsLED_b value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 3 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_legged_msgs/LED.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Unitree_legged_msgsLED :: W.Parser Ros1Unitree_legged_msgsLED
readRos1Unitree_legged_msgsLED = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    let value =
            Ros1Unitree_legged_msgsLED
                value0
                value1
                value2
    case encodeRos1Unitree_legged_msgsLED value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_legged_msgs/LED.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Unitree_legged_msgsLED :: [Word8] -> Either Word32 Ros1Unitree_legged_msgsLED
decodeRos1Unitree_legged_msgsLED bytes
    | length bytes < 3 || length bytes > 3 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Unitree_legged_msgsLED bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_legged_msgs/HighCmd value.
-- | @details Retain every original field in declaration order. Canonical extent 129..129 bytes.
data Ros1Unitree_legged_msgsHighCmd = Ros1Unitree_legged_msgsHighCmd
    {
    -- | @brief Original unitree_legged_msgs/HighCmd.head field.
    -- | @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighCmd_head :: [Word8]
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.levelFlag field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighCmd_levelFlag :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.frameReserve field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighCmd_frameReserve :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.SN field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighCmd_SN :: [Word32]
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.version field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighCmd_version :: [Word32]
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.bandWidth field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighCmd_bandWidth :: Word16
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighCmd_mode :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.gaitType field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighCmd_gaitType :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.speedLevel field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighCmd_speedLevel :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.footRaiseHeight field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighCmd_footRaiseHeight :: Float
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.bodyHeight field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighCmd_bodyHeight :: Float
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.position field.
    -- | @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighCmd_position :: [Float]
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.euler field.
    -- | @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighCmd_euler :: [Float]
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.velocity field.
    -- | @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighCmd_velocity :: [Float]
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.yawSpeed field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighCmd_yawSpeed :: Float
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.bms field.
    -- | @details Original type unitree_legged_msgs/BmsCmd. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Unitree_legged_msgsHighCmd_bms :: Ros1Unitree_legged_msgsBmsCmd
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.led field.
    -- | @details Original type unitree_legged_msgs/LED. Shape array; bound/count 4 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighCmd_led :: [Ros1Unitree_legged_msgsLED]
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.wirelessRemote field.
    -- | @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighCmd_wirelessRemote :: [Word8]
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.reserve field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighCmd_reserve :: Word32
    ,
    -- | @brief Original unitree_legged_msgs/HighCmd.crc field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighCmd_crc :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Unitree_legged_msgsHighCmdCodecIdentity :: String
ros1Unitree_legged_msgsHighCmdCodecIdentity =
    "UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38"
-- | @brief Encode every field of complete unitree_legged_msgs/HighCmd.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Unitree_legged_msgsHighCmd :: Ros1Unitree_legged_msgsHighCmd -> Either Word32 [Word8]
encodeRos1Unitree_legged_msgsHighCmd value = do
    if length (ros1Unitree_legged_msgsHighCmd_head value) == 2 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros1Unitree_legged_msgsHighCmd_head value)
    chunk0 <- Right item0
    chunk1 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsHighCmd_levelFlag value))
    chunk2 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsHighCmd_frameReserve value))
    if length (ros1Unitree_legged_msgsHighCmd_SN value) == 2 then Right () else Left 22
    item3 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros1Unitree_legged_msgsHighCmd_SN value)
    chunk3 <- Right item3
    if length (ros1Unitree_legged_msgsHighCmd_version value) == 2 then Right () else Left 22
    item4 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros1Unitree_legged_msgsHighCmd_version value)
    chunk4 <- Right item4
    chunk5 <- Right (W.putNumber 2 (ros1Unitree_legged_msgsHighCmd_bandWidth value))
    chunk6 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsHighCmd_mode value))
    chunk7 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsHighCmd_gaitType value))
    chunk8 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsHighCmd_speedLevel value))
    chunk9 <- finite4 (ros1Unitree_legged_msgsHighCmd_footRaiseHeight value) castFloatToWord32
    chunk10 <- finite4 (ros1Unitree_legged_msgsHighCmd_bodyHeight value) castFloatToWord32
    if length (ros1Unitree_legged_msgsHighCmd_position value) == 2 then Right () else Left 22
    item11 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros1Unitree_legged_msgsHighCmd_position value)
    chunk11 <- Right item11
    if length (ros1Unitree_legged_msgsHighCmd_euler value) == 3 then Right () else Left 22
    item12 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros1Unitree_legged_msgsHighCmd_euler value)
    chunk12 <- Right item12
    if length (ros1Unitree_legged_msgsHighCmd_velocity value) == 2 then Right () else Left 22
    item13 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros1Unitree_legged_msgsHighCmd_velocity value)
    chunk13 <- Right item13
    chunk14 <- finite4 (ros1Unitree_legged_msgsHighCmd_yawSpeed value) castFloatToWord32
    chunk15 <- encodeRos1Unitree_legged_msgsBmsCmd (ros1Unitree_legged_msgsHighCmd_bms value)
    if length (ros1Unitree_legged_msgsHighCmd_led value) == 4 then Right () else Left 22
    item16 <-
        concat <$> mapM
            (\element -> encodeRos1Unitree_legged_msgsLED (element))
            (ros1Unitree_legged_msgsHighCmd_led value)
    chunk16 <- Right item16
    if length (ros1Unitree_legged_msgsHighCmd_wirelessRemote value) == 40 then Right () else Left 22
    item17 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros1Unitree_legged_msgsHighCmd_wirelessRemote value)
    chunk17 <- Right item17
    chunk18 <- Right (W.putNumber 4 (ros1Unitree_legged_msgsHighCmd_reserve value))
    chunk19 <- Right (W.putNumber 4 (ros1Unitree_legged_msgsHighCmd_crc value))
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
                , chunk13
                , chunk14
                , chunk15
                , chunk16
                , chunk17
                , chunk18
                , chunk19
                ]
    if length bytes > 129 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_legged_msgs/HighCmd.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Unitree_legged_msgsHighCmd :: W.Parser Ros1Unitree_legged_msgsHighCmd
readRos1Unitree_legged_msgsHighCmd = do
    value0 <- replicateM 2 (fromIntegral <$> W.number 1)
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- replicateM 2 (fromIntegral <$> W.number 4)
    value4 <- replicateM 2 (fromIntegral <$> W.number 4)
    value5 <- fromIntegral <$> W.number 2
    value6 <- fromIntegral <$> W.number 1
    value7 <- fromIntegral <$> W.number 1
    value8 <- fromIntegral <$> W.number 1
    value9 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value10 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value11 <- replicateM 2 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value12 <- replicateM 3 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value13 <- replicateM 2 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value14 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value15 <- readRos1Unitree_legged_msgsBmsCmd
    value16 <- replicateM 4 (readRos1Unitree_legged_msgsLED)
    value17 <- replicateM 40 (fromIntegral <$> W.number 1)
    value18 <- fromIntegral <$> W.number 4
    value19 <- fromIntegral <$> W.number 4
    let value =
            Ros1Unitree_legged_msgsHighCmd
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
                value13
                value14
                value15
                value16
                value17
                value18
                value19
    case encodeRos1Unitree_legged_msgsHighCmd value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_legged_msgs/HighCmd.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Unitree_legged_msgsHighCmd :: [Word8] -> Either Word32 Ros1Unitree_legged_msgsHighCmd
decodeRos1Unitree_legged_msgsHighCmd bytes
    | length bytes < 129 || length bytes > 129 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Unitree_legged_msgsHighCmd bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_legged_msgs/IMU value.
-- | @details Retain every original field in declaration order. Canonical extent 53..53 bytes.
data Ros1Unitree_legged_msgsIMU = Ros1Unitree_legged_msgsIMU
    {
    -- | @brief Original unitree_legged_msgs/IMU.quaternion field.
    -- | @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsIMU_quaternion :: [Float]
    ,
    -- | @brief Original unitree_legged_msgs/IMU.gyroscope field.
    -- | @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsIMU_gyroscope :: [Float]
    ,
    -- | @brief Original unitree_legged_msgs/IMU.accelerometer field.
    -- | @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsIMU_accelerometer :: [Float]
    ,
    -- | @brief Original unitree_legged_msgs/IMU.rpy field.
    -- | @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsIMU_rpy :: [Float]
    ,
    -- | @brief Original unitree_legged_msgs/IMU.temperature field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsIMU_temperature :: Int8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Unitree_legged_msgsIMUCodecIdentity :: String
ros1Unitree_legged_msgsIMUCodecIdentity =
    "UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276"
-- | @brief Encode every field of complete unitree_legged_msgs/IMU.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Unitree_legged_msgsIMU :: Ros1Unitree_legged_msgsIMU -> Either Word32 [Word8]
encodeRos1Unitree_legged_msgsIMU value = do
    if length (ros1Unitree_legged_msgsIMU_quaternion value) == 4 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros1Unitree_legged_msgsIMU_quaternion value)
    chunk0 <- Right item0
    if length (ros1Unitree_legged_msgsIMU_gyroscope value) == 3 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros1Unitree_legged_msgsIMU_gyroscope value)
    chunk1 <- Right item1
    if length (ros1Unitree_legged_msgsIMU_accelerometer value) == 3 then Right () else Left 22
    item2 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros1Unitree_legged_msgsIMU_accelerometer value)
    chunk2 <- Right item2
    if length (ros1Unitree_legged_msgsIMU_rpy value) == 3 then Right () else Left 22
    item3 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros1Unitree_legged_msgsIMU_rpy value)
    chunk3 <- Right item3
    chunk4 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsIMU_temperature value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                ]
    if length bytes > 53 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_legged_msgs/IMU.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Unitree_legged_msgsIMU :: W.Parser Ros1Unitree_legged_msgsIMU
readRos1Unitree_legged_msgsIMU = do
    value0 <- replicateM 4 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value1 <- replicateM 3 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value2 <- replicateM 3 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value3 <- replicateM 3 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value4 <- fromIntegral <$> W.number 1
    let value =
            Ros1Unitree_legged_msgsIMU
                value0
                value1
                value2
                value3
                value4
    case encodeRos1Unitree_legged_msgsIMU value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_legged_msgs/IMU.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Unitree_legged_msgsIMU :: [Word8] -> Either Word32 Ros1Unitree_legged_msgsIMU
decodeRos1Unitree_legged_msgsIMU bytes
    | length bytes < 53 || length bytes > 53 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Unitree_legged_msgsIMU bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_legged_msgs/MotorState value.
-- | @details Retain every original field in declaration order. Canonical extent 38..38 bytes.
data Ros1Unitree_legged_msgsMotorState = Ros1Unitree_legged_msgsMotorState
    {
    -- | @brief Original unitree_legged_msgs/MotorState.mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsMotorState_mode :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/MotorState.q field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsMotorState_q :: Float
    ,
    -- | @brief Original unitree_legged_msgs/MotorState.dq field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsMotorState_dq :: Float
    ,
    -- | @brief Original unitree_legged_msgs/MotorState.ddq field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsMotorState_ddq :: Float
    ,
    -- | @brief Original unitree_legged_msgs/MotorState.tauEst field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsMotorState_tauEst :: Float
    ,
    -- | @brief Original unitree_legged_msgs/MotorState.q_raw field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsMotorState_q_raw :: Float
    ,
    -- | @brief Original unitree_legged_msgs/MotorState.dq_raw field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsMotorState_dq_raw :: Float
    ,
    -- | @brief Original unitree_legged_msgs/MotorState.ddq_raw field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsMotorState_ddq_raw :: Float
    ,
    -- | @brief Original unitree_legged_msgs/MotorState.temperature field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsMotorState_temperature :: Int8
    ,
    -- | @brief Original unitree_legged_msgs/MotorState.reserve field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsMotorState_reserve :: [Word32]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Unitree_legged_msgsMotorStateCodecIdentity :: String
ros1Unitree_legged_msgsMotorStateCodecIdentity =
    "UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf"
-- | @brief Encode every field of complete unitree_legged_msgs/MotorState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Unitree_legged_msgsMotorState :: Ros1Unitree_legged_msgsMotorState -> Either Word32 [Word8]
encodeRos1Unitree_legged_msgsMotorState value = do
    chunk0 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsMotorState_mode value))
    chunk1 <- finite4 (ros1Unitree_legged_msgsMotorState_q value) castFloatToWord32
    chunk2 <- finite4 (ros1Unitree_legged_msgsMotorState_dq value) castFloatToWord32
    chunk3 <- finite4 (ros1Unitree_legged_msgsMotorState_ddq value) castFloatToWord32
    chunk4 <- finite4 (ros1Unitree_legged_msgsMotorState_tauEst value) castFloatToWord32
    chunk5 <- finite4 (ros1Unitree_legged_msgsMotorState_q_raw value) castFloatToWord32
    chunk6 <- finite4 (ros1Unitree_legged_msgsMotorState_dq_raw value) castFloatToWord32
    chunk7 <- finite4 (ros1Unitree_legged_msgsMotorState_ddq_raw value) castFloatToWord32
    chunk8 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsMotorState_temperature value))
    if length (ros1Unitree_legged_msgsMotorState_reserve value) == 2 then Right () else Left 22
    item9 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros1Unitree_legged_msgsMotorState_reserve value)
    chunk9 <- Right item9
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
    if length bytes > 38 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_legged_msgs/MotorState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Unitree_legged_msgsMotorState :: W.Parser Ros1Unitree_legged_msgsMotorState
readRos1Unitree_legged_msgsMotorState = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value7 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value8 <- fromIntegral <$> W.number 1
    value9 <- replicateM 2 (fromIntegral <$> W.number 4)
    let value =
            Ros1Unitree_legged_msgsMotorState
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
    case encodeRos1Unitree_legged_msgsMotorState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_legged_msgs/MotorState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Unitree_legged_msgsMotorState :: [Word8] -> Either Word32 Ros1Unitree_legged_msgsMotorState
decodeRos1Unitree_legged_msgsMotorState bytes
    | length bytes < 38 || length bytes > 38 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Unitree_legged_msgsMotorState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_legged_msgs/HighState value.
-- | @details Retain every original field in declaration order. Canonical extent 1087..1087 bytes.
data Ros1Unitree_legged_msgsHighState = Ros1Unitree_legged_msgsHighState
    {
    -- | @brief Original unitree_legged_msgs/HighState.head field.
    -- | @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighState_head :: [Word8]
    ,
    -- | @brief Original unitree_legged_msgs/HighState.levelFlag field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighState_levelFlag :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/HighState.frameReserve field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighState_frameReserve :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/HighState.SN field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighState_SN :: [Word32]
    ,
    -- | @brief Original unitree_legged_msgs/HighState.version field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighState_version :: [Word32]
    ,
    -- | @brief Original unitree_legged_msgs/HighState.bandWidth field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighState_bandWidth :: Word16
    ,
    -- | @brief Original unitree_legged_msgs/HighState.imu field.
    -- | @details Original type unitree_legged_msgs/IMU. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros1Unitree_legged_msgsHighState_imu :: Ros1Unitree_legged_msgsIMU
    ,
    -- | @brief Original unitree_legged_msgs/HighState.motorState field.
    -- | @details Original type unitree_legged_msgs/MotorState. Shape array; bound/count 20
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighState_motorState :: [Ros1Unitree_legged_msgsMotorState]
    ,
    -- | @brief Original unitree_legged_msgs/HighState.bms field.
    -- | @details Original type unitree_legged_msgs/BmsState. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Unitree_legged_msgsHighState_bms :: Ros1Unitree_legged_msgsBmsState
    ,
    -- | @brief Original unitree_legged_msgs/HighState.footForce field.
    -- | @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighState_footForce :: [Int16]
    ,
    -- | @brief Original unitree_legged_msgs/HighState.footForceEst field.
    -- | @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighState_footForceEst :: [Int16]
    ,
    -- | @brief Original unitree_legged_msgs/HighState.mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighState_mode :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/HighState.progress field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighState_progress :: Float
    ,
    -- | @brief Original unitree_legged_msgs/HighState.gaitType field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighState_gaitType :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/HighState.footRaiseHeight field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighState_footRaiseHeight :: Float
    ,
    -- | @brief Original unitree_legged_msgs/HighState.position field.
    -- | @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighState_position :: [Float]
    ,
    -- | @brief Original unitree_legged_msgs/HighState.bodyHeight field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighState_bodyHeight :: Float
    ,
    -- | @brief Original unitree_legged_msgs/HighState.velocity field.
    -- | @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighState_velocity :: [Float]
    ,
    -- | @brief Original unitree_legged_msgs/HighState.yawSpeed field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighState_yawSpeed :: Float
    ,
    -- | @brief Original unitree_legged_msgs/HighState.rangeObstacle field.
    -- | @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighState_rangeObstacle :: [Float]
    ,
    -- | @brief Original unitree_legged_msgs/HighState.footPosition2Body field.
    -- | @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighState_footPosition2Body :: [Ros1Unitree_legged_msgsCartesian]
    ,
    -- | @brief Original unitree_legged_msgs/HighState.footSpeed2Body field.
    -- | @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighState_footSpeed2Body :: [Ros1Unitree_legged_msgsCartesian]
    ,
    -- | @brief Original unitree_legged_msgs/HighState.wirelessRemote field.
    -- | @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsHighState_wirelessRemote :: [Word8]
    ,
    -- | @brief Original unitree_legged_msgs/HighState.reserve field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighState_reserve :: Word32
    ,
    -- | @brief Original unitree_legged_msgs/HighState.crc field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsHighState_crc :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Unitree_legged_msgsHighStateCodecIdentity :: String
ros1Unitree_legged_msgsHighStateCodecIdentity =
    "UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d"
-- | @brief Encode every field of complete unitree_legged_msgs/HighState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Unitree_legged_msgsHighState :: Ros1Unitree_legged_msgsHighState -> Either Word32 [Word8]
encodeRos1Unitree_legged_msgsHighState value = do
    if length (ros1Unitree_legged_msgsHighState_head value) == 2 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros1Unitree_legged_msgsHighState_head value)
    chunk0 <- Right item0
    chunk1 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsHighState_levelFlag value))
    chunk2 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsHighState_frameReserve value))
    if length (ros1Unitree_legged_msgsHighState_SN value) == 2 then Right () else Left 22
    item3 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros1Unitree_legged_msgsHighState_SN value)
    chunk3 <- Right item3
    if length (ros1Unitree_legged_msgsHighState_version value) == 2 then Right () else Left 22
    item4 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros1Unitree_legged_msgsHighState_version value)
    chunk4 <- Right item4
    chunk5 <- Right (W.putNumber 2 (ros1Unitree_legged_msgsHighState_bandWidth value))
    chunk6 <- encodeRos1Unitree_legged_msgsIMU (ros1Unitree_legged_msgsHighState_imu value)
    if length (ros1Unitree_legged_msgsHighState_motorState value) == 20 then Right () else Left 22
    item7 <-
        concat <$> mapM
            (\element -> encodeRos1Unitree_legged_msgsMotorState (element))
            (ros1Unitree_legged_msgsHighState_motorState value)
    chunk7 <- Right item7
    chunk8 <- encodeRos1Unitree_legged_msgsBmsState (ros1Unitree_legged_msgsHighState_bms value)
    if length (ros1Unitree_legged_msgsHighState_footForce value) == 4 then Right () else Left 22
    item9 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 2 (element)))
            (ros1Unitree_legged_msgsHighState_footForce value)
    chunk9 <- Right item9
    if length (ros1Unitree_legged_msgsHighState_footForceEst value) == 4 then Right () else Left 22
    item10 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 2 (element)))
            (ros1Unitree_legged_msgsHighState_footForceEst value)
    chunk10 <- Right item10
    chunk11 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsHighState_mode value))
    chunk12 <- finite4 (ros1Unitree_legged_msgsHighState_progress value) castFloatToWord32
    chunk13 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsHighState_gaitType value))
    chunk14 <- finite4 (ros1Unitree_legged_msgsHighState_footRaiseHeight value) castFloatToWord32
    if length (ros1Unitree_legged_msgsHighState_position value) == 3 then Right () else Left 22
    item15 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros1Unitree_legged_msgsHighState_position value)
    chunk15 <- Right item15
    chunk16 <- finite4 (ros1Unitree_legged_msgsHighState_bodyHeight value) castFloatToWord32
    if length (ros1Unitree_legged_msgsHighState_velocity value) == 3 then Right () else Left 22
    item17 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros1Unitree_legged_msgsHighState_velocity value)
    chunk17 <- Right item17
    chunk18 <- finite4 (ros1Unitree_legged_msgsHighState_yawSpeed value) castFloatToWord32
    if length (ros1Unitree_legged_msgsHighState_rangeObstacle value) == 4 then Right () else Left 22
    item19 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros1Unitree_legged_msgsHighState_rangeObstacle value)
    chunk19 <- Right item19
    if length (ros1Unitree_legged_msgsHighState_footPosition2Body value) == 4 then Right () else Left 22
    item20 <-
        concat <$> mapM
            (\element -> encodeRos1Unitree_legged_msgsCartesian (element))
            (ros1Unitree_legged_msgsHighState_footPosition2Body value)
    chunk20 <- Right item20
    if length (ros1Unitree_legged_msgsHighState_footSpeed2Body value) == 4 then Right () else Left 22
    item21 <-
        concat <$> mapM
            (\element -> encodeRos1Unitree_legged_msgsCartesian (element))
            (ros1Unitree_legged_msgsHighState_footSpeed2Body value)
    chunk21 <- Right item21
    if length (ros1Unitree_legged_msgsHighState_wirelessRemote value) == 40 then Right () else Left 22
    item22 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros1Unitree_legged_msgsHighState_wirelessRemote value)
    chunk22 <- Right item22
    chunk23 <- Right (W.putNumber 4 (ros1Unitree_legged_msgsHighState_reserve value))
    chunk24 <- Right (W.putNumber 4 (ros1Unitree_legged_msgsHighState_crc value))
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
                ]
    if length bytes > 1087 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_legged_msgs/HighState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Unitree_legged_msgsHighState :: W.Parser Ros1Unitree_legged_msgsHighState
readRos1Unitree_legged_msgsHighState = do
    value0 <- replicateM 2 (fromIntegral <$> W.number 1)
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- replicateM 2 (fromIntegral <$> W.number 4)
    value4 <- replicateM 2 (fromIntegral <$> W.number 4)
    value5 <- fromIntegral <$> W.number 2
    value6 <- readRos1Unitree_legged_msgsIMU
    value7 <- replicateM 20 (readRos1Unitree_legged_msgsMotorState)
    value8 <- readRos1Unitree_legged_msgsBmsState
    value9 <- replicateM 4 (fromIntegral <$> W.number 2)
    value10 <- replicateM 4 (fromIntegral <$> W.number 2)
    value11 <- fromIntegral <$> W.number 1
    value12 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value13 <- fromIntegral <$> W.number 1
    value14 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value15 <- replicateM 3 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value16 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value17 <- replicateM 3 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value18 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value19 <- replicateM 4 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value20 <- replicateM 4 (readRos1Unitree_legged_msgsCartesian)
    value21 <- replicateM 4 (readRos1Unitree_legged_msgsCartesian)
    value22 <- replicateM 40 (fromIntegral <$> W.number 1)
    value23 <- fromIntegral <$> W.number 4
    value24 <- fromIntegral <$> W.number 4
    let value =
            Ros1Unitree_legged_msgsHighState
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
                value13
                value14
                value15
                value16
                value17
                value18
                value19
                value20
                value21
                value22
                value23
                value24
    case encodeRos1Unitree_legged_msgsHighState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_legged_msgs/HighState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Unitree_legged_msgsHighState :: [Word8] -> Either Word32 Ros1Unitree_legged_msgsHighState
decodeRos1Unitree_legged_msgsHighState bytes
    | length bytes < 1087 || length bytes > 1087 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Unitree_legged_msgsHighState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_legged_msgs/MotorCmd value.
-- | @details Retain every original field in declaration order. Canonical extent 33..33 bytes.
data Ros1Unitree_legged_msgsMotorCmd = Ros1Unitree_legged_msgsMotorCmd
    {
    -- | @brief Original unitree_legged_msgs/MotorCmd.mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsMotorCmd_mode :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/MotorCmd.q field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsMotorCmd_q :: Float
    ,
    -- | @brief Original unitree_legged_msgs/MotorCmd.dq field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsMotorCmd_dq :: Float
    ,
    -- | @brief Original unitree_legged_msgs/MotorCmd.tau field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsMotorCmd_tau :: Float
    ,
    -- | @brief Original unitree_legged_msgs/MotorCmd.Kp field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsMotorCmd_Kp :: Float
    ,
    -- | @brief Original unitree_legged_msgs/MotorCmd.Kd field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsMotorCmd_Kd :: Float
    ,
    -- | @brief Original unitree_legged_msgs/MotorCmd.reserve field.
    -- | @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsMotorCmd_reserve :: [Word32]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Unitree_legged_msgsMotorCmdCodecIdentity :: String
ros1Unitree_legged_msgsMotorCmdCodecIdentity =
    "UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083"
-- | @brief Encode every field of complete unitree_legged_msgs/MotorCmd.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Unitree_legged_msgsMotorCmd :: Ros1Unitree_legged_msgsMotorCmd -> Either Word32 [Word8]
encodeRos1Unitree_legged_msgsMotorCmd value = do
    chunk0 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsMotorCmd_mode value))
    chunk1 <- finite4 (ros1Unitree_legged_msgsMotorCmd_q value) castFloatToWord32
    chunk2 <- finite4 (ros1Unitree_legged_msgsMotorCmd_dq value) castFloatToWord32
    chunk3 <- finite4 (ros1Unitree_legged_msgsMotorCmd_tau value) castFloatToWord32
    chunk4 <- finite4 (ros1Unitree_legged_msgsMotorCmd_Kp value) castFloatToWord32
    chunk5 <- finite4 (ros1Unitree_legged_msgsMotorCmd_Kd value) castFloatToWord32
    if length (ros1Unitree_legged_msgsMotorCmd_reserve value) == 3 then Right () else Left 22
    item6 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros1Unitree_legged_msgsMotorCmd_reserve value)
    chunk6 <- Right item6
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
    if length bytes > 33 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_legged_msgs/MotorCmd.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Unitree_legged_msgsMotorCmd :: W.Parser Ros1Unitree_legged_msgsMotorCmd
readRos1Unitree_legged_msgsMotorCmd = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- replicateM 3 (fromIntegral <$> W.number 4)
    let value =
            Ros1Unitree_legged_msgsMotorCmd
                value0
                value1
                value2
                value3
                value4
                value5
                value6
    case encodeRos1Unitree_legged_msgsMotorCmd value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_legged_msgs/MotorCmd.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Unitree_legged_msgsMotorCmd :: [Word8] -> Either Word32 Ros1Unitree_legged_msgsMotorCmd
decodeRos1Unitree_legged_msgsMotorCmd bytes
    | length bytes < 33 || length bytes > 33 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Unitree_legged_msgsMotorCmd bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_legged_msgs/LowCmd value.
-- | @details Retain every original field in declaration order. Canonical extent 734..734 bytes.
data Ros1Unitree_legged_msgsLowCmd = Ros1Unitree_legged_msgsLowCmd
    {
    -- | @brief Original unitree_legged_msgs/LowCmd.head field.
    -- | @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Unitree_legged_msgsLowCmd_head :: [Word8]
    ,
    -- | @brief Original unitree_legged_msgs/LowCmd.levelFlag field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsLowCmd_levelFlag :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/LowCmd.frameReserve field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsLowCmd_frameReserve :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/LowCmd.SN field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsLowCmd_SN :: [Word32]
    ,
    -- | @brief Original unitree_legged_msgs/LowCmd.version field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsLowCmd_version :: [Word32]
    ,
    -- | @brief Original unitree_legged_msgs/LowCmd.bandWidth field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsLowCmd_bandWidth :: Word16
    ,
    -- | @brief Original unitree_legged_msgs/LowCmd.motorCmd field.
    -- | @details Original type unitree_legged_msgs/MotorCmd. Shape array; bound/count 20 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsLowCmd_motorCmd :: [Ros1Unitree_legged_msgsMotorCmd]
    ,
    -- | @brief Original unitree_legged_msgs/LowCmd.bms field.
    -- | @details Original type unitree_legged_msgs/BmsCmd. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Unitree_legged_msgsLowCmd_bms :: Ros1Unitree_legged_msgsBmsCmd
    ,
    -- | @brief Original unitree_legged_msgs/LowCmd.wirelessRemote field.
    -- | @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsLowCmd_wirelessRemote :: [Word8]
    ,
    -- | @brief Original unitree_legged_msgs/LowCmd.reserve field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsLowCmd_reserve :: Word32
    ,
    -- | @brief Original unitree_legged_msgs/LowCmd.crc field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsLowCmd_crc :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Unitree_legged_msgsLowCmdCodecIdentity :: String
ros1Unitree_legged_msgsLowCmdCodecIdentity =
    "UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181"
-- | @brief Encode every field of complete unitree_legged_msgs/LowCmd.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Unitree_legged_msgsLowCmd :: Ros1Unitree_legged_msgsLowCmd -> Either Word32 [Word8]
encodeRos1Unitree_legged_msgsLowCmd value = do
    if length (ros1Unitree_legged_msgsLowCmd_head value) == 2 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros1Unitree_legged_msgsLowCmd_head value)
    chunk0 <- Right item0
    chunk1 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsLowCmd_levelFlag value))
    chunk2 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsLowCmd_frameReserve value))
    if length (ros1Unitree_legged_msgsLowCmd_SN value) == 2 then Right () else Left 22
    item3 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros1Unitree_legged_msgsLowCmd_SN value)
    chunk3 <- Right item3
    if length (ros1Unitree_legged_msgsLowCmd_version value) == 2 then Right () else Left 22
    item4 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros1Unitree_legged_msgsLowCmd_version value)
    chunk4 <- Right item4
    chunk5 <- Right (W.putNumber 2 (ros1Unitree_legged_msgsLowCmd_bandWidth value))
    if length (ros1Unitree_legged_msgsLowCmd_motorCmd value) == 20 then Right () else Left 22
    item6 <-
        concat <$> mapM
            (\element -> encodeRos1Unitree_legged_msgsMotorCmd (element))
            (ros1Unitree_legged_msgsLowCmd_motorCmd value)
    chunk6 <- Right item6
    chunk7 <- encodeRos1Unitree_legged_msgsBmsCmd (ros1Unitree_legged_msgsLowCmd_bms value)
    if length (ros1Unitree_legged_msgsLowCmd_wirelessRemote value) == 40 then Right () else Left 22
    item8 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros1Unitree_legged_msgsLowCmd_wirelessRemote value)
    chunk8 <- Right item8
    chunk9 <- Right (W.putNumber 4 (ros1Unitree_legged_msgsLowCmd_reserve value))
    chunk10 <- Right (W.putNumber 4 (ros1Unitree_legged_msgsLowCmd_crc value))
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
    if length bytes > 734 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_legged_msgs/LowCmd.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Unitree_legged_msgsLowCmd :: W.Parser Ros1Unitree_legged_msgsLowCmd
readRos1Unitree_legged_msgsLowCmd = do
    value0 <- replicateM 2 (fromIntegral <$> W.number 1)
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- replicateM 2 (fromIntegral <$> W.number 4)
    value4 <- replicateM 2 (fromIntegral <$> W.number 4)
    value5 <- fromIntegral <$> W.number 2
    value6 <- replicateM 20 (readRos1Unitree_legged_msgsMotorCmd)
    value7 <- readRos1Unitree_legged_msgsBmsCmd
    value8 <- replicateM 40 (fromIntegral <$> W.number 1)
    value9 <- fromIntegral <$> W.number 4
    value10 <- fromIntegral <$> W.number 4
    let value =
            Ros1Unitree_legged_msgsLowCmd
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
    case encodeRos1Unitree_legged_msgsLowCmd value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_legged_msgs/LowCmd.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Unitree_legged_msgsLowCmd :: [Word8] -> Either Word32 Ros1Unitree_legged_msgsLowCmd
decodeRos1Unitree_legged_msgsLowCmd bytes
    | length bytes < 734 || length bytes > 734 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Unitree_legged_msgsLowCmd bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_legged_msgs/LowState value.
-- | @details Retain every original field in declaration order. Canonical extent 1069..1069 bytes.
data Ros1Unitree_legged_msgsLowState = Ros1Unitree_legged_msgsLowState
    {
    -- | @brief Original unitree_legged_msgs/LowState.head field.
    -- | @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Unitree_legged_msgsLowState_head :: [Word8]
    ,
    -- | @brief Original unitree_legged_msgs/LowState.levelFlag field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsLowState_levelFlag :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/LowState.frameReserve field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsLowState_frameReserve :: Word8
    ,
    -- | @brief Original unitree_legged_msgs/LowState.SN field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsLowState_SN :: [Word32]
    ,
    -- | @brief Original unitree_legged_msgs/LowState.version field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsLowState_version :: [Word32]
    ,
    -- | @brief Original unitree_legged_msgs/LowState.bandWidth field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsLowState_bandWidth :: Word16
    ,
    -- | @brief Original unitree_legged_msgs/LowState.imu field.
    -- | @details Original type unitree_legged_msgs/IMU. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros1Unitree_legged_msgsLowState_imu :: Ros1Unitree_legged_msgsIMU
    ,
    -- | @brief Original unitree_legged_msgs/LowState.motorState field.
    -- | @details Original type unitree_legged_msgs/MotorState. Shape array; bound/count 20
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsLowState_motorState :: [Ros1Unitree_legged_msgsMotorState]
    ,
    -- | @brief Original unitree_legged_msgs/LowState.bms field.
    -- | @details Original type unitree_legged_msgs/BmsState. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Unitree_legged_msgsLowState_bms :: Ros1Unitree_legged_msgsBmsState
    ,
    -- | @brief Original unitree_legged_msgs/LowState.footForce field.
    -- | @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Unitree_legged_msgsLowState_footForce :: [Int16]
    ,
    -- | @brief Original unitree_legged_msgs/LowState.footForceEst field.
    -- | @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros1Unitree_legged_msgsLowState_footForceEst :: [Int16]
    ,
    -- | @brief Original unitree_legged_msgs/LowState.tick field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsLowState_tick :: Word32
    ,
    -- | @brief Original unitree_legged_msgs/LowState.wirelessRemote field.
    -- | @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsLowState_wirelessRemote :: [Word8]
    ,
    -- | @brief Original unitree_legged_msgs/LowState.reserve field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsLowState_reserve :: Word32
    ,
    -- | @brief Original unitree_legged_msgs/LowState.crc field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros1Unitree_legged_msgsLowState_crc :: Word32
    ,
    -- | @brief Original unitree_legged_msgs/LowState.eeForceRaw field.
    -- | @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsLowState_eeForceRaw :: [Ros1Unitree_legged_msgsCartesian]
    ,
    -- | @brief Original unitree_legged_msgs/LowState.eeForce field.
    -- | @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros1Unitree_legged_msgsLowState_eeForce :: [Ros1Unitree_legged_msgsCartesian]
    ,
    -- | @brief Original unitree_legged_msgs/LowState.position field.
    -- | @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Unitree_legged_msgsLowState_position :: Ros1Unitree_legged_msgsCartesian
    ,
    -- | @brief Original unitree_legged_msgs/LowState.velocity field.
    -- | @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Unitree_legged_msgsLowState_velocity :: Ros1Unitree_legged_msgsCartesian
    ,
    -- | @brief Original unitree_legged_msgs/LowState.velocity_w field.
    -- | @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros1Unitree_legged_msgsLowState_velocity_w :: Ros1Unitree_legged_msgsCartesian
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros1Unitree_legged_msgsLowStateCodecIdentity :: String
ros1Unitree_legged_msgsLowStateCodecIdentity =
    "UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0"
-- | @brief Encode every field of complete unitree_legged_msgs/LowState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos1Unitree_legged_msgsLowState :: Ros1Unitree_legged_msgsLowState -> Either Word32 [Word8]
encodeRos1Unitree_legged_msgsLowState value = do
    if length (ros1Unitree_legged_msgsLowState_head value) == 2 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros1Unitree_legged_msgsLowState_head value)
    chunk0 <- Right item0
    chunk1 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsLowState_levelFlag value))
    chunk2 <- Right (W.putNumber 1 (ros1Unitree_legged_msgsLowState_frameReserve value))
    if length (ros1Unitree_legged_msgsLowState_SN value) == 2 then Right () else Left 22
    item3 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros1Unitree_legged_msgsLowState_SN value)
    chunk3 <- Right item3
    if length (ros1Unitree_legged_msgsLowState_version value) == 2 then Right () else Left 22
    item4 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros1Unitree_legged_msgsLowState_version value)
    chunk4 <- Right item4
    chunk5 <- Right (W.putNumber 2 (ros1Unitree_legged_msgsLowState_bandWidth value))
    chunk6 <- encodeRos1Unitree_legged_msgsIMU (ros1Unitree_legged_msgsLowState_imu value)
    if length (ros1Unitree_legged_msgsLowState_motorState value) == 20 then Right () else Left 22
    item7 <-
        concat <$> mapM
            (\element -> encodeRos1Unitree_legged_msgsMotorState (element))
            (ros1Unitree_legged_msgsLowState_motorState value)
    chunk7 <- Right item7
    chunk8 <- encodeRos1Unitree_legged_msgsBmsState (ros1Unitree_legged_msgsLowState_bms value)
    if length (ros1Unitree_legged_msgsLowState_footForce value) == 4 then Right () else Left 22
    item9 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 2 (element)))
            (ros1Unitree_legged_msgsLowState_footForce value)
    chunk9 <- Right item9
    if length (ros1Unitree_legged_msgsLowState_footForceEst value) == 4 then Right () else Left 22
    item10 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 2 (element)))
            (ros1Unitree_legged_msgsLowState_footForceEst value)
    chunk10 <- Right item10
    chunk11 <- Right (W.putNumber 4 (ros1Unitree_legged_msgsLowState_tick value))
    if length (ros1Unitree_legged_msgsLowState_wirelessRemote value) == 40 then Right () else Left 22
    item12 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros1Unitree_legged_msgsLowState_wirelessRemote value)
    chunk12 <- Right item12
    chunk13 <- Right (W.putNumber 4 (ros1Unitree_legged_msgsLowState_reserve value))
    chunk14 <- Right (W.putNumber 4 (ros1Unitree_legged_msgsLowState_crc value))
    if length (ros1Unitree_legged_msgsLowState_eeForceRaw value) == 4 then Right () else Left 22
    item15 <-
        concat <$> mapM
            (\element -> encodeRos1Unitree_legged_msgsCartesian (element))
            (ros1Unitree_legged_msgsLowState_eeForceRaw value)
    chunk15 <- Right item15
    if length (ros1Unitree_legged_msgsLowState_eeForce value) == 4 then Right () else Left 22
    item16 <-
        concat <$> mapM
            (\element -> encodeRos1Unitree_legged_msgsCartesian (element))
            (ros1Unitree_legged_msgsLowState_eeForce value)
    chunk16 <- Right item16
    chunk17 <- encodeRos1Unitree_legged_msgsCartesian (ros1Unitree_legged_msgsLowState_position value)
    chunk18 <- encodeRos1Unitree_legged_msgsCartesian (ros1Unitree_legged_msgsLowState_velocity value)
    chunk19 <- encodeRos1Unitree_legged_msgsCartesian (ros1Unitree_legged_msgsLowState_velocity_w value)
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
                , chunk13
                , chunk14
                , chunk15
                , chunk16
                , chunk17
                , chunk18
                , chunk19
                ]
    if length bytes > 1069 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_legged_msgs/LowState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos1Unitree_legged_msgsLowState :: W.Parser Ros1Unitree_legged_msgsLowState
readRos1Unitree_legged_msgsLowState = do
    value0 <- replicateM 2 (fromIntegral <$> W.number 1)
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- replicateM 2 (fromIntegral <$> W.number 4)
    value4 <- replicateM 2 (fromIntegral <$> W.number 4)
    value5 <- fromIntegral <$> W.number 2
    value6 <- readRos1Unitree_legged_msgsIMU
    value7 <- replicateM 20 (readRos1Unitree_legged_msgsMotorState)
    value8 <- readRos1Unitree_legged_msgsBmsState
    value9 <- replicateM 4 (fromIntegral <$> W.number 2)
    value10 <- replicateM 4 (fromIntegral <$> W.number 2)
    value11 <- fromIntegral <$> W.number 4
    value12 <- replicateM 40 (fromIntegral <$> W.number 1)
    value13 <- fromIntegral <$> W.number 4
    value14 <- fromIntegral <$> W.number 4
    value15 <- replicateM 4 (readRos1Unitree_legged_msgsCartesian)
    value16 <- replicateM 4 (readRos1Unitree_legged_msgsCartesian)
    value17 <- readRos1Unitree_legged_msgsCartesian
    value18 <- readRos1Unitree_legged_msgsCartesian
    value19 <- readRos1Unitree_legged_msgsCartesian
    let value =
            Ros1Unitree_legged_msgsLowState
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
                value13
                value14
                value15
                value16
                value17
                value18
                value19
    case encodeRos1Unitree_legged_msgsLowState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_legged_msgs/LowState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos1Unitree_legged_msgsLowState :: [Word8] -> Either Word32 Ros1Unitree_legged_msgsLowState
decodeRos1Unitree_legged_msgsLowState bytes
    | length bytes < 1069 || length bytes > 1069 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos1Unitree_legged_msgsLowState bytes
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

