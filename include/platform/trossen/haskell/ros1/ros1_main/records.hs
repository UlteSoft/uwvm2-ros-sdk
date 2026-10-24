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
data Ros1Interbotix_slate_msgsSetStringRequest = Ros1Interbotix_slate_msgsSetStringRequest
  {
    -- | \@brief interbotix_slate_msgs/SetStringRequest.data: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_slate_msgsSetStringRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_slate_msgsSetStringRequest_data :: T.Text
  } deriving (Eq, Show)
defaultRos1Interbotix_slate_msgsSetStringRequest :: Ros1Interbotix_slate_msgsSetStringRequest
defaultRos1Interbotix_slate_msgsSetStringRequest = Ros1Interbotix_slate_msgsSetStringRequest (T.empty)
ros1Interbotix_slate_msgsSetStringRequestCodecIdentity :: String
ros1Interbotix_slate_msgsSetStringRequestCodecIdentity = "UWVMROS1_bc58f043e73f33d5b3923bca8a1d515f62f405f3365b83adb17311a728d2f105"
encodeRos1Interbotix_slate_msgsSetStringRequest :: Ros1Interbotix_slate_msgsSetStringRequest -> Either Word32 B.ByteString
encodeRos1Interbotix_slate_msgsSetStringRequest value = do
  b0 <- W.encodeText 128 True (ros1Interbotix_slate_msgsSetStringRequest_data value)
  W.bounded 132 [b0]
readRos1Interbotix_slate_msgsSetStringRequest :: W.Decoder Ros1Interbotix_slate_msgsSetStringRequest
readRos1Interbotix_slate_msgsSetStringRequest = do
  a0 <- W.text 128 True
  let value = Ros1Interbotix_slate_msgsSetStringRequest a0
  case encodeRos1Interbotix_slate_msgsSetStringRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_slate_msgsSetStringRequest :: B.ByteString -> Either Word32 Ros1Interbotix_slate_msgsSetStringRequest
decodeRos1Interbotix_slate_msgsSetStringRequest = W.runDecoder 132 readRos1Interbotix_slate_msgsSetStringRequest
instance Canonical Ros1Interbotix_slate_msgsSetStringRequest where
  maximumBytes _ = 132
  encodeValue = encodeRos1Interbotix_slate_msgsSetStringRequest
  readValue = readRos1Interbotix_slate_msgsSetStringRequest
data Ros1Interbotix_slate_msgsSetStringResponse = Ros1Interbotix_slate_msgsSetStringResponse
  {
    -- | \@brief interbotix_slate_msgs/SetStringResponse.success: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_slate_msgsSetStringResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_slate_msgsSetStringResponse_success :: Bool
  ,
    -- | \@brief interbotix_slate_msgs/SetStringResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_slate_msgsSetStringResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_slate_msgsSetStringResponse_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Interbotix_slate_msgsSetStringResponse :: Ros1Interbotix_slate_msgsSetStringResponse
defaultRos1Interbotix_slate_msgsSetStringResponse = Ros1Interbotix_slate_msgsSetStringResponse (False) (T.empty)
ros1Interbotix_slate_msgsSetStringResponseCodecIdentity :: String
ros1Interbotix_slate_msgsSetStringResponseCodecIdentity = "UWVMROS1_6f3a05dbee380f0a0f5b24b75833a99857293e656d705e4322b4b3f97a5e530c"
encodeRos1Interbotix_slate_msgsSetStringResponse :: Ros1Interbotix_slate_msgsSetStringResponse -> Either Word32 B.ByteString
encodeRos1Interbotix_slate_msgsSetStringResponse value = do
  b0 <- W.encodeBool (ros1Interbotix_slate_msgsSetStringResponse_success value)
  b1 <- W.encodeText 128 True (ros1Interbotix_slate_msgsSetStringResponse_message value)
  W.bounded 133 [b0, b1]
readRos1Interbotix_slate_msgsSetStringResponse :: W.Decoder Ros1Interbotix_slate_msgsSetStringResponse
readRos1Interbotix_slate_msgsSetStringResponse = do
  a0 <- W.boolean
  a1 <- W.text 128 True
  let value = Ros1Interbotix_slate_msgsSetStringResponse a0 a1
  case encodeRos1Interbotix_slate_msgsSetStringResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_slate_msgsSetStringResponse :: B.ByteString -> Either Word32 Ros1Interbotix_slate_msgsSetStringResponse
decodeRos1Interbotix_slate_msgsSetStringResponse = W.runDecoder 133 readRos1Interbotix_slate_msgsSetStringResponse
instance Canonical Ros1Interbotix_slate_msgsSetStringResponse where
  maximumBytes _ = 133
  encodeValue = encodeRos1Interbotix_slate_msgsSetStringResponse
  readValue = readRos1Interbotix_slate_msgsSetStringResponse
data Ros1Interbotix_xs_msgsArmJoy = Ros1Interbotix_xs_msgsArmJoy
  {
    -- | \@brief interbotix_xs_msgs/ArmJoy.ee_x_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsArmJoy_ee_x_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/ArmJoy.ee_y_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsArmJoy_ee_y_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/ArmJoy.ee_z_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsArmJoy_ee_z_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/ArmJoy.ee_roll_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsArmJoy_ee_roll_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/ArmJoy.ee_pitch_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsArmJoy_ee_pitch_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/ArmJoy.waist_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsArmJoy_waist_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/ArmJoy.gripper_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsArmJoy_gripper_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/ArmJoy.pose_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsArmJoy_pose_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/ArmJoy.speed_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsArmJoy_speed_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/ArmJoy.speed_toggle_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsArmJoy_speed_toggle_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/ArmJoy.gripper_pwm_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsArmJoy_gripper_pwm_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/ArmJoy.torque_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsArmJoy_torque_cmd :: Int8
  } deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsArmJoy :: Ros1Interbotix_xs_msgsArmJoy
defaultRos1Interbotix_xs_msgsArmJoy = Ros1Interbotix_xs_msgsArmJoy (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0)
ros1Interbotix_xs_msgsArmJoyCodecIdentity :: String
ros1Interbotix_xs_msgsArmJoyCodecIdentity = "UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3"
ros1Interbotix_xs_msgsArmJoy_EE_X_INC :: Int8
ros1Interbotix_xs_msgsArmJoy_EE_X_INC = 1
ros1Interbotix_xs_msgsArmJoy_EE_X_DEC :: Int8
ros1Interbotix_xs_msgsArmJoy_EE_X_DEC = 2
ros1Interbotix_xs_msgsArmJoy_EE_Y_INC :: Int8
ros1Interbotix_xs_msgsArmJoy_EE_Y_INC = 3
ros1Interbotix_xs_msgsArmJoy_EE_Y_DEC :: Int8
ros1Interbotix_xs_msgsArmJoy_EE_Y_DEC = 4
ros1Interbotix_xs_msgsArmJoy_EE_Z_INC :: Int8
ros1Interbotix_xs_msgsArmJoy_EE_Z_INC = 5
ros1Interbotix_xs_msgsArmJoy_EE_Z_DEC :: Int8
ros1Interbotix_xs_msgsArmJoy_EE_Z_DEC = 6
ros1Interbotix_xs_msgsArmJoy_EE_ROLL_CCW :: Int8
ros1Interbotix_xs_msgsArmJoy_EE_ROLL_CCW = 7
ros1Interbotix_xs_msgsArmJoy_EE_ROLL_CW :: Int8
ros1Interbotix_xs_msgsArmJoy_EE_ROLL_CW = 8
ros1Interbotix_xs_msgsArmJoy_EE_PITCH_UP :: Int8
ros1Interbotix_xs_msgsArmJoy_EE_PITCH_UP = 9
ros1Interbotix_xs_msgsArmJoy_EE_PITCH_DOWN :: Int8
ros1Interbotix_xs_msgsArmJoy_EE_PITCH_DOWN = 10
ros1Interbotix_xs_msgsArmJoy_WAIST_CCW :: Int8
ros1Interbotix_xs_msgsArmJoy_WAIST_CCW = 11
ros1Interbotix_xs_msgsArmJoy_WAIST_CW :: Int8
ros1Interbotix_xs_msgsArmJoy_WAIST_CW = 12
ros1Interbotix_xs_msgsArmJoy_GRIPPER_OPEN :: Int8
ros1Interbotix_xs_msgsArmJoy_GRIPPER_OPEN = 13
ros1Interbotix_xs_msgsArmJoy_GRIPPER_CLOSE :: Int8
ros1Interbotix_xs_msgsArmJoy_GRIPPER_CLOSE = 14
ros1Interbotix_xs_msgsArmJoy_HOME_POSE :: Int8
ros1Interbotix_xs_msgsArmJoy_HOME_POSE = 15
ros1Interbotix_xs_msgsArmJoy_SLEEP_POSE :: Int8
ros1Interbotix_xs_msgsArmJoy_SLEEP_POSE = 16
ros1Interbotix_xs_msgsArmJoy_SPEED_INC :: Int8
ros1Interbotix_xs_msgsArmJoy_SPEED_INC = 17
ros1Interbotix_xs_msgsArmJoy_SPEED_DEC :: Int8
ros1Interbotix_xs_msgsArmJoy_SPEED_DEC = 18
ros1Interbotix_xs_msgsArmJoy_SPEED_COURSE :: Int8
ros1Interbotix_xs_msgsArmJoy_SPEED_COURSE = 19
ros1Interbotix_xs_msgsArmJoy_SPEED_FINE :: Int8
ros1Interbotix_xs_msgsArmJoy_SPEED_FINE = 20
ros1Interbotix_xs_msgsArmJoy_GRIPPER_PWM_INC :: Int8
ros1Interbotix_xs_msgsArmJoy_GRIPPER_PWM_INC = 21
ros1Interbotix_xs_msgsArmJoy_GRIPPER_PWM_DEC :: Int8
ros1Interbotix_xs_msgsArmJoy_GRIPPER_PWM_DEC = 22
ros1Interbotix_xs_msgsArmJoy_TORQUE_ON :: Int8
ros1Interbotix_xs_msgsArmJoy_TORQUE_ON = 23
ros1Interbotix_xs_msgsArmJoy_TORQUE_OFF :: Int8
ros1Interbotix_xs_msgsArmJoy_TORQUE_OFF = 24
encodeRos1Interbotix_xs_msgsArmJoy :: Ros1Interbotix_xs_msgsArmJoy -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsArmJoy value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsArmJoy_ee_x_cmd value))
  b1 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsArmJoy_ee_y_cmd value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsArmJoy_ee_z_cmd value))
  b3 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsArmJoy_ee_roll_cmd value))
  b4 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsArmJoy_ee_pitch_cmd value))
  b5 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsArmJoy_waist_cmd value))
  b6 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsArmJoy_gripper_cmd value))
  b7 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsArmJoy_pose_cmd value))
  b8 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsArmJoy_speed_cmd value))
  b9 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsArmJoy_speed_toggle_cmd value))
  b10 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsArmJoy_gripper_pwm_cmd value))
  b11 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsArmJoy_torque_cmd value))
  W.bounded 12 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11]
readRos1Interbotix_xs_msgsArmJoy :: W.Decoder Ros1Interbotix_xs_msgsArmJoy
readRos1Interbotix_xs_msgsArmJoy = do
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
  let value = Ros1Interbotix_xs_msgsArmJoy a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11
  case encodeRos1Interbotix_xs_msgsArmJoy value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsArmJoy :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsArmJoy
decodeRos1Interbotix_xs_msgsArmJoy = W.runDecoder 12 readRos1Interbotix_xs_msgsArmJoy
instance Canonical Ros1Interbotix_xs_msgsArmJoy where
  maximumBytes _ = 12
  encodeValue = encodeRos1Interbotix_xs_msgsArmJoy
  readValue = readRos1Interbotix_xs_msgsArmJoy
data Ros1Interbotix_xs_msgsHexJoy = Ros1Interbotix_xs_msgsHexJoy
  {
    -- | \@brief interbotix_xs_msgs/HexJoy.world_x_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsHexJoy_world_x_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/HexJoy.world_y_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsHexJoy_world_y_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/HexJoy.world_yaw_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsHexJoy_world_yaw_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/HexJoy.place_x_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsHexJoy_place_x_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/HexJoy.place_y_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsHexJoy_place_y_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/HexJoy.place_z_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsHexJoy_place_z_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/HexJoy.place_roll_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsHexJoy_place_roll_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/HexJoy.place_pitch_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsHexJoy_place_pitch_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/HexJoy.pose_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsHexJoy_pose_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/HexJoy.move_type_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsHexJoy_move_type_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/HexJoy.gait_toggle_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsHexJoy_gait_toggle_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/HexJoy.leg_toggle_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsHexJoy_leg_toggle_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/HexJoy.stance_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsHexJoy_stance_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/HexJoy.reboot_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsHexJoy_reboot_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/HexJoy.set_home_pose_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsHexJoy_set_home_pose_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/HexJoy.speed_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsHexJoy_speed_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/HexJoy.speed_toggle_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsHexJoy_speed_toggle_cmd :: Int8
  } deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsHexJoy :: Ros1Interbotix_xs_msgsHexJoy
defaultRos1Interbotix_xs_msgsHexJoy = Ros1Interbotix_xs_msgsHexJoy (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0)
ros1Interbotix_xs_msgsHexJoyCodecIdentity :: String
ros1Interbotix_xs_msgsHexJoyCodecIdentity = "UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37"
ros1Interbotix_xs_msgsHexJoy_WORLD_X_INC :: Int8
ros1Interbotix_xs_msgsHexJoy_WORLD_X_INC = 1
ros1Interbotix_xs_msgsHexJoy_WORLD_X_DEC :: Int8
ros1Interbotix_xs_msgsHexJoy_WORLD_X_DEC = 2
ros1Interbotix_xs_msgsHexJoy_WORLD_Y_INC :: Int8
ros1Interbotix_xs_msgsHexJoy_WORLD_Y_INC = 3
ros1Interbotix_xs_msgsHexJoy_WORLD_Y_DEC :: Int8
ros1Interbotix_xs_msgsHexJoy_WORLD_Y_DEC = 4
ros1Interbotix_xs_msgsHexJoy_WORLD_YAW_CCW :: Int8
ros1Interbotix_xs_msgsHexJoy_WORLD_YAW_CCW = 5
ros1Interbotix_xs_msgsHexJoy_WORLD_YAW_CW :: Int8
ros1Interbotix_xs_msgsHexJoy_WORLD_YAW_CW = 6
ros1Interbotix_xs_msgsHexJoy_PLACE_X_INC :: Int8
ros1Interbotix_xs_msgsHexJoy_PLACE_X_INC = 7
ros1Interbotix_xs_msgsHexJoy_PLACE_X_DEC :: Int8
ros1Interbotix_xs_msgsHexJoy_PLACE_X_DEC = 8
ros1Interbotix_xs_msgsHexJoy_PLACE_Y_INC :: Int8
ros1Interbotix_xs_msgsHexJoy_PLACE_Y_INC = 9
ros1Interbotix_xs_msgsHexJoy_PLACE_Y_DEC :: Int8
ros1Interbotix_xs_msgsHexJoy_PLACE_Y_DEC = 10
ros1Interbotix_xs_msgsHexJoy_PLACE_Z_INC :: Int8
ros1Interbotix_xs_msgsHexJoy_PLACE_Z_INC = 11
ros1Interbotix_xs_msgsHexJoy_PLACE_Z_DEC :: Int8
ros1Interbotix_xs_msgsHexJoy_PLACE_Z_DEC = 12
ros1Interbotix_xs_msgsHexJoy_PLACE_ROLL_CCW :: Int8
ros1Interbotix_xs_msgsHexJoy_PLACE_ROLL_CCW = 13
ros1Interbotix_xs_msgsHexJoy_PLACE_ROLL_CW :: Int8
ros1Interbotix_xs_msgsHexJoy_PLACE_ROLL_CW = 14
ros1Interbotix_xs_msgsHexJoy_PLACE_PITCH_UP :: Int8
ros1Interbotix_xs_msgsHexJoy_PLACE_PITCH_UP = 15
ros1Interbotix_xs_msgsHexJoy_PLACE_PITCH_DOWN :: Int8
ros1Interbotix_xs_msgsHexJoy_PLACE_PITCH_DOWN = 16
ros1Interbotix_xs_msgsHexJoy_MOVE_HEXAPOD :: Int8
ros1Interbotix_xs_msgsHexJoy_MOVE_HEXAPOD = 17
ros1Interbotix_xs_msgsHexJoy_MOVE_LEG :: Int8
ros1Interbotix_xs_msgsHexJoy_MOVE_LEG = 18
ros1Interbotix_xs_msgsHexJoy_HOME_POSE :: Int8
ros1Interbotix_xs_msgsHexJoy_HOME_POSE = 19
ros1Interbotix_xs_msgsHexJoy_SLEEP_POSE :: Int8
ros1Interbotix_xs_msgsHexJoy_SLEEP_POSE = 20
ros1Interbotix_xs_msgsHexJoy_GAIT_NEXT :: Int8
ros1Interbotix_xs_msgsHexJoy_GAIT_NEXT = 21
ros1Interbotix_xs_msgsHexJoy_GAIT_PREVIOUS :: Int8
ros1Interbotix_xs_msgsHexJoy_GAIT_PREVIOUS = 22
ros1Interbotix_xs_msgsHexJoy_LEG_NEXT :: Int8
ros1Interbotix_xs_msgsHexJoy_LEG_NEXT = 23
ros1Interbotix_xs_msgsHexJoy_LEG_PREVIOUS :: Int8
ros1Interbotix_xs_msgsHexJoy_LEG_PREVIOUS = 24
ros1Interbotix_xs_msgsHexJoy_WIDEN_STANCE :: Int8
ros1Interbotix_xs_msgsHexJoy_WIDEN_STANCE = 25
ros1Interbotix_xs_msgsHexJoy_NARROW_STANCE :: Int8
ros1Interbotix_xs_msgsHexJoy_NARROW_STANCE = 26
ros1Interbotix_xs_msgsHexJoy_REBOOT_MOTORS :: Int8
ros1Interbotix_xs_msgsHexJoy_REBOOT_MOTORS = 27
ros1Interbotix_xs_msgsHexJoy_SET_HOME_POSE :: Int8
ros1Interbotix_xs_msgsHexJoy_SET_HOME_POSE = 28
ros1Interbotix_xs_msgsHexJoy_SPEED_INC :: Int8
ros1Interbotix_xs_msgsHexJoy_SPEED_INC = 29
ros1Interbotix_xs_msgsHexJoy_SPEED_DEC :: Int8
ros1Interbotix_xs_msgsHexJoy_SPEED_DEC = 30
ros1Interbotix_xs_msgsHexJoy_SPEED_COURSE :: Int8
ros1Interbotix_xs_msgsHexJoy_SPEED_COURSE = 31
ros1Interbotix_xs_msgsHexJoy_SPEED_FINE :: Int8
ros1Interbotix_xs_msgsHexJoy_SPEED_FINE = 32
encodeRos1Interbotix_xs_msgsHexJoy :: Ros1Interbotix_xs_msgsHexJoy -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsHexJoy value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsHexJoy_world_x_cmd value))
  b1 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsHexJoy_world_y_cmd value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsHexJoy_world_yaw_cmd value))
  b3 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsHexJoy_place_x_cmd value))
  b4 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsHexJoy_place_y_cmd value))
  b5 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsHexJoy_place_z_cmd value))
  b6 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsHexJoy_place_roll_cmd value))
  b7 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsHexJoy_place_pitch_cmd value))
  b8 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsHexJoy_pose_cmd value))
  b9 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsHexJoy_move_type_cmd value))
  b10 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsHexJoy_gait_toggle_cmd value))
  b11 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsHexJoy_leg_toggle_cmd value))
  b12 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsHexJoy_stance_cmd value))
  b13 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsHexJoy_reboot_cmd value))
  b14 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsHexJoy_set_home_pose_cmd value))
  b15 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsHexJoy_speed_cmd value))
  b16 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsHexJoy_speed_toggle_cmd value))
  W.bounded 17 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16]
