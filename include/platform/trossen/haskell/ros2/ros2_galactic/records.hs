-- Generated complete canonical values; all field selectors are record-qualified.
module RosWasm.Records where
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
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/haskell/API.md
    ros2Builtin_interfacesMsgDuration_sec :: Int32
  ,
    -- | \@brief builtin_interfaces/msg/Duration.nanosec: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/haskell/API.md
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
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/haskell/API.md
    ros2Builtin_interfacesMsgTime_sec :: Int32
  ,
    -- | \@brief builtin_interfaces/msg/Time.nanosec: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/haskell/API.md
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
data Ros2Interbotix_xs_msgsMsgArmJoy = Ros2Interbotix_xs_msgsMsgArmJoy
  {
    -- | \@brief interbotix_xs_msgs/msg/ArmJoy.ee_x_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgArmJoy_ee_x_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/ArmJoy.ee_y_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgArmJoy_ee_y_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/ArmJoy.ee_z_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgArmJoy_ee_z_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/ArmJoy.ee_roll_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgArmJoy_ee_roll_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/ArmJoy.ee_pitch_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgArmJoy_ee_pitch_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/ArmJoy.waist_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgArmJoy_waist_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/ArmJoy.gripper_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgArmJoy_gripper_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/ArmJoy.pose_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgArmJoy_pose_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/ArmJoy.speed_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgArmJoy_speed_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/ArmJoy.speed_toggle_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgArmJoy_speed_toggle_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/ArmJoy.gripper_pwm_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgArmJoy_gripper_pwm_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/ArmJoy.torque_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgArmJoy_torque_cmd :: Int8
  } deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsMsgArmJoy :: Ros2Interbotix_xs_msgsMsgArmJoy
defaultRos2Interbotix_xs_msgsMsgArmJoy = Ros2Interbotix_xs_msgsMsgArmJoy (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0)
ros2Interbotix_xs_msgsMsgArmJoyCodecIdentity :: String
ros2Interbotix_xs_msgsMsgArmJoyCodecIdentity = "UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f"
ros2Interbotix_xs_msgsMsgArmJoy_EE_X_INC :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_EE_X_INC = 1
ros2Interbotix_xs_msgsMsgArmJoy_EE_X_DEC :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_EE_X_DEC = 2
ros2Interbotix_xs_msgsMsgArmJoy_EE_Y_INC :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_EE_Y_INC = 3
ros2Interbotix_xs_msgsMsgArmJoy_EE_Y_DEC :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_EE_Y_DEC = 4
ros2Interbotix_xs_msgsMsgArmJoy_EE_Z_INC :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_EE_Z_INC = 5
ros2Interbotix_xs_msgsMsgArmJoy_EE_Z_DEC :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_EE_Z_DEC = 6
ros2Interbotix_xs_msgsMsgArmJoy_EE_ROLL_CCW :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_EE_ROLL_CCW = 7
ros2Interbotix_xs_msgsMsgArmJoy_EE_ROLL_CW :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_EE_ROLL_CW = 8
ros2Interbotix_xs_msgsMsgArmJoy_EE_PITCH_UP :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_EE_PITCH_UP = 9
ros2Interbotix_xs_msgsMsgArmJoy_EE_PITCH_DOWN :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_EE_PITCH_DOWN = 10
ros2Interbotix_xs_msgsMsgArmJoy_WAIST_CCW :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_WAIST_CCW = 11
ros2Interbotix_xs_msgsMsgArmJoy_WAIST_CW :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_WAIST_CW = 12
ros2Interbotix_xs_msgsMsgArmJoy_GRIPPER_RELEASE :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_GRIPPER_RELEASE = 13
ros2Interbotix_xs_msgsMsgArmJoy_GRIPPER_GRASP :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_GRIPPER_GRASP = 14
ros2Interbotix_xs_msgsMsgArmJoy_HOME_POSE :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_HOME_POSE = 15
ros2Interbotix_xs_msgsMsgArmJoy_SLEEP_POSE :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_SLEEP_POSE = 16
ros2Interbotix_xs_msgsMsgArmJoy_SPEED_INC :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_SPEED_INC = 17
ros2Interbotix_xs_msgsMsgArmJoy_SPEED_DEC :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_SPEED_DEC = 18
ros2Interbotix_xs_msgsMsgArmJoy_SPEED_COARSE :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_SPEED_COARSE = 19
ros2Interbotix_xs_msgsMsgArmJoy_SPEED_FINE :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_SPEED_FINE = 20
ros2Interbotix_xs_msgsMsgArmJoy_GRIPPER_PWM_INC :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_GRIPPER_PWM_INC = 21
ros2Interbotix_xs_msgsMsgArmJoy_GRIPPER_PWM_DEC :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_GRIPPER_PWM_DEC = 22
ros2Interbotix_xs_msgsMsgArmJoy_TORQUE_ON :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_TORQUE_ON = 23
ros2Interbotix_xs_msgsMsgArmJoy_TORQUE_OFF :: Int8
ros2Interbotix_xs_msgsMsgArmJoy_TORQUE_OFF = 24
encodeRos2Interbotix_xs_msgsMsgArmJoy :: Ros2Interbotix_xs_msgsMsgArmJoy -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsMsgArmJoy value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgArmJoy_ee_x_cmd value))
  b1 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgArmJoy_ee_y_cmd value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgArmJoy_ee_z_cmd value))
  b3 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgArmJoy_ee_roll_cmd value))
  b4 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgArmJoy_ee_pitch_cmd value))
  b5 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgArmJoy_waist_cmd value))
  b6 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgArmJoy_gripper_cmd value))
  b7 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgArmJoy_pose_cmd value))
  b8 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgArmJoy_speed_cmd value))
  b9 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgArmJoy_speed_toggle_cmd value))
  b10 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgArmJoy_gripper_pwm_cmd value))
  b11 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgArmJoy_torque_cmd value))
  W.bounded 12 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11]
readRos2Interbotix_xs_msgsMsgArmJoy :: W.Decoder Ros2Interbotix_xs_msgsMsgArmJoy
readRos2Interbotix_xs_msgsMsgArmJoy = do
  a0 <- fromIntegral <$> W.signed 1
  a1 <- fromIntegral <$> W.signed 1
  a2 <- fromIntegral <$> W.signed 1
  a3 <- fromIntegral <$> W.signed 1
  a4 <- fromIntegral <$> W.signed 1
  a5 <- fromIntegral <$> W.signed 1
  a6 <- fromIntegral <$> W.signed 1
  a7 <- fromIntegral <$> W.signed 1
  a8 <- fromIntegral <$> W.signed 1
  a9 <- fromIntegral <$> W.signed 1
  a10 <- fromIntegral <$> W.signed 1
  a11 <- fromIntegral <$> W.signed 1
  let value = Ros2Interbotix_xs_msgsMsgArmJoy a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11
  case encodeRos2Interbotix_xs_msgsMsgArmJoy value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsMsgArmJoy :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsMsgArmJoy
decodeRos2Interbotix_xs_msgsMsgArmJoy = W.runDecoder 12 readRos2Interbotix_xs_msgsMsgArmJoy
instance Canonical Ros2Interbotix_xs_msgsMsgArmJoy where
  maximumBytes _ = 12
  encodeValue = encodeRos2Interbotix_xs_msgsMsgArmJoy
  readValue = readRos2Interbotix_xs_msgsMsgArmJoy
data Ros2Interbotix_xs_msgsMsgHexJoy = Ros2Interbotix_xs_msgsMsgHexJoy
  {
    -- | \@brief interbotix_xs_msgs/msg/HexJoy.world_x_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgHexJoy_world_x_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/HexJoy.world_y_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgHexJoy_world_y_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/HexJoy.world_yaw_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgHexJoy_world_yaw_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/HexJoy.place_x_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgHexJoy_place_x_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/HexJoy.place_y_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgHexJoy_place_y_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/HexJoy.place_z_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgHexJoy_place_z_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/HexJoy.place_roll_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgHexJoy_place_roll_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/HexJoy.place_pitch_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgHexJoy_place_pitch_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/HexJoy.pose_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgHexJoy_pose_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/HexJoy.move_type_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgHexJoy_move_type_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/HexJoy.gait_toggle_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgHexJoy_gait_toggle_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/HexJoy.leg_toggle_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgHexJoy_leg_toggle_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/HexJoy.stance_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgHexJoy_stance_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/HexJoy.reboot_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgHexJoy_reboot_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/HexJoy.set_home_pose_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgHexJoy_set_home_pose_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/HexJoy.speed_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgHexJoy_speed_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/HexJoy.speed_toggle_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgHexJoy_speed_toggle_cmd :: Int8
  } deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsMsgHexJoy :: Ros2Interbotix_xs_msgsMsgHexJoy
