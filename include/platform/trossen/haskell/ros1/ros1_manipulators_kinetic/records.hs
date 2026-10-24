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
data Ros1Interbotix_uxarm_joyArmJoy = Ros1Interbotix_uxarm_joyArmJoy
  {
    -- | \@brief interbotix_uxarm_joy/ArmJoy.ee_x_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_uxarm_joyArmJoy_ee_x_cmd :: Int8
  ,
    -- | \@brief interbotix_uxarm_joy/ArmJoy.ee_y_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_uxarm_joyArmJoy_ee_y_cmd :: Int8
  ,
    -- | \@brief interbotix_uxarm_joy/ArmJoy.ee_z_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_uxarm_joyArmJoy_ee_z_cmd :: Int8
  ,
    -- | \@brief interbotix_uxarm_joy/ArmJoy.ee_yaw_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_uxarm_joyArmJoy_ee_yaw_cmd :: Int8
  ,
    -- | \@brief interbotix_uxarm_joy/ArmJoy.ee_pitch_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_uxarm_joyArmJoy_ee_pitch_cmd :: Int8
  ,
    -- | \@brief interbotix_uxarm_joy/ArmJoy.waist_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_uxarm_joyArmJoy_waist_cmd :: Int8
  ,
    -- | \@brief interbotix_uxarm_joy/ArmJoy.gripper_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_uxarm_joyArmJoy_gripper_cmd :: Int8
  ,
    -- | \@brief interbotix_uxarm_joy/ArmJoy.pose_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_uxarm_joyArmJoy_pose_cmd :: Int8
  ,
    -- | \@brief interbotix_uxarm_joy/ArmJoy.speed_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_uxarm_joyArmJoy_speed_cmd :: Int8
  ,
    -- | \@brief interbotix_uxarm_joy/ArmJoy.speed_toggle_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_uxarm_joyArmJoy_speed_toggle_cmd :: Int8
  ,
    -- | \@brief interbotix_uxarm_joy/ArmJoy.gripper_speed_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_uxarm_joyArmJoy_gripper_speed_cmd :: Int8
  ,
    -- | \@brief interbotix_uxarm_joy/ArmJoy.mode_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_uxarm_joyArmJoy_mode_cmd :: Int8
  } deriving (Eq, Show)