readRos1Interbotix_xs_msgsHexJoy :: W.Decoder Ros1Interbotix_xs_msgsHexJoy
readRos1Interbotix_xs_msgsHexJoy = do
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
  let value = Ros1Interbotix_xs_msgsHexJoy a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16
  case encodeRos1Interbotix_xs_msgsHexJoy value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsHexJoy :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsHexJoy
decodeRos1Interbotix_xs_msgsHexJoy = W.runDecoder 17 readRos1Interbotix_xs_msgsHexJoy
instance Canonical Ros1Interbotix_xs_msgsHexJoy where
  maximumBytes _ = 17
  encodeValue = encodeRos1Interbotix_xs_msgsHexJoy
  readValue = readRos1Interbotix_xs_msgsHexJoy
data Ros1Interbotix_xs_msgsJointGroupCommand = Ros1Interbotix_xs_msgsJointGroupCommand
  {
    -- | \@brief interbotix_xs_msgs/JointGroupCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsJointGroupCommand_name :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/JointGroupCommand.cmd: float32; 0..64 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsJointGroupCommand_cmd :: [Float]
  } deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsJointGroupCommand :: Ros1Interbotix_xs_msgsJointGroupCommand
defaultRos1Interbotix_xs_msgsJointGroupCommand = Ros1Interbotix_xs_msgsJointGroupCommand (T.empty) ([])
ros1Interbotix_xs_msgsJointGroupCommandCodecIdentity :: String
ros1Interbotix_xs_msgsJointGroupCommandCodecIdentity = "UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec"
encodeRos1Interbotix_xs_msgsJointGroupCommand :: Ros1Interbotix_xs_msgsJointGroupCommand -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsJointGroupCommand value = do
  b0 <- W.encodeText 128 True (ros1Interbotix_xs_msgsJointGroupCommand_name value)
  if length (ros1Interbotix_xs_msgsJointGroupCommand_cmd value) > 64 then Left 22 else Right ()
  prefix1 <- W.encodeCount 64 (length (ros1Interbotix_xs_msgsJointGroupCommand_cmd value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Interbotix_xs_msgsJointGroupCommand_cmd value)
  W.bounded 392 [b0, prefix1, b1]
readRos1Interbotix_xs_msgsJointGroupCommand :: W.Decoder Ros1Interbotix_xs_msgsJointGroupCommand
readRos1Interbotix_xs_msgsJointGroupCommand = do
  a0 <- W.text 128 True
  count1 <- W.count 64
  a1 <- replicateM count1 (W.float32)
  let value = Ros1Interbotix_xs_msgsJointGroupCommand a0 a1
  case encodeRos1Interbotix_xs_msgsJointGroupCommand value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsJointGroupCommand :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsJointGroupCommand
decodeRos1Interbotix_xs_msgsJointGroupCommand = W.runDecoder 392 readRos1Interbotix_xs_msgsJointGroupCommand
instance Canonical Ros1Interbotix_xs_msgsJointGroupCommand where
  maximumBytes _ = 392
  encodeValue = encodeRos1Interbotix_xs_msgsJointGroupCommand
  readValue = readRos1Interbotix_xs_msgsJointGroupCommand
data Ros1Interbotix_xs_msgsJointSingleCommand = Ros1Interbotix_xs_msgsJointSingleCommand
  {
    -- | \@brief interbotix_xs_msgs/JointSingleCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsJointSingleCommand_name :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/JointSingleCommand.cmd: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsJointSingleCommand_cmd :: Float
  } deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsJointSingleCommand :: Ros1Interbotix_xs_msgsJointSingleCommand
defaultRos1Interbotix_xs_msgsJointSingleCommand = Ros1Interbotix_xs_msgsJointSingleCommand (T.empty) (0)
ros1Interbotix_xs_msgsJointSingleCommandCodecIdentity :: String
ros1Interbotix_xs_msgsJointSingleCommandCodecIdentity = "UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0"
encodeRos1Interbotix_xs_msgsJointSingleCommand :: Ros1Interbotix_xs_msgsJointSingleCommand -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsJointSingleCommand value = do
  b0 <- W.encodeText 128 True (ros1Interbotix_xs_msgsJointSingleCommand_name value)
  b1 <- W.encodeFloat32 (ros1Interbotix_xs_msgsJointSingleCommand_cmd value)
  W.bounded 136 [b0, b1]
readRos1Interbotix_xs_msgsJointSingleCommand :: W.Decoder Ros1Interbotix_xs_msgsJointSingleCommand
readRos1Interbotix_xs_msgsJointSingleCommand = do
  a0 <- W.text 128 True
  a1 <- W.float32
  let value = Ros1Interbotix_xs_msgsJointSingleCommand a0 a1
  case encodeRos1Interbotix_xs_msgsJointSingleCommand value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsJointSingleCommand :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsJointSingleCommand
decodeRos1Interbotix_xs_msgsJointSingleCommand = W.runDecoder 136 readRos1Interbotix_xs_msgsJointSingleCommand
instance Canonical Ros1Interbotix_xs_msgsJointSingleCommand where
  maximumBytes _ = 136
  encodeValue = encodeRos1Interbotix_xs_msgsJointSingleCommand
  readValue = readRos1Interbotix_xs_msgsJointSingleCommand
data Ros1Interbotix_xs_msgsJointTemps = Ros1Interbotix_xs_msgsJointTemps
  {
    -- | \@brief interbotix_xs_msgs/JointTemps.names: string; 0..64 elements; each string is 0..128 bytes;
    --  strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsJointTemps_names :: [T.Text]
  ,
    -- | \@brief interbotix_xs_msgs/JointTemps.temps: int32; 0..64 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsJointTemps_temps :: [Int32]
  } deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsJointTemps :: Ros1Interbotix_xs_msgsJointTemps
defaultRos1Interbotix_xs_msgsJointTemps = Ros1Interbotix_xs_msgsJointTemps ([]) ([])
ros1Interbotix_xs_msgsJointTempsCodecIdentity :: String
ros1Interbotix_xs_msgsJointTempsCodecIdentity = "UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511"
encodeRos1Interbotix_xs_msgsJointTemps :: Ros1Interbotix_xs_msgsJointTemps -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsJointTemps value = do
  if length (ros1Interbotix_xs_msgsJointTemps_names value) > 64 then Left 22 else Right ()
  prefix0 <- W.encodeCount 64 (length (ros1Interbotix_xs_msgsJointTemps_names value))
  b0 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros1Interbotix_xs_msgsJointTemps_names value)
  if length (ros1Interbotix_xs_msgsJointTemps_temps value) > 64 then Left 22 else Right ()
  prefix1 <- W.encodeCount 64 (length (ros1Interbotix_xs_msgsJointTemps_temps value))
  b1 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros1Interbotix_xs_msgsJointTemps_temps value)
  W.bounded 8712 [prefix0, b0, prefix1, b1]
readRos1Interbotix_xs_msgsJointTemps :: W.Decoder Ros1Interbotix_xs_msgsJointTemps
readRos1Interbotix_xs_msgsJointTemps = do
  count0 <- W.count 64
  a0 <- replicateM count0 (W.text 128 True)
  count1 <- W.count 64
  a1 <- replicateM count1 (fromIntegral <$> W.signed 4)
  let value = Ros1Interbotix_xs_msgsJointTemps a0 a1
  case encodeRos1Interbotix_xs_msgsJointTemps value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsJointTemps :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsJointTemps
decodeRos1Interbotix_xs_msgsJointTemps = W.runDecoder 8712 readRos1Interbotix_xs_msgsJointTemps
instance Canonical Ros1Interbotix_xs_msgsJointTemps where
  maximumBytes _ = 8712
  encodeValue = encodeRos1Interbotix_xs_msgsJointTemps
  readValue = readRos1Interbotix_xs_msgsJointTemps
data Ros1Time = Ros1Time
  {
    -- | \@brief time.sec: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Time; document/platform/trossen/en_US/language/haskell/API.md
    ros1Time_sec :: Word32
  ,
    -- | \@brief time.nsec: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Time; document/platform/trossen/en_US/language/haskell/API.md
    ros1Time_nsec :: Word32
  } deriving (Eq, Show)
defaultRos1Time :: Ros1Time
defaultRos1Time = Ros1Time (0) (0)
ros1TimeCodecIdentity :: String
ros1TimeCodecIdentity = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
encodeRos1Time :: Ros1Time -> Either Word32 B.ByteString
encodeRos1Time value = do
  if (ros1Time_nsec value) >= 1000000000 then Left 22 else Right ()
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Time_sec value))
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros1Time_nsec value))
  W.bounded 8 [b0, b1]
readRos1Time :: W.Decoder Ros1Time
readRos1Time = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- fromIntegral <$> W.unsigned 4
  let value = Ros1Time a0 a1
  case encodeRos1Time value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Time :: B.ByteString -> Either Word32 Ros1Time
decodeRos1Time = W.runDecoder 8 readRos1Time
instance Canonical Ros1Time where
  maximumBytes _ = 8
  encodeValue = encodeRos1Time
  readValue = readRos1Time
data Ros1Std_msgsHeader = Ros1Std_msgsHeader
  {
    -- | \@brief std_msgs/Header.seq: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/haskell/API.md
    ros1Std_msgsHeader_seq :: Word32
  ,
    -- | \@brief std_msgs/Header.stamp: time.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/haskell/API.md
    ros1Std_msgsHeader_stamp :: Ros1Time
  ,
    -- | \@brief std_msgs/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/haskell/API.md
    ros1Std_msgsHeader_frame_id :: T.Text
  } deriving (Eq, Show)
defaultRos1Std_msgsHeader :: Ros1Std_msgsHeader
defaultRos1Std_msgsHeader = Ros1Std_msgsHeader (0) (defaultRos1Time) (T.empty)
ros1Std_msgsHeaderCodecIdentity :: String
ros1Std_msgsHeaderCodecIdentity = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"
encodeRos1Std_msgsHeader :: Ros1Std_msgsHeader -> Either Word32 B.ByteString
encodeRos1Std_msgsHeader value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Std_msgsHeader_seq value))
  b1 <- encodeRos1Time (ros1Std_msgsHeader_stamp value)
  b2 <- W.encodeText 128 True (ros1Std_msgsHeader_frame_id value)
  W.bounded 144 [b0, b1, b2]
readRos1Std_msgsHeader :: W.Decoder Ros1Std_msgsHeader
readRos1Std_msgsHeader = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- readRos1Time
  a2 <- W.text 128 True
  let value = Ros1Std_msgsHeader a0 a1 a2
  case encodeRos1Std_msgsHeader value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Std_msgsHeader :: B.ByteString -> Either Word32 Ros1Std_msgsHeader
decodeRos1Std_msgsHeader = W.runDecoder 144 readRos1Std_msgsHeader
instance Canonical Ros1Std_msgsHeader where
  maximumBytes _ = 144
  encodeValue = encodeRos1Std_msgsHeader
  readValue = readRos1Std_msgsHeader
data Ros1Duration = Ros1Duration
  {
    -- | \@brief duration.sec: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Duration; document/platform/trossen/en_US/language/haskell/API.md
    ros1Duration_sec :: Int32
  ,
    -- | \@brief duration.nsec: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Duration; document/platform/trossen/en_US/language/haskell/API.md
    ros1Duration_nsec :: Int32
  } deriving (Eq, Show)
defaultRos1Duration :: Ros1Duration
defaultRos1Duration = Ros1Duration (0) (0)
ros1DurationCodecIdentity :: String
ros1DurationCodecIdentity = "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8"
encodeRos1Duration :: Ros1Duration -> Either Word32 B.ByteString
encodeRos1Duration value = do
  if (ros1Duration_nsec value) >= 1000000000 || (ros1Duration_nsec value) < 0 then Left 22 else Right ()
  b0 <- W.encodeSigned 4 (fromIntegral (ros1Duration_sec value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros1Duration_nsec value))
  W.bounded 8 [b0, b1]
readRos1Duration :: W.Decoder Ros1Duration
readRos1Duration = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  let value = Ros1Duration a0 a1
  case encodeRos1Duration value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Duration :: B.ByteString -> Either Word32 Ros1Duration
decodeRos1Duration = W.runDecoder 8 readRos1Duration
instance Canonical Ros1Duration where
  maximumBytes _ = 8
  encodeValue = encodeRos1Duration
  readValue = readRos1Duration
data Ros1Trajectory_msgsJointTrajectoryPoint = Ros1Trajectory_msgsJointTrajectoryPoint
  {
    -- | \@brief trajectory_msgs/JointTrajectoryPoint.positions: float64; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/haskell/API.md
    ros1Trajectory_msgsJointTrajectoryPoint_positions :: [Double]
  ,
    -- | \@brief trajectory_msgs/JointTrajectoryPoint.velocities: float64; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/haskell/API.md
    ros1Trajectory_msgsJointTrajectoryPoint_velocities :: [Double]
  ,
    -- | \@brief trajectory_msgs/JointTrajectoryPoint.accelerations: float64; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/haskell/API.md
    ros1Trajectory_msgsJointTrajectoryPoint_accelerations :: [Double]
  ,
    -- | \@brief trajectory_msgs/JointTrajectoryPoint.effort: float64; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/haskell/API.md
    ros1Trajectory_msgsJointTrajectoryPoint_effort :: [Double]
  ,
    -- | \@brief trajectory_msgs/JointTrajectoryPoint.time_from_start: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/haskell/API.md
    ros1Trajectory_msgsJointTrajectoryPoint_time_from_start :: Ros1Duration
  } deriving (Eq, Show)
defaultRos1Trajectory_msgsJointTrajectoryPoint :: Ros1Trajectory_msgsJointTrajectoryPoint
defaultRos1Trajectory_msgsJointTrajectoryPoint = Ros1Trajectory_msgsJointTrajectoryPoint ([]) ([]) ([]) ([]) (defaultRos1Duration)
ros1Trajectory_msgsJointTrajectoryPointCodecIdentity :: String
ros1Trajectory_msgsJointTrajectoryPointCodecIdentity = "UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81"
encodeRos1Trajectory_msgsJointTrajectoryPoint :: Ros1Trajectory_msgsJointTrajectoryPoint -> Either Word32 B.ByteString
encodeRos1Trajectory_msgsJointTrajectoryPoint value = do
  if length (ros1Trajectory_msgsJointTrajectoryPoint_positions value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros1Trajectory_msgsJointTrajectoryPoint_positions value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Trajectory_msgsJointTrajectoryPoint_positions value)
  if length (ros1Trajectory_msgsJointTrajectoryPoint_velocities value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros1Trajectory_msgsJointTrajectoryPoint_velocities value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Trajectory_msgsJointTrajectoryPoint_velocities value)
  if length (ros1Trajectory_msgsJointTrajectoryPoint_accelerations value) > 16 then Left 22 else Right ()
  prefix2 <- W.encodeCount 16 (length (ros1Trajectory_msgsJointTrajectoryPoint_accelerations value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Trajectory_msgsJointTrajectoryPoint_accelerations value)
  if length (ros1Trajectory_msgsJointTrajectoryPoint_effort value) > 16 then Left 22 else Right ()
  prefix3 <- W.encodeCount 16 (length (ros1Trajectory_msgsJointTrajectoryPoint_effort value))
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Trajectory_msgsJointTrajectoryPoint_effort value)
  b4 <- encodeRos1Duration (ros1Trajectory_msgsJointTrajectoryPoint_time_from_start value)
  W.bounded 536 [prefix0, b0, prefix1, b1, prefix2, b2, prefix3, b3, b4]
readRos1Trajectory_msgsJointTrajectoryPoint :: W.Decoder Ros1Trajectory_msgsJointTrajectoryPoint
readRos1Trajectory_msgsJointTrajectoryPoint = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.float64)
  count1 <- W.count 16
  a1 <- replicateM count1 (W.float64)
  count2 <- W.count 16
  a2 <- replicateM count2 (W.float64)
  count3 <- W.count 16
  a3 <- replicateM count3 (W.float64)
  a4 <- readRos1Duration
  let value = Ros1Trajectory_msgsJointTrajectoryPoint a0 a1 a2 a3 a4
  case encodeRos1Trajectory_msgsJointTrajectoryPoint value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Trajectory_msgsJointTrajectoryPoint :: B.ByteString -> Either Word32 Ros1Trajectory_msgsJointTrajectoryPoint
decodeRos1Trajectory_msgsJointTrajectoryPoint = W.runDecoder 536 readRos1Trajectory_msgsJointTrajectoryPoint
instance Canonical Ros1Trajectory_msgsJointTrajectoryPoint where
  maximumBytes _ = 536
  encodeValue = encodeRos1Trajectory_msgsJointTrajectoryPoint
  readValue = readRos1Trajectory_msgsJointTrajectoryPoint
data Ros1Trajectory_msgsJointTrajectory = Ros1Trajectory_msgsJointTrajectory
  {
    -- | \@brief trajectory_msgs/JointTrajectory.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/haskell/API.md
    ros1Trajectory_msgsJointTrajectory_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief trajectory_msgs/JointTrajectory.joint_names: string; 0..16 elements; each string is 0..128
    --  bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/haskell/API.md
    ros1Trajectory_msgsJointTrajectory_joint_names :: [T.Text]
  ,
    -- | \@brief trajectory_msgs/JointTrajectory.points: trajectory_msgs/JointTrajectoryPoint; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/haskell/API.md
    ros1Trajectory_msgsJointTrajectory_points :: [Ros1Trajectory_msgsJointTrajectoryPoint]
  } deriving (Eq, Show)
defaultRos1Trajectory_msgsJointTrajectory :: Ros1Trajectory_msgsJointTrajectory
defaultRos1Trajectory_msgsJointTrajectory = Ros1Trajectory_msgsJointTrajectory (defaultRos1Std_msgsHeader) ([]) ([])
ros1Trajectory_msgsJointTrajectoryCodecIdentity :: String
ros1Trajectory_msgsJointTrajectoryCodecIdentity = "UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9"
encodeRos1Trajectory_msgsJointTrajectory :: Ros1Trajectory_msgsJointTrajectory -> Either Word32 B.ByteString
encodeRos1Trajectory_msgsJointTrajectory value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Trajectory_msgsJointTrajectory_header value)
  if length (ros1Trajectory_msgsJointTrajectory_joint_names value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros1Trajectory_msgsJointTrajectory_joint_names value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros1Trajectory_msgsJointTrajectory_joint_names value)
  if length (ros1Trajectory_msgsJointTrajectory_points value) > 4 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4 (length (ros1Trajectory_msgsJointTrajectory_points value))
  b2 <- B.concat <$> mapM (\e -> encodeRos1Trajectory_msgsJointTrajectoryPoint (e)) (ros1Trajectory_msgsJointTrajectory_points value)
  W.bounded 4408 [b0, prefix1, b1, prefix2, b2]