defaultRos2Interbotix_xs_msgsMsgHexJoy = Ros2Interbotix_xs_msgsMsgHexJoy (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0)
ros2Interbotix_xs_msgsMsgHexJoyCodecIdentity :: String
ros2Interbotix_xs_msgsMsgHexJoyCodecIdentity = "UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d"
ros2Interbotix_xs_msgsMsgHexJoy_WORLD_X_INC :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_WORLD_X_INC = 1
ros2Interbotix_xs_msgsMsgHexJoy_WORLD_X_DEC :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_WORLD_X_DEC = 2
ros2Interbotix_xs_msgsMsgHexJoy_WORLD_Y_INC :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_WORLD_Y_INC = 3
ros2Interbotix_xs_msgsMsgHexJoy_WORLD_Y_DEC :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_WORLD_Y_DEC = 4
ros2Interbotix_xs_msgsMsgHexJoy_WORLD_YAW_CCW :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_WORLD_YAW_CCW = 5
ros2Interbotix_xs_msgsMsgHexJoy_WORLD_YAW_CW :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_WORLD_YAW_CW = 6
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_X_INC :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_X_INC = 7
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_X_DEC :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_X_DEC = 8
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_Y_INC :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_Y_INC = 9
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_Y_DEC :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_Y_DEC = 10
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_Z_INC :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_Z_INC = 11
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_Z_DEC :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_Z_DEC = 12
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_ROLL_CCW :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_ROLL_CCW = 13
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_ROLL_CW :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_ROLL_CW = 14
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_PITCH_UP :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_PITCH_UP = 15
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_PITCH_DOWN :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_PLACE_PITCH_DOWN = 16
ros2Interbotix_xs_msgsMsgHexJoy_MOVE_HEXAPOD :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_MOVE_HEXAPOD = 17
ros2Interbotix_xs_msgsMsgHexJoy_MOVE_LEG :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_MOVE_LEG = 18
ros2Interbotix_xs_msgsMsgHexJoy_HOME_POSE :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_HOME_POSE = 19
ros2Interbotix_xs_msgsMsgHexJoy_SLEEP_POSE :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_SLEEP_POSE = 20
ros2Interbotix_xs_msgsMsgHexJoy_GAIT_NEXT :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_GAIT_NEXT = 21
ros2Interbotix_xs_msgsMsgHexJoy_GAIT_PREVIOUS :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_GAIT_PREVIOUS = 22
ros2Interbotix_xs_msgsMsgHexJoy_LEG_NEXT :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_LEG_NEXT = 23
ros2Interbotix_xs_msgsMsgHexJoy_LEG_PREVIOUS :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_LEG_PREVIOUS = 24
ros2Interbotix_xs_msgsMsgHexJoy_WIDEN_STANCE :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_WIDEN_STANCE = 25
ros2Interbotix_xs_msgsMsgHexJoy_NARROW_STANCE :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_NARROW_STANCE = 26
ros2Interbotix_xs_msgsMsgHexJoy_REBOOT_MOTORS :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_REBOOT_MOTORS = 27
ros2Interbotix_xs_msgsMsgHexJoy_SET_HOME_POSE :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_SET_HOME_POSE = 28
ros2Interbotix_xs_msgsMsgHexJoy_SPEED_INC :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_SPEED_INC = 29
ros2Interbotix_xs_msgsMsgHexJoy_SPEED_DEC :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_SPEED_DEC = 30
ros2Interbotix_xs_msgsMsgHexJoy_SPEED_COARSE :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_SPEED_COARSE = 31
ros2Interbotix_xs_msgsMsgHexJoy_SPEED_FINE :: Int8
ros2Interbotix_xs_msgsMsgHexJoy_SPEED_FINE = 32
encodeRos2Interbotix_xs_msgsMsgHexJoy :: Ros2Interbotix_xs_msgsMsgHexJoy -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsMsgHexJoy value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgHexJoy_world_x_cmd value))
  b1 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgHexJoy_world_y_cmd value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgHexJoy_world_yaw_cmd value))
  b3 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgHexJoy_place_x_cmd value))
  b4 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgHexJoy_place_y_cmd value))
  b5 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgHexJoy_place_z_cmd value))
  b6 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgHexJoy_place_roll_cmd value))
  b7 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgHexJoy_place_pitch_cmd value))
  b8 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgHexJoy_pose_cmd value))
  b9 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgHexJoy_move_type_cmd value))
  b10 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgHexJoy_gait_toggle_cmd value))
  b11 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgHexJoy_leg_toggle_cmd value))
  b12 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgHexJoy_stance_cmd value))
  b13 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgHexJoy_reboot_cmd value))
  b14 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgHexJoy_set_home_pose_cmd value))
  b15 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgHexJoy_speed_cmd value))
  b16 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgHexJoy_speed_toggle_cmd value))
  W.bounded 17 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16]
readRos2Interbotix_xs_msgsMsgHexJoy :: W.Decoder Ros2Interbotix_xs_msgsMsgHexJoy
readRos2Interbotix_xs_msgsMsgHexJoy = do
  a0 <- fromIntegral <$> W.signed 1
  a1 <- fromIntegral <$> W.signed 1
  a2 <- fromIntegral <$> W.signed 1
  a3 <- fromIntegral <$> W.signed 1
  a4 <- fromIntegral <$> W.signed 1
  a5 <- fromIntegral <$> W.signed 1
  a6 <- fromIntegral <$> W.signed 1
  a7 <- fromIntegral <$> W.signed 1
  a8 <- fromIntegral <$> W.signed 1
  a9 <- fromIntegral <$> W.signed 1
  a10 <- fromIntegral <$> W.signed 1
  a11 <- fromIntegral <$> W.signed 1
  a12 <- fromIntegral <$> W.signed 1
  a13 <- fromIntegral <$> W.signed 1
  a14 <- fromIntegral <$> W.signed 1
  a15 <- fromIntegral <$> W.signed 1
  a16 <- fromIntegral <$> W.signed 1
  let value = Ros2Interbotix_xs_msgsMsgHexJoy a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16
  case encodeRos2Interbotix_xs_msgsMsgHexJoy value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsMsgHexJoy :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsMsgHexJoy
decodeRos2Interbotix_xs_msgsMsgHexJoy = W.runDecoder 17 readRos2Interbotix_xs_msgsMsgHexJoy
instance Canonical Ros2Interbotix_xs_msgsMsgHexJoy where
  maximumBytes _ = 17
  encodeValue = encodeRos2Interbotix_xs_msgsMsgHexJoy
  readValue = readRos2Interbotix_xs_msgsMsgHexJoy
data Ros2Interbotix_xs_msgsMsgJointGroupCommand = Ros2Interbotix_xs_msgsMsgJointGroupCommand
  {
    -- | \@brief interbotix_xs_msgs/msg/JointGroupCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgJointGroupCommand_name :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/msg/JointGroupCommand.cmd: float32; 0..64 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgJointGroupCommand_cmd :: [Float]
  } deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsMsgJointGroupCommand :: Ros2Interbotix_xs_msgsMsgJointGroupCommand
defaultRos2Interbotix_xs_msgsMsgJointGroupCommand = Ros2Interbotix_xs_msgsMsgJointGroupCommand (T.empty) ([])
ros2Interbotix_xs_msgsMsgJointGroupCommandCodecIdentity :: String
ros2Interbotix_xs_msgsMsgJointGroupCommandCodecIdentity = "UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a"
encodeRos2Interbotix_xs_msgsMsgJointGroupCommand :: Ros2Interbotix_xs_msgsMsgJointGroupCommand -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsMsgJointGroupCommand value = do
  b0 <- W.encodeText 128 True (ros2Interbotix_xs_msgsMsgJointGroupCommand_name value)
  if length (ros2Interbotix_xs_msgsMsgJointGroupCommand_cmd value) > 64 then Left 22 else Right ()
  prefix1 <- W.encodeCount 64 (length (ros2Interbotix_xs_msgsMsgJointGroupCommand_cmd value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Interbotix_xs_msgsMsgJointGroupCommand_cmd value)
  W.bounded 392 [b0, prefix1, b1]
readRos2Interbotix_xs_msgsMsgJointGroupCommand :: W.Decoder Ros2Interbotix_xs_msgsMsgJointGroupCommand
readRos2Interbotix_xs_msgsMsgJointGroupCommand = do
  a0 <- W.text 128 True
  count1 <- W.count 64
  a1 <- replicateM count1 (W.float32)
  let value = Ros2Interbotix_xs_msgsMsgJointGroupCommand a0 a1
  case encodeRos2Interbotix_xs_msgsMsgJointGroupCommand value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsMsgJointGroupCommand :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsMsgJointGroupCommand
decodeRos2Interbotix_xs_msgsMsgJointGroupCommand = W.runDecoder 392 readRos2Interbotix_xs_msgsMsgJointGroupCommand
instance Canonical Ros2Interbotix_xs_msgsMsgJointGroupCommand where
  maximumBytes _ = 392
  encodeValue = encodeRos2Interbotix_xs_msgsMsgJointGroupCommand
  readValue = readRos2Interbotix_xs_msgsMsgJointGroupCommand
data Ros2Interbotix_xs_msgsMsgJointSingleCommand = Ros2Interbotix_xs_msgsMsgJointSingleCommand
  {
    -- | \@brief interbotix_xs_msgs/msg/JointSingleCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgJointSingleCommand_name :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/msg/JointSingleCommand.cmd: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgJointSingleCommand_cmd :: Float
  } deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsMsgJointSingleCommand :: Ros2Interbotix_xs_msgsMsgJointSingleCommand
defaultRos2Interbotix_xs_msgsMsgJointSingleCommand = Ros2Interbotix_xs_msgsMsgJointSingleCommand (T.empty) (0)
ros2Interbotix_xs_msgsMsgJointSingleCommandCodecIdentity :: String
ros2Interbotix_xs_msgsMsgJointSingleCommandCodecIdentity = "UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94"
encodeRos2Interbotix_xs_msgsMsgJointSingleCommand :: Ros2Interbotix_xs_msgsMsgJointSingleCommand -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsMsgJointSingleCommand value = do
  b0 <- W.encodeText 128 True (ros2Interbotix_xs_msgsMsgJointSingleCommand_name value)
  b1 <- W.encodeFloat32 (ros2Interbotix_xs_msgsMsgJointSingleCommand_cmd value)
  W.bounded 136 [b0, b1]
readRos2Interbotix_xs_msgsMsgJointSingleCommand :: W.Decoder Ros2Interbotix_xs_msgsMsgJointSingleCommand
readRos2Interbotix_xs_msgsMsgJointSingleCommand = do
  a0 <- W.text 128 True
  a1 <- W.float32
  let value = Ros2Interbotix_xs_msgsMsgJointSingleCommand a0 a1
  case encodeRos2Interbotix_xs_msgsMsgJointSingleCommand value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsMsgJointSingleCommand :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsMsgJointSingleCommand
decodeRos2Interbotix_xs_msgsMsgJointSingleCommand = W.runDecoder 136 readRos2Interbotix_xs_msgsMsgJointSingleCommand
instance Canonical Ros2Interbotix_xs_msgsMsgJointSingleCommand where
  maximumBytes _ = 136
  encodeValue = encodeRos2Interbotix_xs_msgsMsgJointSingleCommand
  readValue = readRos2Interbotix_xs_msgsMsgJointSingleCommand
data Ros2Interbotix_xs_msgsMsgJointTemps = Ros2Interbotix_xs_msgsMsgJointTemps
  {
    -- | \@brief interbotix_xs_msgs/msg/JointTemps.names: string; 0..64 elements; each string is 0..128 bytes;
    --  strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgJointTemps_names :: [T.Text]
  ,
    -- | \@brief interbotix_xs_msgs/msg/JointTemps.temps: int32; 0..64 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgJointTemps_temps :: [Int32]
  } deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsMsgJointTemps :: Ros2Interbotix_xs_msgsMsgJointTemps
defaultRos2Interbotix_xs_msgsMsgJointTemps = Ros2Interbotix_xs_msgsMsgJointTemps ([]) ([])
ros2Interbotix_xs_msgsMsgJointTempsCodecIdentity :: String
ros2Interbotix_xs_msgsMsgJointTempsCodecIdentity = "UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4"
encodeRos2Interbotix_xs_msgsMsgJointTemps :: Ros2Interbotix_xs_msgsMsgJointTemps -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsMsgJointTemps value = do
  if length (ros2Interbotix_xs_msgsMsgJointTemps_names value) > 64 then Left 22 else Right ()
  prefix0 <- W.encodeCount 64 (length (ros2Interbotix_xs_msgsMsgJointTemps_names value))
  b0 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros2Interbotix_xs_msgsMsgJointTemps_names value)
  if length (ros2Interbotix_xs_msgsMsgJointTemps_temps value) > 64 then Left 22 else Right ()
  prefix1 <- W.encodeCount 64 (length (ros2Interbotix_xs_msgsMsgJointTemps_temps value))
  b1 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Interbotix_xs_msgsMsgJointTemps_temps value)
  W.bounded 8712 [prefix0, b0, prefix1, b1]