defaultRos1Interbotix_uxarm_joyArmJoy :: Ros1Interbotix_uxarm_joyArmJoy
defaultRos1Interbotix_uxarm_joyArmJoy = Ros1Interbotix_uxarm_joyArmJoy (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0)
ros1Interbotix_uxarm_joyArmJoyCodecIdentity :: String
ros1Interbotix_uxarm_joyArmJoyCodecIdentity = "UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53"
ros1Interbotix_uxarm_joyArmJoy_EE_X_INC :: Int8
ros1Interbotix_uxarm_joyArmJoy_EE_X_INC = 1
ros1Interbotix_uxarm_joyArmJoy_EE_X_DEC :: Int8
ros1Interbotix_uxarm_joyArmJoy_EE_X_DEC = 2
ros1Interbotix_uxarm_joyArmJoy_EE_Y_INC :: Int8
ros1Interbotix_uxarm_joyArmJoy_EE_Y_INC = 3
ros1Interbotix_uxarm_joyArmJoy_EE_Y_DEC :: Int8
ros1Interbotix_uxarm_joyArmJoy_EE_Y_DEC = 4
ros1Interbotix_uxarm_joyArmJoy_EE_Z_INC :: Int8
ros1Interbotix_uxarm_joyArmJoy_EE_Z_INC = 5
ros1Interbotix_uxarm_joyArmJoy_EE_Z_DEC :: Int8
ros1Interbotix_uxarm_joyArmJoy_EE_Z_DEC = 6
ros1Interbotix_uxarm_joyArmJoy_EE_YAW_CCW :: Int8
ros1Interbotix_uxarm_joyArmJoy_EE_YAW_CCW = 7
ros1Interbotix_uxarm_joyArmJoy_EE_YAW_CW :: Int8
ros1Interbotix_uxarm_joyArmJoy_EE_YAW_CW = 8
ros1Interbotix_uxarm_joyArmJoy_EE_PITCH_UP :: Int8
ros1Interbotix_uxarm_joyArmJoy_EE_PITCH_UP = 9
ros1Interbotix_uxarm_joyArmJoy_EE_PITCH_DOWN :: Int8
ros1Interbotix_uxarm_joyArmJoy_EE_PITCH_DOWN = 10
ros1Interbotix_uxarm_joyArmJoy_WAIST_CCW :: Int8
ros1Interbotix_uxarm_joyArmJoy_WAIST_CCW = 11
ros1Interbotix_uxarm_joyArmJoy_WAIST_CW :: Int8
ros1Interbotix_uxarm_joyArmJoy_WAIST_CW = 12
ros1Interbotix_uxarm_joyArmJoy_GRIPPER_OPEN :: Int8
ros1Interbotix_uxarm_joyArmJoy_GRIPPER_OPEN = 13
ros1Interbotix_uxarm_joyArmJoy_GRIPPER_CLOSE :: Int8
ros1Interbotix_uxarm_joyArmJoy_GRIPPER_CLOSE = 14
ros1Interbotix_uxarm_joyArmJoy_HOME_POSE :: Int8
ros1Interbotix_uxarm_joyArmJoy_HOME_POSE = 15
ros1Interbotix_uxarm_joyArmJoy_HOLDUP_POSE :: Int8
ros1Interbotix_uxarm_joyArmJoy_HOLDUP_POSE = 16
ros1Interbotix_uxarm_joyArmJoy_SPEED_INC :: Int8
ros1Interbotix_uxarm_joyArmJoy_SPEED_INC = 17
ros1Interbotix_uxarm_joyArmJoy_SPEED_DEC :: Int8
ros1Interbotix_uxarm_joyArmJoy_SPEED_DEC = 18
ros1Interbotix_uxarm_joyArmJoy_SPEED_COARSE :: Int8
ros1Interbotix_uxarm_joyArmJoy_SPEED_COARSE = 19
ros1Interbotix_uxarm_joyArmJoy_SPEED_FINE :: Int8
ros1Interbotix_uxarm_joyArmJoy_SPEED_FINE = 20
ros1Interbotix_uxarm_joyArmJoy_GRIPPER_SPEED_INC :: Int8
ros1Interbotix_uxarm_joyArmJoy_GRIPPER_SPEED_INC = 21
ros1Interbotix_uxarm_joyArmJoy_GRIPPER_SPEED_DEC :: Int8
ros1Interbotix_uxarm_joyArmJoy_GRIPPER_SPEED_DEC = 22
ros1Interbotix_uxarm_joyArmJoy_MODE_SERVO :: Int8
ros1Interbotix_uxarm_joyArmJoy_MODE_SERVO = 23
ros1Interbotix_uxarm_joyArmJoy_MODE_TEACH :: Int8
ros1Interbotix_uxarm_joyArmJoy_MODE_TEACH = 24
encodeRos1Interbotix_uxarm_joyArmJoy :: Ros1Interbotix_uxarm_joyArmJoy -> Either Word32 B.ByteString
encodeRos1Interbotix_uxarm_joyArmJoy value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_uxarm_joyArmJoy_ee_x_cmd value))
  b1 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_uxarm_joyArmJoy_ee_y_cmd value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_uxarm_joyArmJoy_ee_z_cmd value))
  b3 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_uxarm_joyArmJoy_ee_yaw_cmd value))
  b4 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_uxarm_joyArmJoy_ee_pitch_cmd value))
  b5 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_uxarm_joyArmJoy_waist_cmd value))
  b6 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_uxarm_joyArmJoy_gripper_cmd value))
  b7 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_uxarm_joyArmJoy_pose_cmd value))
  b8 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_uxarm_joyArmJoy_speed_cmd value))
  b9 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_uxarm_joyArmJoy_speed_toggle_cmd value))
  b10 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_uxarm_joyArmJoy_gripper_speed_cmd value))
  b11 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_uxarm_joyArmJoy_mode_cmd value))
  W.bounded 12 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11]
readRos1Interbotix_uxarm_joyArmJoy :: W.Decoder Ros1Interbotix_uxarm_joyArmJoy
readRos1Interbotix_uxarm_joyArmJoy = do
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
  let value = Ros1Interbotix_uxarm_joyArmJoy a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11
  case encodeRos1Interbotix_uxarm_joyArmJoy value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_uxarm_joyArmJoy :: B.ByteString -> Either Word32 Ros1Interbotix_uxarm_joyArmJoy
decodeRos1Interbotix_uxarm_joyArmJoy = W.runDecoder 12 readRos1Interbotix_uxarm_joyArmJoy
instance Canonical Ros1Interbotix_uxarm_joyArmJoy where
  maximumBytes _ = 12
  encodeValue = encodeRos1Interbotix_uxarm_joyArmJoy
  readValue = readRos1Interbotix_uxarm_joyArmJoy