readRos1Trajectory_msgsJointTrajectory :: W.Decoder Ros1Trajectory_msgsJointTrajectory
readRos1Trajectory_msgsJointTrajectory = do
  a0 <- readRos1Std_msgsHeader
  count1 <- W.count 16
  a1 <- replicateM count1 (W.text 128 True)
  count2 <- W.count 4
  a2 <- replicateM count2 (readRos1Trajectory_msgsJointTrajectoryPoint)
  let value = Ros1Trajectory_msgsJointTrajectory a0 a1 a2
  case encodeRos1Trajectory_msgsJointTrajectory value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Trajectory_msgsJointTrajectory :: B.ByteString -> Either Word32 Ros1Trajectory_msgsJointTrajectory
decodeRos1Trajectory_msgsJointTrajectory = W.runDecoder 4408 readRos1Trajectory_msgsJointTrajectory
instance Canonical Ros1Trajectory_msgsJointTrajectory where
  maximumBytes _ = 4408
  encodeValue = encodeRos1Trajectory_msgsJointTrajectory
  readValue = readRos1Trajectory_msgsJointTrajectory
data Ros1Interbotix_xs_msgsJointTrajectoryCommand = Ros1Interbotix_xs_msgsJointTrajectoryCommand
  {
    -- | \@brief interbotix_xs_msgs/JointTrajectoryCommand.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsJointTrajectoryCommand_cmd_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/JointTrajectoryCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsJointTrajectoryCommand_name :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/JointTrajectoryCommand.traj: trajectory_msgs/JointTrajectory.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsJointTrajectoryCommand_traj :: Ros1Trajectory_msgsJointTrajectory
  } deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsJointTrajectoryCommand :: Ros1Interbotix_xs_msgsJointTrajectoryCommand
defaultRos1Interbotix_xs_msgsJointTrajectoryCommand =
    Ros1Interbotix_xs_msgsJointTrajectoryCommand
    (T.empty)
    (T.empty)
    (defaultRos1Trajectory_msgsJointTrajectory)
ros1Interbotix_xs_msgsJointTrajectoryCommandCodecIdentity :: String
ros1Interbotix_xs_msgsJointTrajectoryCommandCodecIdentity = "UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7"
encodeRos1Interbotix_xs_msgsJointTrajectoryCommand :: Ros1Interbotix_xs_msgsJointTrajectoryCommand -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsJointTrajectoryCommand value = do
  b0 <- W.encodeText 128 True (ros1Interbotix_xs_msgsJointTrajectoryCommand_cmd_type value)
  b1 <- W.encodeText 128 True (ros1Interbotix_xs_msgsJointTrajectoryCommand_name value)
  b2 <- encodeRos1Trajectory_msgsJointTrajectory (ros1Interbotix_xs_msgsJointTrajectoryCommand_traj value)
  W.bounded 4672 [b0, b1, b2]
readRos1Interbotix_xs_msgsJointTrajectoryCommand :: W.Decoder Ros1Interbotix_xs_msgsJointTrajectoryCommand
readRos1Interbotix_xs_msgsJointTrajectoryCommand = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- readRos1Trajectory_msgsJointTrajectory
  let value = Ros1Interbotix_xs_msgsJointTrajectoryCommand a0 a1 a2
  case encodeRos1Interbotix_xs_msgsJointTrajectoryCommand value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsJointTrajectoryCommand :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsJointTrajectoryCommand
decodeRos1Interbotix_xs_msgsJointTrajectoryCommand = W.runDecoder 4672 readRos1Interbotix_xs_msgsJointTrajectoryCommand
instance Canonical Ros1Interbotix_xs_msgsJointTrajectoryCommand where
  maximumBytes _ = 4672
  encodeValue = encodeRos1Interbotix_xs_msgsJointTrajectoryCommand
  readValue = readRos1Interbotix_xs_msgsJointTrajectoryCommand
data Ros1Interbotix_xs_msgsLocobotJoy = Ros1Interbotix_xs_msgsLocobotJoy
  {
    -- | \@brief interbotix_xs_msgs/LocobotJoy.base_x_cmd: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsLocobotJoy_base_x_cmd :: Double
  ,
    -- | \@brief interbotix_xs_msgs/LocobotJoy.base_theta_cmd: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsLocobotJoy_base_theta_cmd :: Double
  ,
    -- | \@brief interbotix_xs_msgs/LocobotJoy.base_reset_odom_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsLocobotJoy_base_reset_odom_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/LocobotJoy.pan_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsLocobotJoy_pan_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/LocobotJoy.tilt_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsLocobotJoy_tilt_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/LocobotJoy.ee_x_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsLocobotJoy_ee_x_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/LocobotJoy.ee_y_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsLocobotJoy_ee_y_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/LocobotJoy.ee_z_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsLocobotJoy_ee_z_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/LocobotJoy.ee_roll_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsLocobotJoy_ee_roll_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/LocobotJoy.ee_pitch_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsLocobotJoy_ee_pitch_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/LocobotJoy.waist_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsLocobotJoy_waist_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/LocobotJoy.gripper_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsLocobotJoy_gripper_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/LocobotJoy.pose_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsLocobotJoy_pose_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/LocobotJoy.speed_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsLocobotJoy_speed_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/LocobotJoy.speed_toggle_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsLocobotJoy_speed_toggle_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/LocobotJoy.gripper_pwm_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsLocobotJoy_gripper_pwm_cmd :: Int8
  } deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsLocobotJoy :: Ros1Interbotix_xs_msgsLocobotJoy
defaultRos1Interbotix_xs_msgsLocobotJoy = Ros1Interbotix_xs_msgsLocobotJoy (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (0)
ros1Interbotix_xs_msgsLocobotJoyCodecIdentity :: String
ros1Interbotix_xs_msgsLocobotJoyCodecIdentity = "UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613"
ros1Interbotix_xs_msgsLocobotJoy_RESET_ODOM :: Int8
ros1Interbotix_xs_msgsLocobotJoy_RESET_ODOM = 1
ros1Interbotix_xs_msgsLocobotJoy_PAN_CCW :: Int8
ros1Interbotix_xs_msgsLocobotJoy_PAN_CCW = 2
ros1Interbotix_xs_msgsLocobotJoy_PAN_CW :: Int8
ros1Interbotix_xs_msgsLocobotJoy_PAN_CW = 3
ros1Interbotix_xs_msgsLocobotJoy_TILT_UP :: Int8
ros1Interbotix_xs_msgsLocobotJoy_TILT_UP = 4
ros1Interbotix_xs_msgsLocobotJoy_TILT_DOWN :: Int8
ros1Interbotix_xs_msgsLocobotJoy_TILT_DOWN = 5
ros1Interbotix_xs_msgsLocobotJoy_PAN_TILT_HOME :: Int8
ros1Interbotix_xs_msgsLocobotJoy_PAN_TILT_HOME = 6
ros1Interbotix_xs_msgsLocobotJoy_EE_X_INC :: Int8
ros1Interbotix_xs_msgsLocobotJoy_EE_X_INC = 7
ros1Interbotix_xs_msgsLocobotJoy_EE_X_DEC :: Int8
ros1Interbotix_xs_msgsLocobotJoy_EE_X_DEC = 8
ros1Interbotix_xs_msgsLocobotJoy_EE_Y_INC :: Int8
ros1Interbotix_xs_msgsLocobotJoy_EE_Y_INC = 9
ros1Interbotix_xs_msgsLocobotJoy_EE_Y_DEC :: Int8
ros1Interbotix_xs_msgsLocobotJoy_EE_Y_DEC = 10
ros1Interbotix_xs_msgsLocobotJoy_EE_Z_INC :: Int8
ros1Interbotix_xs_msgsLocobotJoy_EE_Z_INC = 11
ros1Interbotix_xs_msgsLocobotJoy_EE_Z_DEC :: Int8
ros1Interbotix_xs_msgsLocobotJoy_EE_Z_DEC = 12
ros1Interbotix_xs_msgsLocobotJoy_EE_ROLL_CCW :: Int8
ros1Interbotix_xs_msgsLocobotJoy_EE_ROLL_CCW = 13
ros1Interbotix_xs_msgsLocobotJoy_EE_ROLL_CW :: Int8
ros1Interbotix_xs_msgsLocobotJoy_EE_ROLL_CW = 14
ros1Interbotix_xs_msgsLocobotJoy_EE_PITCH_UP :: Int8
ros1Interbotix_xs_msgsLocobotJoy_EE_PITCH_UP = 15
ros1Interbotix_xs_msgsLocobotJoy_EE_PITCH_DOWN :: Int8
ros1Interbotix_xs_msgsLocobotJoy_EE_PITCH_DOWN = 16
ros1Interbotix_xs_msgsLocobotJoy_WAIST_CCW :: Int8
ros1Interbotix_xs_msgsLocobotJoy_WAIST_CCW = 17
ros1Interbotix_xs_msgsLocobotJoy_WAIST_CW :: Int8
ros1Interbotix_xs_msgsLocobotJoy_WAIST_CW = 18
ros1Interbotix_xs_msgsLocobotJoy_GRIPPER_OPEN :: Int8
ros1Interbotix_xs_msgsLocobotJoy_GRIPPER_OPEN = 19
ros1Interbotix_xs_msgsLocobotJoy_GRIPPER_CLOSE :: Int8
ros1Interbotix_xs_msgsLocobotJoy_GRIPPER_CLOSE = 20
ros1Interbotix_xs_msgsLocobotJoy_HOME_POSE :: Int8
ros1Interbotix_xs_msgsLocobotJoy_HOME_POSE = 21
ros1Interbotix_xs_msgsLocobotJoy_SLEEP_POSE :: Int8
ros1Interbotix_xs_msgsLocobotJoy_SLEEP_POSE = 22
ros1Interbotix_xs_msgsLocobotJoy_SPEED_INC :: Int8
ros1Interbotix_xs_msgsLocobotJoy_SPEED_INC = 23
ros1Interbotix_xs_msgsLocobotJoy_SPEED_DEC :: Int8
ros1Interbotix_xs_msgsLocobotJoy_SPEED_DEC = 24
ros1Interbotix_xs_msgsLocobotJoy_SPEED_COURSE :: Int8
ros1Interbotix_xs_msgsLocobotJoy_SPEED_COURSE = 25
ros1Interbotix_xs_msgsLocobotJoy_SPEED_FINE :: Int8
ros1Interbotix_xs_msgsLocobotJoy_SPEED_FINE = 26
ros1Interbotix_xs_msgsLocobotJoy_GRIPPER_PWM_INC :: Int8
ros1Interbotix_xs_msgsLocobotJoy_GRIPPER_PWM_INC = 27
ros1Interbotix_xs_msgsLocobotJoy_GRIPPER_PWM_DEC :: Int8
ros1Interbotix_xs_msgsLocobotJoy_GRIPPER_PWM_DEC = 28
encodeRos1Interbotix_xs_msgsLocobotJoy :: Ros1Interbotix_xs_msgsLocobotJoy -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsLocobotJoy value = do
  b0 <- W.encodeFloat64 (ros1Interbotix_xs_msgsLocobotJoy_base_x_cmd value)
  b1 <- W.encodeFloat64 (ros1Interbotix_xs_msgsLocobotJoy_base_theta_cmd value)
  b2 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsLocobotJoy_base_reset_odom_cmd value))
  b3 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsLocobotJoy_pan_cmd value))
  b4 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsLocobotJoy_tilt_cmd value))
  b5 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsLocobotJoy_ee_x_cmd value))
  b6 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsLocobotJoy_ee_y_cmd value))
  b7 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsLocobotJoy_ee_z_cmd value))
  b8 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsLocobotJoy_ee_roll_cmd value))
  b9 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsLocobotJoy_ee_pitch_cmd value))
  b10 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsLocobotJoy_waist_cmd value))
  b11 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsLocobotJoy_gripper_cmd value))
  b12 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsLocobotJoy_pose_cmd value))
  b13 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsLocobotJoy_speed_cmd value))
  b14 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsLocobotJoy_speed_toggle_cmd value))
  b15 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsLocobotJoy_gripper_pwm_cmd value))
  W.bounded 30 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15]
readRos1Interbotix_xs_msgsLocobotJoy :: W.Decoder Ros1Interbotix_xs_msgsLocobotJoy
readRos1Interbotix_xs_msgsLocobotJoy = do
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
  let value = Ros1Interbotix_xs_msgsLocobotJoy a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15
  case encodeRos1Interbotix_xs_msgsLocobotJoy value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsLocobotJoy :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsLocobotJoy
decodeRos1Interbotix_xs_msgsLocobotJoy = W.runDecoder 30 readRos1Interbotix_xs_msgsLocobotJoy
instance Canonical Ros1Interbotix_xs_msgsLocobotJoy where
  maximumBytes _ = 30
  encodeValue = encodeRos1Interbotix_xs_msgsLocobotJoy
  readValue = readRos1Interbotix_xs_msgsLocobotJoy
data Ros1Interbotix_xs_msgsMotorGainsRequest = Ros1Interbotix_xs_msgsMotorGainsRequest
  {
    -- | \@brief interbotix_xs_msgs/MotorGainsRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsMotorGainsRequest_cmd_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/MotorGainsRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsMotorGainsRequest_name :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/MotorGainsRequest.kp_pos: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsMotorGainsRequest_kp_pos :: Int32
  ,
    -- | \@brief interbotix_xs_msgs/MotorGainsRequest.ki_pos: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsMotorGainsRequest_ki_pos :: Int32
  ,
    -- | \@brief interbotix_xs_msgs/MotorGainsRequest.kd_pos: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsMotorGainsRequest_kd_pos :: Int32
  ,
    -- | \@brief interbotix_xs_msgs/MotorGainsRequest.k1: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsMotorGainsRequest_k1 :: Int32
  ,
    -- | \@brief interbotix_xs_msgs/MotorGainsRequest.k2: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsMotorGainsRequest_k2 :: Int32
  ,
    -- | \@brief interbotix_xs_msgs/MotorGainsRequest.kp_vel: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsMotorGainsRequest_kp_vel :: Int32
  ,
    -- | \@brief interbotix_xs_msgs/MotorGainsRequest.ki_vel: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsMotorGainsRequest_ki_vel :: Int32
  } deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsMotorGainsRequest :: Ros1Interbotix_xs_msgsMotorGainsRequest
defaultRos1Interbotix_xs_msgsMotorGainsRequest = Ros1Interbotix_xs_msgsMotorGainsRequest (T.empty) (T.empty) (0) (0) (0) (0) (0) (0) (0)
ros1Interbotix_xs_msgsMotorGainsRequestCodecIdentity :: String
ros1Interbotix_xs_msgsMotorGainsRequestCodecIdentity = "UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009"
encodeRos1Interbotix_xs_msgsMotorGainsRequest :: Ros1Interbotix_xs_msgsMotorGainsRequest -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsMotorGainsRequest value = do
  b0 <- W.encodeText 128 True (ros1Interbotix_xs_msgsMotorGainsRequest_cmd_type value)
  b1 <- W.encodeText 128 True (ros1Interbotix_xs_msgsMotorGainsRequest_name value)
  b2 <- W.encodeSigned 4 (fromIntegral (ros1Interbotix_xs_msgsMotorGainsRequest_kp_pos value))
  b3 <- W.encodeSigned 4 (fromIntegral (ros1Interbotix_xs_msgsMotorGainsRequest_ki_pos value))
  b4 <- W.encodeSigned 4 (fromIntegral (ros1Interbotix_xs_msgsMotorGainsRequest_kd_pos value))
  b5 <- W.encodeSigned 4 (fromIntegral (ros1Interbotix_xs_msgsMotorGainsRequest_k1 value))
  b6 <- W.encodeSigned 4 (fromIntegral (ros1Interbotix_xs_msgsMotorGainsRequest_k2 value))
  b7 <- W.encodeSigned 4 (fromIntegral (ros1Interbotix_xs_msgsMotorGainsRequest_kp_vel value))
  b8 <- W.encodeSigned 4 (fromIntegral (ros1Interbotix_xs_msgsMotorGainsRequest_ki_vel value))
  W.bounded 292 [b0, b1, b2, b3, b4, b5, b6, b7, b8]
readRos1Interbotix_xs_msgsMotorGainsRequest :: W.Decoder Ros1Interbotix_xs_msgsMotorGainsRequest
readRos1Interbotix_xs_msgsMotorGainsRequest = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- fromIntegral <$> W.signed 4
  a3 <- fromIntegral <$> W.signed 4
  a4 <- fromIntegral <$> W.signed 4
  a5 <- fromIntegral <$> W.signed 4
  a6 <- fromIntegral <$> W.signed 4
  a7 <- fromIntegral <$> W.signed 4
  a8 <- fromIntegral <$> W.signed 4
  let value = Ros1Interbotix_xs_msgsMotorGainsRequest a0 a1 a2 a3 a4 a5 a6 a7 a8
  case encodeRos1Interbotix_xs_msgsMotorGainsRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsMotorGainsRequest :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsMotorGainsRequest
decodeRos1Interbotix_xs_msgsMotorGainsRequest = W.runDecoder 292 readRos1Interbotix_xs_msgsMotorGainsRequest
instance Canonical Ros1Interbotix_xs_msgsMotorGainsRequest where
  maximumBytes _ = 292
  encodeValue = encodeRos1Interbotix_xs_msgsMotorGainsRequest
  readValue = readRos1Interbotix_xs_msgsMotorGainsRequest
data Ros1Interbotix_xs_msgsMotorGainsResponse = Ros1Interbotix_xs_msgsMotorGainsResponse deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsMotorGainsResponse :: Ros1Interbotix_xs_msgsMotorGainsResponse
defaultRos1Interbotix_xs_msgsMotorGainsResponse = Ros1Interbotix_xs_msgsMotorGainsResponse 
ros1Interbotix_xs_msgsMotorGainsResponseCodecIdentity :: String
ros1Interbotix_xs_msgsMotorGainsResponseCodecIdentity = "UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89"
encodeRos1Interbotix_xs_msgsMotorGainsResponse :: Ros1Interbotix_xs_msgsMotorGainsResponse -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsMotorGainsResponse value = do
  W.bounded 0 []
readRos1Interbotix_xs_msgsMotorGainsResponse :: W.Decoder Ros1Interbotix_xs_msgsMotorGainsResponse
readRos1Interbotix_xs_msgsMotorGainsResponse = do
  let value = Ros1Interbotix_xs_msgsMotorGainsResponse 
  case encodeRos1Interbotix_xs_msgsMotorGainsResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsMotorGainsResponse :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsMotorGainsResponse
decodeRos1Interbotix_xs_msgsMotorGainsResponse = W.runDecoder 0 readRos1Interbotix_xs_msgsMotorGainsResponse
instance Canonical Ros1Interbotix_xs_msgsMotorGainsResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Interbotix_xs_msgsMotorGainsResponse
  readValue = readRos1Interbotix_xs_msgsMotorGainsResponse
