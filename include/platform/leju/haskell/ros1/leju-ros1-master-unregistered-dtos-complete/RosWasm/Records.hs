-- @file Records.hs
-- @brief Full leju haskell codecs and original record metadata.
-- @details Complete leju ros1_master_unregistered_dtos values in haskell. 2 original records retain 5 fields and 2
-- interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
-- definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
-- profile API manual under document/platform/leju/en_US/catalog/.
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
data Ros1Kuavo_sdkQv = Ros1Kuavo_sdkQv
  {
    -- | \@brief kuavo_sdk/qv.value: float64; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Kuavo_sdkQv; share/platform/ros/haskell/API-CONTRACT.md
    ros1Kuavo_sdkQv_value :: [Double]
  } deriving (Eq, Show)
defaultRos1Kuavo_sdkQv :: Ros1Kuavo_sdkQv
defaultRos1Kuavo_sdkQv = Ros1Kuavo_sdkQv ([])
ros1Kuavo_sdkQvCodecIdentity :: String
ros1Kuavo_sdkQvCodecIdentity = "UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32"
encodeRos1Kuavo_sdkQv :: Ros1Kuavo_sdkQv -> Either Word32 B.ByteString
encodeRos1Kuavo_sdkQv value = do
  if length (ros1Kuavo_sdkQv_value value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros1Kuavo_sdkQv_value value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Kuavo_sdkQv_value value)
  W.bounded 132 [prefix0, b0]
readRos1Kuavo_sdkQv :: W.Decoder Ros1Kuavo_sdkQv
readRos1Kuavo_sdkQv = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.float64)
  let value = Ros1Kuavo_sdkQv a0
  case encodeRos1Kuavo_sdkQv value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Kuavo_sdkQv :: B.ByteString -> Either Word32 Ros1Kuavo_sdkQv
decodeRos1Kuavo_sdkQv = W.runDecoder 132 readRos1Kuavo_sdkQv
instance Canonical Ros1Kuavo_sdkQv where
  maximumBytes _ = 132
  encodeValue = encodeRos1Kuavo_sdkQv
  readValue = readRos1Kuavo_sdkQv
data Ros1Kuavo_sdkFullBodyTargetTrajectories = Ros1Kuavo_sdkFullBodyTargetTrajectories
  {
    -- | \@brief kuavo_sdk/fullBodyTargetTrajectories.timeTrajectory: float64; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/haskell/API-CONTRACT.md
    ros1Kuavo_sdkFullBodyTargetTrajectories_timeTrajectory :: [Double]
  ,
    -- | \@brief kuavo_sdk/fullBodyTargetTrajectories.footIndexTrajectory: int32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/haskell/API-CONTRACT.md
    ros1Kuavo_sdkFullBodyTargetTrajectories_footIndexTrajectory :: [Int32]
  ,
    -- | \@brief kuavo_sdk/fullBodyTargetTrajectories.fullBodyQTrajectory: kuavo_sdk/qv; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/haskell/API-CONTRACT.md
    ros1Kuavo_sdkFullBodyTargetTrajectories_fullBodyQTrajectory :: [Ros1Kuavo_sdkQv]
  ,
    -- | \@brief kuavo_sdk/fullBodyTargetTrajectories.fullBodyVTrajectory: kuavo_sdk/qv; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/haskell/API-CONTRACT.md
    ros1Kuavo_sdkFullBodyTargetTrajectories_fullBodyVTrajectory :: [Ros1Kuavo_sdkQv]
  } deriving (Eq, Show)
defaultRos1Kuavo_sdkFullBodyTargetTrajectories :: Ros1Kuavo_sdkFullBodyTargetTrajectories
defaultRos1Kuavo_sdkFullBodyTargetTrajectories = Ros1Kuavo_sdkFullBodyTargetTrajectories ([]) ([]) ([]) ([])
ros1Kuavo_sdkFullBodyTargetTrajectoriesCodecIdentity :: String
ros1Kuavo_sdkFullBodyTargetTrajectoriesCodecIdentity =
    "UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32"
encodeRos1Kuavo_sdkFullBodyTargetTrajectories :: Ros1Kuavo_sdkFullBodyTargetTrajectories -> Either Word32
    B.ByteString
encodeRos1Kuavo_sdkFullBodyTargetTrajectories value = do
  if length (ros1Kuavo_sdkFullBodyTargetTrajectories_timeTrajectory value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros1Kuavo_sdkFullBodyTargetTrajectories_timeTrajectory value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Kuavo_sdkFullBodyTargetTrajectories_timeTrajectory value)
  if length (ros1Kuavo_sdkFullBodyTargetTrajectories_footIndexTrajectory value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros1Kuavo_sdkFullBodyTargetTrajectories_footIndexTrajectory value))
  b1 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e)))
      (ros1Kuavo_sdkFullBodyTargetTrajectories_footIndexTrajectory value)
  if length (ros1Kuavo_sdkFullBodyTargetTrajectories_fullBodyQTrajectory value) > 8 then Left 22 else Right ()
  prefix2 <- W.encodeCount 8 (length (ros1Kuavo_sdkFullBodyTargetTrajectories_fullBodyQTrajectory value))
  b2 <- B.concat <$> mapM (\e -> encodeRos1Kuavo_sdkQv (e))
      (ros1Kuavo_sdkFullBodyTargetTrajectories_fullBodyQTrajectory value)
  if length (ros1Kuavo_sdkFullBodyTargetTrajectories_fullBodyVTrajectory value) > 8 then Left 22 else Right ()
  prefix3 <- W.encodeCount 8 (length (ros1Kuavo_sdkFullBodyTargetTrajectories_fullBodyVTrajectory value))
  b3 <- B.concat <$> mapM (\e -> encodeRos1Kuavo_sdkQv (e))
      (ros1Kuavo_sdkFullBodyTargetTrajectories_fullBodyVTrajectory value)
  W.bounded 2320 [prefix0, b0, prefix1, b1, prefix2, b2, prefix3, b3]
readRos1Kuavo_sdkFullBodyTargetTrajectories :: W.Decoder Ros1Kuavo_sdkFullBodyTargetTrajectories
readRos1Kuavo_sdkFullBodyTargetTrajectories = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.float64)
  count1 <- W.count 16
  a1 <- replicateM count1 (fromIntegral <$> W.signed 4)
  count2 <- W.count 8
  a2 <- replicateM count2 (readRos1Kuavo_sdkQv)
  count3 <- W.count 8
  a3 <- replicateM count3 (readRos1Kuavo_sdkQv)
  let value = Ros1Kuavo_sdkFullBodyTargetTrajectories a0 a1 a2 a3
  case encodeRos1Kuavo_sdkFullBodyTargetTrajectories value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Kuavo_sdkFullBodyTargetTrajectories :: B.ByteString -> Either Word32
    Ros1Kuavo_sdkFullBodyTargetTrajectories
decodeRos1Kuavo_sdkFullBodyTargetTrajectories = W.runDecoder 2320 readRos1Kuavo_sdkFullBodyTargetTrajectories
instance Canonical Ros1Kuavo_sdkFullBodyTargetTrajectories where
  maximumBytes _ = 2320
  encodeValue = encodeRos1Kuavo_sdkFullBodyTargetTrajectories
  readValue = readRos1Kuavo_sdkFullBodyTargetTrajectories