readRos2Interbotix_xs_msgsMsgJointTemps :: W.Decoder Ros2Interbotix_xs_msgsMsgJointTemps
readRos2Interbotix_xs_msgsMsgJointTemps = do
  count0 <- W.count 64
  a0 <- replicateM count0 (W.text 128 True)
  count1 <- W.count 64
  a1 <- replicateM count1 (fromIntegral <$> W.signed 4)
  let value = Ros2Interbotix_xs_msgsMsgJointTemps a0 a1
  case encodeRos2Interbotix_xs_msgsMsgJointTemps value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsMsgJointTemps :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsMsgJointTemps
decodeRos2Interbotix_xs_msgsMsgJointTemps = W.runDecoder 8712 readRos2Interbotix_xs_msgsMsgJointTemps
instance Canonical Ros2Interbotix_xs_msgsMsgJointTemps where
  maximumBytes _ = 8712
  encodeValue = encodeRos2Interbotix_xs_msgsMsgJointTemps
  readValue = readRos2Interbotix_xs_msgsMsgJointTemps
data Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader
  {
    -- | \@brief std_msgs/msg/Header.stamp: builtin_interfaces/msg/Time.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/haskell/API.md
    ros2Std_msgsMsgHeader_stamp :: Ros2Builtin_interfacesMsgTime
  ,
    -- | \@brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/haskell/API.md
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
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.positions: float64; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/haskell/API.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_positions :: [Double]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.velocities: float64; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/haskell/API.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities :: [Double]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.accelerations: float64; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/haskell/API.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations :: [Double]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.effort: float64; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/haskell/API.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_effort :: [Double]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.time_from_start: builtin_interfaces/msg/Duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/haskell/API.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_time_from_start :: Ros2Builtin_interfacesMsgDuration
  } deriving (Eq, Show)
defaultRos2Trajectory_msgsMsgJointTrajectoryPoint :: Ros2Trajectory_msgsMsgJointTrajectoryPoint
defaultRos2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint
    ([])
    ([])
    ([])
    ([])
    (defaultRos2Builtin_interfacesMsgDuration)
ros2Trajectory_msgsMsgJointTrajectoryPointCodecIdentity :: String
ros2Trajectory_msgsMsgJointTrajectoryPointCodecIdentity = "UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1"
encodeRos2Trajectory_msgsMsgJointTrajectoryPoint :: Ros2Trajectory_msgsMsgJointTrajectoryPoint -> Either Word32 B.ByteString
encodeRos2Trajectory_msgsMsgJointTrajectoryPoint value = do
  if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_positions value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_positions value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Trajectory_msgsMsgJointTrajectoryPoint_positions value)
  if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities value)
  if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations value) > 16 then Left 22 else Right ()
  prefix2 <- W.encodeCount 16 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations value)
  if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_effort value) > 16 then Left 22 else Right ()
  prefix3 <- W.encodeCount 16 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_effort value))
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Trajectory_msgsMsgJointTrajectoryPoint_effort value)
  b4 <- encodeRos2Builtin_interfacesMsgDuration (ros2Trajectory_msgsMsgJointTrajectoryPoint_time_from_start value)
  W.bounded 536 [prefix0, b0, prefix1, b1, prefix2, b2, prefix3, b3, b4]
readRos2Trajectory_msgsMsgJointTrajectoryPoint :: W.Decoder Ros2Trajectory_msgsMsgJointTrajectoryPoint
readRos2Trajectory_msgsMsgJointTrajectoryPoint = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.float64)
  count1 <- W.count 16
  a1 <- replicateM count1 (W.float64)
  count2 <- W.count 16
  a2 <- replicateM count2 (W.float64)
  count3 <- W.count 16
  a3 <- replicateM count3 (W.float64)
  a4 <- readRos2Builtin_interfacesMsgDuration
  let value = Ros2Trajectory_msgsMsgJointTrajectoryPoint a0 a1 a2 a3 a4
  case encodeRos2Trajectory_msgsMsgJointTrajectoryPoint value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Trajectory_msgsMsgJointTrajectoryPoint :: B.ByteString -> Either Word32 Ros2Trajectory_msgsMsgJointTrajectoryPoint
decodeRos2Trajectory_msgsMsgJointTrajectoryPoint = W.runDecoder 536 readRos2Trajectory_msgsMsgJointTrajectoryPoint
instance Canonical Ros2Trajectory_msgsMsgJointTrajectoryPoint where
  maximumBytes _ = 536
  encodeValue = encodeRos2Trajectory_msgsMsgJointTrajectoryPoint
  readValue = readRos2Trajectory_msgsMsgJointTrajectoryPoint
data Ros2Trajectory_msgsMsgJointTrajectory = Ros2Trajectory_msgsMsgJointTrajectory
  {
    -- | \@brief trajectory_msgs/msg/JointTrajectory.header: std_msgs/msg/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/haskell/API.md
    ros2Trajectory_msgsMsgJointTrajectory_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectory.joint_names: string; 0..16 elements; each string is 0..128
    --  bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/haskell/API.md
    ros2Trajectory_msgsMsgJointTrajectory_joint_names :: [T.Text]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectory.points: trajectory_msgs/msg/JointTrajectoryPoint; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/haskell/API.md
    ros2Trajectory_msgsMsgJointTrajectory_points :: [Ros2Trajectory_msgsMsgJointTrajectoryPoint]
  } deriving (Eq, Show)