data Ros1Interbotix_xs_msgsOperatingModesRequest = Ros1Interbotix_xs_msgsOperatingModesRequest
  {
    -- | \@brief interbotix_xs_msgs/OperatingModesRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsOperatingModesRequest_cmd_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/OperatingModesRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsOperatingModesRequest_name :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/OperatingModesRequest.mode: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsOperatingModesRequest_mode :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/OperatingModesRequest.profile_type: string; each string is 0..128 bytes;
    --  strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsOperatingModesRequest_profile_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/OperatingModesRequest.profile_velocity: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsOperatingModesRequest_profile_velocity :: Int32
  ,
    -- | \@brief interbotix_xs_msgs/OperatingModesRequest.profile_acceleration: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsOperatingModesRequest_profile_acceleration :: Int32
  } deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsOperatingModesRequest :: Ros1Interbotix_xs_msgsOperatingModesRequest
defaultRos1Interbotix_xs_msgsOperatingModesRequest = Ros1Interbotix_xs_msgsOperatingModesRequest (T.empty) (T.empty) (T.empty) (T.empty) (0) (0)
ros1Interbotix_xs_msgsOperatingModesRequestCodecIdentity :: String
ros1Interbotix_xs_msgsOperatingModesRequestCodecIdentity = "UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3"
encodeRos1Interbotix_xs_msgsOperatingModesRequest :: Ros1Interbotix_xs_msgsOperatingModesRequest -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsOperatingModesRequest value = do
  b0 <- W.encodeText 128 True (ros1Interbotix_xs_msgsOperatingModesRequest_cmd_type value)
  b1 <- W.encodeText 128 True (ros1Interbotix_xs_msgsOperatingModesRequest_name value)
  b2 <- W.encodeText 128 True (ros1Interbotix_xs_msgsOperatingModesRequest_mode value)
  b3 <- W.encodeText 128 True (ros1Interbotix_xs_msgsOperatingModesRequest_profile_type value)
  b4 <- W.encodeSigned 4 (fromIntegral (ros1Interbotix_xs_msgsOperatingModesRequest_profile_velocity value))
  b5 <- W.encodeSigned 4 (fromIntegral (ros1Interbotix_xs_msgsOperatingModesRequest_profile_acceleration value))
  W.bounded 536 [b0, b1, b2, b3, b4, b5]
readRos1Interbotix_xs_msgsOperatingModesRequest :: W.Decoder Ros1Interbotix_xs_msgsOperatingModesRequest
readRos1Interbotix_xs_msgsOperatingModesRequest = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  a3 <- W.text 128 True
  a4 <- fromIntegral <$> W.signed 4
  a5 <- fromIntegral <$> W.signed 4
  let value = Ros1Interbotix_xs_msgsOperatingModesRequest a0 a1 a2 a3 a4 a5
  case encodeRos1Interbotix_xs_msgsOperatingModesRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsOperatingModesRequest :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsOperatingModesRequest
decodeRos1Interbotix_xs_msgsOperatingModesRequest = W.runDecoder 536 readRos1Interbotix_xs_msgsOperatingModesRequest
instance Canonical Ros1Interbotix_xs_msgsOperatingModesRequest where
  maximumBytes _ = 536
  encodeValue = encodeRos1Interbotix_xs_msgsOperatingModesRequest
  readValue = readRos1Interbotix_xs_msgsOperatingModesRequest
data Ros1Interbotix_xs_msgsOperatingModesResponse = Ros1Interbotix_xs_msgsOperatingModesResponse deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsOperatingModesResponse :: Ros1Interbotix_xs_msgsOperatingModesResponse
defaultRos1Interbotix_xs_msgsOperatingModesResponse = Ros1Interbotix_xs_msgsOperatingModesResponse 
ros1Interbotix_xs_msgsOperatingModesResponseCodecIdentity :: String
ros1Interbotix_xs_msgsOperatingModesResponseCodecIdentity = "UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e"
encodeRos1Interbotix_xs_msgsOperatingModesResponse :: Ros1Interbotix_xs_msgsOperatingModesResponse -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsOperatingModesResponse value = do
  W.bounded 0 []
readRos1Interbotix_xs_msgsOperatingModesResponse :: W.Decoder Ros1Interbotix_xs_msgsOperatingModesResponse
readRos1Interbotix_xs_msgsOperatingModesResponse = do
  let value = Ros1Interbotix_xs_msgsOperatingModesResponse 
  case encodeRos1Interbotix_xs_msgsOperatingModesResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsOperatingModesResponse :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsOperatingModesResponse
decodeRos1Interbotix_xs_msgsOperatingModesResponse = W.runDecoder 0 readRos1Interbotix_xs_msgsOperatingModesResponse
instance Canonical Ros1Interbotix_xs_msgsOperatingModesResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Interbotix_xs_msgsOperatingModesResponse
  readValue = readRos1Interbotix_xs_msgsOperatingModesResponse
data Ros1Interbotix_xs_msgsRebootRequest = Ros1Interbotix_xs_msgsRebootRequest
  {
    -- | \@brief interbotix_xs_msgs/RebootRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRebootRequest_cmd_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/RebootRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRebootRequest_name :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/RebootRequest.enable: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRebootRequest_enable :: Bool
  ,
    -- | \@brief interbotix_xs_msgs/RebootRequest.smart_reboot: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRebootRequest_smart_reboot :: Bool
  } deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsRebootRequest :: Ros1Interbotix_xs_msgsRebootRequest
defaultRos1Interbotix_xs_msgsRebootRequest = Ros1Interbotix_xs_msgsRebootRequest (T.empty) (T.empty) (False) (False)
ros1Interbotix_xs_msgsRebootRequestCodecIdentity :: String
ros1Interbotix_xs_msgsRebootRequestCodecIdentity = "UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a"
encodeRos1Interbotix_xs_msgsRebootRequest :: Ros1Interbotix_xs_msgsRebootRequest -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsRebootRequest value = do
  b0 <- W.encodeText 128 True (ros1Interbotix_xs_msgsRebootRequest_cmd_type value)
  b1 <- W.encodeText 128 True (ros1Interbotix_xs_msgsRebootRequest_name value)
  b2 <- W.encodeBool (ros1Interbotix_xs_msgsRebootRequest_enable value)
  b3 <- W.encodeBool (ros1Interbotix_xs_msgsRebootRequest_smart_reboot value)
  W.bounded 266 [b0, b1, b2, b3]
readRos1Interbotix_xs_msgsRebootRequest :: W.Decoder Ros1Interbotix_xs_msgsRebootRequest
readRos1Interbotix_xs_msgsRebootRequest = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- W.boolean
  a3 <- W.boolean
  let value = Ros1Interbotix_xs_msgsRebootRequest a0 a1 a2 a3
  case encodeRos1Interbotix_xs_msgsRebootRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsRebootRequest :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsRebootRequest
decodeRos1Interbotix_xs_msgsRebootRequest = W.runDecoder 266 readRos1Interbotix_xs_msgsRebootRequest
instance Canonical Ros1Interbotix_xs_msgsRebootRequest where
  maximumBytes _ = 266
  encodeValue = encodeRos1Interbotix_xs_msgsRebootRequest
  readValue = readRos1Interbotix_xs_msgsRebootRequest
data Ros1Interbotix_xs_msgsRebootResponse = Ros1Interbotix_xs_msgsRebootResponse deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsRebootResponse :: Ros1Interbotix_xs_msgsRebootResponse
defaultRos1Interbotix_xs_msgsRebootResponse = Ros1Interbotix_xs_msgsRebootResponse 
ros1Interbotix_xs_msgsRebootResponseCodecIdentity :: String
ros1Interbotix_xs_msgsRebootResponseCodecIdentity = "UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4"
encodeRos1Interbotix_xs_msgsRebootResponse :: Ros1Interbotix_xs_msgsRebootResponse -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsRebootResponse value = do
  W.bounded 0 []
readRos1Interbotix_xs_msgsRebootResponse :: W.Decoder Ros1Interbotix_xs_msgsRebootResponse
readRos1Interbotix_xs_msgsRebootResponse = do
  let value = Ros1Interbotix_xs_msgsRebootResponse 
  case encodeRos1Interbotix_xs_msgsRebootResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsRebootResponse :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsRebootResponse
decodeRos1Interbotix_xs_msgsRebootResponse = W.runDecoder 0 readRos1Interbotix_xs_msgsRebootResponse
instance Canonical Ros1Interbotix_xs_msgsRebootResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Interbotix_xs_msgsRebootResponse
  readValue = readRos1Interbotix_xs_msgsRebootResponse
data Ros1Interbotix_xs_msgsRegisterValuesRequest = Ros1Interbotix_xs_msgsRegisterValuesRequest
  {
    -- | \@brief interbotix_xs_msgs/RegisterValuesRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRegisterValuesRequest_cmd_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/RegisterValuesRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRegisterValuesRequest_name :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/RegisterValuesRequest.reg: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRegisterValuesRequest_reg :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/RegisterValuesRequest.value: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRegisterValuesRequest_value :: Int32
  } deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsRegisterValuesRequest :: Ros1Interbotix_xs_msgsRegisterValuesRequest
defaultRos1Interbotix_xs_msgsRegisterValuesRequest = Ros1Interbotix_xs_msgsRegisterValuesRequest (T.empty) (T.empty) (T.empty) (0)
ros1Interbotix_xs_msgsRegisterValuesRequestCodecIdentity :: String
ros1Interbotix_xs_msgsRegisterValuesRequestCodecIdentity = "UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a"
encodeRos1Interbotix_xs_msgsRegisterValuesRequest :: Ros1Interbotix_xs_msgsRegisterValuesRequest -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsRegisterValuesRequest value = do
  b0 <- W.encodeText 128 True (ros1Interbotix_xs_msgsRegisterValuesRequest_cmd_type value)
  b1 <- W.encodeText 128 True (ros1Interbotix_xs_msgsRegisterValuesRequest_name value)
  b2 <- W.encodeText 128 True (ros1Interbotix_xs_msgsRegisterValuesRequest_reg value)
  b3 <- W.encodeSigned 4 (fromIntegral (ros1Interbotix_xs_msgsRegisterValuesRequest_value value))
  W.bounded 400 [b0, b1, b2, b3]
readRos1Interbotix_xs_msgsRegisterValuesRequest :: W.Decoder Ros1Interbotix_xs_msgsRegisterValuesRequest
readRos1Interbotix_xs_msgsRegisterValuesRequest = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  a3 <- fromIntegral <$> W.signed 4
  let value = Ros1Interbotix_xs_msgsRegisterValuesRequest a0 a1 a2 a3
  case encodeRos1Interbotix_xs_msgsRegisterValuesRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsRegisterValuesRequest :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsRegisterValuesRequest
decodeRos1Interbotix_xs_msgsRegisterValuesRequest = W.runDecoder 400 readRos1Interbotix_xs_msgsRegisterValuesRequest
instance Canonical Ros1Interbotix_xs_msgsRegisterValuesRequest where
  maximumBytes _ = 400
  encodeValue = encodeRos1Interbotix_xs_msgsRegisterValuesRequest
  readValue = readRos1Interbotix_xs_msgsRegisterValuesRequest
data Ros1Interbotix_xs_msgsRegisterValuesResponse = Ros1Interbotix_xs_msgsRegisterValuesResponse
  {
    -- | \@brief interbotix_xs_msgs/RegisterValuesResponse.values: int32; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRegisterValuesResponse_values :: [Int32]
  } deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsRegisterValuesResponse :: Ros1Interbotix_xs_msgsRegisterValuesResponse
defaultRos1Interbotix_xs_msgsRegisterValuesResponse = Ros1Interbotix_xs_msgsRegisterValuesResponse ([])
ros1Interbotix_xs_msgsRegisterValuesResponseCodecIdentity :: String
ros1Interbotix_xs_msgsRegisterValuesResponseCodecIdentity = "UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659"
encodeRos1Interbotix_xs_msgsRegisterValuesResponse :: Ros1Interbotix_xs_msgsRegisterValuesResponse -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsRegisterValuesResponse value = do
  if length (ros1Interbotix_xs_msgsRegisterValuesResponse_values value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros1Interbotix_xs_msgsRegisterValuesResponse_values value))
  b0 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros1Interbotix_xs_msgsRegisterValuesResponse_values value)
  W.bounded 68 [prefix0, b0]
readRos1Interbotix_xs_msgsRegisterValuesResponse :: W.Decoder Ros1Interbotix_xs_msgsRegisterValuesResponse
readRos1Interbotix_xs_msgsRegisterValuesResponse = do
  count0 <- W.count 16
  a0 <- replicateM count0 (fromIntegral <$> W.signed 4)
  let value = Ros1Interbotix_xs_msgsRegisterValuesResponse a0
  case encodeRos1Interbotix_xs_msgsRegisterValuesResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsRegisterValuesResponse :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsRegisterValuesResponse
decodeRos1Interbotix_xs_msgsRegisterValuesResponse = W.runDecoder 68 readRos1Interbotix_xs_msgsRegisterValuesResponse
instance Canonical Ros1Interbotix_xs_msgsRegisterValuesResponse where
  maximumBytes _ = 68
  encodeValue = encodeRos1Interbotix_xs_msgsRegisterValuesResponse
  readValue = readRos1Interbotix_xs_msgsRegisterValuesResponse
data Ros1Interbotix_xs_msgsRobotInfoRequest = Ros1Interbotix_xs_msgsRobotInfoRequest
  {
    -- | \@brief interbotix_xs_msgs/RobotInfoRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRobotInfoRequest_cmd_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/RobotInfoRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRobotInfoRequest_name :: T.Text
  } deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsRobotInfoRequest :: Ros1Interbotix_xs_msgsRobotInfoRequest
defaultRos1Interbotix_xs_msgsRobotInfoRequest = Ros1Interbotix_xs_msgsRobotInfoRequest (T.empty) (T.empty)
ros1Interbotix_xs_msgsRobotInfoRequestCodecIdentity :: String
ros1Interbotix_xs_msgsRobotInfoRequestCodecIdentity = "UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176"
encodeRos1Interbotix_xs_msgsRobotInfoRequest :: Ros1Interbotix_xs_msgsRobotInfoRequest -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsRobotInfoRequest value = do
  b0 <- W.encodeText 128 True (ros1Interbotix_xs_msgsRobotInfoRequest_cmd_type value)
  b1 <- W.encodeText 128 True (ros1Interbotix_xs_msgsRobotInfoRequest_name value)
  W.bounded 264 [b0, b1]
readRos1Interbotix_xs_msgsRobotInfoRequest :: W.Decoder Ros1Interbotix_xs_msgsRobotInfoRequest
readRos1Interbotix_xs_msgsRobotInfoRequest = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  let value = Ros1Interbotix_xs_msgsRobotInfoRequest a0 a1
  case encodeRos1Interbotix_xs_msgsRobotInfoRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsRobotInfoRequest :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsRobotInfoRequest
decodeRos1Interbotix_xs_msgsRobotInfoRequest = W.runDecoder 264 readRos1Interbotix_xs_msgsRobotInfoRequest
instance Canonical Ros1Interbotix_xs_msgsRobotInfoRequest where
  maximumBytes _ = 264
  encodeValue = encodeRos1Interbotix_xs_msgsRobotInfoRequest
  readValue = readRos1Interbotix_xs_msgsRobotInfoRequest
data Ros1Interbotix_xs_msgsRobotInfoResponse = Ros1Interbotix_xs_msgsRobotInfoResponse
  {
    -- | \@brief interbotix_xs_msgs/RobotInfoResponse.mode: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRobotInfoResponse_mode :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/RobotInfoResponse.profile_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRobotInfoResponse_profile_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/RobotInfoResponse.joint_names: string; 0..64 elements; each string is
    --  0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRobotInfoResponse_joint_names :: [T.Text]
  ,
    -- | \@brief interbotix_xs_msgs/RobotInfoResponse.joint_ids: int16; 0..64 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRobotInfoResponse_joint_ids :: [Int16]
  ,
    -- | \@brief interbotix_xs_msgs/RobotInfoResponse.joint_lower_limits: float32; 0..64 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRobotInfoResponse_joint_lower_limits :: [Float]
  ,
    -- | \@brief interbotix_xs_msgs/RobotInfoResponse.joint_upper_limits: float32; 0..64 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRobotInfoResponse_joint_upper_limits :: [Float]
  ,
    -- | \@brief interbotix_xs_msgs/RobotInfoResponse.joint_velocity_limits: float32; 0..64 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRobotInfoResponse_joint_velocity_limits :: [Float]
  ,
    -- | \@brief interbotix_xs_msgs/RobotInfoResponse.joint_sleep_positions: float32; 0..64 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRobotInfoResponse_joint_sleep_positions :: [Float]
  ,
    -- | \@brief interbotix_xs_msgs/RobotInfoResponse.joint_state_indices: int16; 0..64 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRobotInfoResponse_joint_state_indices :: [Int16]
  ,
    -- | \@brief interbotix_xs_msgs/RobotInfoResponse.num_joints: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRobotInfoResponse_num_joints :: Int16
  ,
    -- | \@brief interbotix_xs_msgs/RobotInfoResponse.name: string; 0..64 elements; each string is 0..128
    --  bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsRobotInfoResponse_name :: [T.Text]
  } deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsRobotInfoResponse :: Ros1Interbotix_xs_msgsRobotInfoResponse
