-- | @file Records.hs
-- @brief Complete original clearpath ROS 2 Haskell records and codecs.
-- @details Owned immutable values preserve all fields; constructing them grants no ROS authority.
module Clearpath.Ros2_main.Records where
import Data.Int
import Data.Word
import Data.Bits
import GHC.Float
import qualified Data.Text as T
import Control.Monad (replicateM)
import qualified Native.Wire as W

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
    "UWVMROS1_addc15a9b6db4f7a0eba3545f02ece0800e48796f71e387b4d249af861f95317"
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
    "UWVMROS1_14da254234c9c897e39bf4ee0db8faad0798d23fe7017195f35f88fb6e0b3332"
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
    "UWVMROS1_e97ba89dea149ff43d0134038985ea45d2f072af592ea128aa5502a053478d22"
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
-- | @details Retain every original field in declaration order. Canonical extent 44..684 bytes.
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
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Status.pcb_temperature field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgStatus_pcb_temperature :: Float
    ,
    -- | @brief Original clearpath_platform_msgs/msg/Status.mcu_temperature field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Clearpath_platform_msgsMsgStatus_mcu_temperature :: Float
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
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Clearpath_platform_msgsMsgStatusCodecIdentity :: String
ros2Clearpath_platform_msgsMsgStatusCodecIdentity =
    "UWVMROS1_331afb70728e70e0391da1b2a0f2b97fdc8742a363a2b007606121ad778dd5c1"
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
    chunk5 <- finite4 (ros2Clearpath_platform_msgsMsgStatus_pcb_temperature value) castFloatToWord32
    chunk6 <- finite4 (ros2Clearpath_platform_msgsMsgStatus_mcu_temperature value) castFloatToWord32
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
    if length bytes > 684 then Left 22 else Right bytes
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
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value =
            Ros2Clearpath_platform_msgsMsgStatus
                value0
                value1
                value2
                value3
                value4
                value5
                value6
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
    | length bytes < 44 || length bytes > 684 = Left 22
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