defaultRos2Trajectory_msgsMsgJointTrajectory :: Ros2Trajectory_msgsMsgJointTrajectory
defaultRos2Trajectory_msgsMsgJointTrajectory = Ros2Trajectory_msgsMsgJointTrajectory (defaultRos2Std_msgsMsgHeader) ([]) ([])
ros2Trajectory_msgsMsgJointTrajectoryCodecIdentity :: String
ros2Trajectory_msgsMsgJointTrajectoryCodecIdentity = "UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7"
encodeRos2Trajectory_msgsMsgJointTrajectory :: Ros2Trajectory_msgsMsgJointTrajectory -> Either Word32 B.ByteString
encodeRos2Trajectory_msgsMsgJointTrajectory value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Trajectory_msgsMsgJointTrajectory_header value)
  if length (ros2Trajectory_msgsMsgJointTrajectory_joint_names value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros2Trajectory_msgsMsgJointTrajectory_joint_names value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros2Trajectory_msgsMsgJointTrajectory_joint_names value)
  if length (ros2Trajectory_msgsMsgJointTrajectory_points value) > 4 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4 (length (ros2Trajectory_msgsMsgJointTrajectory_points value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Trajectory_msgsMsgJointTrajectoryPoint (e)) (ros2Trajectory_msgsMsgJointTrajectory_points value)
  W.bounded 4404 [b0, prefix1, b1, prefix2, b2]
readRos2Trajectory_msgsMsgJointTrajectory :: W.Decoder Ros2Trajectory_msgsMsgJointTrajectory
readRos2Trajectory_msgsMsgJointTrajectory = do
  a0 <- readRos2Std_msgsMsgHeader
  count1 <- W.count 16
  a1 <- replicateM count1 (W.text 128 True)
  count2 <- W.count 4
  a2 <- replicateM count2 (readRos2Trajectory_msgsMsgJointTrajectoryPoint)
  let value = Ros2Trajectory_msgsMsgJointTrajectory a0 a1 a2
  case encodeRos2Trajectory_msgsMsgJointTrajectory value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Trajectory_msgsMsgJointTrajectory :: B.ByteString -> Either Word32 Ros2Trajectory_msgsMsgJointTrajectory
decodeRos2Trajectory_msgsMsgJointTrajectory = W.runDecoder 4404 readRos2Trajectory_msgsMsgJointTrajectory
instance Canonical Ros2Trajectory_msgsMsgJointTrajectory where
  maximumBytes _ = 4404
  encodeValue = encodeRos2Trajectory_msgsMsgJointTrajectory
  readValue = readRos2Trajectory_msgsMsgJointTrajectory
data Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand = Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand
  {
    -- | \@brief interbotix_xs_msgs/msg/JointTrajectoryCommand.cmd_type: string; each string is 0..128 bytes;
    --  strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_cmd_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/msg/JointTrajectoryCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_name :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/msg/JointTrajectoryCommand.traj: trajectory_msgs/msg/JointTrajectory.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_traj :: Ros2Trajectory_msgsMsgJointTrajectory
  } deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsMsgJointTrajectoryCommand :: Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand
defaultRos2Interbotix_xs_msgsMsgJointTrajectoryCommand =
    Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand
    (T.empty)
    (T.empty)
    (defaultRos2Trajectory_msgsMsgJointTrajectory)
ros2Interbotix_xs_msgsMsgJointTrajectoryCommandCodecIdentity :: String
ros2Interbotix_xs_msgsMsgJointTrajectoryCommandCodecIdentity = "UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52"
encodeRos2Interbotix_xs_msgsMsgJointTrajectoryCommand :: Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsMsgJointTrajectoryCommand value = do
  b0 <- W.encodeText 128 True (ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_cmd_type value)
  b1 <- W.encodeText 128 True (ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_name value)
  b2 <- encodeRos2Trajectory_msgsMsgJointTrajectory (ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_traj value)
  W.bounded 4668 [b0, b1, b2]
readRos2Interbotix_xs_msgsMsgJointTrajectoryCommand :: W.Decoder Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand
readRos2Interbotix_xs_msgsMsgJointTrajectoryCommand = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- readRos2Trajectory_msgsMsgJointTrajectory
  let value = Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand a0 a1 a2
  case encodeRos2Interbotix_xs_msgsMsgJointTrajectoryCommand value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsMsgJointTrajectoryCommand :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand
decodeRos2Interbotix_xs_msgsMsgJointTrajectoryCommand = W.runDecoder 4668 readRos2Interbotix_xs_msgsMsgJointTrajectoryCommand
instance Canonical Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand where
  maximumBytes _ = 4668
  encodeValue = encodeRos2Interbotix_xs_msgsMsgJointTrajectoryCommand
  readValue = readRos2Interbotix_xs_msgsMsgJointTrajectoryCommand
data Ros2Interbotix_xs_msgsMsgLocobotJoy = Ros2Interbotix_xs_msgsMsgLocobotJoy
  {
    -- | \@brief interbotix_xs_msgs/msg/LocobotJoy.base_x_cmd: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgLocobotJoy_base_x_cmd :: Double
  ,
    -- | \@brief interbotix_xs_msgs/msg/LocobotJoy.base_theta_cmd: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgLocobotJoy_base_theta_cmd :: Double
  ,
    -- | \@brief interbotix_xs_msgs/msg/LocobotJoy.base_reset_odom_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgLocobotJoy_base_reset_odom_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/LocobotJoy.pan_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgLocobotJoy_pan_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/LocobotJoy.tilt_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgLocobotJoy_tilt_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/LocobotJoy.ee_x_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgLocobotJoy_ee_x_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/LocobotJoy.ee_y_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgLocobotJoy_ee_y_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/LocobotJoy.ee_z_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgLocobotJoy_ee_z_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/LocobotJoy.ee_roll_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgLocobotJoy_ee_roll_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/LocobotJoy.ee_pitch_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgLocobotJoy_ee_pitch_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/LocobotJoy.waist_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgLocobotJoy_waist_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/LocobotJoy.gripper_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgLocobotJoy_gripper_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/LocobotJoy.pose_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgLocobotJoy_pose_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/LocobotJoy.speed_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgLocobotJoy_speed_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/LocobotJoy.speed_toggle_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgLocobotJoy_speed_toggle_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/LocobotJoy.gripper_pwm_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgLocobotJoy_gripper_pwm_cmd :: Int8
  } deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsMsgLocobotJoy :: Ros2Interbotix_xs_msgsMsgLocobotJoy
defaultRos2Interbotix_xs_msgsMsgLocobotJoy = Ros2Interbotix_xs_msgsMsgLocobotJoy (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0)
ros2Interbotix_xs_msgsMsgLocobotJoyCodecIdentity :: String
ros2Interbotix_xs_msgsMsgLocobotJoyCodecIdentity = "UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633"
ros2Interbotix_xs_msgsMsgLocobotJoy_RESET_ODOM :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_RESET_ODOM = 1
ros2Interbotix_xs_msgsMsgLocobotJoy_PAN_CCW :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_PAN_CCW = 2
ros2Interbotix_xs_msgsMsgLocobotJoy_PAN_CW :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_PAN_CW = 3
ros2Interbotix_xs_msgsMsgLocobotJoy_TILT_UP :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_TILT_UP = 4
ros2Interbotix_xs_msgsMsgLocobotJoy_TILT_DOWN :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_TILT_DOWN = 5
ros2Interbotix_xs_msgsMsgLocobotJoy_PAN_TILT_HOME :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_PAN_TILT_HOME = 6
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_X_INC :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_X_INC = 7
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_X_DEC :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_X_DEC = 8
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_Y_INC :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_Y_INC = 9
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_Y_DEC :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_Y_DEC = 10
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_Z_INC :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_Z_INC = 11
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_Z_DEC :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_Z_DEC = 12
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_ROLL_CCW :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_ROLL_CCW = 13
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_ROLL_CW :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_ROLL_CW = 14
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_PITCH_UP :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_PITCH_UP = 15
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_PITCH_DOWN :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_EE_PITCH_DOWN = 16
ros2Interbotix_xs_msgsMsgLocobotJoy_WAIST_CCW :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_WAIST_CCW = 17
ros2Interbotix_xs_msgsMsgLocobotJoy_WAIST_CW :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_WAIST_CW = 18
ros2Interbotix_xs_msgsMsgLocobotJoy_GRIPPER_RELEASE :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_GRIPPER_RELEASE = 19
ros2Interbotix_xs_msgsMsgLocobotJoy_GRIPPER_GRASP :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_GRIPPER_GRASP = 20
ros2Interbotix_xs_msgsMsgLocobotJoy_HOME_POSE :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_HOME_POSE = 21
ros2Interbotix_xs_msgsMsgLocobotJoy_SLEEP_POSE :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_SLEEP_POSE = 22
ros2Interbotix_xs_msgsMsgLocobotJoy_SPEED_INC :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_SPEED_INC = 23
ros2Interbotix_xs_msgsMsgLocobotJoy_SPEED_DEC :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_SPEED_DEC = 24
ros2Interbotix_xs_msgsMsgLocobotJoy_SPEED_COARSE :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_SPEED_COARSE = 25
ros2Interbotix_xs_msgsMsgLocobotJoy_SPEED_FINE :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_SPEED_FINE = 26
ros2Interbotix_xs_msgsMsgLocobotJoy_GRIPPER_PWM_INC :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_GRIPPER_PWM_INC = 27
ros2Interbotix_xs_msgsMsgLocobotJoy_GRIPPER_PWM_DEC :: Int8
ros2Interbotix_xs_msgsMsgLocobotJoy_GRIPPER_PWM_DEC = 28
encodeRos2Interbotix_xs_msgsMsgLocobotJoy :: Ros2Interbotix_xs_msgsMsgLocobotJoy -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsMsgLocobotJoy value = do
  b0 <- W.encodeFloat64 (ros2Interbotix_xs_msgsMsgLocobotJoy_base_x_cmd value)
  b1 <- W.encodeFloat64 (ros2Interbotix_xs_msgsMsgLocobotJoy_base_theta_cmd value)
  b2 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgLocobotJoy_base_reset_odom_cmd value))
  b3 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgLocobotJoy_pan_cmd value))
  b4 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgLocobotJoy_tilt_cmd value))
  b5 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgLocobotJoy_ee_x_cmd value))
  b6 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgLocobotJoy_ee_y_cmd value))
  b7 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgLocobotJoy_ee_z_cmd value))
  b8 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgLocobotJoy_ee_roll_cmd value))
  b9 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgLocobotJoy_ee_pitch_cmd value))
  b10 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgLocobotJoy_waist_cmd value))
  b11 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgLocobotJoy_gripper_cmd value))
  b12 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgLocobotJoy_pose_cmd value))
  b13 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgLocobotJoy_speed_cmd value))
  b14 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgLocobotJoy_speed_toggle_cmd value))
  b15 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgLocobotJoy_gripper_pwm_cmd value))
  W.bounded 30 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15]
readRos2Interbotix_xs_msgsMsgLocobotJoy :: W.Decoder Ros2Interbotix_xs_msgsMsgLocobotJoy
readRos2Interbotix_xs_msgsMsgLocobotJoy = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- fromIntegral <$> W.signed 1
  a3 <- fromIntegral <$> W.signed 1
  a4 <- fromIntegral <$> W.signed 1
  a5 <- fromIntegral <$> W.signed 1
  a6 <- fromIntegral <$> W.signed 1
  a7 <- fromIntegral <$> W.signed 1
  a8 <- fromIntegral <$> W.signed 1
  a9 <- fromIntegral <$> W.signed 1
  a10 <- fromIntegral <$> W.signed 1
  a11 <- fromIntegral <$> W.signed 1
  a12 <- fromIntegral <$> W.signed 1
  a13 <- fromIntegral <$> W.signed 1
  a14 <- fromIntegral <$> W.signed 1
  a15 <- fromIntegral <$> W.signed 1
  let value = Ros2Interbotix_xs_msgsMsgLocobotJoy a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15
  case encodeRos2Interbotix_xs_msgsMsgLocobotJoy value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsMsgLocobotJoy :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsMsgLocobotJoy
decodeRos2Interbotix_xs_msgsMsgLocobotJoy = W.runDecoder 30 readRos2Interbotix_xs_msgsMsgLocobotJoy
instance Canonical Ros2Interbotix_xs_msgsMsgLocobotJoy where
  maximumBytes _ = 30
  encodeValue = encodeRos2Interbotix_xs_msgsMsgLocobotJoy
  readValue = readRos2Interbotix_xs_msgsMsgLocobotJoy
data Ros2Interbotix_xs_msgsMsgTurretJoy = Ros2Interbotix_xs_msgsMsgTurretJoy
  {
    -- | \@brief interbotix_xs_msgs/msg/TurretJoy.pan_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgTurretJoy_pan_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/TurretJoy.tilt_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgTurretJoy_tilt_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/TurretJoy.speed_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgTurretJoy_speed_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/msg/TurretJoy.speed_toggle_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsMsgTurretJoy_speed_toggle_cmd :: Int8
  } deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsMsgTurretJoy :: Ros2Interbotix_xs_msgsMsgTurretJoy
defaultRos2Interbotix_xs_msgsMsgTurretJoy = Ros2Interbotix_xs_msgsMsgTurretJoy (0) (0) (0) (0)
ros2Interbotix_xs_msgsMsgTurretJoyCodecIdentity :: String
ros2Interbotix_xs_msgsMsgTurretJoyCodecIdentity = "UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f"
ros2Interbotix_xs_msgsMsgTurretJoy_PAN_CCW :: Int8
ros2Interbotix_xs_msgsMsgTurretJoy_PAN_CCW = 1
ros2Interbotix_xs_msgsMsgTurretJoy_PAN_CW :: Int8
ros2Interbotix_xs_msgsMsgTurretJoy_PAN_CW = 2
ros2Interbotix_xs_msgsMsgTurretJoy_TILT_UP :: Int8
ros2Interbotix_xs_msgsMsgTurretJoy_TILT_UP = 3
ros2Interbotix_xs_msgsMsgTurretJoy_TILT_DOWN :: Int8
ros2Interbotix_xs_msgsMsgTurretJoy_TILT_DOWN = 4
ros2Interbotix_xs_msgsMsgTurretJoy_PAN_TILT_HOME :: Int8
ros2Interbotix_xs_msgsMsgTurretJoy_PAN_TILT_HOME = 5
ros2Interbotix_xs_msgsMsgTurretJoy_SPEED_INC :: Int8
ros2Interbotix_xs_msgsMsgTurretJoy_SPEED_INC = 6
ros2Interbotix_xs_msgsMsgTurretJoy_SPEED_DEC :: Int8
ros2Interbotix_xs_msgsMsgTurretJoy_SPEED_DEC = 7
ros2Interbotix_xs_msgsMsgTurretJoy_SPEED_COARSE :: Int8
ros2Interbotix_xs_msgsMsgTurretJoy_SPEED_COARSE = 8
ros2Interbotix_xs_msgsMsgTurretJoy_SPEED_FINE :: Int8
ros2Interbotix_xs_msgsMsgTurretJoy_SPEED_FINE = 9
encodeRos2Interbotix_xs_msgsMsgTurretJoy :: Ros2Interbotix_xs_msgsMsgTurretJoy -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsMsgTurretJoy value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgTurretJoy_pan_cmd value))
  b1 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgTurretJoy_tilt_cmd value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgTurretJoy_speed_cmd value))
  b3 <- W.encodeSigned 1 (fromIntegral (ros2Interbotix_xs_msgsMsgTurretJoy_speed_toggle_cmd value))
  W.bounded 4 [b0, b1, b2, b3]
readRos2Interbotix_xs_msgsMsgTurretJoy :: W.Decoder Ros2Interbotix_xs_msgsMsgTurretJoy
readRos2Interbotix_xs_msgsMsgTurretJoy = do
  a0 <- fromIntegral <$> W.signed 1
  a1 <- fromIntegral <$> W.signed 1
  a2 <- fromIntegral <$> W.signed 1
  a3 <- fromIntegral <$> W.signed 1
  let value = Ros2Interbotix_xs_msgsMsgTurretJoy a0 a1 a2 a3
  case encodeRos2Interbotix_xs_msgsMsgTurretJoy value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsMsgTurretJoy :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsMsgTurretJoy
decodeRos2Interbotix_xs_msgsMsgTurretJoy = W.runDecoder 4 readRos2Interbotix_xs_msgsMsgTurretJoy
instance Canonical Ros2Interbotix_xs_msgsMsgTurretJoy where
  maximumBytes _ = 4
  encodeValue = encodeRos2Interbotix_xs_msgsMsgTurretJoy
  readValue = readRos2Interbotix_xs_msgsMsgTurretJoy
data Ros2Interbotix_xs_msgsSrvMotorGains_Request = Ros2Interbotix_xs_msgsSrvMotorGains_Request
  {
    -- | \@brief interbotix_xs_msgs/srv/MotorGains_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvMotorGains_Request_cmd_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/srv/MotorGains_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvMotorGains_Request_name :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/srv/MotorGains_Request.kp_pos: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvMotorGains_Request_kp_pos :: Int32
  ,
    -- | \@brief interbotix_xs_msgs/srv/MotorGains_Request.ki_pos: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvMotorGains_Request_ki_pos :: Int32
  ,
    -- | \@brief interbotix_xs_msgs/srv/MotorGains_Request.kd_pos: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvMotorGains_Request_kd_pos :: Int32
  ,
    -- | \@brief interbotix_xs_msgs/srv/MotorGains_Request.k1: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvMotorGains_Request_k1 :: Int32
  ,
    -- | \@brief interbotix_xs_msgs/srv/MotorGains_Request.k2: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvMotorGains_Request_k2 :: Int32
  ,
    -- | \@brief interbotix_xs_msgs/srv/MotorGains_Request.kp_vel: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvMotorGains_Request_kp_vel :: Int32
  ,
    -- | \@brief interbotix_xs_msgs/srv/MotorGains_Request.ki_vel: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvMotorGains_Request_ki_vel :: Int32
  } deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsSrvMotorGains_Request :: Ros2Interbotix_xs_msgsSrvMotorGains_Request
defaultRos2Interbotix_xs_msgsSrvMotorGains_Request = Ros2Interbotix_xs_msgsSrvMotorGains_Request (T.empty) (T.empty) (0) (0) (0) (0) (0) (0) (0)
ros2Interbotix_xs_msgsSrvMotorGains_RequestCodecIdentity :: String
ros2Interbotix_xs_msgsSrvMotorGains_RequestCodecIdentity = "UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f"
encodeRos2Interbotix_xs_msgsSrvMotorGains_Request :: Ros2Interbotix_xs_msgsSrvMotorGains_Request -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsSrvMotorGains_Request value = do
  b0 <- W.encodeText 128 True (ros2Interbotix_xs_msgsSrvMotorGains_Request_cmd_type value)
  b1 <- W.encodeText 128 True (ros2Interbotix_xs_msgsSrvMotorGains_Request_name value)
  b2 <- W.encodeSigned 4 (fromIntegral (ros2Interbotix_xs_msgsSrvMotorGains_Request_kp_pos value))
  b3 <- W.encodeSigned 4 (fromIntegral (ros2Interbotix_xs_msgsSrvMotorGains_Request_ki_pos value))
  b4 <- W.encodeSigned 4 (fromIntegral (ros2Interbotix_xs_msgsSrvMotorGains_Request_kd_pos value))
  b5 <- W.encodeSigned 4 (fromIntegral (ros2Interbotix_xs_msgsSrvMotorGains_Request_k1 value))
  b6 <- W.encodeSigned 4 (fromIntegral (ros2Interbotix_xs_msgsSrvMotorGains_Request_k2 value))
  b7 <- W.encodeSigned 4 (fromIntegral (ros2Interbotix_xs_msgsSrvMotorGains_Request_kp_vel value))
  b8 <- W.encodeSigned 4 (fromIntegral (ros2Interbotix_xs_msgsSrvMotorGains_Request_ki_vel value))
  W.bounded 292 [b0, b1, b2, b3, b4, b5, b6, b7, b8]
readRos2Interbotix_xs_msgsSrvMotorGains_Request :: W.Decoder Ros2Interbotix_xs_msgsSrvMotorGains_Request
readRos2Interbotix_xs_msgsSrvMotorGains_Request = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- fromIntegral <$> W.signed 4
  a3 <- fromIntegral <$> W.signed 4
  a4 <- fromIntegral <$> W.signed 4
  a5 <- fromIntegral <$> W.signed 4
  a6 <- fromIntegral <$> W.signed 4
  a7 <- fromIntegral <$> W.signed 4
  a8 <- fromIntegral <$> W.signed 4
  let value = Ros2Interbotix_xs_msgsSrvMotorGains_Request a0 a1 a2 a3 a4 a5 a6 a7 a8
  case encodeRos2Interbotix_xs_msgsSrvMotorGains_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsSrvMotorGains_Request :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsSrvMotorGains_Request
decodeRos2Interbotix_xs_msgsSrvMotorGains_Request = W.runDecoder 292 readRos2Interbotix_xs_msgsSrvMotorGains_Request
instance Canonical Ros2Interbotix_xs_msgsSrvMotorGains_Request where
  maximumBytes _ = 292
  encodeValue = encodeRos2Interbotix_xs_msgsSrvMotorGains_Request
  readValue = readRos2Interbotix_xs_msgsSrvMotorGains_Request
