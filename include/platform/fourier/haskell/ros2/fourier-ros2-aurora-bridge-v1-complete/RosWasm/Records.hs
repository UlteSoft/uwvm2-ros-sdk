-- @file Records.hs
-- @brief Full fourier haskell codecs and original record metadata.
-- @details Complete fourier ros2_aurora_bridge_v1 values in haskell. 51 original records retain 138 fields and 28
-- interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
-- definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
-- profile API manual under document/platform/fourier/en_US/catalog/.
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
data Ros2Uwvm_fourier_bridgeMsgGroupState = Ros2Uwvm_fourier_bridgeMsgGroupState
  {
    -- | \@brief uwvm_fourier_bridge/msg/GroupState.group: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgGroupState_group :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/msg/GroupState.position: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgGroupState_position :: [Double]
  ,
    -- | \@brief uwvm_fourier_bridge/msg/GroupState.velocity: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgGroupState_velocity :: [Double]
  ,
    -- | \@brief uwvm_fourier_bridge/msg/GroupState.effort: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgGroupState_effort :: [Double]
  ,
    -- | \@brief uwvm_fourier_bridge/msg/GroupState.motion_state: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgGroupState_motion_state :: Int32
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeMsgGroupState :: Ros2Uwvm_fourier_bridgeMsgGroupState
defaultRos2Uwvm_fourier_bridgeMsgGroupState = Ros2Uwvm_fourier_bridgeMsgGroupState (T.empty) ([]) ([]) ([]) (0)
ros2Uwvm_fourier_bridgeMsgGroupStateCodecIdentity :: String
ros2Uwvm_fourier_bridgeMsgGroupStateCodecIdentity =
    "UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4"
encodeRos2Uwvm_fourier_bridgeMsgGroupState :: Ros2Uwvm_fourier_bridgeMsgGroupState -> Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeMsgGroupState value = do
  b0 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeMsgGroupState_group value)
  if length (ros2Uwvm_fourier_bridgeMsgGroupState_position value) > 64 then Left 22 else Right ()
  prefix1 <- W.encodeCount 64 (length (ros2Uwvm_fourier_bridgeMsgGroupState_position value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Uwvm_fourier_bridgeMsgGroupState_position value)
  if length (ros2Uwvm_fourier_bridgeMsgGroupState_velocity value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros2Uwvm_fourier_bridgeMsgGroupState_velocity value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Uwvm_fourier_bridgeMsgGroupState_velocity value)
  if length (ros2Uwvm_fourier_bridgeMsgGroupState_effort value) > 64 then Left 22 else Right ()
  prefix3 <- W.encodeCount 64 (length (ros2Uwvm_fourier_bridgeMsgGroupState_effort value))
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Uwvm_fourier_bridgeMsgGroupState_effort value)
  b4 <- W.encodeSigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeMsgGroupState_motion_state value))
  W.bounded 1684 [b0, prefix1, b1, prefix2, b2, prefix3, b3, b4]
readRos2Uwvm_fourier_bridgeMsgGroupState :: W.Decoder Ros2Uwvm_fourier_bridgeMsgGroupState
readRos2Uwvm_fourier_bridgeMsgGroupState = do
  a0 <- W.text 128 True
  count1 <- W.count 64
  a1 <- replicateM count1 (W.float64)
  count2 <- W.count 64
  a2 <- replicateM count2 (W.float64)
  count3 <- W.count 64
  a3 <- replicateM count3 (W.float64)
  a4 <- fromIntegral <$> W.signed 4
  let value = Ros2Uwvm_fourier_bridgeMsgGroupState a0 a1 a2 a3 a4
  case encodeRos2Uwvm_fourier_bridgeMsgGroupState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeMsgGroupState :: B.ByteString -> Either Word32 Ros2Uwvm_fourier_bridgeMsgGroupState
decodeRos2Uwvm_fourier_bridgeMsgGroupState = W.runDecoder 1684 readRos2Uwvm_fourier_bridgeMsgGroupState
instance Canonical Ros2Uwvm_fourier_bridgeMsgGroupState where
  maximumBytes _ = 1684
  encodeValue = encodeRos2Uwvm_fourier_bridgeMsgGroupState
  readValue = readRos2Uwvm_fourier_bridgeMsgGroupState
data Ros2Uwvm_fourier_bridgeMsgGroupValues = Ros2Uwvm_fourier_bridgeMsgGroupValues
  {
    -- | \@brief uwvm_fourier_bridge/msg/GroupValues.group: string; each string is 0..128 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgGroupValues_group :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/msg/GroupValues.values: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgGroupValues_values :: [Double]
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeMsgGroupValues :: Ros2Uwvm_fourier_bridgeMsgGroupValues
defaultRos2Uwvm_fourier_bridgeMsgGroupValues = Ros2Uwvm_fourier_bridgeMsgGroupValues (T.empty) ([])
ros2Uwvm_fourier_bridgeMsgGroupValuesCodecIdentity :: String
ros2Uwvm_fourier_bridgeMsgGroupValuesCodecIdentity =
    "UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3"
encodeRos2Uwvm_fourier_bridgeMsgGroupValues :: Ros2Uwvm_fourier_bridgeMsgGroupValues -> Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeMsgGroupValues value = do
  b0 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeMsgGroupValues_group value)
  if length (ros2Uwvm_fourier_bridgeMsgGroupValues_values value) > 64 then Left 22 else Right ()
  prefix1 <- W.encodeCount 64 (length (ros2Uwvm_fourier_bridgeMsgGroupValues_values value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Uwvm_fourier_bridgeMsgGroupValues_values value)
  W.bounded 648 [b0, prefix1, b1]
readRos2Uwvm_fourier_bridgeMsgGroupValues :: W.Decoder Ros2Uwvm_fourier_bridgeMsgGroupValues
readRos2Uwvm_fourier_bridgeMsgGroupValues = do
  a0 <- W.text 128 True
  count1 <- W.count 64
  a1 <- replicateM count1 (W.float64)
  let value = Ros2Uwvm_fourier_bridgeMsgGroupValues a0 a1
  case encodeRos2Uwvm_fourier_bridgeMsgGroupValues value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeMsgGroupValues :: B.ByteString -> Either Word32 Ros2Uwvm_fourier_bridgeMsgGroupValues
decodeRos2Uwvm_fourier_bridgeMsgGroupValues = W.runDecoder 648 readRos2Uwvm_fourier_bridgeMsgGroupValues
instance Canonical Ros2Uwvm_fourier_bridgeMsgGroupValues where
  maximumBytes _ = 648
  encodeValue = encodeRos2Uwvm_fourier_bridgeMsgGroupValues
  readValue = readRos2Uwvm_fourier_bridgeMsgGroupValues
data Ros2Uwvm_fourier_bridgeMsgMotionRecipe = Ros2Uwvm_fourier_bridgeMsgMotionRecipe
  {
    -- | \@brief uwvm_fourier_bridge/msg/MotionRecipe.move_type: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgMotionRecipe_move_type :: Word8
  ,
    -- | \@brief uwvm_fourier_bridge/msg/MotionRecipe.group: string; each string is 0..128 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgMotionRecipe_group :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/msg/MotionRecipe.position: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgMotionRecipe_position :: [Double]
  ,
    -- | \@brief uwvm_fourier_bridge/msg/MotionRecipe.has_velocity: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgMotionRecipe_has_velocity :: Bool
  ,
    -- | \@brief uwvm_fourier_bridge/msg/MotionRecipe.velocity: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgMotionRecipe_velocity :: [Double]
  ,
    -- | \@brief uwvm_fourier_bridge/msg/MotionRecipe.expected_velocity: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgMotionRecipe_expected_velocity :: Int32
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeMsgMotionRecipe :: Ros2Uwvm_fourier_bridgeMsgMotionRecipe
defaultRos2Uwvm_fourier_bridgeMsgMotionRecipe = Ros2Uwvm_fourier_bridgeMsgMotionRecipe (0) (T.empty) ([]) (False)
    ([]) (0)
ros2Uwvm_fourier_bridgeMsgMotionRecipeCodecIdentity :: String
ros2Uwvm_fourier_bridgeMsgMotionRecipeCodecIdentity =
    "UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14"
encodeRos2Uwvm_fourier_bridgeMsgMotionRecipe :: Ros2Uwvm_fourier_bridgeMsgMotionRecipe -> Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeMsgMotionRecipe value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Uwvm_fourier_bridgeMsgMotionRecipe_move_type value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeMsgMotionRecipe_group value)
  if length (ros2Uwvm_fourier_bridgeMsgMotionRecipe_position value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros2Uwvm_fourier_bridgeMsgMotionRecipe_position value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Uwvm_fourier_bridgeMsgMotionRecipe_position value)
  b3 <- W.encodeBool (ros2Uwvm_fourier_bridgeMsgMotionRecipe_has_velocity value)
  if length (ros2Uwvm_fourier_bridgeMsgMotionRecipe_velocity value) > 64 then Left 22 else Right ()
  prefix4 <- W.encodeCount 64 (length (ros2Uwvm_fourier_bridgeMsgMotionRecipe_velocity value))
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Uwvm_fourier_bridgeMsgMotionRecipe_velocity value)
  b5 <- W.encodeSigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeMsgMotionRecipe_expected_velocity value))
  W.bounded 1170 [b0, b1, prefix2, b2, b3, prefix4, b4, b5]