defaultRos1Interbotix_xs_msgsRobotInfoResponse = Ros1Interbotix_xs_msgsRobotInfoResponse (T.empty) (T.empty) ([]) ([]) ([]) ([]) ([]) ([]) ([]) (0) ([])
ros1Interbotix_xs_msgsRobotInfoResponseCodecIdentity :: String
ros1Interbotix_xs_msgsRobotInfoResponseCodecIdentity = "UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d"
encodeRos1Interbotix_xs_msgsRobotInfoResponse :: Ros1Interbotix_xs_msgsRobotInfoResponse -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsRobotInfoResponse value = do
  b0 <- W.encodeText 128 True (ros1Interbotix_xs_msgsRobotInfoResponse_mode value)
  b1 <- W.encodeText 128 True (ros1Interbotix_xs_msgsRobotInfoResponse_profile_type value)
  if length (ros1Interbotix_xs_msgsRobotInfoResponse_joint_names value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros1Interbotix_xs_msgsRobotInfoResponse_joint_names value))
  b2 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros1Interbotix_xs_msgsRobotInfoResponse_joint_names value)
  if length (ros1Interbotix_xs_msgsRobotInfoResponse_joint_ids value) > 64 then Left 22 else Right ()
  prefix3 <- W.encodeCount 64 (length (ros1Interbotix_xs_msgsRobotInfoResponse_joint_ids value))
  b3 <- B.concat <$> mapM (\e -> W.encodeSigned 2 (fromIntegral (e))) (ros1Interbotix_xs_msgsRobotInfoResponse_joint_ids value)
  if length (ros1Interbotix_xs_msgsRobotInfoResponse_joint_lower_limits value) > 64 then Left 22 else Right ()
  prefix4 <- W.encodeCount 64 (length (ros1Interbotix_xs_msgsRobotInfoResponse_joint_lower_limits value))
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Interbotix_xs_msgsRobotInfoResponse_joint_lower_limits value)
  if length (ros1Interbotix_xs_msgsRobotInfoResponse_joint_upper_limits value) > 64 then Left 22 else Right ()
  prefix5 <- W.encodeCount 64 (length (ros1Interbotix_xs_msgsRobotInfoResponse_joint_upper_limits value))
  b5 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Interbotix_xs_msgsRobotInfoResponse_joint_upper_limits value)
  if length (ros1Interbotix_xs_msgsRobotInfoResponse_joint_velocity_limits value) > 64 then Left 22 else Right ()
  prefix6 <- W.encodeCount 64 (length (ros1Interbotix_xs_msgsRobotInfoResponse_joint_velocity_limits value))
  b6 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Interbotix_xs_msgsRobotInfoResponse_joint_velocity_limits value)
  if length (ros1Interbotix_xs_msgsRobotInfoResponse_joint_sleep_positions value) > 64 then Left 22 else Right ()
  prefix7 <- W.encodeCount 64 (length (ros1Interbotix_xs_msgsRobotInfoResponse_joint_sleep_positions value))
  b7 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Interbotix_xs_msgsRobotInfoResponse_joint_sleep_positions value)
  if length (ros1Interbotix_xs_msgsRobotInfoResponse_joint_state_indices value) > 64 then Left 22 else Right ()
  prefix8 <- W.encodeCount 64 (length (ros1Interbotix_xs_msgsRobotInfoResponse_joint_state_indices value))
  b8 <- B.concat <$> mapM (\e -> W.encodeSigned 2 (fromIntegral (e))) (ros1Interbotix_xs_msgsRobotInfoResponse_joint_state_indices value)
  b9 <- W.encodeSigned 2 (fromIntegral (ros1Interbotix_xs_msgsRobotInfoResponse_num_joints value))
  if length (ros1Interbotix_xs_msgsRobotInfoResponse_name value) > 64 then Left 22 else Right ()
  prefix10 <- W.encodeCount 64 (length (ros1Interbotix_xs_msgsRobotInfoResponse_name value))
  b10 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros1Interbotix_xs_msgsRobotInfoResponse_name value)
  W.bounded 18474 [b0, b1, prefix2, b2, prefix3, b3, prefix4, b4, prefix5, b5, prefix6, b6, prefix7, b7, prefix8, b8, b9, prefix10, b10]
readRos1Interbotix_xs_msgsRobotInfoResponse :: W.Decoder Ros1Interbotix_xs_msgsRobotInfoResponse
readRos1Interbotix_xs_msgsRobotInfoResponse = do
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
  let value = Ros1Interbotix_xs_msgsRobotInfoResponse a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
  case encodeRos1Interbotix_xs_msgsRobotInfoResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsRobotInfoResponse :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsRobotInfoResponse
decodeRos1Interbotix_xs_msgsRobotInfoResponse = W.runDecoder 18474 readRos1Interbotix_xs_msgsRobotInfoResponse
instance Canonical Ros1Interbotix_xs_msgsRobotInfoResponse where
  maximumBytes _ = 18474
  encodeValue = encodeRos1Interbotix_xs_msgsRobotInfoResponse
  readValue = readRos1Interbotix_xs_msgsRobotInfoResponse
data Ros1Interbotix_xs_msgsTorqueEnableRequest = Ros1Interbotix_xs_msgsTorqueEnableRequest
  {
    -- | \@brief interbotix_xs_msgs/TorqueEnableRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsTorqueEnableRequest_cmd_type :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/TorqueEnableRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsTorqueEnableRequest_name :: T.Text
  ,
    -- | \@brief interbotix_xs_msgs/TorqueEnableRequest.enable: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsTorqueEnableRequest_enable :: Bool
  } deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsTorqueEnableRequest :: Ros1Interbotix_xs_msgsTorqueEnableRequest
defaultRos1Interbotix_xs_msgsTorqueEnableRequest = Ros1Interbotix_xs_msgsTorqueEnableRequest (T.empty) (T.empty) (False)
ros1Interbotix_xs_msgsTorqueEnableRequestCodecIdentity :: String
ros1Interbotix_xs_msgsTorqueEnableRequestCodecIdentity = "UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a"
encodeRos1Interbotix_xs_msgsTorqueEnableRequest :: Ros1Interbotix_xs_msgsTorqueEnableRequest -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsTorqueEnableRequest value = do
  b0 <- W.encodeText 128 True (ros1Interbotix_xs_msgsTorqueEnableRequest_cmd_type value)
  b1 <- W.encodeText 128 True (ros1Interbotix_xs_msgsTorqueEnableRequest_name value)
  b2 <- W.encodeBool (ros1Interbotix_xs_msgsTorqueEnableRequest_enable value)
  W.bounded 265 [b0, b1, b2]
readRos1Interbotix_xs_msgsTorqueEnableRequest :: W.Decoder Ros1Interbotix_xs_msgsTorqueEnableRequest
readRos1Interbotix_xs_msgsTorqueEnableRequest = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- W.boolean
  let value = Ros1Interbotix_xs_msgsTorqueEnableRequest a0 a1 a2
  case encodeRos1Interbotix_xs_msgsTorqueEnableRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsTorqueEnableRequest :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsTorqueEnableRequest
decodeRos1Interbotix_xs_msgsTorqueEnableRequest = W.runDecoder 265 readRos1Interbotix_xs_msgsTorqueEnableRequest
instance Canonical Ros1Interbotix_xs_msgsTorqueEnableRequest where
  maximumBytes _ = 265
  encodeValue = encodeRos1Interbotix_xs_msgsTorqueEnableRequest
  readValue = readRos1Interbotix_xs_msgsTorqueEnableRequest
data Ros1Interbotix_xs_msgsTorqueEnableResponse = Ros1Interbotix_xs_msgsTorqueEnableResponse deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsTorqueEnableResponse :: Ros1Interbotix_xs_msgsTorqueEnableResponse
defaultRos1Interbotix_xs_msgsTorqueEnableResponse = Ros1Interbotix_xs_msgsTorqueEnableResponse 
ros1Interbotix_xs_msgsTorqueEnableResponseCodecIdentity :: String
ros1Interbotix_xs_msgsTorqueEnableResponseCodecIdentity = "UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44"
encodeRos1Interbotix_xs_msgsTorqueEnableResponse :: Ros1Interbotix_xs_msgsTorqueEnableResponse -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsTorqueEnableResponse value = do
  W.bounded 0 []
readRos1Interbotix_xs_msgsTorqueEnableResponse :: W.Decoder Ros1Interbotix_xs_msgsTorqueEnableResponse
readRos1Interbotix_xs_msgsTorqueEnableResponse = do
  let value = Ros1Interbotix_xs_msgsTorqueEnableResponse 
  case encodeRos1Interbotix_xs_msgsTorqueEnableResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsTorqueEnableResponse :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsTorqueEnableResponse
decodeRos1Interbotix_xs_msgsTorqueEnableResponse = W.runDecoder 0 readRos1Interbotix_xs_msgsTorqueEnableResponse
instance Canonical Ros1Interbotix_xs_msgsTorqueEnableResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Interbotix_xs_msgsTorqueEnableResponse
  readValue = readRos1Interbotix_xs_msgsTorqueEnableResponse
data Ros1Interbotix_xs_msgsTurretJoy = Ros1Interbotix_xs_msgsTurretJoy
  {
    -- | \@brief interbotix_xs_msgs/TurretJoy.pan_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsTurretJoy_pan_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/TurretJoy.tilt_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsTurretJoy_tilt_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/TurretJoy.speed_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsTurretJoy_speed_cmd :: Int8
  ,
    -- | \@brief interbotix_xs_msgs/TurretJoy.speed_toggle_cmd: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/haskell/API.md
    ros1Interbotix_xs_msgsTurretJoy_speed_toggle_cmd :: Int8
  } deriving (Eq, Show)
defaultRos1Interbotix_xs_msgsTurretJoy :: Ros1Interbotix_xs_msgsTurretJoy
defaultRos1Interbotix_xs_msgsTurretJoy = Ros1Interbotix_xs_msgsTurretJoy (0) (0) (0) (0)
ros1Interbotix_xs_msgsTurretJoyCodecIdentity :: String
ros1Interbotix_xs_msgsTurretJoyCodecIdentity = "UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70"
ros1Interbotix_xs_msgsTurretJoy_PAN_CCW :: Int8
ros1Interbotix_xs_msgsTurretJoy_PAN_CCW = 1
ros1Interbotix_xs_msgsTurretJoy_PAN_CW :: Int8
ros1Interbotix_xs_msgsTurretJoy_PAN_CW = 2
ros1Interbotix_xs_msgsTurretJoy_TILT_UP :: Int8
ros1Interbotix_xs_msgsTurretJoy_TILT_UP = 3
ros1Interbotix_xs_msgsTurretJoy_TILT_DOWN :: Int8
ros1Interbotix_xs_msgsTurretJoy_TILT_DOWN = 4
ros1Interbotix_xs_msgsTurretJoy_PAN_TILT_HOME :: Int8
ros1Interbotix_xs_msgsTurretJoy_PAN_TILT_HOME = 5
ros1Interbotix_xs_msgsTurretJoy_SPEED_INC :: Int8
ros1Interbotix_xs_msgsTurretJoy_SPEED_INC = 6
ros1Interbotix_xs_msgsTurretJoy_SPEED_DEC :: Int8
ros1Interbotix_xs_msgsTurretJoy_SPEED_DEC = 7
ros1Interbotix_xs_msgsTurretJoy_SPEED_COURSE :: Int8
ros1Interbotix_xs_msgsTurretJoy_SPEED_COURSE = 8
ros1Interbotix_xs_msgsTurretJoy_SPEED_FINE :: Int8
ros1Interbotix_xs_msgsTurretJoy_SPEED_FINE = 9
encodeRos1Interbotix_xs_msgsTurretJoy :: Ros1Interbotix_xs_msgsTurretJoy -> Either Word32 B.ByteString
encodeRos1Interbotix_xs_msgsTurretJoy value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsTurretJoy_pan_cmd value))
  b1 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsTurretJoy_tilt_cmd value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsTurretJoy_speed_cmd value))
  b3 <- W.encodeSigned 1 (fromIntegral (ros1Interbotix_xs_msgsTurretJoy_speed_toggle_cmd value))
  W.bounded 4 [b0, b1, b2, b3]
readRos1Interbotix_xs_msgsTurretJoy :: W.Decoder Ros1Interbotix_xs_msgsTurretJoy
readRos1Interbotix_xs_msgsTurretJoy = do
  a0 <- fromIntegral <$> W.signed 1
  a1 <- fromIntegral <$> W.signed 1
  a2 <- fromIntegral <$> W.signed 1
  a3 <- fromIntegral <$> W.signed 1
  let value = Ros1Interbotix_xs_msgsTurretJoy a0 a1 a2 a3
  case encodeRos1Interbotix_xs_msgsTurretJoy value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Interbotix_xs_msgsTurretJoy :: B.ByteString -> Either Word32 Ros1Interbotix_xs_msgsTurretJoy
decodeRos1Interbotix_xs_msgsTurretJoy = W.runDecoder 4 readRos1Interbotix_xs_msgsTurretJoy
instance Canonical Ros1Interbotix_xs_msgsTurretJoy where
  maximumBytes _ = 4
  encodeValue = encodeRos1Interbotix_xs_msgsTurretJoy
  readValue = readRos1Interbotix_xs_msgsTurretJoy
data Ros1Xarm_msgsClearErrRequest = Ros1Xarm_msgsClearErrRequest deriving (Eq, Show)
defaultRos1Xarm_msgsClearErrRequest :: Ros1Xarm_msgsClearErrRequest
defaultRos1Xarm_msgsClearErrRequest = Ros1Xarm_msgsClearErrRequest 
ros1Xarm_msgsClearErrRequestCodecIdentity :: String
ros1Xarm_msgsClearErrRequestCodecIdentity = "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8"
encodeRos1Xarm_msgsClearErrRequest :: Ros1Xarm_msgsClearErrRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsClearErrRequest value = do
  W.bounded 0 []
readRos1Xarm_msgsClearErrRequest :: W.Decoder Ros1Xarm_msgsClearErrRequest
readRos1Xarm_msgsClearErrRequest = do
  let value = Ros1Xarm_msgsClearErrRequest 
  case encodeRos1Xarm_msgsClearErrRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsClearErrRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsClearErrRequest
decodeRos1Xarm_msgsClearErrRequest = W.runDecoder 0 readRos1Xarm_msgsClearErrRequest
instance Canonical Ros1Xarm_msgsClearErrRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Xarm_msgsClearErrRequest
  readValue = readRos1Xarm_msgsClearErrRequest
data Ros1Xarm_msgsClearErrResponse = Ros1Xarm_msgsClearErrResponse
  {
    -- | \@brief xarm_msgs/ClearErrResponse.ret: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsClearErrResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/ClearErrResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsClearErrResponse_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Xarm_msgsClearErrResponse :: Ros1Xarm_msgsClearErrResponse
defaultRos1Xarm_msgsClearErrResponse = Ros1Xarm_msgsClearErrResponse (0) (T.empty)
ros1Xarm_msgsClearErrResponseCodecIdentity :: String
ros1Xarm_msgsClearErrResponseCodecIdentity = "UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1"
encodeRos1Xarm_msgsClearErrResponse :: Ros1Xarm_msgsClearErrResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsClearErrResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsClearErrResponse_ret value))
  b1 <- W.encodeText 128 True (ros1Xarm_msgsClearErrResponse_message value)
  W.bounded 134 [b0, b1]
readRos1Xarm_msgsClearErrResponse :: W.Decoder Ros1Xarm_msgsClearErrResponse
readRos1Xarm_msgsClearErrResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 128 True
  let value = Ros1Xarm_msgsClearErrResponse a0 a1
  case encodeRos1Xarm_msgsClearErrResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsClearErrResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsClearErrResponse
decodeRos1Xarm_msgsClearErrResponse = W.runDecoder 134 readRos1Xarm_msgsClearErrResponse
instance Canonical Ros1Xarm_msgsClearErrResponse where
  maximumBytes _ = 134
  encodeValue = encodeRos1Xarm_msgsClearErrResponse
  readValue = readRos1Xarm_msgsClearErrResponse
data Ros1Xarm_msgsConfigToolModbusRequest = Ros1Xarm_msgsConfigToolModbusRequest
  {
    -- | \@brief xarm_msgs/ConfigToolModbusRequest.baud_rate: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsConfigToolModbusRequest_baud_rate :: Int32
  ,
    -- | \@brief xarm_msgs/ConfigToolModbusRequest.timeout_ms: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsConfigToolModbusRequest_timeout_ms :: Int32
  } deriving (Eq, Show)
defaultRos1Xarm_msgsConfigToolModbusRequest :: Ros1Xarm_msgsConfigToolModbusRequest
defaultRos1Xarm_msgsConfigToolModbusRequest = Ros1Xarm_msgsConfigToolModbusRequest (0) (0)
ros1Xarm_msgsConfigToolModbusRequestCodecIdentity :: String
ros1Xarm_msgsConfigToolModbusRequestCodecIdentity = "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5"
encodeRos1Xarm_msgsConfigToolModbusRequest :: Ros1Xarm_msgsConfigToolModbusRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsConfigToolModbusRequest value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros1Xarm_msgsConfigToolModbusRequest_baud_rate value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros1Xarm_msgsConfigToolModbusRequest_timeout_ms value))
  W.bounded 8 [b0, b1]
readRos1Xarm_msgsConfigToolModbusRequest :: W.Decoder Ros1Xarm_msgsConfigToolModbusRequest
readRos1Xarm_msgsConfigToolModbusRequest = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  let value = Ros1Xarm_msgsConfigToolModbusRequest a0 a1
  case encodeRos1Xarm_msgsConfigToolModbusRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsConfigToolModbusRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsConfigToolModbusRequest
decodeRos1Xarm_msgsConfigToolModbusRequest = W.runDecoder 8 readRos1Xarm_msgsConfigToolModbusRequest
instance Canonical Ros1Xarm_msgsConfigToolModbusRequest where
  maximumBytes _ = 8
  encodeValue = encodeRos1Xarm_msgsConfigToolModbusRequest
  readValue = readRos1Xarm_msgsConfigToolModbusRequest
data Ros1Xarm_msgsConfigToolModbusResponse = Ros1Xarm_msgsConfigToolModbusResponse
  {
    -- | \@brief xarm_msgs/ConfigToolModbusResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsConfigToolModbusResponse_message :: T.Text
  ,
    -- | \@brief xarm_msgs/ConfigToolModbusResponse.ret: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsConfigToolModbusResponse_ret :: Int16
  } deriving (Eq, Show)
defaultRos1Xarm_msgsConfigToolModbusResponse :: Ros1Xarm_msgsConfigToolModbusResponse
defaultRos1Xarm_msgsConfigToolModbusResponse = Ros1Xarm_msgsConfigToolModbusResponse (T.empty) (0)
ros1Xarm_msgsConfigToolModbusResponseCodecIdentity :: String
ros1Xarm_msgsConfigToolModbusResponseCodecIdentity = "UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b"
encodeRos1Xarm_msgsConfigToolModbusResponse :: Ros1Xarm_msgsConfigToolModbusResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsConfigToolModbusResponse value = do
  b0 <- W.encodeText 128 True (ros1Xarm_msgsConfigToolModbusResponse_message value)
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsConfigToolModbusResponse_ret value))
  W.bounded 134 [b0, b1]
readRos1Xarm_msgsConfigToolModbusResponse :: W.Decoder Ros1Xarm_msgsConfigToolModbusResponse
readRos1Xarm_msgsConfigToolModbusResponse = do
  a0 <- W.text 128 True
  a1 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsConfigToolModbusResponse a0 a1
  case encodeRos1Xarm_msgsConfigToolModbusResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsConfigToolModbusResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsConfigToolModbusResponse
decodeRos1Xarm_msgsConfigToolModbusResponse = W.runDecoder 134 readRos1Xarm_msgsConfigToolModbusResponse
instance Canonical Ros1Xarm_msgsConfigToolModbusResponse where
  maximumBytes _ = 134
  encodeValue = encodeRos1Xarm_msgsConfigToolModbusResponse
  readValue = readRos1Xarm_msgsConfigToolModbusResponse
data Ros1Xarm_msgsGetAnalogIORequest = Ros1Xarm_msgsGetAnalogIORequest
  {
    -- | \@brief xarm_msgs/GetAnalogIORequest.port_num: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGetAnalogIORequest_port_num :: Int16
  } deriving (Eq, Show)
defaultRos1Xarm_msgsGetAnalogIORequest :: Ros1Xarm_msgsGetAnalogIORequest
defaultRos1Xarm_msgsGetAnalogIORequest = Ros1Xarm_msgsGetAnalogIORequest (0)
ros1Xarm_msgsGetAnalogIORequestCodecIdentity :: String
ros1Xarm_msgsGetAnalogIORequestCodecIdentity = "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8"
encodeRos1Xarm_msgsGetAnalogIORequest :: Ros1Xarm_msgsGetAnalogIORequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetAnalogIORequest value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetAnalogIORequest_port_num value))
  W.bounded 2 [b0]