data Ros2Interbotix_xs_msgsSrvMotorGains_Response = Ros2Interbotix_xs_msgsSrvMotorGains_Response deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsSrvMotorGains_Response :: Ros2Interbotix_xs_msgsSrvMotorGains_Response
defaultRos2Interbotix_xs_msgsSrvMotorGains_Response = Ros2Interbotix_xs_msgsSrvMotorGains_Response 
ros2Interbotix_xs_msgsSrvMotorGains_ResponseCodecIdentity :: String
ros2Interbotix_xs_msgsSrvMotorGains_ResponseCodecIdentity = "UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972"
encodeRos2Interbotix_xs_msgsSrvMotorGains_Response :: Ros2Interbotix_xs_msgsSrvMotorGains_Response -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsSrvMotorGains_Response value = do
  W.bounded 0 []
readRos2Interbotix_xs_msgsSrvMotorGains_Response :: W.Decoder Ros2Interbotix_xs_msgsSrvMotorGains_Response
readRos2Interbotix_xs_msgsSrvMotorGains_Response = do
  let value = Ros2Interbotix_xs_msgsSrvMotorGains_Response 
  case encodeRos2Interbotix_xs_msgsSrvMotorGains_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsSrvMotorGains_Response :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsSrvMotorGains_Response
decodeRos2Interbotix_xs_msgsSrvMotorGains_Response = W.runDecoder 0 readRos2Interbotix_xs_msgsSrvMotorGains_Response
instance Canonical Ros2Interbotix_xs_msgsSrvMotorGains_Response where
  maximumBytes _ = 0
  encodeValue = encodeRos2Interbotix_xs_msgsSrvMotorGains_Response
  readValue = readRos2Interbotix_xs_msgsSrvMotorGains_Response
data Ros2Interbotix_xs_msgsSrvOperatingModes_Request = Ros2Interbotix_xs_msgsSrvOperatingModes_Request
  {
    -- | \@brief interbotix_xs_msgs/srv/OperatingModes_Request.cmd_type: string; each string is 0..128 bytes;
    --  strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvOperatingModes_Request_cmd_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/srv/OperatingModes_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvOperatingModes_Request_name :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/srv/OperatingModes_Request.mode: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvOperatingModes_Request_mode :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/srv/OperatingModes_Request.profile_type: string; each string is 0..128
    --  bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvOperatingModes_Request_profile_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/srv/OperatingModes_Request.profile_velocity: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvOperatingModes_Request_profile_velocity :: Int32
  ,
    -- | \@brief interbotix_xs_msgs/srv/OperatingModes_Request.profile_acceleration: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvOperatingModes_Request_profile_acceleration :: Int32
  } deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsSrvOperatingModes_Request :: Ros2Interbotix_xs_msgsSrvOperatingModes_Request
defaultRos2Interbotix_xs_msgsSrvOperatingModes_Request = Ros2Interbotix_xs_msgsSrvOperatingModes_Request (T.empty) (T.empty) (T.empty) (T.empty) (0) (0)
ros2Interbotix_xs_msgsSrvOperatingModes_RequestCodecIdentity :: String
ros2Interbotix_xs_msgsSrvOperatingModes_RequestCodecIdentity = "UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15"
encodeRos2Interbotix_xs_msgsSrvOperatingModes_Request :: Ros2Interbotix_xs_msgsSrvOperatingModes_Request -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsSrvOperatingModes_Request value = do
  b0 <- W.encodeText 128 True (ros2Interbotix_xs_msgsSrvOperatingModes_Request_cmd_type value)
  b1 <- W.encodeText 128 True (ros2Interbotix_xs_msgsSrvOperatingModes_Request_name value)
  b2 <- W.encodeText 128 True (ros2Interbotix_xs_msgsSrvOperatingModes_Request_mode value)
  b3 <- W.encodeText 128 True (ros2Interbotix_xs_msgsSrvOperatingModes_Request_profile_type value)
  b4 <- W.encodeSigned 4 (fromIntegral (ros2Interbotix_xs_msgsSrvOperatingModes_Request_profile_velocity value))
  b5 <- W.encodeSigned 4 (fromIntegral (ros2Interbotix_xs_msgsSrvOperatingModes_Request_profile_acceleration value))
  W.bounded 536 [b0, b1, b2, b3, b4, b5]
readRos2Interbotix_xs_msgsSrvOperatingModes_Request :: W.Decoder Ros2Interbotix_xs_msgsSrvOperatingModes_Request
readRos2Interbotix_xs_msgsSrvOperatingModes_Request = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  a3 <- W.text 128 True
  a4 <- fromIntegral <$> W.signed 4
  a5 <- fromIntegral <$> W.signed 4
  let value = Ros2Interbotix_xs_msgsSrvOperatingModes_Request a0 a1 a2 a3 a4 a5
  case encodeRos2Interbotix_xs_msgsSrvOperatingModes_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsSrvOperatingModes_Request :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsSrvOperatingModes_Request
decodeRos2Interbotix_xs_msgsSrvOperatingModes_Request = W.runDecoder 536 readRos2Interbotix_xs_msgsSrvOperatingModes_Request
instance Canonical Ros2Interbotix_xs_msgsSrvOperatingModes_Request where
  maximumBytes _ = 536
  encodeValue = encodeRos2Interbotix_xs_msgsSrvOperatingModes_Request
  readValue = readRos2Interbotix_xs_msgsSrvOperatingModes_Request
data Ros2Interbotix_xs_msgsSrvOperatingModes_Response = Ros2Interbotix_xs_msgsSrvOperatingModes_Response deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsSrvOperatingModes_Response :: Ros2Interbotix_xs_msgsSrvOperatingModes_Response
defaultRos2Interbotix_xs_msgsSrvOperatingModes_Response = Ros2Interbotix_xs_msgsSrvOperatingModes_Response 
ros2Interbotix_xs_msgsSrvOperatingModes_ResponseCodecIdentity :: String
ros2Interbotix_xs_msgsSrvOperatingModes_ResponseCodecIdentity = "UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345"
encodeRos2Interbotix_xs_msgsSrvOperatingModes_Response :: Ros2Interbotix_xs_msgsSrvOperatingModes_Response -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsSrvOperatingModes_Response value = do
  W.bounded 0 []
readRos2Interbotix_xs_msgsSrvOperatingModes_Response :: W.Decoder Ros2Interbotix_xs_msgsSrvOperatingModes_Response
readRos2Interbotix_xs_msgsSrvOperatingModes_Response = do
  let value = Ros2Interbotix_xs_msgsSrvOperatingModes_Response 
  case encodeRos2Interbotix_xs_msgsSrvOperatingModes_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsSrvOperatingModes_Response :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsSrvOperatingModes_Response
decodeRos2Interbotix_xs_msgsSrvOperatingModes_Response = W.runDecoder 0 readRos2Interbotix_xs_msgsSrvOperatingModes_Response
instance Canonical Ros2Interbotix_xs_msgsSrvOperatingModes_Response where
  maximumBytes _ = 0
  encodeValue = encodeRos2Interbotix_xs_msgsSrvOperatingModes_Response
  readValue = readRos2Interbotix_xs_msgsSrvOperatingModes_Response
data Ros2Interbotix_xs_msgsSrvReboot_Request = Ros2Interbotix_xs_msgsSrvReboot_Request
  {
    -- | \@brief interbotix_xs_msgs/srv/Reboot_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvReboot_Request_cmd_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/srv/Reboot_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvReboot_Request_name :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/srv/Reboot_Request.enable: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvReboot_Request_enable :: Bool
  ,
    -- | \@brief interbotix_xs_msgs/srv/Reboot_Request.smart_reboot: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvReboot_Request_smart_reboot :: Bool
  } deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsSrvReboot_Request :: Ros2Interbotix_xs_msgsSrvReboot_Request
defaultRos2Interbotix_xs_msgsSrvReboot_Request = Ros2Interbotix_xs_msgsSrvReboot_Request (T.empty) (T.empty) (False) (False)
ros2Interbotix_xs_msgsSrvReboot_RequestCodecIdentity :: String
ros2Interbotix_xs_msgsSrvReboot_RequestCodecIdentity = "UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55"
encodeRos2Interbotix_xs_msgsSrvReboot_Request :: Ros2Interbotix_xs_msgsSrvReboot_Request -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsSrvReboot_Request value = do
  b0 <- W.encodeText 128 True (ros2Interbotix_xs_msgsSrvReboot_Request_cmd_type value)
  b1 <- W.encodeText 128 True (ros2Interbotix_xs_msgsSrvReboot_Request_name value)
  b2 <- W.encodeBool (ros2Interbotix_xs_msgsSrvReboot_Request_enable value)
  b3 <- W.encodeBool (ros2Interbotix_xs_msgsSrvReboot_Request_smart_reboot value)
  W.bounded 266 [b0, b1, b2, b3]
readRos2Interbotix_xs_msgsSrvReboot_Request :: W.Decoder Ros2Interbotix_xs_msgsSrvReboot_Request
readRos2Interbotix_xs_msgsSrvReboot_Request = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- W.boolean
  a3 <- W.boolean
  let value = Ros2Interbotix_xs_msgsSrvReboot_Request a0 a1 a2 a3
  case encodeRos2Interbotix_xs_msgsSrvReboot_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsSrvReboot_Request :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsSrvReboot_Request
decodeRos2Interbotix_xs_msgsSrvReboot_Request = W.runDecoder 266 readRos2Interbotix_xs_msgsSrvReboot_Request
instance Canonical Ros2Interbotix_xs_msgsSrvReboot_Request where
  maximumBytes _ = 266
  encodeValue = encodeRos2Interbotix_xs_msgsSrvReboot_Request
  readValue = readRos2Interbotix_xs_msgsSrvReboot_Request
data Ros2Interbotix_xs_msgsSrvReboot_Response = Ros2Interbotix_xs_msgsSrvReboot_Response deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsSrvReboot_Response :: Ros2Interbotix_xs_msgsSrvReboot_Response
defaultRos2Interbotix_xs_msgsSrvReboot_Response = Ros2Interbotix_xs_msgsSrvReboot_Response 
ros2Interbotix_xs_msgsSrvReboot_ResponseCodecIdentity :: String
ros2Interbotix_xs_msgsSrvReboot_ResponseCodecIdentity = "UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b"
encodeRos2Interbotix_xs_msgsSrvReboot_Response :: Ros2Interbotix_xs_msgsSrvReboot_Response -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsSrvReboot_Response value = do
  W.bounded 0 []