readRos2Uwvm_fourier_bridgeMsgMotionRecipe :: W.Decoder Ros2Uwvm_fourier_bridgeMsgMotionRecipe
readRos2Uwvm_fourier_bridgeMsgMotionRecipe = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- W.text 128 True
  count2 <- W.count 64
  a2 <- replicateM count2 (W.float64)
  a3 <- W.boolean
  count4 <- W.count 64
  a4 <- replicateM count4 (W.float64)
  a5 <- fromIntegral <$> W.signed 4
  let value = Ros2Uwvm_fourier_bridgeMsgMotionRecipe a0 a1 a2 a3 a4 a5
  case encodeRos2Uwvm_fourier_bridgeMsgMotionRecipe value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeMsgMotionRecipe :: B.ByteString -> Either Word32 Ros2Uwvm_fourier_bridgeMsgMotionRecipe
decodeRos2Uwvm_fourier_bridgeMsgMotionRecipe = W.runDecoder 1170 readRos2Uwvm_fourier_bridgeMsgMotionRecipe
instance Canonical Ros2Uwvm_fourier_bridgeMsgMotionRecipe where
  maximumBytes _ = 1170
  encodeValue = encodeRos2Uwvm_fourier_bridgeMsgMotionRecipe
  readValue = readRos2Uwvm_fourier_bridgeMsgMotionRecipe
data Ros2Uwvm_fourier_bridgeMsgStatus = Ros2Uwvm_fourier_bridgeMsgStatus
  {
    -- | \@brief uwvm_fourier_bridge/msg/Status.fsm_state: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgStatus_fsm_state :: Int32
  ,
    -- | \@brief uwvm_fourier_bridge/msg/Status.fsm_name: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgStatus_fsm_name :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/msg/Status.upper_fsm_state: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgStatus_upper_fsm_state :: Int32
  ,
    -- | \@brief uwvm_fourier_bridge/msg/Status.upper_fsm_name: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgStatus_upper_fsm_name :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/msg/Status.velocity_source: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgStatus_velocity_source :: Int32
  ,
    -- | \@brief uwvm_fourier_bridge/msg/Status.velocity_source_name: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgStatus_velocity_source_name :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/msg/Status.stand_pose: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgStatus_stand_pose :: [Double]
  ,
    -- | \@brief uwvm_fourier_bridge/msg/Status.groups: uwvm_fourier_bridge/msg/GroupState; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgStatus_groups :: [Ros2Uwvm_fourier_bridgeMsgGroupState]
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeMsgStatus :: Ros2Uwvm_fourier_bridgeMsgStatus
defaultRos2Uwvm_fourier_bridgeMsgStatus = Ros2Uwvm_fourier_bridgeMsgStatus (0) (T.empty) (0) (T.empty) (0) (T.empty)
    ([]) ([])
ros2Uwvm_fourier_bridgeMsgStatusCodecIdentity :: String
ros2Uwvm_fourier_bridgeMsgStatusCodecIdentity =
    "UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e"
encodeRos2Uwvm_fourier_bridgeMsgStatus :: Ros2Uwvm_fourier_bridgeMsgStatus -> Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeMsgStatus value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeMsgStatus_fsm_state value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeMsgStatus_fsm_name value)
  b2 <- W.encodeSigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeMsgStatus_upper_fsm_state value))
  b3 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeMsgStatus_upper_fsm_name value)
  b4 <- W.encodeSigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeMsgStatus_velocity_source value))
  b5 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeMsgStatus_velocity_source_name value)
  if length (ros2Uwvm_fourier_bridgeMsgStatus_stand_pose value) > 64 then Left 22 else Right ()
  prefix6 <- W.encodeCount 64 (length (ros2Uwvm_fourier_bridgeMsgStatus_stand_pose value))
  b6 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Uwvm_fourier_bridgeMsgStatus_stand_pose value)
  if length (ros2Uwvm_fourier_bridgeMsgStatus_groups value) > 8 then Left 22 else Right ()
  prefix7 <- W.encodeCount 8 (length (ros2Uwvm_fourier_bridgeMsgStatus_groups value))
  b7 <- B.concat <$> mapM (\e -> encodeRos2Uwvm_fourier_bridgeMsgGroupState (e))
      (ros2Uwvm_fourier_bridgeMsgStatus_groups value)
  W.bounded 14400 [b0, b1, b2, b3, b4, b5, prefix6, b6, prefix7, b7]