readRos1Xarm_msgsGetAnalogIORequest :: W.Decoder Ros1Xarm_msgsGetAnalogIORequest
readRos1Xarm_msgsGetAnalogIORequest = do
  a0 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsGetAnalogIORequest a0
  case encodeRos1Xarm_msgsGetAnalogIORequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsGetAnalogIORequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetAnalogIORequest
decodeRos1Xarm_msgsGetAnalogIORequest = W.runDecoder 2 readRos1Xarm_msgsGetAnalogIORequest
instance Canonical Ros1Xarm_msgsGetAnalogIORequest where
  maximumBytes _ = 2
  encodeValue = encodeRos1Xarm_msgsGetAnalogIORequest
  readValue = readRos1Xarm_msgsGetAnalogIORequest
data Ros1Xarm_msgsGetAnalogIOResponse = Ros1Xarm_msgsGetAnalogIOResponse
  {
    -- | \@brief xarm_msgs/GetAnalogIOResponse.analog_value: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGetAnalogIOResponse_analog_value :: Float
  ,
    -- | \@brief xarm_msgs/GetAnalogIOResponse.ret: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGetAnalogIOResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/GetAnalogIOResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGetAnalogIOResponse_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Xarm_msgsGetAnalogIOResponse :: Ros1Xarm_msgsGetAnalogIOResponse
defaultRos1Xarm_msgsGetAnalogIOResponse = Ros1Xarm_msgsGetAnalogIOResponse (0) (0) (T.empty)
ros1Xarm_msgsGetAnalogIOResponseCodecIdentity :: String
ros1Xarm_msgsGetAnalogIOResponseCodecIdentity = "UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968"
encodeRos1Xarm_msgsGetAnalogIOResponse :: Ros1Xarm_msgsGetAnalogIOResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetAnalogIOResponse value = do
  b0 <- W.encodeFloat32 (ros1Xarm_msgsGetAnalogIOResponse_analog_value value)
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetAnalogIOResponse_ret value))
  b2 <- W.encodeText 128 True (ros1Xarm_msgsGetAnalogIOResponse_message value)
  W.bounded 138 [b0, b1, b2]
readRos1Xarm_msgsGetAnalogIOResponse :: W.Decoder Ros1Xarm_msgsGetAnalogIOResponse
readRos1Xarm_msgsGetAnalogIOResponse = do
  a0 <- W.float32
  a1 <- fromIntegral <$> W.signed 2
  a2 <- W.text 128 True
  let value = Ros1Xarm_msgsGetAnalogIOResponse a0 a1 a2
  case encodeRos1Xarm_msgsGetAnalogIOResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsGetAnalogIOResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetAnalogIOResponse
decodeRos1Xarm_msgsGetAnalogIOResponse = W.runDecoder 138 readRos1Xarm_msgsGetAnalogIOResponse
instance Canonical Ros1Xarm_msgsGetAnalogIOResponse where
  maximumBytes _ = 138
  encodeValue = encodeRos1Xarm_msgsGetAnalogIOResponse
  readValue = readRos1Xarm_msgsGetAnalogIOResponse
data Ros1Xarm_msgsGetControllerDigitalIORequest = Ros1Xarm_msgsGetControllerDigitalIORequest
  {
    -- | \@brief xarm_msgs/GetControllerDigitalIORequest.io_num: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGetControllerDigitalIORequest_io_num :: Int16
  } deriving (Eq, Show)
defaultRos1Xarm_msgsGetControllerDigitalIORequest :: Ros1Xarm_msgsGetControllerDigitalIORequest
defaultRos1Xarm_msgsGetControllerDigitalIORequest = Ros1Xarm_msgsGetControllerDigitalIORequest (0)
ros1Xarm_msgsGetControllerDigitalIORequestCodecIdentity :: String
ros1Xarm_msgsGetControllerDigitalIORequestCodecIdentity = "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c"
encodeRos1Xarm_msgsGetControllerDigitalIORequest :: Ros1Xarm_msgsGetControllerDigitalIORequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetControllerDigitalIORequest value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetControllerDigitalIORequest_io_num value))
  W.bounded 2 [b0]
readRos1Xarm_msgsGetControllerDigitalIORequest :: W.Decoder Ros1Xarm_msgsGetControllerDigitalIORequest
readRos1Xarm_msgsGetControllerDigitalIORequest = do
  a0 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsGetControllerDigitalIORequest a0
  case encodeRos1Xarm_msgsGetControllerDigitalIORequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsGetControllerDigitalIORequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetControllerDigitalIORequest
decodeRos1Xarm_msgsGetControllerDigitalIORequest = W.runDecoder 2 readRos1Xarm_msgsGetControllerDigitalIORequest
instance Canonical Ros1Xarm_msgsGetControllerDigitalIORequest where
  maximumBytes _ = 2
  encodeValue = encodeRos1Xarm_msgsGetControllerDigitalIORequest
  readValue = readRos1Xarm_msgsGetControllerDigitalIORequest
data Ros1Xarm_msgsGetControllerDigitalIOResponse = Ros1Xarm_msgsGetControllerDigitalIOResponse
  {
    -- | \@brief xarm_msgs/GetControllerDigitalIOResponse.ret: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGetControllerDigitalIOResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/GetControllerDigitalIOResponse.value: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGetControllerDigitalIOResponse_value :: Int16
  ,
    -- | \@brief xarm_msgs/GetControllerDigitalIOResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGetControllerDigitalIOResponse_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Xarm_msgsGetControllerDigitalIOResponse :: Ros1Xarm_msgsGetControllerDigitalIOResponse
defaultRos1Xarm_msgsGetControllerDigitalIOResponse = Ros1Xarm_msgsGetControllerDigitalIOResponse (0) (0) (T.empty)
ros1Xarm_msgsGetControllerDigitalIOResponseCodecIdentity :: String
ros1Xarm_msgsGetControllerDigitalIOResponseCodecIdentity = "UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3"
encodeRos1Xarm_msgsGetControllerDigitalIOResponse :: Ros1Xarm_msgsGetControllerDigitalIOResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetControllerDigitalIOResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetControllerDigitalIOResponse_ret value))
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetControllerDigitalIOResponse_value value))
  b2 <- W.encodeText 128 True (ros1Xarm_msgsGetControllerDigitalIOResponse_message value)
  W.bounded 136 [b0, b1, b2]
readRos1Xarm_msgsGetControllerDigitalIOResponse :: W.Decoder Ros1Xarm_msgsGetControllerDigitalIOResponse
readRos1Xarm_msgsGetControllerDigitalIOResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- fromIntegral <$> W.signed 2
  a2 <- W.text 128 True
  let value = Ros1Xarm_msgsGetControllerDigitalIOResponse a0 a1 a2
  case encodeRos1Xarm_msgsGetControllerDigitalIOResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsGetControllerDigitalIOResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetControllerDigitalIOResponse
decodeRos1Xarm_msgsGetControllerDigitalIOResponse = W.runDecoder 136 readRos1Xarm_msgsGetControllerDigitalIOResponse
instance Canonical Ros1Xarm_msgsGetControllerDigitalIOResponse where
  maximumBytes _ = 136
  encodeValue = encodeRos1Xarm_msgsGetControllerDigitalIOResponse
  readValue = readRos1Xarm_msgsGetControllerDigitalIOResponse
data Ros1Xarm_msgsGetDigitalIORequest = Ros1Xarm_msgsGetDigitalIORequest deriving (Eq, Show)
defaultRos1Xarm_msgsGetDigitalIORequest :: Ros1Xarm_msgsGetDigitalIORequest
defaultRos1Xarm_msgsGetDigitalIORequest = Ros1Xarm_msgsGetDigitalIORequest 
ros1Xarm_msgsGetDigitalIORequestCodecIdentity :: String
ros1Xarm_msgsGetDigitalIORequestCodecIdentity = "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da"
encodeRos1Xarm_msgsGetDigitalIORequest :: Ros1Xarm_msgsGetDigitalIORequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetDigitalIORequest value = do
  W.bounded 0 []
readRos1Xarm_msgsGetDigitalIORequest :: W.Decoder Ros1Xarm_msgsGetDigitalIORequest
readRos1Xarm_msgsGetDigitalIORequest = do
  let value = Ros1Xarm_msgsGetDigitalIORequest 
  case encodeRos1Xarm_msgsGetDigitalIORequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsGetDigitalIORequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetDigitalIORequest
decodeRos1Xarm_msgsGetDigitalIORequest = W.runDecoder 0 readRos1Xarm_msgsGetDigitalIORequest
instance Canonical Ros1Xarm_msgsGetDigitalIORequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Xarm_msgsGetDigitalIORequest
  readValue = readRos1Xarm_msgsGetDigitalIORequest
data Ros1Xarm_msgsGetDigitalIOResponse = Ros1Xarm_msgsGetDigitalIOResponse
  {
    -- | \@brief xarm_msgs/GetDigitalIOResponse.digital_1: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGetDigitalIOResponse_digital_1 :: Int32
  ,
    -- | \@brief xarm_msgs/GetDigitalIOResponse.digital_2: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGetDigitalIOResponse_digital_2 :: Int32
  ,
    -- | \@brief xarm_msgs/GetDigitalIOResponse.ret: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGetDigitalIOResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/GetDigitalIOResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGetDigitalIOResponse_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Xarm_msgsGetDigitalIOResponse :: Ros1Xarm_msgsGetDigitalIOResponse
defaultRos1Xarm_msgsGetDigitalIOResponse = Ros1Xarm_msgsGetDigitalIOResponse (0) (0) (0) (T.empty)
ros1Xarm_msgsGetDigitalIOResponseCodecIdentity :: String
ros1Xarm_msgsGetDigitalIOResponseCodecIdentity = "UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2"
encodeRos1Xarm_msgsGetDigitalIOResponse :: Ros1Xarm_msgsGetDigitalIOResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetDigitalIOResponse value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros1Xarm_msgsGetDigitalIOResponse_digital_1 value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros1Xarm_msgsGetDigitalIOResponse_digital_2 value))
  b2 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetDigitalIOResponse_ret value))
  b3 <- W.encodeText 128 True (ros1Xarm_msgsGetDigitalIOResponse_message value)
  W.bounded 142 [b0, b1, b2, b3]
readRos1Xarm_msgsGetDigitalIOResponse :: W.Decoder Ros1Xarm_msgsGetDigitalIOResponse
readRos1Xarm_msgsGetDigitalIOResponse = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  a2 <- fromIntegral <$> W.signed 2
  a3 <- W.text 128 True
  let value = Ros1Xarm_msgsGetDigitalIOResponse a0 a1 a2 a3
  case encodeRos1Xarm_msgsGetDigitalIOResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsGetDigitalIOResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetDigitalIOResponse
decodeRos1Xarm_msgsGetDigitalIOResponse = W.runDecoder 142 readRos1Xarm_msgsGetDigitalIOResponse
instance Canonical Ros1Xarm_msgsGetDigitalIOResponse where
  maximumBytes _ = 142
  encodeValue = encodeRos1Xarm_msgsGetDigitalIOResponse
  readValue = readRos1Xarm_msgsGetDigitalIOResponse
data Ros1Xarm_msgsGetErrRequest = Ros1Xarm_msgsGetErrRequest deriving (Eq, Show)
defaultRos1Xarm_msgsGetErrRequest :: Ros1Xarm_msgsGetErrRequest
defaultRos1Xarm_msgsGetErrRequest = Ros1Xarm_msgsGetErrRequest 
ros1Xarm_msgsGetErrRequestCodecIdentity :: String
ros1Xarm_msgsGetErrRequestCodecIdentity = "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531"
encodeRos1Xarm_msgsGetErrRequest :: Ros1Xarm_msgsGetErrRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetErrRequest value = do
  W.bounded 0 []
readRos1Xarm_msgsGetErrRequest :: W.Decoder Ros1Xarm_msgsGetErrRequest
readRos1Xarm_msgsGetErrRequest = do
  let value = Ros1Xarm_msgsGetErrRequest 
  case encodeRos1Xarm_msgsGetErrRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsGetErrRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetErrRequest
decodeRos1Xarm_msgsGetErrRequest = W.runDecoder 0 readRos1Xarm_msgsGetErrRequest
instance Canonical Ros1Xarm_msgsGetErrRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Xarm_msgsGetErrRequest
  readValue = readRos1Xarm_msgsGetErrRequest
data Ros1Xarm_msgsGetErrResponse = Ros1Xarm_msgsGetErrResponse
  {
    -- | \@brief xarm_msgs/GetErrResponse.err: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGetErrResponse_err :: Int16
  ,
    -- | \@brief xarm_msgs/GetErrResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGetErrResponse_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Xarm_msgsGetErrResponse :: Ros1Xarm_msgsGetErrResponse
defaultRos1Xarm_msgsGetErrResponse = Ros1Xarm_msgsGetErrResponse (0) (T.empty)
ros1Xarm_msgsGetErrResponseCodecIdentity :: String
ros1Xarm_msgsGetErrResponseCodecIdentity = "UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037"
encodeRos1Xarm_msgsGetErrResponse :: Ros1Xarm_msgsGetErrResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetErrResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetErrResponse_err value))
  b1 <- W.encodeText 128 True (ros1Xarm_msgsGetErrResponse_message value)
  W.bounded 134 [b0, b1]
readRos1Xarm_msgsGetErrResponse :: W.Decoder Ros1Xarm_msgsGetErrResponse
readRos1Xarm_msgsGetErrResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 128 True
  let value = Ros1Xarm_msgsGetErrResponse a0 a1
  case encodeRos1Xarm_msgsGetErrResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsGetErrResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetErrResponse
decodeRos1Xarm_msgsGetErrResponse = W.runDecoder 134 readRos1Xarm_msgsGetErrResponse
instance Canonical Ros1Xarm_msgsGetErrResponse where
  maximumBytes _ = 134
  encodeValue = encodeRos1Xarm_msgsGetErrResponse
  readValue = readRos1Xarm_msgsGetErrResponse
data Ros1Xarm_msgsGripperConfigRequest = Ros1Xarm_msgsGripperConfigRequest
  {
    -- | \@brief xarm_msgs/GripperConfigRequest.pulse_vel: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGripperConfigRequest_pulse_vel :: Float
  } deriving (Eq, Show)
defaultRos1Xarm_msgsGripperConfigRequest :: Ros1Xarm_msgsGripperConfigRequest
defaultRos1Xarm_msgsGripperConfigRequest = Ros1Xarm_msgsGripperConfigRequest (0)
ros1Xarm_msgsGripperConfigRequestCodecIdentity :: String
ros1Xarm_msgsGripperConfigRequestCodecIdentity = "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4"
encodeRos1Xarm_msgsGripperConfigRequest :: Ros1Xarm_msgsGripperConfigRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGripperConfigRequest value = do
  b0 <- W.encodeFloat32 (ros1Xarm_msgsGripperConfigRequest_pulse_vel value)
  W.bounded 4 [b0]
readRos1Xarm_msgsGripperConfigRequest :: W.Decoder Ros1Xarm_msgsGripperConfigRequest
readRos1Xarm_msgsGripperConfigRequest = do
  a0 <- W.float32
  let value = Ros1Xarm_msgsGripperConfigRequest a0
  case encodeRos1Xarm_msgsGripperConfigRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsGripperConfigRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsGripperConfigRequest
decodeRos1Xarm_msgsGripperConfigRequest = W.runDecoder 4 readRos1Xarm_msgsGripperConfigRequest
instance Canonical Ros1Xarm_msgsGripperConfigRequest where
  maximumBytes _ = 4
  encodeValue = encodeRos1Xarm_msgsGripperConfigRequest
  readValue = readRos1Xarm_msgsGripperConfigRequest
data Ros1Xarm_msgsGripperConfigResponse = Ros1Xarm_msgsGripperConfigResponse
  {
    -- | \@brief xarm_msgs/GripperConfigResponse.ret: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGripperConfigResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/GripperConfigResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGripperConfigResponse_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Xarm_msgsGripperConfigResponse :: Ros1Xarm_msgsGripperConfigResponse
defaultRos1Xarm_msgsGripperConfigResponse = Ros1Xarm_msgsGripperConfigResponse (0) (T.empty)
ros1Xarm_msgsGripperConfigResponseCodecIdentity :: String
ros1Xarm_msgsGripperConfigResponseCodecIdentity = "UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5"
encodeRos1Xarm_msgsGripperConfigResponse :: Ros1Xarm_msgsGripperConfigResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGripperConfigResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGripperConfigResponse_ret value))
  b1 <- W.encodeText 128 True (ros1Xarm_msgsGripperConfigResponse_message value)
  W.bounded 134 [b0, b1]
readRos1Xarm_msgsGripperConfigResponse :: W.Decoder Ros1Xarm_msgsGripperConfigResponse
readRos1Xarm_msgsGripperConfigResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 128 True
  let value = Ros1Xarm_msgsGripperConfigResponse a0 a1
  case encodeRos1Xarm_msgsGripperConfigResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsGripperConfigResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsGripperConfigResponse
decodeRos1Xarm_msgsGripperConfigResponse = W.runDecoder 134 readRos1Xarm_msgsGripperConfigResponse
instance Canonical Ros1Xarm_msgsGripperConfigResponse where
  maximumBytes _ = 134
  encodeValue = encodeRos1Xarm_msgsGripperConfigResponse
  readValue = readRos1Xarm_msgsGripperConfigResponse
data Ros1Xarm_msgsGripperMoveRequest = Ros1Xarm_msgsGripperMoveRequest
  {
    -- | \@brief xarm_msgs/GripperMoveRequest.pulse_pos: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGripperMoveRequest_pulse_pos :: Float
  } deriving (Eq, Show)
defaultRos1Xarm_msgsGripperMoveRequest :: Ros1Xarm_msgsGripperMoveRequest
defaultRos1Xarm_msgsGripperMoveRequest = Ros1Xarm_msgsGripperMoveRequest (0)
ros1Xarm_msgsGripperMoveRequestCodecIdentity :: String
ros1Xarm_msgsGripperMoveRequestCodecIdentity = "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2"
encodeRos1Xarm_msgsGripperMoveRequest :: Ros1Xarm_msgsGripperMoveRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGripperMoveRequest value = do
  b0 <- W.encodeFloat32 (ros1Xarm_msgsGripperMoveRequest_pulse_pos value)
  W.bounded 4 [b0]
readRos1Xarm_msgsGripperMoveRequest :: W.Decoder Ros1Xarm_msgsGripperMoveRequest
readRos1Xarm_msgsGripperMoveRequest = do
  a0 <- W.float32
  let value = Ros1Xarm_msgsGripperMoveRequest a0
  case encodeRos1Xarm_msgsGripperMoveRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsGripperMoveRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsGripperMoveRequest
decodeRos1Xarm_msgsGripperMoveRequest = W.runDecoder 4 readRos1Xarm_msgsGripperMoveRequest
instance Canonical Ros1Xarm_msgsGripperMoveRequest where
  maximumBytes _ = 4
  encodeValue = encodeRos1Xarm_msgsGripperMoveRequest
  readValue = readRos1Xarm_msgsGripperMoveRequest