readRos2Interbotix_xs_msgsSrvReboot_Response :: W.Decoder Ros2Interbotix_xs_msgsSrvReboot_Response
readRos2Interbotix_xs_msgsSrvReboot_Response = do
  let value = Ros2Interbotix_xs_msgsSrvReboot_Response 
  case encodeRos2Interbotix_xs_msgsSrvReboot_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsSrvReboot_Response :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsSrvReboot_Response
decodeRos2Interbotix_xs_msgsSrvReboot_Response = W.runDecoder 0 readRos2Interbotix_xs_msgsSrvReboot_Response
instance Canonical Ros2Interbotix_xs_msgsSrvReboot_Response where
  maximumBytes _ = 0
  encodeValue = encodeRos2Interbotix_xs_msgsSrvReboot_Response
  readValue = readRos2Interbotix_xs_msgsSrvReboot_Response
data Ros2Interbotix_xs_msgsSrvRegisterValues_Request = Ros2Interbotix_xs_msgsSrvRegisterValues_Request
  {
    -- | \@brief interbotix_xs_msgs/srv/RegisterValues_Request.cmd_type: string; each string is 0..128 bytes;
    --  strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRegisterValues_Request_cmd_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/srv/RegisterValues_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRegisterValues_Request_name :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/srv/RegisterValues_Request.reg: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRegisterValues_Request_reg :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/srv/RegisterValues_Request.value: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRegisterValues_Request_value :: Int32
  } deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsSrvRegisterValues_Request :: Ros2Interbotix_xs_msgsSrvRegisterValues_Request
defaultRos2Interbotix_xs_msgsSrvRegisterValues_Request = Ros2Interbotix_xs_msgsSrvRegisterValues_Request (T.empty) (T.empty) (T.empty) (0)
ros2Interbotix_xs_msgsSrvRegisterValues_RequestCodecIdentity :: String
ros2Interbotix_xs_msgsSrvRegisterValues_RequestCodecIdentity = "UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd"
encodeRos2Interbotix_xs_msgsSrvRegisterValues_Request :: Ros2Interbotix_xs_msgsSrvRegisterValues_Request -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsSrvRegisterValues_Request value = do
  b0 <- W.encodeText 128 True (ros2Interbotix_xs_msgsSrvRegisterValues_Request_cmd_type value)
  b1 <- W.encodeText 128 True (ros2Interbotix_xs_msgsSrvRegisterValues_Request_name value)
  b2 <- W.encodeText 128 True (ros2Interbotix_xs_msgsSrvRegisterValues_Request_reg value)
  b3 <- W.encodeSigned 4 (fromIntegral (ros2Interbotix_xs_msgsSrvRegisterValues_Request_value value))
  W.bounded 400 [b0, b1, b2, b3]
readRos2Interbotix_xs_msgsSrvRegisterValues_Request :: W.Decoder Ros2Interbotix_xs_msgsSrvRegisterValues_Request
readRos2Interbotix_xs_msgsSrvRegisterValues_Request = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  a3 <- fromIntegral <$> W.signed 4
  let value = Ros2Interbotix_xs_msgsSrvRegisterValues_Request a0 a1 a2 a3
  case encodeRos2Interbotix_xs_msgsSrvRegisterValues_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsSrvRegisterValues_Request :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsSrvRegisterValues_Request
decodeRos2Interbotix_xs_msgsSrvRegisterValues_Request = W.runDecoder 400 readRos2Interbotix_xs_msgsSrvRegisterValues_Request
instance Canonical Ros2Interbotix_xs_msgsSrvRegisterValues_Request where
  maximumBytes _ = 400
  encodeValue = encodeRos2Interbotix_xs_msgsSrvRegisterValues_Request
  readValue = readRos2Interbotix_xs_msgsSrvRegisterValues_Request
data Ros2Interbotix_xs_msgsSrvRegisterValues_Response = Ros2Interbotix_xs_msgsSrvRegisterValues_Response
  {
    -- | \@brief interbotix_xs_msgs/srv/RegisterValues_Response.values: int32; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRegisterValues_Response_values :: [Int32]
  } deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsSrvRegisterValues_Response :: Ros2Interbotix_xs_msgsSrvRegisterValues_Response
defaultRos2Interbotix_xs_msgsSrvRegisterValues_Response = Ros2Interbotix_xs_msgsSrvRegisterValues_Response ([])
ros2Interbotix_xs_msgsSrvRegisterValues_ResponseCodecIdentity :: String
ros2Interbotix_xs_msgsSrvRegisterValues_ResponseCodecIdentity = "UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a"
encodeRos2Interbotix_xs_msgsSrvRegisterValues_Response :: Ros2Interbotix_xs_msgsSrvRegisterValues_Response -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsSrvRegisterValues_Response value = do
  if length (ros2Interbotix_xs_msgsSrvRegisterValues_Response_values value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Interbotix_xs_msgsSrvRegisterValues_Response_values value))
  b0 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Interbotix_xs_msgsSrvRegisterValues_Response_values value)
  W.bounded 68 [prefix0, b0]
readRos2Interbotix_xs_msgsSrvRegisterValues_Response :: W.Decoder Ros2Interbotix_xs_msgsSrvRegisterValues_Response
readRos2Interbotix_xs_msgsSrvRegisterValues_Response = do
  count0 <- W.count 16
  a0 <- replicateM count0 (fromIntegral <$> W.signed 4)
  let value = Ros2Interbotix_xs_msgsSrvRegisterValues_Response a0
  case encodeRos2Interbotix_xs_msgsSrvRegisterValues_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsSrvRegisterValues_Response :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsSrvRegisterValues_Response
decodeRos2Interbotix_xs_msgsSrvRegisterValues_Response = W.runDecoder 68 readRos2Interbotix_xs_msgsSrvRegisterValues_Response
instance Canonical Ros2Interbotix_xs_msgsSrvRegisterValues_Response where
  maximumBytes _ = 68
  encodeValue = encodeRos2Interbotix_xs_msgsSrvRegisterValues_Response
  readValue = readRos2Interbotix_xs_msgsSrvRegisterValues_Response
data Ros2Interbotix_xs_msgsSrvRobotInfo_Request = Ros2Interbotix_xs_msgsSrvRobotInfo_Request
  {
    -- | \@brief interbotix_xs_msgs/srv/RobotInfo_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRobotInfo_Request_cmd_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/srv/RobotInfo_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRobotInfo_Request_name :: T.Text
  } deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsSrvRobotInfo_Request :: Ros2Interbotix_xs_msgsSrvRobotInfo_Request
defaultRos2Interbotix_xs_msgsSrvRobotInfo_Request = Ros2Interbotix_xs_msgsSrvRobotInfo_Request (T.empty) (T.empty)
ros2Interbotix_xs_msgsSrvRobotInfo_RequestCodecIdentity :: String
ros2Interbotix_xs_msgsSrvRobotInfo_RequestCodecIdentity = "UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9"
encodeRos2Interbotix_xs_msgsSrvRobotInfo_Request :: Ros2Interbotix_xs_msgsSrvRobotInfo_Request -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsSrvRobotInfo_Request value = do
  b0 <- W.encodeText 128 True (ros2Interbotix_xs_msgsSrvRobotInfo_Request_cmd_type value)
  b1 <- W.encodeText 128 True (ros2Interbotix_xs_msgsSrvRobotInfo_Request_name value)
  W.bounded 264 [b0, b1]
readRos2Interbotix_xs_msgsSrvRobotInfo_Request :: W.Decoder Ros2Interbotix_xs_msgsSrvRobotInfo_Request
readRos2Interbotix_xs_msgsSrvRobotInfo_Request = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  let value = Ros2Interbotix_xs_msgsSrvRobotInfo_Request a0 a1
  case encodeRos2Interbotix_xs_msgsSrvRobotInfo_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsSrvRobotInfo_Request :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsSrvRobotInfo_Request
decodeRos2Interbotix_xs_msgsSrvRobotInfo_Request = W.runDecoder 264 readRos2Interbotix_xs_msgsSrvRobotInfo_Request
instance Canonical Ros2Interbotix_xs_msgsSrvRobotInfo_Request where
  maximumBytes _ = 264
  encodeValue = encodeRos2Interbotix_xs_msgsSrvRobotInfo_Request
  readValue = readRos2Interbotix_xs_msgsSrvRobotInfo_Request
data Ros2Interbotix_xs_msgsSrvRobotInfo_Response = Ros2Interbotix_xs_msgsSrvRobotInfo_Response
  {
    -- | \@brief interbotix_xs_msgs/srv/RobotInfo_Response.mode: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRobotInfo_Response_mode :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/srv/RobotInfo_Response.profile_type: string; each string is 0..128 bytes;
    --  strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRobotInfo_Response_profile_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_names: string; 0..64 elements; each string is
    --  0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_names :: [T.Text]
  ,
    -- | \@brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_ids: int16; 0..64 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_ids :: [Int16]
  ,
    -- | \@brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_lower_limits: float32; 0..64 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_lower_limits :: [Float]
  ,
    -- | \@brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_upper_limits: float32; 0..64 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_upper_limits :: [Float]
  ,
    -- | \@brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_velocity_limits: float32; 0..64 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_velocity_limits :: [Float]
  ,
    -- | \@brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_sleep_positions: float32; 0..64 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_sleep_positions :: [Float]
  ,
    -- | \@brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_state_indices: int16; 0..64 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_state_indices :: [Int16]
  ,
    -- | \@brief interbotix_xs_msgs/srv/RobotInfo_Response.num_joints: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRobotInfo_Response_num_joints :: Int16
  ,
    -- | \@brief interbotix_xs_msgs/srv/RobotInfo_Response.name: string; 0..64 elements; each string is 0..128
    --  bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvRobotInfo_Response_name :: [T.Text]
  } deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsSrvRobotInfo_Response :: Ros2Interbotix_xs_msgsSrvRobotInfo_Response