readRos2Uwvm_fourier_bridgeMsgStatus :: W.Decoder Ros2Uwvm_fourier_bridgeMsgStatus
readRos2Uwvm_fourier_bridgeMsgStatus = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- W.text 128 True
  a2 <- fromIntegral <$> W.signed 4
  a3 <- W.text 128 True
  a4 <- fromIntegral <$> W.signed 4
  a5 <- W.text 128 True
  count6 <- W.count 64
  a6 <- replicateM count6 (W.float64)
  count7 <- W.count 8
  a7 <- replicateM count7 (readRos2Uwvm_fourier_bridgeMsgGroupState)
  let value = Ros2Uwvm_fourier_bridgeMsgStatus a0 a1 a2 a3 a4 a5 a6 a7
  case encodeRos2Uwvm_fourier_bridgeMsgStatus value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeMsgStatus :: B.ByteString -> Either Word32 Ros2Uwvm_fourier_bridgeMsgStatus
decodeRos2Uwvm_fourier_bridgeMsgStatus = W.runDecoder 14400 readRos2Uwvm_fourier_bridgeMsgStatus
instance Canonical Ros2Uwvm_fourier_bridgeMsgStatus where
  maximumBytes _ = 14400
  encodeValue = encodeRos2Uwvm_fourier_bridgeMsgStatus
  readValue = readRos2Uwvm_fourier_bridgeMsgStatus
data Ros2Uwvm_fourier_bridgeMsgVelocityCommand = Ros2Uwvm_fourier_bridgeMsgVelocityCommand
  {
    -- | \@brief uwvm_fourier_bridge/msg/VelocityCommand.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgVelocityCommand_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/msg/VelocityCommand.vx: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgVelocityCommand_vx :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/msg/VelocityCommand.vy: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgVelocityCommand_vy :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/msg/VelocityCommand.yaw: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgVelocityCommand_yaw :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/msg/VelocityCommand.duration: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeMsgVelocityCommand_duration :: Double
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeMsgVelocityCommand :: Ros2Uwvm_fourier_bridgeMsgVelocityCommand
defaultRos2Uwvm_fourier_bridgeMsgVelocityCommand = Ros2Uwvm_fourier_bridgeMsgVelocityCommand (0) (0) (0) (0) (0)
ros2Uwvm_fourier_bridgeMsgVelocityCommandCodecIdentity :: String
ros2Uwvm_fourier_bridgeMsgVelocityCommandCodecIdentity =
    "UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d"
encodeRos2Uwvm_fourier_bridgeMsgVelocityCommand :: Ros2Uwvm_fourier_bridgeMsgVelocityCommand -> Either Word32
    B.ByteString
encodeRos2Uwvm_fourier_bridgeMsgVelocityCommand value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeMsgVelocityCommand_sequence value))
  b1 <- W.encodeFloat64 (ros2Uwvm_fourier_bridgeMsgVelocityCommand_vx value)
  b2 <- W.encodeFloat64 (ros2Uwvm_fourier_bridgeMsgVelocityCommand_vy value)
  b3 <- W.encodeFloat64 (ros2Uwvm_fourier_bridgeMsgVelocityCommand_yaw value)
  b4 <- W.encodeFloat64 (ros2Uwvm_fourier_bridgeMsgVelocityCommand_duration value)
  W.bounded 40 [b0, b1, b2, b3, b4]
readRos2Uwvm_fourier_bridgeMsgVelocityCommand :: W.Decoder Ros2Uwvm_fourier_bridgeMsgVelocityCommand
readRos2Uwvm_fourier_bridgeMsgVelocityCommand = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  a4 <- W.float64
  let value = Ros2Uwvm_fourier_bridgeMsgVelocityCommand a0 a1 a2 a3 a4
  case encodeRos2Uwvm_fourier_bridgeMsgVelocityCommand value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeMsgVelocityCommand :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeMsgVelocityCommand
decodeRos2Uwvm_fourier_bridgeMsgVelocityCommand = W.runDecoder 40 readRos2Uwvm_fourier_bridgeMsgVelocityCommand
instance Canonical Ros2Uwvm_fourier_bridgeMsgVelocityCommand where
  maximumBytes _ = 40
  encodeValue = encodeRos2Uwvm_fourier_bridgeMsgVelocityCommand
  readValue = readRos2Uwvm_fourier_bridgeMsgVelocityCommand
data Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/ExecuteMove_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvExecuteMove_Request_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/srv/ExecuteMove_Request.moves: uwvm_fourier_bridge/msg/MotionRecipe; 0..8
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvExecuteMove_Request_moves :: [Ros2Uwvm_fourier_bridgeMsgMotionRecipe]
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvExecuteMove_Request :: Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request
defaultRos2Uwvm_fourier_bridgeSrvExecuteMove_Request = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request (0) ([])
ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodecIdentity =
    "UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b"
encodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Request :: Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvExecuteMove_Request_sequence value))
  if length (ros2Uwvm_fourier_bridgeSrvExecuteMove_Request_moves value) > 8 then Left 22 else Right ()
  prefix1 <- W.encodeCount 8 (length (ros2Uwvm_fourier_bridgeSrvExecuteMove_Request_moves value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2Uwvm_fourier_bridgeMsgMotionRecipe (e))
      (ros2Uwvm_fourier_bridgeSrvExecuteMove_Request_moves value)
  W.bounded 9372 [b0, prefix1, b1]
readRos2Uwvm_fourier_bridgeSrvExecuteMove_Request :: W.Decoder Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request
readRos2Uwvm_fourier_bridgeSrvExecuteMove_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  count1 <- W.count 8
  a1 <- replicateM count1 (readRos2Uwvm_fourier_bridgeMsgMotionRecipe)
  let value = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request a0 a1
  case encodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request
decodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Request = W.runDecoder 9372
    readRos2Uwvm_fourier_bridgeSrvExecuteMove_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request where
  maximumBytes _ = 9372
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvExecuteMove_Request
data Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/ExecuteMove_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvExecuteMove_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/ExecuteMove_Response.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvExecuteMove_Response_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvExecuteMove_Response :: Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response
defaultRos2Uwvm_fourier_bridgeSrvExecuteMove_Response = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response (0) (T.empty)
ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodecIdentity =
    "UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab"
encodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Response :: Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvExecuteMove_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvExecuteMove_Response_error value)
  W.bounded 136 [b0, b1]
readRos2Uwvm_fourier_bridgeSrvExecuteMove_Response :: W.Decoder Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response
readRos2Uwvm_fourier_bridgeSrvExecuteMove_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  let value = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response a0 a1
  case encodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response
decodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Response = W.runDecoder 136
    readRos2Uwvm_fourier_bridgeSrvExecuteMove_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response where
  maximumBytes _ = 136
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvExecuteMove_Response
data Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetBaseData_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetBaseData_Request_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetBaseData_Request.key: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetBaseData_Request_key :: T.Text
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetBaseData_Request :: Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request
defaultRos2Uwvm_fourier_bridgeSrvGetBaseData_Request = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request (0) (T.empty)
ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodecIdentity =
    "UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f"
encodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Request :: Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetBaseData_Request_sequence value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetBaseData_Request_key value)
  W.bounded 140 [b0, b1]