data Ros1Xarm_msgsGripperMoveResponse = Ros1Xarm_msgsGripperMoveResponse
  {
    -- | \@brief xarm_msgs/GripperMoveResponse.ret: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGripperMoveResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/GripperMoveResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGripperMoveResponse_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Xarm_msgsGripperMoveResponse :: Ros1Xarm_msgsGripperMoveResponse
defaultRos1Xarm_msgsGripperMoveResponse = Ros1Xarm_msgsGripperMoveResponse (0) (T.empty)
ros1Xarm_msgsGripperMoveResponseCodecIdentity :: String
ros1Xarm_msgsGripperMoveResponseCodecIdentity = "UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998"
encodeRos1Xarm_msgsGripperMoveResponse :: Ros1Xarm_msgsGripperMoveResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGripperMoveResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGripperMoveResponse_ret value))
  b1 <- W.encodeText 128 True (ros1Xarm_msgsGripperMoveResponse_message value)
  W.bounded 134 [b0, b1]
readRos1Xarm_msgsGripperMoveResponse :: W.Decoder Ros1Xarm_msgsGripperMoveResponse
readRos1Xarm_msgsGripperMoveResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 128 True
  let value = Ros1Xarm_msgsGripperMoveResponse a0 a1
  case encodeRos1Xarm_msgsGripperMoveResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsGripperMoveResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsGripperMoveResponse
decodeRos1Xarm_msgsGripperMoveResponse = W.runDecoder 134 readRos1Xarm_msgsGripperMoveResponse
instance Canonical Ros1Xarm_msgsGripperMoveResponse where
  maximumBytes _ = 134
  encodeValue = encodeRos1Xarm_msgsGripperMoveResponse
  readValue = readRos1Xarm_msgsGripperMoveResponse
data Ros1Xarm_msgsGripperStateRequest = Ros1Xarm_msgsGripperStateRequest deriving (Eq, Show)
defaultRos1Xarm_msgsGripperStateRequest :: Ros1Xarm_msgsGripperStateRequest
defaultRos1Xarm_msgsGripperStateRequest = Ros1Xarm_msgsGripperStateRequest 
ros1Xarm_msgsGripperStateRequestCodecIdentity :: String
ros1Xarm_msgsGripperStateRequestCodecIdentity = "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d"
encodeRos1Xarm_msgsGripperStateRequest :: Ros1Xarm_msgsGripperStateRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGripperStateRequest value = do
  W.bounded 0 []
readRos1Xarm_msgsGripperStateRequest :: W.Decoder Ros1Xarm_msgsGripperStateRequest
readRos1Xarm_msgsGripperStateRequest = do
  let value = Ros1Xarm_msgsGripperStateRequest 
  case encodeRos1Xarm_msgsGripperStateRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsGripperStateRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsGripperStateRequest
decodeRos1Xarm_msgsGripperStateRequest = W.runDecoder 0 readRos1Xarm_msgsGripperStateRequest
instance Canonical Ros1Xarm_msgsGripperStateRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Xarm_msgsGripperStateRequest
  readValue = readRos1Xarm_msgsGripperStateRequest
data Ros1Xarm_msgsGripperStateResponse = Ros1Xarm_msgsGripperStateResponse
  {
    -- | \@brief xarm_msgs/GripperStateResponse.curr_pos: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGripperStateResponse_curr_pos :: Float
  ,
    -- | \@brief xarm_msgs/GripperStateResponse.err_code: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsGripperStateResponse_err_code :: Int16
  } deriving (Eq, Show)
defaultRos1Xarm_msgsGripperStateResponse :: Ros1Xarm_msgsGripperStateResponse
defaultRos1Xarm_msgsGripperStateResponse = Ros1Xarm_msgsGripperStateResponse (0) (0)
ros1Xarm_msgsGripperStateResponseCodecIdentity :: String
ros1Xarm_msgsGripperStateResponseCodecIdentity = "UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4"
encodeRos1Xarm_msgsGripperStateResponse :: Ros1Xarm_msgsGripperStateResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGripperStateResponse value = do
  b0 <- W.encodeFloat32 (ros1Xarm_msgsGripperStateResponse_curr_pos value)
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGripperStateResponse_err_code value))
  W.bounded 6 [b0, b1]
readRos1Xarm_msgsGripperStateResponse :: W.Decoder Ros1Xarm_msgsGripperStateResponse
readRos1Xarm_msgsGripperStateResponse = do
  a0 <- W.float32
  a1 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsGripperStateResponse a0 a1
  case encodeRos1Xarm_msgsGripperStateResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsGripperStateResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsGripperStateResponse
decodeRos1Xarm_msgsGripperStateResponse = W.runDecoder 6 readRos1Xarm_msgsGripperStateResponse
instance Canonical Ros1Xarm_msgsGripperStateResponse where
  maximumBytes _ = 6
  encodeValue = encodeRos1Xarm_msgsGripperStateResponse
  readValue = readRos1Xarm_msgsGripperStateResponse
data Ros1Xarm_msgsIOState = Ros1Xarm_msgsIOState
  {
    -- | \@brief xarm_msgs/IOState.digital_1: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsIOState_digital_1 :: Int32
  ,
    -- | \@brief xarm_msgs/IOState.digital_2: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsIOState_digital_2 :: Int32
  ,
    -- | \@brief xarm_msgs/IOState.analog_1: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsIOState_analog_1 :: Float
  ,
    -- | \@brief xarm_msgs/IOState.analog_2: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsIOState_analog_2 :: Float
  } deriving (Eq, Show)
defaultRos1Xarm_msgsIOState :: Ros1Xarm_msgsIOState
defaultRos1Xarm_msgsIOState = Ros1Xarm_msgsIOState (0) (0) (0) (0)
ros1Xarm_msgsIOStateCodecIdentity :: String
ros1Xarm_msgsIOStateCodecIdentity = "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996"
encodeRos1Xarm_msgsIOState :: Ros1Xarm_msgsIOState -> Either Word32 B.ByteString
encodeRos1Xarm_msgsIOState value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros1Xarm_msgsIOState_digital_1 value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros1Xarm_msgsIOState_digital_2 value))
  b2 <- W.encodeFloat32 (ros1Xarm_msgsIOState_analog_1 value)
  b3 <- W.encodeFloat32 (ros1Xarm_msgsIOState_analog_2 value)
  W.bounded 16 [b0, b1, b2, b3]
readRos1Xarm_msgsIOState :: W.Decoder Ros1Xarm_msgsIOState
readRos1Xarm_msgsIOState = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros1Xarm_msgsIOState a0 a1 a2 a3
  case encodeRos1Xarm_msgsIOState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsIOState :: B.ByteString -> Either Word32 Ros1Xarm_msgsIOState
decodeRos1Xarm_msgsIOState = W.runDecoder 16 readRos1Xarm_msgsIOState
instance Canonical Ros1Xarm_msgsIOState where
  maximumBytes _ = 16
  encodeValue = encodeRos1Xarm_msgsIOState
  readValue = readRos1Xarm_msgsIOState
data Ros1Xarm_msgsMoveRequest = Ros1Xarm_msgsMoveRequest
  {
    -- | \@brief xarm_msgs/MoveRequest.pose: float32; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsMoveRequest_pose :: [Float]
  ,
    -- | \@brief xarm_msgs/MoveRequest.mvvelo: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsMoveRequest_mvvelo :: Float
  ,
    -- | \@brief xarm_msgs/MoveRequest.mvacc: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsMoveRequest_mvacc :: Float
  ,
    -- | \@brief xarm_msgs/MoveRequest.mvtime: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsMoveRequest_mvtime :: Float
  ,
    -- | \@brief xarm_msgs/MoveRequest.mvradii: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsMoveRequest_mvradii :: Float
  } deriving (Eq, Show)
defaultRos1Xarm_msgsMoveRequest :: Ros1Xarm_msgsMoveRequest
defaultRos1Xarm_msgsMoveRequest = Ros1Xarm_msgsMoveRequest ([]) (0) (0) (0) (0)
ros1Xarm_msgsMoveRequestCodecIdentity :: String
ros1Xarm_msgsMoveRequestCodecIdentity = "UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5"
encodeRos1Xarm_msgsMoveRequest :: Ros1Xarm_msgsMoveRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsMoveRequest value = do
  if length (ros1Xarm_msgsMoveRequest_pose value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros1Xarm_msgsMoveRequest_pose value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsMoveRequest_pose value)
  b1 <- W.encodeFloat32 (ros1Xarm_msgsMoveRequest_mvvelo value)
  b2 <- W.encodeFloat32 (ros1Xarm_msgsMoveRequest_mvacc value)
  b3 <- W.encodeFloat32 (ros1Xarm_msgsMoveRequest_mvtime value)
  b4 <- W.encodeFloat32 (ros1Xarm_msgsMoveRequest_mvradii value)
  W.bounded 84 [prefix0, b0, b1, b2, b3, b4]
readRos1Xarm_msgsMoveRequest :: W.Decoder Ros1Xarm_msgsMoveRequest
readRos1Xarm_msgsMoveRequest = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.float32)
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  let value = Ros1Xarm_msgsMoveRequest a0 a1 a2 a3 a4
  case encodeRos1Xarm_msgsMoveRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsMoveRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsMoveRequest
decodeRos1Xarm_msgsMoveRequest = W.runDecoder 84 readRos1Xarm_msgsMoveRequest
instance Canonical Ros1Xarm_msgsMoveRequest where
  maximumBytes _ = 84
  encodeValue = encodeRos1Xarm_msgsMoveRequest
  readValue = readRos1Xarm_msgsMoveRequest
data Ros1Xarm_msgsMoveResponse = Ros1Xarm_msgsMoveResponse
  {
    -- | \@brief xarm_msgs/MoveResponse.ret: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsMoveResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/MoveResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsMoveResponse_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Xarm_msgsMoveResponse :: Ros1Xarm_msgsMoveResponse
defaultRos1Xarm_msgsMoveResponse = Ros1Xarm_msgsMoveResponse (0) (T.empty)
ros1Xarm_msgsMoveResponseCodecIdentity :: String
ros1Xarm_msgsMoveResponseCodecIdentity = "UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658"
encodeRos1Xarm_msgsMoveResponse :: Ros1Xarm_msgsMoveResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsMoveResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsMoveResponse_ret value))
  b1 <- W.encodeText 128 True (ros1Xarm_msgsMoveResponse_message value)
  W.bounded 134 [b0, b1]
readRos1Xarm_msgsMoveResponse :: W.Decoder Ros1Xarm_msgsMoveResponse
readRos1Xarm_msgsMoveResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 128 True
  let value = Ros1Xarm_msgsMoveResponse a0 a1
  case encodeRos1Xarm_msgsMoveResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsMoveResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsMoveResponse
decodeRos1Xarm_msgsMoveResponse = W.runDecoder 134 readRos1Xarm_msgsMoveResponse
instance Canonical Ros1Xarm_msgsMoveResponse where
  maximumBytes _ = 134
  encodeValue = encodeRos1Xarm_msgsMoveResponse
  readValue = readRos1Xarm_msgsMoveResponse
data Ros1Xarm_msgsRobotMsg = Ros1Xarm_msgsRobotMsg
  {
    -- | \@brief xarm_msgs/RobotMsg.state: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsRobotMsg_state :: Int16
  ,
    -- | \@brief xarm_msgs/RobotMsg.mode: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsRobotMsg_mode :: Int16
  ,
    -- | \@brief xarm_msgs/RobotMsg.cmdnum: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsRobotMsg_cmdnum :: Int16
  ,
    -- | \@brief xarm_msgs/RobotMsg.mt_brake: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsRobotMsg_mt_brake :: Int16
  ,
    -- | \@brief xarm_msgs/RobotMsg.mt_able: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsRobotMsg_mt_able :: Int16
  ,
    -- | \@brief xarm_msgs/RobotMsg.err: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsRobotMsg_err :: Int16
  ,
    -- | \@brief xarm_msgs/RobotMsg.warn: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsRobotMsg_warn :: Int16
  ,
    -- | \@brief xarm_msgs/RobotMsg.angle: float32; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsRobotMsg_angle :: [Float]
  ,
    -- | \@brief xarm_msgs/RobotMsg.pose: float32; exactly 6 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsRobotMsg_pose :: [Float]
  ,
    -- | \@brief xarm_msgs/RobotMsg.offset: float32; exactly 6 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsRobotMsg_offset :: [Float]
  } deriving (Eq, Show)
defaultRos1Xarm_msgsRobotMsg :: Ros1Xarm_msgsRobotMsg
defaultRos1Xarm_msgsRobotMsg = Ros1Xarm_msgsRobotMsg (0) (0) (0) (0) (0) (0) (0) ([]) (replicate 6 (0)) (replicate 6 (0))
ros1Xarm_msgsRobotMsgCodecIdentity :: String
ros1Xarm_msgsRobotMsgCodecIdentity = "UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41"
encodeRos1Xarm_msgsRobotMsg :: Ros1Xarm_msgsRobotMsg -> Either Word32 B.ByteString
encodeRos1Xarm_msgsRobotMsg value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_state value))
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_mode value))
  b2 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_cmdnum value))
  b3 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_mt_brake value))
  b4 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_mt_able value))
  b5 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_err value))
  b6 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_warn value))
  if length (ros1Xarm_msgsRobotMsg_angle value) > 16 then Left 22 else Right ()
  prefix7 <- W.encodeCount 16 (length (ros1Xarm_msgsRobotMsg_angle value))
  b7 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsRobotMsg_angle value)
  if length (ros1Xarm_msgsRobotMsg_pose value) /= 6 then Left 22 else Right ()
  b8 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsRobotMsg_pose value)
  if length (ros1Xarm_msgsRobotMsg_offset value) /= 6 then Left 22 else Right ()
  b9 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsRobotMsg_offset value)
  W.bounded 130 [b0, b1, b2, b3, b4, b5, b6, prefix7, b7, b8, b9]
readRos1Xarm_msgsRobotMsg :: W.Decoder Ros1Xarm_msgsRobotMsg
readRos1Xarm_msgsRobotMsg = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- fromIntegral <$> W.signed 2
  a2 <- fromIntegral <$> W.signed 2
  a3 <- fromIntegral <$> W.signed 2
  a4 <- fromIntegral <$> W.signed 2
  a5 <- fromIntegral <$> W.signed 2
  a6 <- fromIntegral <$> W.signed 2
  count7 <- W.count 16
  a7 <- replicateM count7 (W.float32)
  a8 <- replicateM 6 (W.float32)
  a9 <- replicateM 6 (W.float32)
  let value = Ros1Xarm_msgsRobotMsg a0 a1 a2 a3 a4 a5 a6 a7 a8 a9
  case encodeRos1Xarm_msgsRobotMsg value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsRobotMsg :: B.ByteString -> Either Word32 Ros1Xarm_msgsRobotMsg
decodeRos1Xarm_msgsRobotMsg = W.runDecoder 130 readRos1Xarm_msgsRobotMsg
instance Canonical Ros1Xarm_msgsRobotMsg where
  maximumBytes _ = 130
  encodeValue = encodeRos1Xarm_msgsRobotMsg
  readValue = readRos1Xarm_msgsRobotMsg
data Ros1Xarm_msgsSetAxisRequest = Ros1Xarm_msgsSetAxisRequest
  {
    -- | \@brief xarm_msgs/SetAxisRequest.id: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetAxisRequest_id :: Int16
  ,
    -- | \@brief xarm_msgs/SetAxisRequest.data: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetAxisRequest_data :: Int16
  } deriving (Eq, Show)
defaultRos1Xarm_msgsSetAxisRequest :: Ros1Xarm_msgsSetAxisRequest
defaultRos1Xarm_msgsSetAxisRequest = Ros1Xarm_msgsSetAxisRequest (0) (0)
ros1Xarm_msgsSetAxisRequestCodecIdentity :: String
ros1Xarm_msgsSetAxisRequestCodecIdentity = "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6"
encodeRos1Xarm_msgsSetAxisRequest :: Ros1Xarm_msgsSetAxisRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetAxisRequest value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetAxisRequest_id value))
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetAxisRequest_data value))
  W.bounded 4 [b0, b1]
readRos1Xarm_msgsSetAxisRequest :: W.Decoder Ros1Xarm_msgsSetAxisRequest
readRos1Xarm_msgsSetAxisRequest = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsSetAxisRequest a0 a1
  case encodeRos1Xarm_msgsSetAxisRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsSetAxisRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetAxisRequest
decodeRos1Xarm_msgsSetAxisRequest = W.runDecoder 4 readRos1Xarm_msgsSetAxisRequest
instance Canonical Ros1Xarm_msgsSetAxisRequest where
  maximumBytes _ = 4
  encodeValue = encodeRos1Xarm_msgsSetAxisRequest
  readValue = readRos1Xarm_msgsSetAxisRequest
data Ros1Xarm_msgsSetAxisResponse = Ros1Xarm_msgsSetAxisResponse
  {
    -- | \@brief xarm_msgs/SetAxisResponse.ret: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetAxisResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/SetAxisResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetAxisResponse_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Xarm_msgsSetAxisResponse :: Ros1Xarm_msgsSetAxisResponse
defaultRos1Xarm_msgsSetAxisResponse = Ros1Xarm_msgsSetAxisResponse (0) (T.empty)
ros1Xarm_msgsSetAxisResponseCodecIdentity :: String
ros1Xarm_msgsSetAxisResponseCodecIdentity = "UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7"
encodeRos1Xarm_msgsSetAxisResponse :: Ros1Xarm_msgsSetAxisResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetAxisResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetAxisResponse_ret value))
  b1 <- W.encodeText 128 True (ros1Xarm_msgsSetAxisResponse_message value)
  W.bounded 134 [b0, b1]
readRos1Xarm_msgsSetAxisResponse :: W.Decoder Ros1Xarm_msgsSetAxisResponse
readRos1Xarm_msgsSetAxisResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 128 True
  let value = Ros1Xarm_msgsSetAxisResponse a0 a1
  case encodeRos1Xarm_msgsSetAxisResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsSetAxisResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetAxisResponse
decodeRos1Xarm_msgsSetAxisResponse = W.runDecoder 134 readRos1Xarm_msgsSetAxisResponse
instance Canonical Ros1Xarm_msgsSetAxisResponse where
  maximumBytes _ = 134
  encodeValue = encodeRos1Xarm_msgsSetAxisResponse
  readValue = readRos1Xarm_msgsSetAxisResponse
data Ros1Xarm_msgsSetDigitalIORequest = Ros1Xarm_msgsSetDigitalIORequest
  {
    -- | \@brief xarm_msgs/SetDigitalIORequest.io_num: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetDigitalIORequest_io_num :: Int16
  ,
    -- | \@brief xarm_msgs/SetDigitalIORequest.value: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetDigitalIORequest_value :: Int16
  } deriving (Eq, Show)
defaultRos1Xarm_msgsSetDigitalIORequest :: Ros1Xarm_msgsSetDigitalIORequest
defaultRos1Xarm_msgsSetDigitalIORequest = Ros1Xarm_msgsSetDigitalIORequest (0) (0)
ros1Xarm_msgsSetDigitalIORequestCodecIdentity :: String
ros1Xarm_msgsSetDigitalIORequestCodecIdentity = "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959"
encodeRos1Xarm_msgsSetDigitalIORequest :: Ros1Xarm_msgsSetDigitalIORequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetDigitalIORequest value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetDigitalIORequest_io_num value))
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetDigitalIORequest_value value))
  W.bounded 4 [b0, b1]