defaultRos2Interbotix_xs_msgsSrvRobotInfo_Response =
    Ros2Interbotix_xs_msgsSrvRobotInfo_Response
    (T.empty)
    (T.empty)
    ([])
    ([])
    ([])
    ([])
    ([])
    ([])
    ([])
    (0)
    ([])
ros2Interbotix_xs_msgsSrvRobotInfo_ResponseCodecIdentity :: String
ros2Interbotix_xs_msgsSrvRobotInfo_ResponseCodecIdentity = "UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14"
encodeRos2Interbotix_xs_msgsSrvRobotInfo_Response :: Ros2Interbotix_xs_msgsSrvRobotInfo_Response -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsSrvRobotInfo_Response value = do
  b0 <- W.encodeText 128 True (ros2Interbotix_xs_msgsSrvRobotInfo_Response_mode value)
  b1 <- W.encodeText 128 True (ros2Interbotix_xs_msgsSrvRobotInfo_Response_profile_type value)
  if length (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_names value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_names value))
  b2 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_names value)
  if length (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_ids value) > 64 then Left 22 else Right ()
  prefix3 <- W.encodeCount 64 (length (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_ids value))
  b3 <- B.concat <$> mapM (\e -> W.encodeSigned 2 (fromIntegral (e))) (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_ids value)
  if length (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_lower_limits value) > 64 then Left 22 else Right ()
  prefix4 <- W.encodeCount 64 (length (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_lower_limits value))
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_lower_limits value)
  if length (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_upper_limits value) > 64 then Left 22 else Right ()
  prefix5 <- W.encodeCount 64 (length (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_upper_limits value))
  b5 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_upper_limits value)
  if length (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_velocity_limits value) > 64 then Left 22 else Right ()
  prefix6 <- W.encodeCount 64 (length (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_velocity_limits value))
  b6 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_velocity_limits value)
  if length (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_sleep_positions value) > 64 then Left 22 else Right ()
  prefix7 <- W.encodeCount 64 (length (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_sleep_positions value))
  b7 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_sleep_positions value)
  if length (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_state_indices value) > 64 then Left 22 else Right ()
  prefix8 <- W.encodeCount 64 (length (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_state_indices value))
  b8 <- B.concat <$> mapM (\e -> W.encodeSigned 2 (fromIntegral (e))) (ros2Interbotix_xs_msgsSrvRobotInfo_Response_joint_state_indices value)
  b9 <- W.encodeSigned 2 (fromIntegral (ros2Interbotix_xs_msgsSrvRobotInfo_Response_num_joints value))
  if length (ros2Interbotix_xs_msgsSrvRobotInfo_Response_name value) > 64 then Left 22 else Right ()
  prefix10 <- W.encodeCount 64 (length (ros2Interbotix_xs_msgsSrvRobotInfo_Response_name value))
  b10 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros2Interbotix_xs_msgsSrvRobotInfo_Response_name value)
  W.bounded 18474 [b0, b1, prefix2, b2, prefix3, b3, prefix4, b4, prefix5, b5, prefix6, b6, prefix7, b7, prefix8, b8, b9, prefix10, b10]
readRos2Interbotix_xs_msgsSrvRobotInfo_Response :: W.Decoder Ros2Interbotix_xs_msgsSrvRobotInfo_Response
readRos2Interbotix_xs_msgsSrvRobotInfo_Response = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  count2 <- W.count 64
  a2 <- replicateM count2 (W.text 128 True)
  count3 <- W.count 64
  a3 <- replicateM count3 (fromIntegral <$> W.signed 2)
  count4 <- W.count 64
  a4 <- replicateM count4 (W.float32)
  count5 <- W.count 64
  a5 <- replicateM count5 (W.float32)
  count6 <- W.count 64
  a6 <- replicateM count6 (W.float32)
  count7 <- W.count 64
  a7 <- replicateM count7 (W.float32)
  count8 <- W.count 64
  a8 <- replicateM count8 (fromIntegral <$> W.signed 2)
  a9 <- fromIntegral <$> W.signed 2
  count10 <- W.count 64
  a10 <- replicateM count10 (W.text 128 True)
  let value = Ros2Interbotix_xs_msgsSrvRobotInfo_Response a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
  case encodeRos2Interbotix_xs_msgsSrvRobotInfo_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsSrvRobotInfo_Response :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsSrvRobotInfo_Response
decodeRos2Interbotix_xs_msgsSrvRobotInfo_Response = W.runDecoder 18474 readRos2Interbotix_xs_msgsSrvRobotInfo_Response
instance Canonical Ros2Interbotix_xs_msgsSrvRobotInfo_Response where
  maximumBytes _ = 18474
  encodeValue = encodeRos2Interbotix_xs_msgsSrvRobotInfo_Response
  readValue = readRos2Interbotix_xs_msgsSrvRobotInfo_Response
data Ros2Interbotix_xs_msgsSrvTorqueEnable_Request = Ros2Interbotix_xs_msgsSrvTorqueEnable_Request
  {
    -- | \@brief interbotix_xs_msgs/srv/TorqueEnable_Request.cmd_type: string; each string is 0..128 bytes;
    --  strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvTorqueEnable_Request_cmd_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/srv/TorqueEnable_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvTorqueEnable_Request_name :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/srv/TorqueEnable_Request.enable: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/haskell/API.md
    ros2Interbotix_xs_msgsSrvTorqueEnable_Request_enable :: Bool
  } deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsSrvTorqueEnable_Request :: Ros2Interbotix_xs_msgsSrvTorqueEnable_Request
defaultRos2Interbotix_xs_msgsSrvTorqueEnable_Request = Ros2Interbotix_xs_msgsSrvTorqueEnable_Request (T.empty) (T.empty) (False)
ros2Interbotix_xs_msgsSrvTorqueEnable_RequestCodecIdentity :: String
ros2Interbotix_xs_msgsSrvTorqueEnable_RequestCodecIdentity = "UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da"
encodeRos2Interbotix_xs_msgsSrvTorqueEnable_Request :: Ros2Interbotix_xs_msgsSrvTorqueEnable_Request -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsSrvTorqueEnable_Request value = do
  b0 <- W.encodeText 128 True (ros2Interbotix_xs_msgsSrvTorqueEnable_Request_cmd_type value)
  b1 <- W.encodeText 128 True (ros2Interbotix_xs_msgsSrvTorqueEnable_Request_name value)
  b2 <- W.encodeBool (ros2Interbotix_xs_msgsSrvTorqueEnable_Request_enable value)
  W.bounded 265 [b0, b1, b2]
readRos2Interbotix_xs_msgsSrvTorqueEnable_Request :: W.Decoder Ros2Interbotix_xs_msgsSrvTorqueEnable_Request
readRos2Interbotix_xs_msgsSrvTorqueEnable_Request = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- W.boolean
  let value = Ros2Interbotix_xs_msgsSrvTorqueEnable_Request a0 a1 a2
  case encodeRos2Interbotix_xs_msgsSrvTorqueEnable_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsSrvTorqueEnable_Request :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsSrvTorqueEnable_Request
decodeRos2Interbotix_xs_msgsSrvTorqueEnable_Request = W.runDecoder 265 readRos2Interbotix_xs_msgsSrvTorqueEnable_Request
instance Canonical Ros2Interbotix_xs_msgsSrvTorqueEnable_Request where
  maximumBytes _ = 265
  encodeValue = encodeRos2Interbotix_xs_msgsSrvTorqueEnable_Request
  readValue = readRos2Interbotix_xs_msgsSrvTorqueEnable_Request
data Ros2Interbotix_xs_msgsSrvTorqueEnable_Response = Ros2Interbotix_xs_msgsSrvTorqueEnable_Response deriving (Eq, Show)
defaultRos2Interbotix_xs_msgsSrvTorqueEnable_Response :: Ros2Interbotix_xs_msgsSrvTorqueEnable_Response
defaultRos2Interbotix_xs_msgsSrvTorqueEnable_Response = Ros2Interbotix_xs_msgsSrvTorqueEnable_Response 
ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseCodecIdentity :: String
ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseCodecIdentity = "UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b"
encodeRos2Interbotix_xs_msgsSrvTorqueEnable_Response :: Ros2Interbotix_xs_msgsSrvTorqueEnable_Response -> Either Word32 B.ByteString
encodeRos2Interbotix_xs_msgsSrvTorqueEnable_Response value = do
  W.bounded 0 []
readRos2Interbotix_xs_msgsSrvTorqueEnable_Response :: W.Decoder Ros2Interbotix_xs_msgsSrvTorqueEnable_Response
readRos2Interbotix_xs_msgsSrvTorqueEnable_Response = do
  let value = Ros2Interbotix_xs_msgsSrvTorqueEnable_Response 
  case encodeRos2Interbotix_xs_msgsSrvTorqueEnable_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Interbotix_xs_msgsSrvTorqueEnable_Response :: B.ByteString -> Either Word32 Ros2Interbotix_xs_msgsSrvTorqueEnable_Response
decodeRos2Interbotix_xs_msgsSrvTorqueEnable_Response = W.runDecoder 0 readRos2Interbotix_xs_msgsSrvTorqueEnable_Response
instance Canonical Ros2Interbotix_xs_msgsSrvTorqueEnable_Response where
  maximumBytes _ = 0
  encodeValue = encodeRos2Interbotix_xs_msgsSrvTorqueEnable_Response
  readValue = readRos2Interbotix_xs_msgsSrvTorqueEnable_Response