readRos2Uwvm_fourier_bridgeSrvGetBaseData_Request :: W.Decoder Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request
readRos2Uwvm_fourier_bridgeSrvGetBaseData_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.text 128 True
  let value = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request a0 a1
  case encodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request
decodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Request = W.runDecoder 140
    readRos2Uwvm_fourier_bridgeSrvGetBaseData_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request where
  maximumBytes _ = 140
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvGetBaseData_Request
data Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetBaseData_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetBaseData_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetBaseData_Response.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetBaseData_Response_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetBaseData_Response.values: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetBaseData_Response_values :: [Double]
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetBaseData_Response :: Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response
defaultRos2Uwvm_fourier_bridgeSrvGetBaseData_Response = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response (0) (T.empty)
    ([])
ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodecIdentity =
    "UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804"
encodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Response :: Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetBaseData_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetBaseData_Response_error value)
  if length (ros2Uwvm_fourier_bridgeSrvGetBaseData_Response_values value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros2Uwvm_fourier_bridgeSrvGetBaseData_Response_values value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Uwvm_fourier_bridgeSrvGetBaseData_Response_values value)
  W.bounded 652 [b0, b1, prefix2, b2]
readRos2Uwvm_fourier_bridgeSrvGetBaseData_Response :: W.Decoder Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response
readRos2Uwvm_fourier_bridgeSrvGetBaseData_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  count2 <- W.count 64
  a2 <- replicateM count2 (W.float64)
  let value = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response
decodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Response = W.runDecoder 652
    readRos2Uwvm_fourier_bridgeSrvGetBaseData_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response where
  maximumBytes _ = 652
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvGetBaseData_Response
data Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetCartesianState_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetCartesianState_Request.group: string; each string is 0..128 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request_group :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetCartesianState_Request.key: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request_key :: T.Text
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request :: Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request
defaultRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request (0)
    (T.empty) (T.empty)
ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodecIdentity =
    "UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee"
encodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request :: Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request ->
    Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request_sequence value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request_group value)
  b2 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request_key value)
  W.bounded 272 [b0, b1, b2]
readRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request
readRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  let value = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request
decodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request = W.runDecoder 272
    readRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request where
  maximumBytes _ = 272
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request
data Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetCartesianState_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetCartesianState_Response.error: string; each string is 0..128 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetCartesianState_Response.values: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response_values :: [Double]
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response :: Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response
defaultRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response
    (0) (T.empty) ([])
ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodecIdentity =
    "UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40"
encodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response :: Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response
    -> Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response_error value)
  if length (ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response_values value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response_values value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response_values
      value)
  W.bounded 652 [b0, b1, prefix2, b2]
readRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response
readRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  count2 <- W.count 64
  a2 <- replicateM count2 (W.float64)
  let value = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response
decodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response = W.runDecoder 652
    readRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response where
  maximumBytes _ = 652
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response
data Ros2Uwvm_fourier_bridgeSrvGetContactData_Request = Ros2Uwvm_fourier_bridgeSrvGetContactData_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetContactData_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetContactData_Request_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetContactData_Request.key: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetContactData_Request_key :: T.Text
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetContactData_Request :: Ros2Uwvm_fourier_bridgeSrvGetContactData_Request
defaultRos2Uwvm_fourier_bridgeSrvGetContactData_Request = Ros2Uwvm_fourier_bridgeSrvGetContactData_Request (0)
    (T.empty)
ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodecIdentity =
    "UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0"
encodeRos2Uwvm_fourier_bridgeSrvGetContactData_Request :: Ros2Uwvm_fourier_bridgeSrvGetContactData_Request -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetContactData_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetContactData_Request_sequence value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetContactData_Request_key value)
  W.bounded 140 [b0, b1]
readRos2Uwvm_fourier_bridgeSrvGetContactData_Request :: W.Decoder Ros2Uwvm_fourier_bridgeSrvGetContactData_Request
readRos2Uwvm_fourier_bridgeSrvGetContactData_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.text 128 True
  let value = Ros2Uwvm_fourier_bridgeSrvGetContactData_Request a0 a1
  case encodeRos2Uwvm_fourier_bridgeSrvGetContactData_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetContactData_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetContactData_Request
decodeRos2Uwvm_fourier_bridgeSrvGetContactData_Request = W.runDecoder 140
    readRos2Uwvm_fourier_bridgeSrvGetContactData_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetContactData_Request where
  maximumBytes _ = 140
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetContactData_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvGetContactData_Request
data Ros2Uwvm_fourier_bridgeSrvGetContactData_Response = Ros2Uwvm_fourier_bridgeSrvGetContactData_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetContactData_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetContactData_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetContactData_Response.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetContactData_Response_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetContactData_Response.values: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetContactData_Response_values :: [Double]
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetContactData_Response :: Ros2Uwvm_fourier_bridgeSrvGetContactData_Response
defaultRos2Uwvm_fourier_bridgeSrvGetContactData_Response = Ros2Uwvm_fourier_bridgeSrvGetContactData_Response (0)
    (T.empty) ([])
ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodecIdentity =
    "UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e"
encodeRos2Uwvm_fourier_bridgeSrvGetContactData_Response :: Ros2Uwvm_fourier_bridgeSrvGetContactData_Response ->
    Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetContactData_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetContactData_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetContactData_Response_error value)
  if length (ros2Uwvm_fourier_bridgeSrvGetContactData_Response_values value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros2Uwvm_fourier_bridgeSrvGetContactData_Response_values value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Uwvm_fourier_bridgeSrvGetContactData_Response_values
      value)
  W.bounded 652 [b0, b1, prefix2, b2]
readRos2Uwvm_fourier_bridgeSrvGetContactData_Response :: W.Decoder Ros2Uwvm_fourier_bridgeSrvGetContactData_Response
readRos2Uwvm_fourier_bridgeSrvGetContactData_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  count2 <- W.count 64
  a2 <- replicateM count2 (W.float64)
  let value = Ros2Uwvm_fourier_bridgeSrvGetContactData_Response a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvGetContactData_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetContactData_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetContactData_Response
decodeRos2Uwvm_fourier_bridgeSrvGetContactData_Response = W.runDecoder 652
    readRos2Uwvm_fourier_bridgeSrvGetContactData_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetContactData_Response where
  maximumBytes _ = 652
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetContactData_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvGetContactData_Response
data Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetFsmName_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetFsmName_Request_sequence :: Word64
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetFsmName_Request :: Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request
defaultRos2Uwvm_fourier_bridgeSrvGetFsmName_Request = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request (0)
ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodecIdentity =
    "UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100"
encodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Request :: Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request -> Either Word32
    B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetFsmName_Request_sequence value))
  W.bounded 8 [b0]
readRos2Uwvm_fourier_bridgeSrvGetFsmName_Request :: W.Decoder Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request
readRos2Uwvm_fourier_bridgeSrvGetFsmName_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  let value = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request a0
  case encodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request
decodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Request = W.runDecoder 8 readRos2Uwvm_fourier_bridgeSrvGetFsmName_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvGetFsmName_Request
data Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetFsmName_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetFsmName_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetFsmName_Response.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetFsmName_Response_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetFsmName_Response.value: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetFsmName_Response_value :: T.Text
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetFsmName_Response :: Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response
defaultRos2Uwvm_fourier_bridgeSrvGetFsmName_Response = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response (0) (T.empty)
    (T.empty)
ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodecIdentity =
    "UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e"
encodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Response :: Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetFsmName_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetFsmName_Response_error value)
  b2 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetFsmName_Response_value value)
  W.bounded 268 [b0, b1, b2]
readRos2Uwvm_fourier_bridgeSrvGetFsmName_Response :: W.Decoder Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response
readRos2Uwvm_fourier_bridgeSrvGetFsmName_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  let value = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response
decodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Response = W.runDecoder 268
    readRos2Uwvm_fourier_bridgeSrvGetFsmName_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response where
  maximumBytes _ = 268
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvGetFsmName_Response
data Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetFsmState_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetFsmState_Request_sequence :: Word64
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetFsmState_Request :: Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request
defaultRos2Uwvm_fourier_bridgeSrvGetFsmState_Request = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request (0)
ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodecIdentity =
    "UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0"
encodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Request :: Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetFsmState_Request_sequence value))
  W.bounded 8 [b0]
readRos2Uwvm_fourier_bridgeSrvGetFsmState_Request :: W.Decoder Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request
readRos2Uwvm_fourier_bridgeSrvGetFsmState_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  let value = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request a0
  case encodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request
decodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Request = W.runDecoder 8
    readRos2Uwvm_fourier_bridgeSrvGetFsmState_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvGetFsmState_Request
data Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetFsmState_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetFsmState_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetFsmState_Response.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetFsmState_Response_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetFsmState_Response.value: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetFsmState_Response_value :: Int32
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetFsmState_Response :: Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response
defaultRos2Uwvm_fourier_bridgeSrvGetFsmState_Response = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response (0) (T.empty)
    (0)
ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodecIdentity =
    "UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4"
encodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Response :: Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetFsmState_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetFsmState_Response_error value)
  b2 <- W.encodeSigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetFsmState_Response_value value))
  W.bounded 140 [b0, b1, b2]
readRos2Uwvm_fourier_bridgeSrvGetFsmState_Response :: W.Decoder Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response
readRos2Uwvm_fourier_bridgeSrvGetFsmState_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- fromIntegral <$> W.signed 4
  let value = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response
decodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Response = W.runDecoder 140
    readRos2Uwvm_fourier_bridgeSrvGetFsmState_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response where
  maximumBytes _ = 140
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvGetFsmState_Response
data Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetGroupMotionState_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetGroupMotionState_Request.group: string; each string is 0..128 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request_group :: T.Text
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request ::
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
defaultRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
    (0) (T.empty)
ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodecIdentity =
    "UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae"
encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request :: Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
    -> Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request_sequence value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request_group value)
  W.bounded 140 [b0, b1]
readRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
readRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.text 128 True
  let value = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request a0 a1
  case encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request = W.runDecoder 140
    readRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request where
  maximumBytes _ = 140
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
data Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetGroupMotionState_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetGroupMotionState_Response.error: string; each string is 0..128 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetGroupMotionState_Response.value: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response_value :: Int32
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response ::
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
defaultRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response =
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response (0) (T.empty) (0)
ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodecIdentity =
    "UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7"
encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response ::
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response -> Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response_error value)
  b2 <- W.encodeSigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response_value value))
  W.bounded 140 [b0, b1, b2]
readRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
readRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- fromIntegral <$> W.signed 4
  let value = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response = W.runDecoder 140
    readRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response where
  maximumBytes _ = 140
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
data Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.group: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request_group :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.key: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request_key :: T.Text
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request :: Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
defaultRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request (0)
    (T.empty) (T.empty)
ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodecIdentity =
    "UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a"
encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request :: Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request ->
    Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request_sequence value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request_group value)
  b2 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request_key value)
  W.bounded 272 [b0, b1, b2]
readRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
readRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  let value = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request = W.runDecoder 272
    readRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request where
  maximumBytes _ = 272
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
data Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.error: string; each string is 0..128 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.values: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response_values :: [Double]
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response :: Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
defaultRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response (0)
    (T.empty) ([])
ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodecIdentity =
    "UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868"
encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response :: Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response ->
    Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response_error value)
  if length (ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response_values value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response_values value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response_values
      value)
  W.bounded 652 [b0, b1, prefix2, b2]
readRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
readRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  count2 <- W.count 64
  a2 <- replicateM count2 (W.float64)
  let value = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response = W.runDecoder 652
    readRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response where
  maximumBytes _ = 652
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
data Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetGroupState_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetGroupState_Request_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetGroupState_Request.group: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetGroupState_Request_group :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetGroupState_Request.key: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetGroupState_Request_key :: T.Text
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetGroupState_Request :: Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request
defaultRos2Uwvm_fourier_bridgeSrvGetGroupState_Request = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request (0)
    (T.empty) (T.empty)
ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodecIdentity =
    "UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9"
encodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Request :: Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetGroupState_Request_sequence value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetGroupState_Request_group value)
  b2 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetGroupState_Request_key value)
  W.bounded 272 [b0, b1, b2]
readRos2Uwvm_fourier_bridgeSrvGetGroupState_Request :: W.Decoder Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request
readRos2Uwvm_fourier_bridgeSrvGetGroupState_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  let value = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request
decodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Request = W.runDecoder 272
    readRos2Uwvm_fourier_bridgeSrvGetGroupState_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request where
  maximumBytes _ = 272
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvGetGroupState_Request
data Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetGroupState_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetGroupState_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetGroupState_Response.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetGroupState_Response_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetGroupState_Response.values: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetGroupState_Response_values :: [Double]
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetGroupState_Response :: Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response
defaultRos2Uwvm_fourier_bridgeSrvGetGroupState_Response = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response (0)
    (T.empty) ([])
ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodecIdentity =
    "UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d"
encodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Response :: Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetGroupState_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetGroupState_Response_error value)
  if length (ros2Uwvm_fourier_bridgeSrvGetGroupState_Response_values value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros2Uwvm_fourier_bridgeSrvGetGroupState_Response_values value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Uwvm_fourier_bridgeSrvGetGroupState_Response_values
      value)
  W.bounded 652 [b0, b1, prefix2, b2]
readRos2Uwvm_fourier_bridgeSrvGetGroupState_Response :: W.Decoder Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response
readRos2Uwvm_fourier_bridgeSrvGetGroupState_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  count2 <- W.count 64
  a2 <- replicateM count2 (W.float64)
  let value = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response
decodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Response = W.runDecoder 652
    readRos2Uwvm_fourier_bridgeSrvGetGroupState_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response where
  maximumBytes _ = 652
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvGetGroupState_Response
data Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetSnapshot_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request_sequence :: Word64
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request :: Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request
defaultRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request (0)
ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodecIdentity =
    "UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58"
encodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request :: Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request_sequence value))
  W.bounded 8 [b0]
readRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request :: W.Decoder Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request
readRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  let value = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request a0
  case encodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request
decodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request = W.runDecoder 8
    readRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request
data Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetSnapshot_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetSnapshot_Response.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetSnapshot_Response.value: uwvm_fourier_bridge/msg/Status.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response_value :: Ros2Uwvm_fourier_bridgeMsgStatus
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response :: Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response
defaultRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response (0) (T.empty)
    (defaultRos2Uwvm_fourier_bridgeMsgStatus)
ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodecIdentity =
    "UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3"
encodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response :: Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response_error value)
  b2 <- encodeRos2Uwvm_fourier_bridgeMsgStatus (ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response_value value)
  W.bounded 14536 [b0, b1, b2]
readRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response :: W.Decoder Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response
readRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- readRos2Uwvm_fourier_bridgeMsgStatus
  let value = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response
decodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response = W.runDecoder 14536
    readRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response where
  maximumBytes _ = 14536
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response
data Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetStandPose_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetStandPose_Request_sequence :: Word64
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetStandPose_Request :: Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request
defaultRos2Uwvm_fourier_bridgeSrvGetStandPose_Request = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request (0)
ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodecIdentity =
    "UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044"
encodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Request :: Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetStandPose_Request_sequence value))
  W.bounded 8 [b0]
readRos2Uwvm_fourier_bridgeSrvGetStandPose_Request :: W.Decoder Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request
readRos2Uwvm_fourier_bridgeSrvGetStandPose_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  let value = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request a0
  case encodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request
decodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Request = W.runDecoder 8
    readRos2Uwvm_fourier_bridgeSrvGetStandPose_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvGetStandPose_Request
data Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetStandPose_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetStandPose_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetStandPose_Response.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetStandPose_Response_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetStandPose_Response.values: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetStandPose_Response_values :: [Double]
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetStandPose_Response :: Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
defaultRos2Uwvm_fourier_bridgeSrvGetStandPose_Response = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response (0)
    (T.empty) ([])
ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodecIdentity =
    "UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2"
encodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response :: Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetStandPose_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetStandPose_Response_error value)
  if length (ros2Uwvm_fourier_bridgeSrvGetStandPose_Response_values value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros2Uwvm_fourier_bridgeSrvGetStandPose_Response_values value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Uwvm_fourier_bridgeSrvGetStandPose_Response_values value)
  W.bounded 652 [b0, b1, prefix2, b2]
readRos2Uwvm_fourier_bridgeSrvGetStandPose_Response :: W.Decoder Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
readRos2Uwvm_fourier_bridgeSrvGetStandPose_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  count2 <- W.count 64
  a2 <- replicateM count2 (W.float64)
  let value = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
decodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response = W.runDecoder 652
    readRos2Uwvm_fourier_bridgeSrvGetStandPose_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response where
  maximumBytes _ = 652
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvGetStandPose_Response
data Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetUpperFsmName_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request_sequence :: Word64
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request :: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
defaultRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request (0)
ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodecIdentity =
    "UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412"
encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request :: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request ->
    Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request_sequence value))
  W.bounded 8 [b0]
readRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request :: W.Decoder Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
readRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  let value = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request a0
  case encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request = W.runDecoder 8
    readRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
data Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetUpperFsmName_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetUpperFsmName_Response.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetUpperFsmName_Response.value: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response_value :: T.Text
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response :: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
defaultRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response (0)
    (T.empty) (T.empty)
ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodecIdentity =
    "UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed"
encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response :: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response ->
    Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response_error value)
  b2 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response_value value)
  W.bounded 268 [b0, b1, b2]
readRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
readRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  let value = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response = W.runDecoder 268
    readRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response where
  maximumBytes _ = 268
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
data Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetUpperFsmState_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request_sequence :: Word64
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request :: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
defaultRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request (0)
ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodecIdentity =
    "UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98"
encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request :: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request ->
    Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request_sequence value))
  W.bounded 8 [b0]
readRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
readRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  let value = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request a0
  case encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request = W.runDecoder 8
    readRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
data Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetUpperFsmState_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetUpperFsmState_Response.error: string; each string is 0..128 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetUpperFsmState_Response.value: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response_value :: Int32
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response :: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
defaultRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response (0)
    (T.empty) (0)
ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodecIdentity =
    "UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9"
encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response :: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response ->
    Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response_error value)
  b2 <- W.encodeSigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response_value value))
  W.bounded 140 [b0, b1, b2]
readRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
readRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- fromIntegral <$> W.signed 4
  let value = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response = W.runDecoder 140
    readRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response where
  maximumBytes _ = 140
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
data Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetVelocitySource_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request_sequence :: Word64
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request :: Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
defaultRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request (0)
ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodecIdentity =
    "UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c"
encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request :: Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request ->
    Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request_sequence value))
  W.bounded 8 [b0]
readRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
readRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  let value = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request a0
  case encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request = W.runDecoder 8
    readRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
data Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetVelocitySource_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetVelocitySource_Response.error: string; each string is 0..128 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetVelocitySource_Response.value: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response_value :: Int32
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response :: Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
defaultRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
    (0) (T.empty) (0)
ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodecIdentity =
    "UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53"
encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response :: Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
    -> Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response_error value)
  b2 <- W.encodeSigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response_value value))
  W.bounded 140 [b0, b1, b2]
readRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
readRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- fromIntegral <$> W.signed 4
  let value = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response = W.runDecoder 140
    readRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response where
  maximumBytes _ = 140
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
data Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request =
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetVelocitySourceName_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request_sequence :: Word64
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request ::
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
defaultRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request =
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request (0)
ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodecIdentity =
    "UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1"
encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request ::
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request -> Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request_sequence value))
  W.bounded 8 [b0]
readRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
readRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  let value = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request a0
  case encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request = W.runDecoder 8
    readRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
data Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response =
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.error: string; each string is 0..128 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.value: string; each string is 0..128 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response_value :: T.Text
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response ::
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
defaultRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response =
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response (0) (T.empty) (T.empty)
ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodecIdentity =
    "UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40"
encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response ::
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response -> Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response_error value)
  b2 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response_value value)
  W.bounded 268 [b0, b1, b2]
readRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
readRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  let value = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response = W.runDecoder 268
    readRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response where
  maximumBytes _ = 268
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
data Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/SetFsmState_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetFsmState_Request_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetFsmState_Request.state: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetFsmState_Request_state :: Int32
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvSetFsmState_Request :: Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request
defaultRos2Uwvm_fourier_bridgeSrvSetFsmState_Request = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request (0) (0)
ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodecIdentity =
    "UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d"
encodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Request :: Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvSetFsmState_Request_sequence value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvSetFsmState_Request_state value))
  W.bounded 12 [b0, b1]
readRos2Uwvm_fourier_bridgeSrvSetFsmState_Request :: W.Decoder Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request
readRos2Uwvm_fourier_bridgeSrvSetFsmState_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- fromIntegral <$> W.signed 4
  let value = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request a0 a1
  case encodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request
decodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Request = W.runDecoder 12
    readRos2Uwvm_fourier_bridgeSrvSetFsmState_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request where
  maximumBytes _ = 12
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvSetFsmState_Request
data Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/SetFsmState_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetFsmState_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetFsmState_Response.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetFsmState_Response_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvSetFsmState_Response :: Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response
defaultRos2Uwvm_fourier_bridgeSrvSetFsmState_Response = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response (0) (T.empty)
ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodecIdentity =
    "UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70"
encodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Response :: Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvSetFsmState_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvSetFsmState_Response_error value)
  W.bounded 136 [b0, b1]
readRos2Uwvm_fourier_bridgeSrvSetFsmState_Response :: W.Decoder Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response
readRos2Uwvm_fourier_bridgeSrvSetFsmState_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  let value = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response a0 a1
  case encodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response
decodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Response = W.runDecoder 136
    readRos2Uwvm_fourier_bridgeSrvSetFsmState_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response where
  maximumBytes _ = 136
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvSetFsmState_Response
data Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/SetGroupCommand_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetGroupCommand_Request.position: uwvm_fourier_bridge/msg/GroupValues; 0..8
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_position :: [Ros2Uwvm_fourier_bridgeMsgGroupValues]
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetGroupCommand_Request.velocity: uwvm_fourier_bridge/msg/GroupValues; 0..8
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_velocity :: [Ros2Uwvm_fourier_bridgeMsgGroupValues]
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetGroupCommand_Request.torque: uwvm_fourier_bridge/msg/GroupValues; 0..8
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_torque :: [Ros2Uwvm_fourier_bridgeMsgGroupValues]
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request :: Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
defaultRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request (0)
    ([]) ([]) ([])
ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodecIdentity =
    "UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9"
encodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request :: Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request ->
    Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_sequence value))
  if length (ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_position value) > 8 then Left 22 else Right ()
  prefix1 <- W.encodeCount 8 (length (ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_position value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2Uwvm_fourier_bridgeMsgGroupValues (e))
      (ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_position value)
  if length (ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_velocity value) > 8 then Left 22 else Right ()
  prefix2 <- W.encodeCount 8 (length (ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_velocity value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Uwvm_fourier_bridgeMsgGroupValues (e))
      (ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_velocity value)
  if length (ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_torque value) > 8 then Left 22 else Right ()
  prefix3 <- W.encodeCount 8 (length (ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_torque value))
  b3 <- B.concat <$> mapM (\e -> encodeRos2Uwvm_fourier_bridgeMsgGroupValues (e))
      (ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_torque value)
  W.bounded 15572 [b0, prefix1, b1, prefix2, b2, prefix3, b3]
readRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request :: W.Decoder Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
readRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  count1 <- W.count 8
  a1 <- replicateM count1 (readRos2Uwvm_fourier_bridgeMsgGroupValues)
  count2 <- W.count 8
  a2 <- replicateM count2 (readRos2Uwvm_fourier_bridgeMsgGroupValues)
  count3 <- W.count 8
  a3 <- replicateM count3 (readRos2Uwvm_fourier_bridgeMsgGroupValues)
  let value = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request a0 a1 a2 a3
  case encodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
decodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request = W.runDecoder 15572
    readRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request where
  maximumBytes _ = 15572
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
data Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/SetGroupCommand_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetGroupCommand_Response.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response :: Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
defaultRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response (0)
    (T.empty)
ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodecIdentity =
    "UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290"
encodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response :: Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response ->
    Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response_error value)
  W.bounded 136 [b0, b1]
readRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
readRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  let value = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response a0 a1
  case encodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
decodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response = W.runDecoder 136
    readRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response where
  maximumBytes _ = 136
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
data Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.kp: uwvm_fourier_bridge/msg/GroupValues; 0..8
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request_kp :: [Ros2Uwvm_fourier_bridgeMsgGroupValues]
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.kd: uwvm_fourier_bridge/msg/GroupValues; 0..8
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request_kd :: [Ros2Uwvm_fourier_bridgeMsgGroupValues]
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request :: Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
defaultRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request (0) ([])
    ([])
ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodecIdentity =
    "UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de"
encodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request :: Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request_sequence value))
  if length (ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request_kp value) > 8 then Left 22 else Right ()
  prefix1 <- W.encodeCount 8 (length (ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request_kp value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2Uwvm_fourier_bridgeMsgGroupValues (e))
      (ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request_kp value)
  if length (ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request_kd value) > 8 then Left 22 else Right ()
  prefix2 <- W.encodeCount 8 (length (ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request_kd value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Uwvm_fourier_bridgeMsgGroupValues (e))
      (ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request_kd value)
  W.bounded 10384 [b0, prefix1, b1, prefix2, b2]
readRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request :: W.Decoder Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
readRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  count1 <- W.count 8
  a1 <- replicateM count1 (readRos2Uwvm_fourier_bridgeMsgGroupValues)
  count2 <- W.count 8
  a2 <- replicateM count2 (readRos2Uwvm_fourier_bridgeMsgGroupValues)
  let value = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
decodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request = W.runDecoder 10384
    readRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request where
  maximumBytes _ = 10384
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
data Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response :: Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
defaultRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response (0)
    (T.empty)
ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodecIdentity =
    "UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804"
encodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response :: Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response_error value)
  W.bounded 136 [b0, b1]
readRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response :: W.Decoder Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
readRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  let value = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response a0 a1
  case encodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
decodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response = W.runDecoder 136
    readRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response where
  maximumBytes _ = 136
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
data Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/SetStandPose_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetStandPose_Request_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetStandPose_Request.delta_z: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetStandPose_Request_delta_z :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetStandPose_Request.delta_pitch: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetStandPose_Request_delta_pitch :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetStandPose_Request.delta_yaw: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetStandPose_Request_delta_yaw :: Double
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvSetStandPose_Request :: Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request
defaultRos2Uwvm_fourier_bridgeSrvSetStandPose_Request = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request (0) (0) (0)
    (0)
ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodecIdentity =
    "UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211"
encodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Request :: Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvSetStandPose_Request_sequence value))
  b1 <- W.encodeFloat64 (ros2Uwvm_fourier_bridgeSrvSetStandPose_Request_delta_z value)
  b2 <- W.encodeFloat64 (ros2Uwvm_fourier_bridgeSrvSetStandPose_Request_delta_pitch value)
  b3 <- W.encodeFloat64 (ros2Uwvm_fourier_bridgeSrvSetStandPose_Request_delta_yaw value)
  W.bounded 32 [b0, b1, b2, b3]
readRos2Uwvm_fourier_bridgeSrvSetStandPose_Request :: W.Decoder Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request
readRos2Uwvm_fourier_bridgeSrvSetStandPose_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  let value = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request a0 a1 a2 a3
  case encodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request
decodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Request = W.runDecoder 32
    readRos2Uwvm_fourier_bridgeSrvSetStandPose_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request where
  maximumBytes _ = 32
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvSetStandPose_Request
data Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/SetStandPose_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetStandPose_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetStandPose_Response.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetStandPose_Response_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvSetStandPose_Response :: Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response
defaultRos2Uwvm_fourier_bridgeSrvSetStandPose_Response = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response (0)
    (T.empty)
ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodecIdentity =
    "UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f"
encodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Response :: Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvSetStandPose_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvSetStandPose_Response_error value)
  W.bounded 136 [b0, b1]
readRos2Uwvm_fourier_bridgeSrvSetStandPose_Response :: W.Decoder Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response
readRos2Uwvm_fourier_bridgeSrvSetStandPose_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  let value = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response a0 a1
  case encodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response
decodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Response = W.runDecoder 136
    readRos2Uwvm_fourier_bridgeSrvSetStandPose_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response where
  maximumBytes _ = 136
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvSetStandPose_Response
data Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/SetUpperFsmState_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetUpperFsmState_Request.state: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request_state :: Int32
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request :: Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
defaultRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request (0)
    (0)
ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodecIdentity =
    "UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182"
encodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request :: Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request ->
    Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request_sequence value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request_state value))
  W.bounded 12 [b0, b1]
readRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
readRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- fromIntegral <$> W.signed 4
  let value = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request a0 a1
  case encodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
decodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request = W.runDecoder 12
    readRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request where
  maximumBytes _ = 12
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
data Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/SetUpperFsmState_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetUpperFsmState_Response.error: string; each string is 0..128 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response :: Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
defaultRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response (0)
    (T.empty)
ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodecIdentity =
    "UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8"
encodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response :: Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response ->
    Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response_error value)
  W.bounded 136 [b0, b1]
readRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
readRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  let value = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response a0 a1
  case encodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
decodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response = W.runDecoder 136
    readRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response where
  maximumBytes _ = 136
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
data Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/SetVelocity_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetVelocity_Request_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetVelocity_Request.vx: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetVelocity_Request_vx :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetVelocity_Request.vy: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetVelocity_Request_vy :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetVelocity_Request.yaw: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetVelocity_Request_yaw :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetVelocity_Request.duration: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetVelocity_Request_duration :: Double
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvSetVelocity_Request :: Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request
defaultRos2Uwvm_fourier_bridgeSrvSetVelocity_Request = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request (0) (0) (0) (0)
    (0)
ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodecIdentity =
    "UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44"
encodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Request :: Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvSetVelocity_Request_sequence value))
  b1 <- W.encodeFloat64 (ros2Uwvm_fourier_bridgeSrvSetVelocity_Request_vx value)
  b2 <- W.encodeFloat64 (ros2Uwvm_fourier_bridgeSrvSetVelocity_Request_vy value)
  b3 <- W.encodeFloat64 (ros2Uwvm_fourier_bridgeSrvSetVelocity_Request_yaw value)
  b4 <- W.encodeFloat64 (ros2Uwvm_fourier_bridgeSrvSetVelocity_Request_duration value)
  W.bounded 40 [b0, b1, b2, b3, b4]
readRos2Uwvm_fourier_bridgeSrvSetVelocity_Request :: W.Decoder Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request
readRos2Uwvm_fourier_bridgeSrvSetVelocity_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  a4 <- W.float64
  let value = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request a0 a1 a2 a3 a4
  case encodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request
decodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Request = W.runDecoder 40
    readRos2Uwvm_fourier_bridgeSrvSetVelocity_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request where
  maximumBytes _ = 40
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvSetVelocity_Request
data Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/SetVelocity_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetVelocity_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetVelocity_Response.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetVelocity_Response_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvSetVelocity_Response :: Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response
defaultRos2Uwvm_fourier_bridgeSrvSetVelocity_Response = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response (0) (T.empty)
ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodecIdentity =
    "UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307"
encodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Response :: Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response -> Either
    Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvSetVelocity_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvSetVelocity_Response_error value)
  W.bounded 136 [b0, b1]
readRos2Uwvm_fourier_bridgeSrvSetVelocity_Response :: W.Decoder Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response
readRos2Uwvm_fourier_bridgeSrvSetVelocity_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  let value = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response a0 a1
  case encodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response
decodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Response = W.runDecoder 136
    readRos2Uwvm_fourier_bridgeSrvSetVelocity_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response where
  maximumBytes _ = 136
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvSetVelocity_Response
data Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/SetVelocitySource_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetVelocitySource_Request.source: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request_source :: Int32
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request :: Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
defaultRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request (0)
    (0)
ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodecIdentity =
    "UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c"
encodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request :: Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request ->
    Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request_sequence value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request_source value))
  W.bounded 12 [b0, b1]
readRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
readRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- fromIntegral <$> W.signed 4
  let value = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request a0 a1
  case encodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
decodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request = W.runDecoder 12
    readRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request where
  maximumBytes _ = 12
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
data Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/SetVelocitySource_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/SetVelocitySource_Response.error: string; each string is 0..128 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response :: Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
defaultRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
    (0) (T.empty)
ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodecIdentity =
    "UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7"
encodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response :: Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
    -> Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response_error value)
  W.bounded 136 [b0, b1]
readRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
readRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  let value = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response a0 a1
  case encodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
decodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response = W.runDecoder 136
    readRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response where
  maximumBytes _ = 136
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
data Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request =
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
  {
    -- | \@brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.groups: string; 0..8 elements; each string
    -- is 0..128 bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request_groups :: [T.Text]
  ,
    -- | \@brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.timeout_seconds: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request_timeout_seconds :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.poll_seconds: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request_poll_seconds :: Double
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request ::
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
defaultRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request =
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request (0) ([]) (0) (0)
ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodecIdentity =
    "UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202"
encodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request ::
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request -> Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request_sequence
      value))
  if length (ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request_groups value) > 8 then Left 22 else Right ()
  prefix1 <- W.encodeCount 8 (length (ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request_groups value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e))
      (ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request_groups value)
  b2 <- W.encodeFloat64 (ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request_timeout_seconds value)
  b3 <- W.encodeFloat64 (ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request_poll_seconds value)
  W.bounded 1084 [b0, prefix1, b1, b2, b3]
readRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
readRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  count1 <- W.count 8
  a1 <- replicateM count1 (W.text 128 True)
  a2 <- W.float64
  a3 <- W.float64
  let value = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request a0 a1 a2 a3
  case encodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
decodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request = W.runDecoder 1084
    readRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
instance Canonical Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request where
  maximumBytes _ = 1084
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
  readValue = readRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
data Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response =
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
  {
    -- | \@brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.error: string; each string is 0..128
    -- bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.complete: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response_complete :: Bool
  } deriving (Eq, Show)
defaultRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response ::
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
defaultRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response =
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response (0) (T.empty) (False)
ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodecIdentity :: String
ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodecIdentity =
    "UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f"
encodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response ::
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response -> Either Word32 B.ByteString
encodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response_status value))
  b1 <- W.encodeText 128 True (ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response_error value)
  b2 <- W.encodeBool (ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response_complete value)
  W.bounded 137 [b0, b1, b2]
readRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response :: W.Decoder
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
readRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- W.boolean
  let value = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response a0 a1 a2
  case encodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
decodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response = W.runDecoder 137
    readRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
instance Canonical Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response where
  maximumBytes _ = 137
  encodeValue = encodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
  readValue = readRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