readRos1Xarm_msgsSetDigitalIORequest :: W.Decoder Ros1Xarm_msgsSetDigitalIORequest
readRos1Xarm_msgsSetDigitalIORequest = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsSetDigitalIORequest a0 a1
  case encodeRos1Xarm_msgsSetDigitalIORequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsSetDigitalIORequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetDigitalIORequest
decodeRos1Xarm_msgsSetDigitalIORequest = W.runDecoder 4 readRos1Xarm_msgsSetDigitalIORequest
instance Canonical Ros1Xarm_msgsSetDigitalIORequest where
  maximumBytes _ = 4
  encodeValue = encodeRos1Xarm_msgsSetDigitalIORequest
  readValue = readRos1Xarm_msgsSetDigitalIORequest
data Ros1Xarm_msgsSetDigitalIOResponse = Ros1Xarm_msgsSetDigitalIOResponse
  {
    -- | \@brief xarm_msgs/SetDigitalIOResponse.ret: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetDigitalIOResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/SetDigitalIOResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetDigitalIOResponse_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Xarm_msgsSetDigitalIOResponse :: Ros1Xarm_msgsSetDigitalIOResponse
defaultRos1Xarm_msgsSetDigitalIOResponse = Ros1Xarm_msgsSetDigitalIOResponse (0) (T.empty)
ros1Xarm_msgsSetDigitalIOResponseCodecIdentity :: String
ros1Xarm_msgsSetDigitalIOResponseCodecIdentity = "UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c"
encodeRos1Xarm_msgsSetDigitalIOResponse :: Ros1Xarm_msgsSetDigitalIOResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetDigitalIOResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetDigitalIOResponse_ret value))
  b1 <- W.encodeText 128 True (ros1Xarm_msgsSetDigitalIOResponse_message value)
  W.bounded 134 [b0, b1]
readRos1Xarm_msgsSetDigitalIOResponse :: W.Decoder Ros1Xarm_msgsSetDigitalIOResponse
readRos1Xarm_msgsSetDigitalIOResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 128 True
  let value = Ros1Xarm_msgsSetDigitalIOResponse a0 a1
  case encodeRos1Xarm_msgsSetDigitalIOResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsSetDigitalIOResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetDigitalIOResponse
decodeRos1Xarm_msgsSetDigitalIOResponse = W.runDecoder 134 readRos1Xarm_msgsSetDigitalIOResponse
instance Canonical Ros1Xarm_msgsSetDigitalIOResponse where
  maximumBytes _ = 134
  encodeValue = encodeRos1Xarm_msgsSetDigitalIOResponse
  readValue = readRos1Xarm_msgsSetDigitalIOResponse
data Ros1Xarm_msgsSetInt16Request = Ros1Xarm_msgsSetInt16Request
  {
    -- | \@brief xarm_msgs/SetInt16Request.data: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetInt16Request_data :: Int16
  } deriving (Eq, Show)
defaultRos1Xarm_msgsSetInt16Request :: Ros1Xarm_msgsSetInt16Request
defaultRos1Xarm_msgsSetInt16Request = Ros1Xarm_msgsSetInt16Request (0)
ros1Xarm_msgsSetInt16RequestCodecIdentity :: String
ros1Xarm_msgsSetInt16RequestCodecIdentity = "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7"
encodeRos1Xarm_msgsSetInt16Request :: Ros1Xarm_msgsSetInt16Request -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetInt16Request value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetInt16Request_data value))
  W.bounded 2 [b0]
readRos1Xarm_msgsSetInt16Request :: W.Decoder Ros1Xarm_msgsSetInt16Request
readRos1Xarm_msgsSetInt16Request = do
  a0 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsSetInt16Request a0
  case encodeRos1Xarm_msgsSetInt16Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsSetInt16Request :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetInt16Request
decodeRos1Xarm_msgsSetInt16Request = W.runDecoder 2 readRos1Xarm_msgsSetInt16Request
instance Canonical Ros1Xarm_msgsSetInt16Request where
  maximumBytes _ = 2
  encodeValue = encodeRos1Xarm_msgsSetInt16Request
  readValue = readRos1Xarm_msgsSetInt16Request
data Ros1Xarm_msgsSetInt16Response = Ros1Xarm_msgsSetInt16Response
  {
    -- | \@brief xarm_msgs/SetInt16Response.ret: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetInt16Response_ret :: Int16
  ,
    -- | \@brief xarm_msgs/SetInt16Response.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetInt16Response_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Xarm_msgsSetInt16Response :: Ros1Xarm_msgsSetInt16Response
defaultRos1Xarm_msgsSetInt16Response = Ros1Xarm_msgsSetInt16Response (0) (T.empty)
ros1Xarm_msgsSetInt16ResponseCodecIdentity :: String
ros1Xarm_msgsSetInt16ResponseCodecIdentity = "UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d"
encodeRos1Xarm_msgsSetInt16Response :: Ros1Xarm_msgsSetInt16Response -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetInt16Response value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetInt16Response_ret value))
  b1 <- W.encodeText 128 True (ros1Xarm_msgsSetInt16Response_message value)
  W.bounded 134 [b0, b1]
readRos1Xarm_msgsSetInt16Response :: W.Decoder Ros1Xarm_msgsSetInt16Response
readRos1Xarm_msgsSetInt16Response = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 128 True
  let value = Ros1Xarm_msgsSetInt16Response a0 a1
  case encodeRos1Xarm_msgsSetInt16Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsSetInt16Response :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetInt16Response
decodeRos1Xarm_msgsSetInt16Response = W.runDecoder 134 readRos1Xarm_msgsSetInt16Response
instance Canonical Ros1Xarm_msgsSetInt16Response where
  maximumBytes _ = 134
  encodeValue = encodeRos1Xarm_msgsSetInt16Response
  readValue = readRos1Xarm_msgsSetInt16Response
data Ros1Xarm_msgsSetLoadRequest = Ros1Xarm_msgsSetLoadRequest
  {
    -- | \@brief xarm_msgs/SetLoadRequest.mass: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetLoadRequest_mass :: Float
  ,
    -- | \@brief xarm_msgs/SetLoadRequest.xc: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetLoadRequest_xc :: Float
  ,
    -- | \@brief xarm_msgs/SetLoadRequest.yc: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetLoadRequest_yc :: Float
  ,
    -- | \@brief xarm_msgs/SetLoadRequest.zc: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetLoadRequest_zc :: Float
  } deriving (Eq, Show)
defaultRos1Xarm_msgsSetLoadRequest :: Ros1Xarm_msgsSetLoadRequest
defaultRos1Xarm_msgsSetLoadRequest = Ros1Xarm_msgsSetLoadRequest (0) (0) (0) (0)
ros1Xarm_msgsSetLoadRequestCodecIdentity :: String
ros1Xarm_msgsSetLoadRequestCodecIdentity = "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077"
encodeRos1Xarm_msgsSetLoadRequest :: Ros1Xarm_msgsSetLoadRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetLoadRequest value = do
  b0 <- W.encodeFloat32 (ros1Xarm_msgsSetLoadRequest_mass value)
  b1 <- W.encodeFloat32 (ros1Xarm_msgsSetLoadRequest_xc value)
  b2 <- W.encodeFloat32 (ros1Xarm_msgsSetLoadRequest_yc value)
  b3 <- W.encodeFloat32 (ros1Xarm_msgsSetLoadRequest_zc value)
  W.bounded 16 [b0, b1, b2, b3]
readRos1Xarm_msgsSetLoadRequest :: W.Decoder Ros1Xarm_msgsSetLoadRequest
readRos1Xarm_msgsSetLoadRequest = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros1Xarm_msgsSetLoadRequest a0 a1 a2 a3
  case encodeRos1Xarm_msgsSetLoadRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsSetLoadRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetLoadRequest
decodeRos1Xarm_msgsSetLoadRequest = W.runDecoder 16 readRos1Xarm_msgsSetLoadRequest
instance Canonical Ros1Xarm_msgsSetLoadRequest where
  maximumBytes _ = 16
  encodeValue = encodeRos1Xarm_msgsSetLoadRequest
  readValue = readRos1Xarm_msgsSetLoadRequest
data Ros1Xarm_msgsSetLoadResponse = Ros1Xarm_msgsSetLoadResponse
  {
    -- | \@brief xarm_msgs/SetLoadResponse.ret: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetLoadResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/SetLoadResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetLoadResponse_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Xarm_msgsSetLoadResponse :: Ros1Xarm_msgsSetLoadResponse
defaultRos1Xarm_msgsSetLoadResponse = Ros1Xarm_msgsSetLoadResponse (0) (T.empty)
ros1Xarm_msgsSetLoadResponseCodecIdentity :: String
ros1Xarm_msgsSetLoadResponseCodecIdentity = "UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3"
encodeRos1Xarm_msgsSetLoadResponse :: Ros1Xarm_msgsSetLoadResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetLoadResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetLoadResponse_ret value))
  b1 <- W.encodeText 128 True (ros1Xarm_msgsSetLoadResponse_message value)
  W.bounded 134 [b0, b1]
readRos1Xarm_msgsSetLoadResponse :: W.Decoder Ros1Xarm_msgsSetLoadResponse
readRos1Xarm_msgsSetLoadResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 128 True
  let value = Ros1Xarm_msgsSetLoadResponse a0 a1
  case encodeRos1Xarm_msgsSetLoadResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsSetLoadResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetLoadResponse
decodeRos1Xarm_msgsSetLoadResponse = W.runDecoder 134 readRos1Xarm_msgsSetLoadResponse
instance Canonical Ros1Xarm_msgsSetLoadResponse where
  maximumBytes _ = 134
  encodeValue = encodeRos1Xarm_msgsSetLoadResponse
  readValue = readRos1Xarm_msgsSetLoadResponse
data Ros1Xarm_msgsSetToolModbusRequest = Ros1Xarm_msgsSetToolModbusRequest
  {
    -- | \@brief xarm_msgs/SetToolModbusRequest.send_data: uint8; 0..256 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetToolModbusRequest_send_data :: [Word8]
  ,
    -- | \@brief xarm_msgs/SetToolModbusRequest.respond_len: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetToolModbusRequest_respond_len :: Int16
  } deriving (Eq, Show)
defaultRos1Xarm_msgsSetToolModbusRequest :: Ros1Xarm_msgsSetToolModbusRequest
defaultRos1Xarm_msgsSetToolModbusRequest = Ros1Xarm_msgsSetToolModbusRequest ([]) (0)
ros1Xarm_msgsSetToolModbusRequestCodecIdentity :: String
ros1Xarm_msgsSetToolModbusRequestCodecIdentity = "UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a"
encodeRos1Xarm_msgsSetToolModbusRequest :: Ros1Xarm_msgsSetToolModbusRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetToolModbusRequest value = do
  if length (ros1Xarm_msgsSetToolModbusRequest_send_data value) > 256 then Left 22 else Right ()
  prefix0 <- W.encodeCount 256 (length (ros1Xarm_msgsSetToolModbusRequest_send_data value))
  b0 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e))) (ros1Xarm_msgsSetToolModbusRequest_send_data value)
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetToolModbusRequest_respond_len value))
  W.bounded 262 [prefix0, b0, b1]
readRos1Xarm_msgsSetToolModbusRequest :: W.Decoder Ros1Xarm_msgsSetToolModbusRequest
readRos1Xarm_msgsSetToolModbusRequest = do
  count0 <- W.count 256
  a0 <- replicateM count0 (fromIntegral <$> W.unsigned 1)
  a1 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsSetToolModbusRequest a0 a1
  case encodeRos1Xarm_msgsSetToolModbusRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsSetToolModbusRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetToolModbusRequest
decodeRos1Xarm_msgsSetToolModbusRequest = W.runDecoder 262 readRos1Xarm_msgsSetToolModbusRequest
instance Canonical Ros1Xarm_msgsSetToolModbusRequest where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsSetToolModbusRequest
  readValue = readRos1Xarm_msgsSetToolModbusRequest
data Ros1Xarm_msgsSetToolModbusResponse = Ros1Xarm_msgsSetToolModbusResponse
  {
    -- | \@brief xarm_msgs/SetToolModbusResponse.ret: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetToolModbusResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/SetToolModbusResponse.respond_data: uint8; 0..256 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsSetToolModbusResponse_respond_data :: [Word8]
  } deriving (Eq, Show)
defaultRos1Xarm_msgsSetToolModbusResponse :: Ros1Xarm_msgsSetToolModbusResponse
defaultRos1Xarm_msgsSetToolModbusResponse = Ros1Xarm_msgsSetToolModbusResponse (0) ([])
ros1Xarm_msgsSetToolModbusResponseCodecIdentity :: String
ros1Xarm_msgsSetToolModbusResponseCodecIdentity = "UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15"
encodeRos1Xarm_msgsSetToolModbusResponse :: Ros1Xarm_msgsSetToolModbusResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetToolModbusResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetToolModbusResponse_ret value))
  if length (ros1Xarm_msgsSetToolModbusResponse_respond_data value) > 256 then Left 22 else Right ()
  prefix1 <- W.encodeCount 256 (length (ros1Xarm_msgsSetToolModbusResponse_respond_data value))
  b1 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e))) (ros1Xarm_msgsSetToolModbusResponse_respond_data value)
  W.bounded 262 [b0, prefix1, b1]
readRos1Xarm_msgsSetToolModbusResponse :: W.Decoder Ros1Xarm_msgsSetToolModbusResponse
readRos1Xarm_msgsSetToolModbusResponse = do
  a0 <- fromIntegral <$> W.signed 2
  count1 <- W.count 256
  a1 <- replicateM count1 (fromIntegral <$> W.unsigned 1)
  let value = Ros1Xarm_msgsSetToolModbusResponse a0 a1
  case encodeRos1Xarm_msgsSetToolModbusResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsSetToolModbusResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetToolModbusResponse
decodeRos1Xarm_msgsSetToolModbusResponse = W.runDecoder 262 readRos1Xarm_msgsSetToolModbusResponse
instance Canonical Ros1Xarm_msgsSetToolModbusResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsSetToolModbusResponse
  readValue = readRos1Xarm_msgsSetToolModbusResponse
data Ros1Xarm_msgsTCPOffsetRequest = Ros1Xarm_msgsTCPOffsetRequest
  {
    -- | \@brief xarm_msgs/TCPOffsetRequest.x: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsTCPOffsetRequest_x :: Float
  ,
    -- | \@brief xarm_msgs/TCPOffsetRequest.y: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsTCPOffsetRequest_y :: Float
  ,
    -- | \@brief xarm_msgs/TCPOffsetRequest.z: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsTCPOffsetRequest_z :: Float
  ,
    -- | \@brief xarm_msgs/TCPOffsetRequest.roll: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsTCPOffsetRequest_roll :: Float
  ,
    -- | \@brief xarm_msgs/TCPOffsetRequest.pitch: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsTCPOffsetRequest_pitch :: Float
  ,
    -- | \@brief xarm_msgs/TCPOffsetRequest.yaw: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsTCPOffsetRequest_yaw :: Float
  } deriving (Eq, Show)
defaultRos1Xarm_msgsTCPOffsetRequest :: Ros1Xarm_msgsTCPOffsetRequest
defaultRos1Xarm_msgsTCPOffsetRequest = Ros1Xarm_msgsTCPOffsetRequest (0) (0) (0) (0) (0) (0)
ros1Xarm_msgsTCPOffsetRequestCodecIdentity :: String
ros1Xarm_msgsTCPOffsetRequestCodecIdentity = "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd"
encodeRos1Xarm_msgsTCPOffsetRequest :: Ros1Xarm_msgsTCPOffsetRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsTCPOffsetRequest value = do
  b0 <- W.encodeFloat32 (ros1Xarm_msgsTCPOffsetRequest_x value)
  b1 <- W.encodeFloat32 (ros1Xarm_msgsTCPOffsetRequest_y value)
  b2 <- W.encodeFloat32 (ros1Xarm_msgsTCPOffsetRequest_z value)
  b3 <- W.encodeFloat32 (ros1Xarm_msgsTCPOffsetRequest_roll value)
  b4 <- W.encodeFloat32 (ros1Xarm_msgsTCPOffsetRequest_pitch value)
  b5 <- W.encodeFloat32 (ros1Xarm_msgsTCPOffsetRequest_yaw value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
readRos1Xarm_msgsTCPOffsetRequest :: W.Decoder Ros1Xarm_msgsTCPOffsetRequest
readRos1Xarm_msgsTCPOffsetRequest = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros1Xarm_msgsTCPOffsetRequest a0 a1 a2 a3 a4 a5
  case encodeRos1Xarm_msgsTCPOffsetRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsTCPOffsetRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsTCPOffsetRequest
decodeRos1Xarm_msgsTCPOffsetRequest = W.runDecoder 24 readRos1Xarm_msgsTCPOffsetRequest
instance Canonical Ros1Xarm_msgsTCPOffsetRequest where
  maximumBytes _ = 24
  encodeValue = encodeRos1Xarm_msgsTCPOffsetRequest
  readValue = readRos1Xarm_msgsTCPOffsetRequest
data Ros1Xarm_msgsTCPOffsetResponse = Ros1Xarm_msgsTCPOffsetResponse
  {
    -- | \@brief xarm_msgs/TCPOffsetResponse.ret: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsTCPOffsetResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/TCPOffsetResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/haskell/API.md
    ros1Xarm_msgsTCPOffsetResponse_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Xarm_msgsTCPOffsetResponse :: Ros1Xarm_msgsTCPOffsetResponse
defaultRos1Xarm_msgsTCPOffsetResponse = Ros1Xarm_msgsTCPOffsetResponse (0) (T.empty)
ros1Xarm_msgsTCPOffsetResponseCodecIdentity :: String
ros1Xarm_msgsTCPOffsetResponseCodecIdentity = "UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773"
encodeRos1Xarm_msgsTCPOffsetResponse :: Ros1Xarm_msgsTCPOffsetResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsTCPOffsetResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsTCPOffsetResponse_ret value))
  b1 <- W.encodeText 128 True (ros1Xarm_msgsTCPOffsetResponse_message value)
  W.bounded 134 [b0, b1]
readRos1Xarm_msgsTCPOffsetResponse :: W.Decoder Ros1Xarm_msgsTCPOffsetResponse
readRos1Xarm_msgsTCPOffsetResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 128 True
  let value = Ros1Xarm_msgsTCPOffsetResponse a0 a1
  case encodeRos1Xarm_msgsTCPOffsetResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Xarm_msgsTCPOffsetResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsTCPOffsetResponse
decodeRos1Xarm_msgsTCPOffsetResponse = W.runDecoder 134 readRos1Xarm_msgsTCPOffsetResponse
instance Canonical Ros1Xarm_msgsTCPOffsetResponse where
  maximumBytes _ = 134
  encodeValue = encodeRos1Xarm_msgsTCPOffsetResponse
  readValue = readRos1Xarm_msgsTCPOffsetResponse
