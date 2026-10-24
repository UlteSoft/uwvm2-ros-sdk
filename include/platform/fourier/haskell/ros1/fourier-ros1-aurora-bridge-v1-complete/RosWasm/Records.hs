-- @file Records.hs
-- @brief Full fourier haskell codecs and original record metadata.
-- @details Complete fourier ros1_aurora_bridge_v1 values in haskell. 51 original records retain 138 fields and 28
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
data Ros1Uwvm_fourier_bridgeMotionRecipe = Ros1Uwvm_fourier_bridgeMotionRecipe
  {
    -- | \@brief uwvm_fourier_bridge/MotionRecipe.move_type: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeMotionRecipe_move_type :: Word8
  ,
    -- | \@brief uwvm_fourier_bridge/MotionRecipe.group: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeMotionRecipe_group :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/MotionRecipe.position: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeMotionRecipe_position :: [Double]
  ,
    -- | \@brief uwvm_fourier_bridge/MotionRecipe.has_velocity: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeMotionRecipe_has_velocity :: Bool
  ,
    -- | \@brief uwvm_fourier_bridge/MotionRecipe.velocity: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeMotionRecipe_velocity :: [Double]
  ,
    -- | \@brief uwvm_fourier_bridge/MotionRecipe.expected_velocity: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeMotionRecipe_expected_velocity :: Int32
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeMotionRecipe :: Ros1Uwvm_fourier_bridgeMotionRecipe
defaultRos1Uwvm_fourier_bridgeMotionRecipe = Ros1Uwvm_fourier_bridgeMotionRecipe (0) (T.empty) ([]) (False) ([]) (0)
ros1Uwvm_fourier_bridgeMotionRecipeCodecIdentity :: String
ros1Uwvm_fourier_bridgeMotionRecipeCodecIdentity =
    "UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a"
encodeRos1Uwvm_fourier_bridgeMotionRecipe :: Ros1Uwvm_fourier_bridgeMotionRecipe -> Either Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeMotionRecipe value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros1Uwvm_fourier_bridgeMotionRecipe_move_type value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeMotionRecipe_group value)
  if length (ros1Uwvm_fourier_bridgeMotionRecipe_position value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros1Uwvm_fourier_bridgeMotionRecipe_position value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Uwvm_fourier_bridgeMotionRecipe_position value)
  b3 <- W.encodeBool (ros1Uwvm_fourier_bridgeMotionRecipe_has_velocity value)
  if length (ros1Uwvm_fourier_bridgeMotionRecipe_velocity value) > 64 then Left 22 else Right ()
  prefix4 <- W.encodeCount 64 (length (ros1Uwvm_fourier_bridgeMotionRecipe_velocity value))
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Uwvm_fourier_bridgeMotionRecipe_velocity value)
  b5 <- W.encodeSigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeMotionRecipe_expected_velocity value))
  W.bounded 1170 [b0, b1, prefix2, b2, b3, prefix4, b4, b5]
readRos1Uwvm_fourier_bridgeMotionRecipe :: W.Decoder Ros1Uwvm_fourier_bridgeMotionRecipe
readRos1Uwvm_fourier_bridgeMotionRecipe = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- W.text 128 True
  count2 <- W.count 64
  a2 <- replicateM count2 (W.float64)
  a3 <- W.boolean
  count4 <- W.count 64
  a4 <- replicateM count4 (W.float64)
  a5 <- fromIntegral <$> W.signed 4
  let value = Ros1Uwvm_fourier_bridgeMotionRecipe a0 a1 a2 a3 a4 a5
  case encodeRos1Uwvm_fourier_bridgeMotionRecipe value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeMotionRecipe :: B.ByteString -> Either Word32 Ros1Uwvm_fourier_bridgeMotionRecipe
decodeRos1Uwvm_fourier_bridgeMotionRecipe = W.runDecoder 1170 readRos1Uwvm_fourier_bridgeMotionRecipe
instance Canonical Ros1Uwvm_fourier_bridgeMotionRecipe where
  maximumBytes _ = 1170
  encodeValue = encodeRos1Uwvm_fourier_bridgeMotionRecipe
  readValue = readRos1Uwvm_fourier_bridgeMotionRecipe
data Ros1Uwvm_fourier_bridgeExecuteMoveRequest = Ros1Uwvm_fourier_bridgeExecuteMoveRequest
  {
    -- | \@brief uwvm_fourier_bridge/ExecuteMoveRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeExecuteMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeExecuteMoveRequest_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/ExecuteMoveRequest.moves: uwvm_fourier_bridge/MotionRecipe; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeExecuteMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeExecuteMoveRequest_moves :: [Ros1Uwvm_fourier_bridgeMotionRecipe]
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeExecuteMoveRequest :: Ros1Uwvm_fourier_bridgeExecuteMoveRequest
defaultRos1Uwvm_fourier_bridgeExecuteMoveRequest = Ros1Uwvm_fourier_bridgeExecuteMoveRequest (0) ([])
ros1Uwvm_fourier_bridgeExecuteMoveRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeExecuteMoveRequestCodecIdentity =
    "UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b"
encodeRos1Uwvm_fourier_bridgeExecuteMoveRequest :: Ros1Uwvm_fourier_bridgeExecuteMoveRequest -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeExecuteMoveRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeExecuteMoveRequest_sequence value))
  if length (ros1Uwvm_fourier_bridgeExecuteMoveRequest_moves value) > 8 then Left 22 else Right ()
  prefix1 <- W.encodeCount 8 (length (ros1Uwvm_fourier_bridgeExecuteMoveRequest_moves value))
  b1 <- B.concat <$> mapM (\e -> encodeRos1Uwvm_fourier_bridgeMotionRecipe (e))
      (ros1Uwvm_fourier_bridgeExecuteMoveRequest_moves value)
  W.bounded 9372 [b0, prefix1, b1]
readRos1Uwvm_fourier_bridgeExecuteMoveRequest :: W.Decoder Ros1Uwvm_fourier_bridgeExecuteMoveRequest
readRos1Uwvm_fourier_bridgeExecuteMoveRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  count1 <- W.count 8
  a1 <- replicateM count1 (readRos1Uwvm_fourier_bridgeMotionRecipe)
  let value = Ros1Uwvm_fourier_bridgeExecuteMoveRequest a0 a1
  case encodeRos1Uwvm_fourier_bridgeExecuteMoveRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeExecuteMoveRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeExecuteMoveRequest
decodeRos1Uwvm_fourier_bridgeExecuteMoveRequest = W.runDecoder 9372 readRos1Uwvm_fourier_bridgeExecuteMoveRequest
instance Canonical Ros1Uwvm_fourier_bridgeExecuteMoveRequest where
  maximumBytes _ = 9372
  encodeValue = encodeRos1Uwvm_fourier_bridgeExecuteMoveRequest
  readValue = readRos1Uwvm_fourier_bridgeExecuteMoveRequest
data Ros1Uwvm_fourier_bridgeExecuteMoveResponse = Ros1Uwvm_fourier_bridgeExecuteMoveResponse
  {
    -- | \@brief uwvm_fourier_bridge/ExecuteMoveResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeExecuteMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeExecuteMoveResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/ExecuteMoveResponse.error: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeExecuteMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeExecuteMoveResponse_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeExecuteMoveResponse :: Ros1Uwvm_fourier_bridgeExecuteMoveResponse
defaultRos1Uwvm_fourier_bridgeExecuteMoveResponse = Ros1Uwvm_fourier_bridgeExecuteMoveResponse (0) (T.empty)
ros1Uwvm_fourier_bridgeExecuteMoveResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeExecuteMoveResponseCodecIdentity =
    "UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115"
encodeRos1Uwvm_fourier_bridgeExecuteMoveResponse :: Ros1Uwvm_fourier_bridgeExecuteMoveResponse -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeExecuteMoveResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeExecuteMoveResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeExecuteMoveResponse_error value)
  W.bounded 136 [b0, b1]
readRos1Uwvm_fourier_bridgeExecuteMoveResponse :: W.Decoder Ros1Uwvm_fourier_bridgeExecuteMoveResponse
readRos1Uwvm_fourier_bridgeExecuteMoveResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  let value = Ros1Uwvm_fourier_bridgeExecuteMoveResponse a0 a1
  case encodeRos1Uwvm_fourier_bridgeExecuteMoveResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeExecuteMoveResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeExecuteMoveResponse
decodeRos1Uwvm_fourier_bridgeExecuteMoveResponse = W.runDecoder 136 readRos1Uwvm_fourier_bridgeExecuteMoveResponse
instance Canonical Ros1Uwvm_fourier_bridgeExecuteMoveResponse where
  maximumBytes _ = 136
  encodeValue = encodeRos1Uwvm_fourier_bridgeExecuteMoveResponse
  readValue = readRos1Uwvm_fourier_bridgeExecuteMoveResponse
data Ros1Uwvm_fourier_bridgeGetBaseDataRequest = Ros1Uwvm_fourier_bridgeGetBaseDataRequest
  {
    -- | \@brief uwvm_fourier_bridge/GetBaseDataRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetBaseDataRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetBaseDataRequest_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/GetBaseDataRequest.key: string; each string is 0..128 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetBaseDataRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetBaseDataRequest_key :: T.Text
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetBaseDataRequest :: Ros1Uwvm_fourier_bridgeGetBaseDataRequest
defaultRos1Uwvm_fourier_bridgeGetBaseDataRequest = Ros1Uwvm_fourier_bridgeGetBaseDataRequest (0) (T.empty)
ros1Uwvm_fourier_bridgeGetBaseDataRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetBaseDataRequestCodecIdentity =
    "UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528"
encodeRos1Uwvm_fourier_bridgeGetBaseDataRequest :: Ros1Uwvm_fourier_bridgeGetBaseDataRequest -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeGetBaseDataRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeGetBaseDataRequest_sequence value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetBaseDataRequest_key value)
  W.bounded 140 [b0, b1]
readRos1Uwvm_fourier_bridgeGetBaseDataRequest :: W.Decoder Ros1Uwvm_fourier_bridgeGetBaseDataRequest
readRos1Uwvm_fourier_bridgeGetBaseDataRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.text 128 True
  let value = Ros1Uwvm_fourier_bridgeGetBaseDataRequest a0 a1
  case encodeRos1Uwvm_fourier_bridgeGetBaseDataRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetBaseDataRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetBaseDataRequest
decodeRos1Uwvm_fourier_bridgeGetBaseDataRequest = W.runDecoder 140 readRos1Uwvm_fourier_bridgeGetBaseDataRequest
instance Canonical Ros1Uwvm_fourier_bridgeGetBaseDataRequest where
  maximumBytes _ = 140
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetBaseDataRequest
  readValue = readRos1Uwvm_fourier_bridgeGetBaseDataRequest
data Ros1Uwvm_fourier_bridgeGetBaseDataResponse = Ros1Uwvm_fourier_bridgeGetBaseDataResponse
  {
    -- | \@brief uwvm_fourier_bridge/GetBaseDataResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetBaseDataResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetBaseDataResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/GetBaseDataResponse.error: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetBaseDataResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetBaseDataResponse_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GetBaseDataResponse.values: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetBaseDataResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetBaseDataResponse_values :: [Double]
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetBaseDataResponse :: Ros1Uwvm_fourier_bridgeGetBaseDataResponse
defaultRos1Uwvm_fourier_bridgeGetBaseDataResponse = Ros1Uwvm_fourier_bridgeGetBaseDataResponse (0) (T.empty) ([])
ros1Uwvm_fourier_bridgeGetBaseDataResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetBaseDataResponseCodecIdentity =
    "UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a"
encodeRos1Uwvm_fourier_bridgeGetBaseDataResponse :: Ros1Uwvm_fourier_bridgeGetBaseDataResponse -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeGetBaseDataResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetBaseDataResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetBaseDataResponse_error value)
  if length (ros1Uwvm_fourier_bridgeGetBaseDataResponse_values value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros1Uwvm_fourier_bridgeGetBaseDataResponse_values value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Uwvm_fourier_bridgeGetBaseDataResponse_values value)
  W.bounded 652 [b0, b1, prefix2, b2]
readRos1Uwvm_fourier_bridgeGetBaseDataResponse :: W.Decoder Ros1Uwvm_fourier_bridgeGetBaseDataResponse
readRos1Uwvm_fourier_bridgeGetBaseDataResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  count2 <- W.count 64
  a2 <- replicateM count2 (W.float64)
  let value = Ros1Uwvm_fourier_bridgeGetBaseDataResponse a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeGetBaseDataResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetBaseDataResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetBaseDataResponse
decodeRos1Uwvm_fourier_bridgeGetBaseDataResponse = W.runDecoder 652 readRos1Uwvm_fourier_bridgeGetBaseDataResponse
instance Canonical Ros1Uwvm_fourier_bridgeGetBaseDataResponse where
  maximumBytes _ = 652
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetBaseDataResponse
  readValue = readRos1Uwvm_fourier_bridgeGetBaseDataResponse
data Ros1Uwvm_fourier_bridgeGetCartesianStateRequest = Ros1Uwvm_fourier_bridgeGetCartesianStateRequest
  {
    -- | \@brief uwvm_fourier_bridge/GetCartesianStateRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetCartesianStateRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetCartesianStateRequest_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/GetCartesianStateRequest.group: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetCartesianStateRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetCartesianStateRequest_group :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GetCartesianStateRequest.key: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetCartesianStateRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetCartesianStateRequest_key :: T.Text
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetCartesianStateRequest :: Ros1Uwvm_fourier_bridgeGetCartesianStateRequest
defaultRos1Uwvm_fourier_bridgeGetCartesianStateRequest = Ros1Uwvm_fourier_bridgeGetCartesianStateRequest (0)
    (T.empty) (T.empty)
ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodecIdentity =
    "UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae"
encodeRos1Uwvm_fourier_bridgeGetCartesianStateRequest :: Ros1Uwvm_fourier_bridgeGetCartesianStateRequest -> Either
    Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeGetCartesianStateRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeGetCartesianStateRequest_sequence value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetCartesianStateRequest_group value)
  b2 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetCartesianStateRequest_key value)
  W.bounded 272 [b0, b1, b2]
readRos1Uwvm_fourier_bridgeGetCartesianStateRequest :: W.Decoder Ros1Uwvm_fourier_bridgeGetCartesianStateRequest
readRos1Uwvm_fourier_bridgeGetCartesianStateRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  let value = Ros1Uwvm_fourier_bridgeGetCartesianStateRequest a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeGetCartesianStateRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetCartesianStateRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetCartesianStateRequest
decodeRos1Uwvm_fourier_bridgeGetCartesianStateRequest = W.runDecoder 272
    readRos1Uwvm_fourier_bridgeGetCartesianStateRequest
instance Canonical Ros1Uwvm_fourier_bridgeGetCartesianStateRequest where
  maximumBytes _ = 272
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetCartesianStateRequest
  readValue = readRos1Uwvm_fourier_bridgeGetCartesianStateRequest
data Ros1Uwvm_fourier_bridgeGetCartesianStateResponse = Ros1Uwvm_fourier_bridgeGetCartesianStateResponse
  {
    -- | \@brief uwvm_fourier_bridge/GetCartesianStateResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetCartesianStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetCartesianStateResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/GetCartesianStateResponse.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetCartesianStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetCartesianStateResponse_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GetCartesianStateResponse.values: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetCartesianStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetCartesianStateResponse_values :: [Double]
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetCartesianStateResponse :: Ros1Uwvm_fourier_bridgeGetCartesianStateResponse
defaultRos1Uwvm_fourier_bridgeGetCartesianStateResponse = Ros1Uwvm_fourier_bridgeGetCartesianStateResponse (0)
    (T.empty) ([])
ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodecIdentity =
    "UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671"
encodeRos1Uwvm_fourier_bridgeGetCartesianStateResponse :: Ros1Uwvm_fourier_bridgeGetCartesianStateResponse -> Either
    Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeGetCartesianStateResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetCartesianStateResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetCartesianStateResponse_error value)
  if length (ros1Uwvm_fourier_bridgeGetCartesianStateResponse_values value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros1Uwvm_fourier_bridgeGetCartesianStateResponse_values value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Uwvm_fourier_bridgeGetCartesianStateResponse_values
      value)
  W.bounded 652 [b0, b1, prefix2, b2]
readRos1Uwvm_fourier_bridgeGetCartesianStateResponse :: W.Decoder Ros1Uwvm_fourier_bridgeGetCartesianStateResponse
readRos1Uwvm_fourier_bridgeGetCartesianStateResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  count2 <- W.count 64
  a2 <- replicateM count2 (W.float64)
  let value = Ros1Uwvm_fourier_bridgeGetCartesianStateResponse a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeGetCartesianStateResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetCartesianStateResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetCartesianStateResponse
decodeRos1Uwvm_fourier_bridgeGetCartesianStateResponse = W.runDecoder 652
    readRos1Uwvm_fourier_bridgeGetCartesianStateResponse
instance Canonical Ros1Uwvm_fourier_bridgeGetCartesianStateResponse where
  maximumBytes _ = 652
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetCartesianStateResponse
  readValue = readRos1Uwvm_fourier_bridgeGetCartesianStateResponse
data Ros1Uwvm_fourier_bridgeGetContactDataRequest = Ros1Uwvm_fourier_bridgeGetContactDataRequest
  {
    -- | \@brief uwvm_fourier_bridge/GetContactDataRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetContactDataRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetContactDataRequest_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/GetContactDataRequest.key: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetContactDataRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetContactDataRequest_key :: T.Text
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetContactDataRequest :: Ros1Uwvm_fourier_bridgeGetContactDataRequest
defaultRos1Uwvm_fourier_bridgeGetContactDataRequest = Ros1Uwvm_fourier_bridgeGetContactDataRequest (0) (T.empty)
ros1Uwvm_fourier_bridgeGetContactDataRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetContactDataRequestCodecIdentity =
    "UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787"
encodeRos1Uwvm_fourier_bridgeGetContactDataRequest :: Ros1Uwvm_fourier_bridgeGetContactDataRequest -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeGetContactDataRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeGetContactDataRequest_sequence value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetContactDataRequest_key value)
  W.bounded 140 [b0, b1]
readRos1Uwvm_fourier_bridgeGetContactDataRequest :: W.Decoder Ros1Uwvm_fourier_bridgeGetContactDataRequest
readRos1Uwvm_fourier_bridgeGetContactDataRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.text 128 True
  let value = Ros1Uwvm_fourier_bridgeGetContactDataRequest a0 a1
  case encodeRos1Uwvm_fourier_bridgeGetContactDataRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetContactDataRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetContactDataRequest
decodeRos1Uwvm_fourier_bridgeGetContactDataRequest = W.runDecoder 140
    readRos1Uwvm_fourier_bridgeGetContactDataRequest
instance Canonical Ros1Uwvm_fourier_bridgeGetContactDataRequest where
  maximumBytes _ = 140
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetContactDataRequest
  readValue = readRos1Uwvm_fourier_bridgeGetContactDataRequest
data Ros1Uwvm_fourier_bridgeGetContactDataResponse = Ros1Uwvm_fourier_bridgeGetContactDataResponse
  {
    -- | \@brief uwvm_fourier_bridge/GetContactDataResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetContactDataResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetContactDataResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/GetContactDataResponse.error: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetContactDataResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetContactDataResponse_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GetContactDataResponse.values: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetContactDataResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetContactDataResponse_values :: [Double]
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetContactDataResponse :: Ros1Uwvm_fourier_bridgeGetContactDataResponse
defaultRos1Uwvm_fourier_bridgeGetContactDataResponse = Ros1Uwvm_fourier_bridgeGetContactDataResponse (0) (T.empty)
    ([])
ros1Uwvm_fourier_bridgeGetContactDataResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetContactDataResponseCodecIdentity =
    "UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293"
encodeRos1Uwvm_fourier_bridgeGetContactDataResponse :: Ros1Uwvm_fourier_bridgeGetContactDataResponse -> Either
    Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeGetContactDataResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetContactDataResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetContactDataResponse_error value)
  if length (ros1Uwvm_fourier_bridgeGetContactDataResponse_values value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros1Uwvm_fourier_bridgeGetContactDataResponse_values value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Uwvm_fourier_bridgeGetContactDataResponse_values value)
  W.bounded 652 [b0, b1, prefix2, b2]
readRos1Uwvm_fourier_bridgeGetContactDataResponse :: W.Decoder Ros1Uwvm_fourier_bridgeGetContactDataResponse
readRos1Uwvm_fourier_bridgeGetContactDataResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  count2 <- W.count 64
  a2 <- replicateM count2 (W.float64)
  let value = Ros1Uwvm_fourier_bridgeGetContactDataResponse a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeGetContactDataResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetContactDataResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetContactDataResponse
decodeRos1Uwvm_fourier_bridgeGetContactDataResponse = W.runDecoder 652
    readRos1Uwvm_fourier_bridgeGetContactDataResponse
instance Canonical Ros1Uwvm_fourier_bridgeGetContactDataResponse where
  maximumBytes _ = 652
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetContactDataResponse
  readValue = readRos1Uwvm_fourier_bridgeGetContactDataResponse
data Ros1Uwvm_fourier_bridgeGetFsmNameRequest = Ros1Uwvm_fourier_bridgeGetFsmNameRequest
  {
    -- | \@brief uwvm_fourier_bridge/GetFsmNameRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetFsmNameRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetFsmNameRequest_sequence :: Word64
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetFsmNameRequest :: Ros1Uwvm_fourier_bridgeGetFsmNameRequest
defaultRos1Uwvm_fourier_bridgeGetFsmNameRequest = Ros1Uwvm_fourier_bridgeGetFsmNameRequest (0)
ros1Uwvm_fourier_bridgeGetFsmNameRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetFsmNameRequestCodecIdentity =
    "UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33"
encodeRos1Uwvm_fourier_bridgeGetFsmNameRequest :: Ros1Uwvm_fourier_bridgeGetFsmNameRequest -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeGetFsmNameRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeGetFsmNameRequest_sequence value))
  W.bounded 8 [b0]
readRos1Uwvm_fourier_bridgeGetFsmNameRequest :: W.Decoder Ros1Uwvm_fourier_bridgeGetFsmNameRequest
readRos1Uwvm_fourier_bridgeGetFsmNameRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  let value = Ros1Uwvm_fourier_bridgeGetFsmNameRequest a0
  case encodeRos1Uwvm_fourier_bridgeGetFsmNameRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetFsmNameRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetFsmNameRequest
decodeRos1Uwvm_fourier_bridgeGetFsmNameRequest = W.runDecoder 8 readRos1Uwvm_fourier_bridgeGetFsmNameRequest
instance Canonical Ros1Uwvm_fourier_bridgeGetFsmNameRequest where
  maximumBytes _ = 8
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetFsmNameRequest
  readValue = readRos1Uwvm_fourier_bridgeGetFsmNameRequest
data Ros1Uwvm_fourier_bridgeGetFsmNameResponse = Ros1Uwvm_fourier_bridgeGetFsmNameResponse
  {
    -- | \@brief uwvm_fourier_bridge/GetFsmNameResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetFsmNameResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetFsmNameResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/GetFsmNameResponse.error: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetFsmNameResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetFsmNameResponse_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GetFsmNameResponse.value: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetFsmNameResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetFsmNameResponse_value :: T.Text
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetFsmNameResponse :: Ros1Uwvm_fourier_bridgeGetFsmNameResponse
defaultRos1Uwvm_fourier_bridgeGetFsmNameResponse = Ros1Uwvm_fourier_bridgeGetFsmNameResponse (0) (T.empty) (T.empty)
ros1Uwvm_fourier_bridgeGetFsmNameResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetFsmNameResponseCodecIdentity =
    "UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55"
encodeRos1Uwvm_fourier_bridgeGetFsmNameResponse :: Ros1Uwvm_fourier_bridgeGetFsmNameResponse -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeGetFsmNameResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetFsmNameResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetFsmNameResponse_error value)
  b2 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetFsmNameResponse_value value)
  W.bounded 268 [b0, b1, b2]
readRos1Uwvm_fourier_bridgeGetFsmNameResponse :: W.Decoder Ros1Uwvm_fourier_bridgeGetFsmNameResponse
readRos1Uwvm_fourier_bridgeGetFsmNameResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  let value = Ros1Uwvm_fourier_bridgeGetFsmNameResponse a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeGetFsmNameResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetFsmNameResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetFsmNameResponse
decodeRos1Uwvm_fourier_bridgeGetFsmNameResponse = W.runDecoder 268 readRos1Uwvm_fourier_bridgeGetFsmNameResponse
instance Canonical Ros1Uwvm_fourier_bridgeGetFsmNameResponse where
  maximumBytes _ = 268
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetFsmNameResponse
  readValue = readRos1Uwvm_fourier_bridgeGetFsmNameResponse
data Ros1Uwvm_fourier_bridgeGetFsmStateRequest = Ros1Uwvm_fourier_bridgeGetFsmStateRequest
  {
    -- | \@brief uwvm_fourier_bridge/GetFsmStateRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetFsmStateRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetFsmStateRequest_sequence :: Word64
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetFsmStateRequest :: Ros1Uwvm_fourier_bridgeGetFsmStateRequest
defaultRos1Uwvm_fourier_bridgeGetFsmStateRequest = Ros1Uwvm_fourier_bridgeGetFsmStateRequest (0)
ros1Uwvm_fourier_bridgeGetFsmStateRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetFsmStateRequestCodecIdentity =
    "UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e"
encodeRos1Uwvm_fourier_bridgeGetFsmStateRequest :: Ros1Uwvm_fourier_bridgeGetFsmStateRequest -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeGetFsmStateRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeGetFsmStateRequest_sequence value))
  W.bounded 8 [b0]
readRos1Uwvm_fourier_bridgeGetFsmStateRequest :: W.Decoder Ros1Uwvm_fourier_bridgeGetFsmStateRequest
readRos1Uwvm_fourier_bridgeGetFsmStateRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  let value = Ros1Uwvm_fourier_bridgeGetFsmStateRequest a0
  case encodeRos1Uwvm_fourier_bridgeGetFsmStateRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetFsmStateRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetFsmStateRequest
decodeRos1Uwvm_fourier_bridgeGetFsmStateRequest = W.runDecoder 8 readRos1Uwvm_fourier_bridgeGetFsmStateRequest
instance Canonical Ros1Uwvm_fourier_bridgeGetFsmStateRequest where
  maximumBytes _ = 8
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetFsmStateRequest
  readValue = readRos1Uwvm_fourier_bridgeGetFsmStateRequest
data Ros1Uwvm_fourier_bridgeGetFsmStateResponse = Ros1Uwvm_fourier_bridgeGetFsmStateResponse
  {
    -- | \@brief uwvm_fourier_bridge/GetFsmStateResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetFsmStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetFsmStateResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/GetFsmStateResponse.error: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetFsmStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetFsmStateResponse_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GetFsmStateResponse.value: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetFsmStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetFsmStateResponse_value :: Int32
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetFsmStateResponse :: Ros1Uwvm_fourier_bridgeGetFsmStateResponse
defaultRos1Uwvm_fourier_bridgeGetFsmStateResponse = Ros1Uwvm_fourier_bridgeGetFsmStateResponse (0) (T.empty) (0)
ros1Uwvm_fourier_bridgeGetFsmStateResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetFsmStateResponseCodecIdentity =
    "UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812"
encodeRos1Uwvm_fourier_bridgeGetFsmStateResponse :: Ros1Uwvm_fourier_bridgeGetFsmStateResponse -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeGetFsmStateResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetFsmStateResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetFsmStateResponse_error value)
  b2 <- W.encodeSigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetFsmStateResponse_value value))
  W.bounded 140 [b0, b1, b2]
readRos1Uwvm_fourier_bridgeGetFsmStateResponse :: W.Decoder Ros1Uwvm_fourier_bridgeGetFsmStateResponse
readRos1Uwvm_fourier_bridgeGetFsmStateResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- fromIntegral <$> W.signed 4
  let value = Ros1Uwvm_fourier_bridgeGetFsmStateResponse a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeGetFsmStateResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetFsmStateResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetFsmStateResponse
decodeRos1Uwvm_fourier_bridgeGetFsmStateResponse = W.runDecoder 140 readRos1Uwvm_fourier_bridgeGetFsmStateResponse
instance Canonical Ros1Uwvm_fourier_bridgeGetFsmStateResponse where
  maximumBytes _ = 140
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetFsmStateResponse
  readValue = readRos1Uwvm_fourier_bridgeGetFsmStateResponse
data Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest = Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest
  {
    -- | \@brief uwvm_fourier_bridge/GetGroupMotionStateRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/GetGroupMotionStateRequest.group: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest_group :: T.Text
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest :: Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest
defaultRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest = Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest (0)
    (T.empty)
ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodecIdentity =
    "UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f"
encodeRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest :: Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest ->
    Either Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest_sequence value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest_group value)
  W.bounded 140 [b0, b1]
readRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest :: W.Decoder Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest
readRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.text 128 True
  let value = Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest a0 a1
  case encodeRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest
decodeRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest = W.runDecoder 140
    readRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest
instance Canonical Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest where
  maximumBytes _ = 140
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest
  readValue = readRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest
data Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse = Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse
  {
    -- | \@brief uwvm_fourier_bridge/GetGroupMotionStateResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/GetGroupMotionStateResponse.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GetGroupMotionStateResponse.value: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse_value :: Int32
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse :: Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse
defaultRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse = Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse (0)
    (T.empty) (0)
ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodecIdentity =
    "UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2"
encodeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse :: Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse ->
    Either Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse_error value)
  b2 <- W.encodeSigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse_value value))
  W.bounded 140 [b0, b1, b2]
readRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse :: W.Decoder
    Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse
readRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- fromIntegral <$> W.signed 4
  let value = Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse
decodeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse = W.runDecoder 140
    readRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse
instance Canonical Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse where
  maximumBytes _ = 140
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse
  readValue = readRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse
data Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
  {
    -- | \@brief uwvm_fourier_bridge/GetGroupMotorCfgRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/GetGroupMotorCfgRequest.group: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest_group :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GetGroupMotorCfgRequest.key: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest_key :: T.Text
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest :: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
defaultRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest (0) (T.empty)
    (T.empty)
ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodecIdentity =
    "UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576"
encodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest :: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest -> Either
    Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest_sequence value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest_group value)
  b2 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest_key value)
  W.bounded 272 [b0, b1, b2]
readRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest :: W.Decoder Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
readRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  let value = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
decodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest = W.runDecoder 272
    readRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
instance Canonical Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest where
  maximumBytes _ = 272
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
  readValue = readRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
data Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
  {
    -- | \@brief uwvm_fourier_bridge/GetGroupMotorCfgResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/GetGroupMotorCfgResponse.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GetGroupMotorCfgResponse.values: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse_values :: [Double]
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse :: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
defaultRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse (0)
    (T.empty) ([])
ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodecIdentity =
    "UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72"
encodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse :: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse -> Either
    Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse_error value)
  if length (ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse_values value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse_values value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse_values value)
  W.bounded 652 [b0, b1, prefix2, b2]
readRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse :: W.Decoder Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
readRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  count2 <- W.count 64
  a2 <- replicateM count2 (W.float64)
  let value = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
decodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse = W.runDecoder 652
    readRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
instance Canonical Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse where
  maximumBytes _ = 652
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
  readValue = readRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
data Ros1Uwvm_fourier_bridgeGetGroupStateRequest = Ros1Uwvm_fourier_bridgeGetGroupStateRequest
  {
    -- | \@brief uwvm_fourier_bridge/GetGroupStateRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetGroupStateRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetGroupStateRequest_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/GetGroupStateRequest.group: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetGroupStateRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetGroupStateRequest_group :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GetGroupStateRequest.key: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetGroupStateRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetGroupStateRequest_key :: T.Text
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetGroupStateRequest :: Ros1Uwvm_fourier_bridgeGetGroupStateRequest
defaultRos1Uwvm_fourier_bridgeGetGroupStateRequest = Ros1Uwvm_fourier_bridgeGetGroupStateRequest (0) (T.empty)
    (T.empty)
ros1Uwvm_fourier_bridgeGetGroupStateRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetGroupStateRequestCodecIdentity =
    "UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc"
encodeRos1Uwvm_fourier_bridgeGetGroupStateRequest :: Ros1Uwvm_fourier_bridgeGetGroupStateRequest -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeGetGroupStateRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeGetGroupStateRequest_sequence value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetGroupStateRequest_group value)
  b2 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetGroupStateRequest_key value)
  W.bounded 272 [b0, b1, b2]
readRos1Uwvm_fourier_bridgeGetGroupStateRequest :: W.Decoder Ros1Uwvm_fourier_bridgeGetGroupStateRequest
readRos1Uwvm_fourier_bridgeGetGroupStateRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  let value = Ros1Uwvm_fourier_bridgeGetGroupStateRequest a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeGetGroupStateRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetGroupStateRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetGroupStateRequest
decodeRos1Uwvm_fourier_bridgeGetGroupStateRequest = W.runDecoder 272 readRos1Uwvm_fourier_bridgeGetGroupStateRequest
instance Canonical Ros1Uwvm_fourier_bridgeGetGroupStateRequest where
  maximumBytes _ = 272
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetGroupStateRequest
  readValue = readRos1Uwvm_fourier_bridgeGetGroupStateRequest
data Ros1Uwvm_fourier_bridgeGetGroupStateResponse = Ros1Uwvm_fourier_bridgeGetGroupStateResponse
  {
    -- | \@brief uwvm_fourier_bridge/GetGroupStateResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetGroupStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetGroupStateResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/GetGroupStateResponse.error: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetGroupStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetGroupStateResponse_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GetGroupStateResponse.values: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetGroupStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetGroupStateResponse_values :: [Double]
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetGroupStateResponse :: Ros1Uwvm_fourier_bridgeGetGroupStateResponse
defaultRos1Uwvm_fourier_bridgeGetGroupStateResponse = Ros1Uwvm_fourier_bridgeGetGroupStateResponse (0) (T.empty)
    ([])
ros1Uwvm_fourier_bridgeGetGroupStateResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetGroupStateResponseCodecIdentity =
    "UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb"
encodeRos1Uwvm_fourier_bridgeGetGroupStateResponse :: Ros1Uwvm_fourier_bridgeGetGroupStateResponse -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeGetGroupStateResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetGroupStateResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetGroupStateResponse_error value)
  if length (ros1Uwvm_fourier_bridgeGetGroupStateResponse_values value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros1Uwvm_fourier_bridgeGetGroupStateResponse_values value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Uwvm_fourier_bridgeGetGroupStateResponse_values value)
  W.bounded 652 [b0, b1, prefix2, b2]
readRos1Uwvm_fourier_bridgeGetGroupStateResponse :: W.Decoder Ros1Uwvm_fourier_bridgeGetGroupStateResponse
readRos1Uwvm_fourier_bridgeGetGroupStateResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  count2 <- W.count 64
  a2 <- replicateM count2 (W.float64)
  let value = Ros1Uwvm_fourier_bridgeGetGroupStateResponse a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeGetGroupStateResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetGroupStateResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetGroupStateResponse
decodeRos1Uwvm_fourier_bridgeGetGroupStateResponse = W.runDecoder 652
    readRos1Uwvm_fourier_bridgeGetGroupStateResponse
instance Canonical Ros1Uwvm_fourier_bridgeGetGroupStateResponse where
  maximumBytes _ = 652
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetGroupStateResponse
  readValue = readRos1Uwvm_fourier_bridgeGetGroupStateResponse
data Ros1Uwvm_fourier_bridgeGetSnapshotRequest = Ros1Uwvm_fourier_bridgeGetSnapshotRequest
  {
    -- | \@brief uwvm_fourier_bridge/GetSnapshotRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetSnapshotRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetSnapshotRequest_sequence :: Word64
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetSnapshotRequest :: Ros1Uwvm_fourier_bridgeGetSnapshotRequest
defaultRos1Uwvm_fourier_bridgeGetSnapshotRequest = Ros1Uwvm_fourier_bridgeGetSnapshotRequest (0)
ros1Uwvm_fourier_bridgeGetSnapshotRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetSnapshotRequestCodecIdentity =
    "UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c"
encodeRos1Uwvm_fourier_bridgeGetSnapshotRequest :: Ros1Uwvm_fourier_bridgeGetSnapshotRequest -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeGetSnapshotRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeGetSnapshotRequest_sequence value))
  W.bounded 8 [b0]
readRos1Uwvm_fourier_bridgeGetSnapshotRequest :: W.Decoder Ros1Uwvm_fourier_bridgeGetSnapshotRequest
readRos1Uwvm_fourier_bridgeGetSnapshotRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  let value = Ros1Uwvm_fourier_bridgeGetSnapshotRequest a0
  case encodeRos1Uwvm_fourier_bridgeGetSnapshotRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetSnapshotRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetSnapshotRequest
decodeRos1Uwvm_fourier_bridgeGetSnapshotRequest = W.runDecoder 8 readRos1Uwvm_fourier_bridgeGetSnapshotRequest
instance Canonical Ros1Uwvm_fourier_bridgeGetSnapshotRequest where
  maximumBytes _ = 8
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetSnapshotRequest
  readValue = readRos1Uwvm_fourier_bridgeGetSnapshotRequest
data Ros1Uwvm_fourier_bridgeGroupState = Ros1Uwvm_fourier_bridgeGroupState
  {
    -- | \@brief uwvm_fourier_bridge/GroupState.group: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGroupState_group :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GroupState.position: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGroupState_position :: [Double]
  ,
    -- | \@brief uwvm_fourier_bridge/GroupState.velocity: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGroupState_velocity :: [Double]
  ,
    -- | \@brief uwvm_fourier_bridge/GroupState.effort: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGroupState_effort :: [Double]
  ,
    -- | \@brief uwvm_fourier_bridge/GroupState.motion_state: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGroupState_motion_state :: Int32
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGroupState :: Ros1Uwvm_fourier_bridgeGroupState
defaultRos1Uwvm_fourier_bridgeGroupState = Ros1Uwvm_fourier_bridgeGroupState (T.empty) ([]) ([]) ([]) (0)
ros1Uwvm_fourier_bridgeGroupStateCodecIdentity :: String
ros1Uwvm_fourier_bridgeGroupStateCodecIdentity =
    "UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855"
encodeRos1Uwvm_fourier_bridgeGroupState :: Ros1Uwvm_fourier_bridgeGroupState -> Either Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeGroupState value = do
  b0 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGroupState_group value)
  if length (ros1Uwvm_fourier_bridgeGroupState_position value) > 64 then Left 22 else Right ()
  prefix1 <- W.encodeCount 64 (length (ros1Uwvm_fourier_bridgeGroupState_position value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Uwvm_fourier_bridgeGroupState_position value)
  if length (ros1Uwvm_fourier_bridgeGroupState_velocity value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros1Uwvm_fourier_bridgeGroupState_velocity value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Uwvm_fourier_bridgeGroupState_velocity value)
  if length (ros1Uwvm_fourier_bridgeGroupState_effort value) > 64 then Left 22 else Right ()
  prefix3 <- W.encodeCount 64 (length (ros1Uwvm_fourier_bridgeGroupState_effort value))
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Uwvm_fourier_bridgeGroupState_effort value)
  b4 <- W.encodeSigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGroupState_motion_state value))
  W.bounded 1684 [b0, prefix1, b1, prefix2, b2, prefix3, b3, b4]
readRos1Uwvm_fourier_bridgeGroupState :: W.Decoder Ros1Uwvm_fourier_bridgeGroupState
readRos1Uwvm_fourier_bridgeGroupState = do
  a0 <- W.text 128 True
  count1 <- W.count 64
  a1 <- replicateM count1 (W.float64)
  count2 <- W.count 64
  a2 <- replicateM count2 (W.float64)
  count3 <- W.count 64
  a3 <- replicateM count3 (W.float64)
  a4 <- fromIntegral <$> W.signed 4
  let value = Ros1Uwvm_fourier_bridgeGroupState a0 a1 a2 a3 a4
  case encodeRos1Uwvm_fourier_bridgeGroupState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGroupState :: B.ByteString -> Either Word32 Ros1Uwvm_fourier_bridgeGroupState
decodeRos1Uwvm_fourier_bridgeGroupState = W.runDecoder 1684 readRos1Uwvm_fourier_bridgeGroupState
instance Canonical Ros1Uwvm_fourier_bridgeGroupState where
  maximumBytes _ = 1684
  encodeValue = encodeRos1Uwvm_fourier_bridgeGroupState
  readValue = readRos1Uwvm_fourier_bridgeGroupState
data Ros1Uwvm_fourier_bridgeStatus = Ros1Uwvm_fourier_bridgeStatus
  {
    -- | \@brief uwvm_fourier_bridge/Status.fsm_state: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeStatus_fsm_state :: Int32
  ,
    -- | \@brief uwvm_fourier_bridge/Status.fsm_name: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeStatus_fsm_name :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/Status.upper_fsm_state: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeStatus_upper_fsm_state :: Int32
  ,
    -- | \@brief uwvm_fourier_bridge/Status.upper_fsm_name: string; each string is 0..128 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeStatus_upper_fsm_name :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/Status.velocity_source: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeStatus_velocity_source :: Int32
  ,
    -- | \@brief uwvm_fourier_bridge/Status.velocity_source_name: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeStatus_velocity_source_name :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/Status.stand_pose: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeStatus_stand_pose :: [Double]
  ,
    -- | \@brief uwvm_fourier_bridge/Status.groups: uwvm_fourier_bridge/GroupState; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeStatus_groups :: [Ros1Uwvm_fourier_bridgeGroupState]
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeStatus :: Ros1Uwvm_fourier_bridgeStatus
defaultRos1Uwvm_fourier_bridgeStatus = Ros1Uwvm_fourier_bridgeStatus (0) (T.empty) (0) (T.empty) (0) (T.empty) ([])
    ([])
ros1Uwvm_fourier_bridgeStatusCodecIdentity :: String
ros1Uwvm_fourier_bridgeStatusCodecIdentity =
    "UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e"
encodeRos1Uwvm_fourier_bridgeStatus :: Ros1Uwvm_fourier_bridgeStatus -> Either Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeStatus value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeStatus_fsm_state value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeStatus_fsm_name value)
  b2 <- W.encodeSigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeStatus_upper_fsm_state value))
  b3 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeStatus_upper_fsm_name value)
  b4 <- W.encodeSigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeStatus_velocity_source value))
  b5 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeStatus_velocity_source_name value)
  if length (ros1Uwvm_fourier_bridgeStatus_stand_pose value) > 64 then Left 22 else Right ()
  prefix6 <- W.encodeCount 64 (length (ros1Uwvm_fourier_bridgeStatus_stand_pose value))
  b6 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Uwvm_fourier_bridgeStatus_stand_pose value)
  if length (ros1Uwvm_fourier_bridgeStatus_groups value) > 8 then Left 22 else Right ()
  prefix7 <- W.encodeCount 8 (length (ros1Uwvm_fourier_bridgeStatus_groups value))
  b7 <- B.concat <$> mapM (\e -> encodeRos1Uwvm_fourier_bridgeGroupState (e)) (ros1Uwvm_fourier_bridgeStatus_groups
      value)
  W.bounded 14400 [b0, b1, b2, b3, b4, b5, prefix6, b6, prefix7, b7]
readRos1Uwvm_fourier_bridgeStatus :: W.Decoder Ros1Uwvm_fourier_bridgeStatus
readRos1Uwvm_fourier_bridgeStatus = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- W.text 128 True
  a2 <- fromIntegral <$> W.signed 4
  a3 <- W.text 128 True
  a4 <- fromIntegral <$> W.signed 4
  a5 <- W.text 128 True
  count6 <- W.count 64
  a6 <- replicateM count6 (W.float64)
  count7 <- W.count 8
  a7 <- replicateM count7 (readRos1Uwvm_fourier_bridgeGroupState)
  let value = Ros1Uwvm_fourier_bridgeStatus a0 a1 a2 a3 a4 a5 a6 a7
  case encodeRos1Uwvm_fourier_bridgeStatus value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeStatus :: B.ByteString -> Either Word32 Ros1Uwvm_fourier_bridgeStatus
decodeRos1Uwvm_fourier_bridgeStatus = W.runDecoder 14400 readRos1Uwvm_fourier_bridgeStatus
instance Canonical Ros1Uwvm_fourier_bridgeStatus where
  maximumBytes _ = 14400
  encodeValue = encodeRos1Uwvm_fourier_bridgeStatus
  readValue = readRos1Uwvm_fourier_bridgeStatus
data Ros1Uwvm_fourier_bridgeGetSnapshotResponse = Ros1Uwvm_fourier_bridgeGetSnapshotResponse
  {
    -- | \@brief uwvm_fourier_bridge/GetSnapshotResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetSnapshotResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetSnapshotResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/GetSnapshotResponse.error: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetSnapshotResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetSnapshotResponse_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GetSnapshotResponse.value: uwvm_fourier_bridge/Status.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetSnapshotResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetSnapshotResponse_value :: Ros1Uwvm_fourier_bridgeStatus
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetSnapshotResponse :: Ros1Uwvm_fourier_bridgeGetSnapshotResponse
defaultRos1Uwvm_fourier_bridgeGetSnapshotResponse = Ros1Uwvm_fourier_bridgeGetSnapshotResponse (0) (T.empty)
    (defaultRos1Uwvm_fourier_bridgeStatus)
ros1Uwvm_fourier_bridgeGetSnapshotResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetSnapshotResponseCodecIdentity =
    "UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a"
encodeRos1Uwvm_fourier_bridgeGetSnapshotResponse :: Ros1Uwvm_fourier_bridgeGetSnapshotResponse -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeGetSnapshotResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetSnapshotResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetSnapshotResponse_error value)
  b2 <- encodeRos1Uwvm_fourier_bridgeStatus (ros1Uwvm_fourier_bridgeGetSnapshotResponse_value value)
  W.bounded 14536 [b0, b1, b2]
readRos1Uwvm_fourier_bridgeGetSnapshotResponse :: W.Decoder Ros1Uwvm_fourier_bridgeGetSnapshotResponse
readRos1Uwvm_fourier_bridgeGetSnapshotResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- readRos1Uwvm_fourier_bridgeStatus
  let value = Ros1Uwvm_fourier_bridgeGetSnapshotResponse a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeGetSnapshotResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetSnapshotResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetSnapshotResponse
decodeRos1Uwvm_fourier_bridgeGetSnapshotResponse = W.runDecoder 14536 readRos1Uwvm_fourier_bridgeGetSnapshotResponse
instance Canonical Ros1Uwvm_fourier_bridgeGetSnapshotResponse where
  maximumBytes _ = 14536
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetSnapshotResponse
  readValue = readRos1Uwvm_fourier_bridgeGetSnapshotResponse
data Ros1Uwvm_fourier_bridgeGetStandPoseRequest = Ros1Uwvm_fourier_bridgeGetStandPoseRequest
  {
    -- | \@brief uwvm_fourier_bridge/GetStandPoseRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetStandPoseRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetStandPoseRequest_sequence :: Word64
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetStandPoseRequest :: Ros1Uwvm_fourier_bridgeGetStandPoseRequest
defaultRos1Uwvm_fourier_bridgeGetStandPoseRequest = Ros1Uwvm_fourier_bridgeGetStandPoseRequest (0)
ros1Uwvm_fourier_bridgeGetStandPoseRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetStandPoseRequestCodecIdentity =
    "UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738"
encodeRos1Uwvm_fourier_bridgeGetStandPoseRequest :: Ros1Uwvm_fourier_bridgeGetStandPoseRequest -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeGetStandPoseRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeGetStandPoseRequest_sequence value))
  W.bounded 8 [b0]
readRos1Uwvm_fourier_bridgeGetStandPoseRequest :: W.Decoder Ros1Uwvm_fourier_bridgeGetStandPoseRequest
readRos1Uwvm_fourier_bridgeGetStandPoseRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  let value = Ros1Uwvm_fourier_bridgeGetStandPoseRequest a0
  case encodeRos1Uwvm_fourier_bridgeGetStandPoseRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetStandPoseRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetStandPoseRequest
decodeRos1Uwvm_fourier_bridgeGetStandPoseRequest = W.runDecoder 8 readRos1Uwvm_fourier_bridgeGetStandPoseRequest
instance Canonical Ros1Uwvm_fourier_bridgeGetStandPoseRequest where
  maximumBytes _ = 8
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetStandPoseRequest
  readValue = readRos1Uwvm_fourier_bridgeGetStandPoseRequest
data Ros1Uwvm_fourier_bridgeGetStandPoseResponse = Ros1Uwvm_fourier_bridgeGetStandPoseResponse
  {
    -- | \@brief uwvm_fourier_bridge/GetStandPoseResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetStandPoseResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetStandPoseResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/GetStandPoseResponse.error: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetStandPoseResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetStandPoseResponse_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GetStandPoseResponse.values: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetStandPoseResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetStandPoseResponse_values :: [Double]
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetStandPoseResponse :: Ros1Uwvm_fourier_bridgeGetStandPoseResponse
defaultRos1Uwvm_fourier_bridgeGetStandPoseResponse = Ros1Uwvm_fourier_bridgeGetStandPoseResponse (0) (T.empty) ([])
ros1Uwvm_fourier_bridgeGetStandPoseResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetStandPoseResponseCodecIdentity =
    "UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d"
encodeRos1Uwvm_fourier_bridgeGetStandPoseResponse :: Ros1Uwvm_fourier_bridgeGetStandPoseResponse -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeGetStandPoseResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetStandPoseResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetStandPoseResponse_error value)
  if length (ros1Uwvm_fourier_bridgeGetStandPoseResponse_values value) > 64 then Left 22 else Right ()
  prefix2 <- W.encodeCount 64 (length (ros1Uwvm_fourier_bridgeGetStandPoseResponse_values value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Uwvm_fourier_bridgeGetStandPoseResponse_values value)
  W.bounded 652 [b0, b1, prefix2, b2]
readRos1Uwvm_fourier_bridgeGetStandPoseResponse :: W.Decoder Ros1Uwvm_fourier_bridgeGetStandPoseResponse
readRos1Uwvm_fourier_bridgeGetStandPoseResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  count2 <- W.count 64
  a2 <- replicateM count2 (W.float64)
  let value = Ros1Uwvm_fourier_bridgeGetStandPoseResponse a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeGetStandPoseResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetStandPoseResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetStandPoseResponse
decodeRos1Uwvm_fourier_bridgeGetStandPoseResponse = W.runDecoder 652 readRos1Uwvm_fourier_bridgeGetStandPoseResponse
instance Canonical Ros1Uwvm_fourier_bridgeGetStandPoseResponse where
  maximumBytes _ = 652
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetStandPoseResponse
  readValue = readRos1Uwvm_fourier_bridgeGetStandPoseResponse
data Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest = Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest
  {
    -- | \@brief uwvm_fourier_bridge/GetUpperFsmNameRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest_sequence :: Word64
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest :: Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest
defaultRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest = Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest (0)
ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodecIdentity =
    "UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a"
encodeRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest :: Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest -> Either
    Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest_sequence value))
  W.bounded 8 [b0]
readRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest :: W.Decoder Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest
readRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  let value = Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest a0
  case encodeRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest
decodeRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest = W.runDecoder 8
    readRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest
instance Canonical Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest where
  maximumBytes _ = 8
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest
  readValue = readRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest
data Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse = Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse
  {
    -- | \@brief uwvm_fourier_bridge/GetUpperFsmNameResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/GetUpperFsmNameResponse.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GetUpperFsmNameResponse.value: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse_value :: T.Text
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse :: Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse
defaultRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse = Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse (0) (T.empty)
    (T.empty)
ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodecIdentity =
    "UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe"
encodeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse :: Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse -> Either
    Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse_error value)
  b2 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse_value value)
  W.bounded 268 [b0, b1, b2]
readRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse :: W.Decoder Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse
readRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  let value = Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse
decodeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse = W.runDecoder 268
    readRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse
instance Canonical Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse where
  maximumBytes _ = 268
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse
  readValue = readRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse
data Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest = Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest
  {
    -- | \@brief uwvm_fourier_bridge/GetUpperFsmStateRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest_sequence :: Word64
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest :: Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest
defaultRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest = Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest (0)
ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodecIdentity =
    "UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12"
encodeRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest :: Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest -> Either
    Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest_sequence value))
  W.bounded 8 [b0]
readRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest :: W.Decoder Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest
readRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  let value = Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest a0
  case encodeRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest
decodeRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest = W.runDecoder 8
    readRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest
instance Canonical Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest where
  maximumBytes _ = 8
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest
  readValue = readRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest
data Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse = Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse
  {
    -- | \@brief uwvm_fourier_bridge/GetUpperFsmStateResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/GetUpperFsmStateResponse.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GetUpperFsmStateResponse.value: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse_value :: Int32
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse :: Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse
defaultRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse = Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse (0)
    (T.empty) (0)
ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodecIdentity =
    "UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71"
encodeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse :: Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse -> Either
    Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse_error value)
  b2 <- W.encodeSigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse_value value))
  W.bounded 140 [b0, b1, b2]
readRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse :: W.Decoder Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse
readRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- fromIntegral <$> W.signed 4
  let value = Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse
decodeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse = W.runDecoder 140
    readRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse
instance Canonical Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse where
  maximumBytes _ = 140
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse
  readValue = readRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse
data Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest = Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest
  {
    -- | \@brief uwvm_fourier_bridge/GetVelocitySourceRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetVelocitySourceRequest_sequence :: Word64
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetVelocitySourceRequest :: Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest
defaultRos1Uwvm_fourier_bridgeGetVelocitySourceRequest = Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest (0)
ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodecIdentity =
    "UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042"
encodeRos1Uwvm_fourier_bridgeGetVelocitySourceRequest :: Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest -> Either
    Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeGetVelocitySourceRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeGetVelocitySourceRequest_sequence value))
  W.bounded 8 [b0]
readRos1Uwvm_fourier_bridgeGetVelocitySourceRequest :: W.Decoder Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest
readRos1Uwvm_fourier_bridgeGetVelocitySourceRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  let value = Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest a0
  case encodeRos1Uwvm_fourier_bridgeGetVelocitySourceRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetVelocitySourceRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest
decodeRos1Uwvm_fourier_bridgeGetVelocitySourceRequest = W.runDecoder 8
    readRos1Uwvm_fourier_bridgeGetVelocitySourceRequest
instance Canonical Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest where
  maximumBytes _ = 8
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetVelocitySourceRequest
  readValue = readRos1Uwvm_fourier_bridgeGetVelocitySourceRequest
data Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse = Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse
  {
    -- | \@brief uwvm_fourier_bridge/GetVelocitySourceResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetVelocitySourceResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/GetVelocitySourceResponse.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetVelocitySourceResponse_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GetVelocitySourceResponse.value: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetVelocitySourceResponse_value :: Int32
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetVelocitySourceResponse :: Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse
defaultRos1Uwvm_fourier_bridgeGetVelocitySourceResponse = Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse (0)
    (T.empty) (0)
ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodecIdentity =
    "UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60"
encodeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse :: Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse -> Either
    Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetVelocitySourceResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetVelocitySourceResponse_error value)
  b2 <- W.encodeSigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetVelocitySourceResponse_value value))
  W.bounded 140 [b0, b1, b2]
readRos1Uwvm_fourier_bridgeGetVelocitySourceResponse :: W.Decoder Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse
readRos1Uwvm_fourier_bridgeGetVelocitySourceResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- fromIntegral <$> W.signed 4
  let value = Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse
decodeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse = W.runDecoder 140
    readRos1Uwvm_fourier_bridgeGetVelocitySourceResponse
instance Canonical Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse where
  maximumBytes _ = 140
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse
  readValue = readRos1Uwvm_fourier_bridgeGetVelocitySourceResponse
data Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
  {
    -- | \@brief uwvm_fourier_bridge/GetVelocitySourceNameRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest_sequence :: Word64
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest :: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
defaultRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest (0)
ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodecIdentity =
    "UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b"
encodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest :: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest ->
    Either Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest_sequence value))
  W.bounded 8 [b0]
readRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest :: W.Decoder
    Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
readRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  let value = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest a0
  case encodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
decodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest = W.runDecoder 8
    readRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
instance Canonical Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest where
  maximumBytes _ = 8
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
  readValue = readRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
data Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
  {
    -- | \@brief uwvm_fourier_bridge/GetVelocitySourceNameResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/GetVelocitySourceNameResponse.error: string; each string is 0..128 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GetVelocitySourceNameResponse.value: string; each string is 0..128 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse_value :: T.Text
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse :: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
defaultRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
    (0) (T.empty) (T.empty)
ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodecIdentity =
    "UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b"
encodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse :: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
    -> Either Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse_error value)
  b2 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse_value value)
  W.bounded 268 [b0, b1, b2]
readRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse :: W.Decoder
    Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
readRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  let value = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
decodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse = W.runDecoder 268
    readRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
instance Canonical Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse where
  maximumBytes _ = 268
  encodeValue = encodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
  readValue = readRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
data Ros1Uwvm_fourier_bridgeGroupValues = Ros1Uwvm_fourier_bridgeGroupValues
  {
    -- | \@brief uwvm_fourier_bridge/GroupValues.group: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGroupValues; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGroupValues_group :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/GroupValues.values: float64; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeGroupValues; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeGroupValues_values :: [Double]
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeGroupValues :: Ros1Uwvm_fourier_bridgeGroupValues
defaultRos1Uwvm_fourier_bridgeGroupValues = Ros1Uwvm_fourier_bridgeGroupValues (T.empty) ([])
ros1Uwvm_fourier_bridgeGroupValuesCodecIdentity :: String
ros1Uwvm_fourier_bridgeGroupValuesCodecIdentity =
    "UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c"
encodeRos1Uwvm_fourier_bridgeGroupValues :: Ros1Uwvm_fourier_bridgeGroupValues -> Either Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeGroupValues value = do
  b0 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeGroupValues_group value)
  if length (ros1Uwvm_fourier_bridgeGroupValues_values value) > 64 then Left 22 else Right ()
  prefix1 <- W.encodeCount 64 (length (ros1Uwvm_fourier_bridgeGroupValues_values value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Uwvm_fourier_bridgeGroupValues_values value)
  W.bounded 648 [b0, prefix1, b1]
readRos1Uwvm_fourier_bridgeGroupValues :: W.Decoder Ros1Uwvm_fourier_bridgeGroupValues
readRos1Uwvm_fourier_bridgeGroupValues = do
  a0 <- W.text 128 True
  count1 <- W.count 64
  a1 <- replicateM count1 (W.float64)
  let value = Ros1Uwvm_fourier_bridgeGroupValues a0 a1
  case encodeRos1Uwvm_fourier_bridgeGroupValues value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeGroupValues :: B.ByteString -> Either Word32 Ros1Uwvm_fourier_bridgeGroupValues
decodeRos1Uwvm_fourier_bridgeGroupValues = W.runDecoder 648 readRos1Uwvm_fourier_bridgeGroupValues
instance Canonical Ros1Uwvm_fourier_bridgeGroupValues where
  maximumBytes _ = 648
  encodeValue = encodeRos1Uwvm_fourier_bridgeGroupValues
  readValue = readRos1Uwvm_fourier_bridgeGroupValues
data Ros1Uwvm_fourier_bridgeSetFsmStateRequest = Ros1Uwvm_fourier_bridgeSetFsmStateRequest
  {
    -- | \@brief uwvm_fourier_bridge/SetFsmStateRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetFsmStateRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetFsmStateRequest_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/SetFsmStateRequest.state: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetFsmStateRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetFsmStateRequest_state :: Int32
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeSetFsmStateRequest :: Ros1Uwvm_fourier_bridgeSetFsmStateRequest
defaultRos1Uwvm_fourier_bridgeSetFsmStateRequest = Ros1Uwvm_fourier_bridgeSetFsmStateRequest (0) (0)
ros1Uwvm_fourier_bridgeSetFsmStateRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeSetFsmStateRequestCodecIdentity =
    "UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885"
encodeRos1Uwvm_fourier_bridgeSetFsmStateRequest :: Ros1Uwvm_fourier_bridgeSetFsmStateRequest -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeSetFsmStateRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeSetFsmStateRequest_sequence value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeSetFsmStateRequest_state value))
  W.bounded 12 [b0, b1]
readRos1Uwvm_fourier_bridgeSetFsmStateRequest :: W.Decoder Ros1Uwvm_fourier_bridgeSetFsmStateRequest
readRos1Uwvm_fourier_bridgeSetFsmStateRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- fromIntegral <$> W.signed 4
  let value = Ros1Uwvm_fourier_bridgeSetFsmStateRequest a0 a1
  case encodeRos1Uwvm_fourier_bridgeSetFsmStateRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeSetFsmStateRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeSetFsmStateRequest
decodeRos1Uwvm_fourier_bridgeSetFsmStateRequest = W.runDecoder 12 readRos1Uwvm_fourier_bridgeSetFsmStateRequest
instance Canonical Ros1Uwvm_fourier_bridgeSetFsmStateRequest where
  maximumBytes _ = 12
  encodeValue = encodeRos1Uwvm_fourier_bridgeSetFsmStateRequest
  readValue = readRos1Uwvm_fourier_bridgeSetFsmStateRequest
data Ros1Uwvm_fourier_bridgeSetFsmStateResponse = Ros1Uwvm_fourier_bridgeSetFsmStateResponse
  {
    -- | \@brief uwvm_fourier_bridge/SetFsmStateResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetFsmStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetFsmStateResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/SetFsmStateResponse.error: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetFsmStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetFsmStateResponse_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeSetFsmStateResponse :: Ros1Uwvm_fourier_bridgeSetFsmStateResponse
defaultRos1Uwvm_fourier_bridgeSetFsmStateResponse = Ros1Uwvm_fourier_bridgeSetFsmStateResponse (0) (T.empty)
ros1Uwvm_fourier_bridgeSetFsmStateResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeSetFsmStateResponseCodecIdentity =
    "UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1"
encodeRos1Uwvm_fourier_bridgeSetFsmStateResponse :: Ros1Uwvm_fourier_bridgeSetFsmStateResponse -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeSetFsmStateResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeSetFsmStateResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeSetFsmStateResponse_error value)
  W.bounded 136 [b0, b1]
readRos1Uwvm_fourier_bridgeSetFsmStateResponse :: W.Decoder Ros1Uwvm_fourier_bridgeSetFsmStateResponse
readRos1Uwvm_fourier_bridgeSetFsmStateResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  let value = Ros1Uwvm_fourier_bridgeSetFsmStateResponse a0 a1
  case encodeRos1Uwvm_fourier_bridgeSetFsmStateResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeSetFsmStateResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeSetFsmStateResponse
decodeRos1Uwvm_fourier_bridgeSetFsmStateResponse = W.runDecoder 136 readRos1Uwvm_fourier_bridgeSetFsmStateResponse
instance Canonical Ros1Uwvm_fourier_bridgeSetFsmStateResponse where
  maximumBytes _ = 136
  encodeValue = encodeRos1Uwvm_fourier_bridgeSetFsmStateResponse
  readValue = readRos1Uwvm_fourier_bridgeSetFsmStateResponse
data Ros1Uwvm_fourier_bridgeSetGroupCommandRequest = Ros1Uwvm_fourier_bridgeSetGroupCommandRequest
  {
    -- | \@brief uwvm_fourier_bridge/SetGroupCommandRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetGroupCommandRequest_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/SetGroupCommandRequest.position: uwvm_fourier_bridge/GroupValues; 0..8
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetGroupCommandRequest_position :: [Ros1Uwvm_fourier_bridgeGroupValues]
  ,
    -- | \@brief uwvm_fourier_bridge/SetGroupCommandRequest.velocity: uwvm_fourier_bridge/GroupValues; 0..8
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetGroupCommandRequest_velocity :: [Ros1Uwvm_fourier_bridgeGroupValues]
  ,
    -- | \@brief uwvm_fourier_bridge/SetGroupCommandRequest.torque: uwvm_fourier_bridge/GroupValues; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetGroupCommandRequest_torque :: [Ros1Uwvm_fourier_bridgeGroupValues]
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeSetGroupCommandRequest :: Ros1Uwvm_fourier_bridgeSetGroupCommandRequest
defaultRos1Uwvm_fourier_bridgeSetGroupCommandRequest = Ros1Uwvm_fourier_bridgeSetGroupCommandRequest (0) ([]) ([])
    ([])
ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodecIdentity =
    "UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220"
encodeRos1Uwvm_fourier_bridgeSetGroupCommandRequest :: Ros1Uwvm_fourier_bridgeSetGroupCommandRequest -> Either
    Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeSetGroupCommandRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeSetGroupCommandRequest_sequence value))
  if length (ros1Uwvm_fourier_bridgeSetGroupCommandRequest_position value) > 8 then Left 22 else Right ()
  prefix1 <- W.encodeCount 8 (length (ros1Uwvm_fourier_bridgeSetGroupCommandRequest_position value))
  b1 <- B.concat <$> mapM (\e -> encodeRos1Uwvm_fourier_bridgeGroupValues (e))
      (ros1Uwvm_fourier_bridgeSetGroupCommandRequest_position value)
  if length (ros1Uwvm_fourier_bridgeSetGroupCommandRequest_velocity value) > 8 then Left 22 else Right ()
  prefix2 <- W.encodeCount 8 (length (ros1Uwvm_fourier_bridgeSetGroupCommandRequest_velocity value))
  b2 <- B.concat <$> mapM (\e -> encodeRos1Uwvm_fourier_bridgeGroupValues (e))
      (ros1Uwvm_fourier_bridgeSetGroupCommandRequest_velocity value)
  if length (ros1Uwvm_fourier_bridgeSetGroupCommandRequest_torque value) > 8 then Left 22 else Right ()
  prefix3 <- W.encodeCount 8 (length (ros1Uwvm_fourier_bridgeSetGroupCommandRequest_torque value))
  b3 <- B.concat <$> mapM (\e -> encodeRos1Uwvm_fourier_bridgeGroupValues (e))
      (ros1Uwvm_fourier_bridgeSetGroupCommandRequest_torque value)
  W.bounded 15572 [b0, prefix1, b1, prefix2, b2, prefix3, b3]
readRos1Uwvm_fourier_bridgeSetGroupCommandRequest :: W.Decoder Ros1Uwvm_fourier_bridgeSetGroupCommandRequest
readRos1Uwvm_fourier_bridgeSetGroupCommandRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  count1 <- W.count 8
  a1 <- replicateM count1 (readRos1Uwvm_fourier_bridgeGroupValues)
  count2 <- W.count 8
  a2 <- replicateM count2 (readRos1Uwvm_fourier_bridgeGroupValues)
  count3 <- W.count 8
  a3 <- replicateM count3 (readRos1Uwvm_fourier_bridgeGroupValues)
  let value = Ros1Uwvm_fourier_bridgeSetGroupCommandRequest a0 a1 a2 a3
  case encodeRos1Uwvm_fourier_bridgeSetGroupCommandRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeSetGroupCommandRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeSetGroupCommandRequest
decodeRos1Uwvm_fourier_bridgeSetGroupCommandRequest = W.runDecoder 15572
    readRos1Uwvm_fourier_bridgeSetGroupCommandRequest
instance Canonical Ros1Uwvm_fourier_bridgeSetGroupCommandRequest where
  maximumBytes _ = 15572
  encodeValue = encodeRos1Uwvm_fourier_bridgeSetGroupCommandRequest
  readValue = readRos1Uwvm_fourier_bridgeSetGroupCommandRequest
data Ros1Uwvm_fourier_bridgeSetGroupCommandResponse = Ros1Uwvm_fourier_bridgeSetGroupCommandResponse
  {
    -- | \@brief uwvm_fourier_bridge/SetGroupCommandResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetGroupCommandResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetGroupCommandResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/SetGroupCommandResponse.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetGroupCommandResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetGroupCommandResponse_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeSetGroupCommandResponse :: Ros1Uwvm_fourier_bridgeSetGroupCommandResponse
defaultRos1Uwvm_fourier_bridgeSetGroupCommandResponse = Ros1Uwvm_fourier_bridgeSetGroupCommandResponse (0) (T.empty)
ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodecIdentity =
    "UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b"
encodeRos1Uwvm_fourier_bridgeSetGroupCommandResponse :: Ros1Uwvm_fourier_bridgeSetGroupCommandResponse -> Either
    Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeSetGroupCommandResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeSetGroupCommandResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeSetGroupCommandResponse_error value)
  W.bounded 136 [b0, b1]
readRos1Uwvm_fourier_bridgeSetGroupCommandResponse :: W.Decoder Ros1Uwvm_fourier_bridgeSetGroupCommandResponse
readRos1Uwvm_fourier_bridgeSetGroupCommandResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  let value = Ros1Uwvm_fourier_bridgeSetGroupCommandResponse a0 a1
  case encodeRos1Uwvm_fourier_bridgeSetGroupCommandResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeSetGroupCommandResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeSetGroupCommandResponse
decodeRos1Uwvm_fourier_bridgeSetGroupCommandResponse = W.runDecoder 136
    readRos1Uwvm_fourier_bridgeSetGroupCommandResponse
instance Canonical Ros1Uwvm_fourier_bridgeSetGroupCommandResponse where
  maximumBytes _ = 136
  encodeValue = encodeRos1Uwvm_fourier_bridgeSetGroupCommandResponse
  readValue = readRos1Uwvm_fourier_bridgeSetGroupCommandResponse
data Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest = Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest
  {
    -- | \@brief uwvm_fourier_bridge/SetMotorCfgPdRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/SetMotorCfgPdRequest.kp: uwvm_fourier_bridge/GroupValues; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest_kp :: [Ros1Uwvm_fourier_bridgeGroupValues]
  ,
    -- | \@brief uwvm_fourier_bridge/SetMotorCfgPdRequest.kd: uwvm_fourier_bridge/GroupValues; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest_kd :: [Ros1Uwvm_fourier_bridgeGroupValues]
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest :: Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest
defaultRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest = Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest (0) ([]) ([])
ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodecIdentity =
    "UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d"
encodeRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest :: Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest_sequence value))
  if length (ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest_kp value) > 8 then Left 22 else Right ()
  prefix1 <- W.encodeCount 8 (length (ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest_kp value))
  b1 <- B.concat <$> mapM (\e -> encodeRos1Uwvm_fourier_bridgeGroupValues (e))
      (ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest_kp value)
  if length (ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest_kd value) > 8 then Left 22 else Right ()
  prefix2 <- W.encodeCount 8 (length (ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest_kd value))
  b2 <- B.concat <$> mapM (\e -> encodeRos1Uwvm_fourier_bridgeGroupValues (e))
      (ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest_kd value)
  W.bounded 10384 [b0, prefix1, b1, prefix2, b2]
readRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest :: W.Decoder Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest
readRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  count1 <- W.count 8
  a1 <- replicateM count1 (readRos1Uwvm_fourier_bridgeGroupValues)
  count2 <- W.count 8
  a2 <- replicateM count2 (readRos1Uwvm_fourier_bridgeGroupValues)
  let value = Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest
decodeRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest = W.runDecoder 10384
    readRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest
instance Canonical Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest where
  maximumBytes _ = 10384
  encodeValue = encodeRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest
  readValue = readRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest
data Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse = Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse
  {
    -- | \@brief uwvm_fourier_bridge/SetMotorCfgPdResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/SetMotorCfgPdResponse.error: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse :: Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse
defaultRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse = Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse (0) (T.empty)
ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodecIdentity =
    "UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc"
encodeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse :: Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse_error value)
  W.bounded 136 [b0, b1]
readRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse :: W.Decoder Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse
readRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  let value = Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse a0 a1
  case encodeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse
decodeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse = W.runDecoder 136
    readRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse
instance Canonical Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse where
  maximumBytes _ = 136
  encodeValue = encodeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse
  readValue = readRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse
data Ros1Uwvm_fourier_bridgeSetStandPoseRequest = Ros1Uwvm_fourier_bridgeSetStandPoseRequest
  {
    -- | \@brief uwvm_fourier_bridge/SetStandPoseRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetStandPoseRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetStandPoseRequest_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/SetStandPoseRequest.delta_z: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetStandPoseRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetStandPoseRequest_delta_z :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/SetStandPoseRequest.delta_pitch: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetStandPoseRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetStandPoseRequest_delta_pitch :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/SetStandPoseRequest.delta_yaw: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetStandPoseRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetStandPoseRequest_delta_yaw :: Double
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeSetStandPoseRequest :: Ros1Uwvm_fourier_bridgeSetStandPoseRequest
defaultRos1Uwvm_fourier_bridgeSetStandPoseRequest = Ros1Uwvm_fourier_bridgeSetStandPoseRequest (0) (0) (0) (0)
ros1Uwvm_fourier_bridgeSetStandPoseRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeSetStandPoseRequestCodecIdentity =
    "UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed"
encodeRos1Uwvm_fourier_bridgeSetStandPoseRequest :: Ros1Uwvm_fourier_bridgeSetStandPoseRequest -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeSetStandPoseRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeSetStandPoseRequest_sequence value))
  b1 <- W.encodeFloat64 (ros1Uwvm_fourier_bridgeSetStandPoseRequest_delta_z value)
  b2 <- W.encodeFloat64 (ros1Uwvm_fourier_bridgeSetStandPoseRequest_delta_pitch value)
  b3 <- W.encodeFloat64 (ros1Uwvm_fourier_bridgeSetStandPoseRequest_delta_yaw value)
  W.bounded 32 [b0, b1, b2, b3]
readRos1Uwvm_fourier_bridgeSetStandPoseRequest :: W.Decoder Ros1Uwvm_fourier_bridgeSetStandPoseRequest
readRos1Uwvm_fourier_bridgeSetStandPoseRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  let value = Ros1Uwvm_fourier_bridgeSetStandPoseRequest a0 a1 a2 a3
  case encodeRos1Uwvm_fourier_bridgeSetStandPoseRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeSetStandPoseRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeSetStandPoseRequest
decodeRos1Uwvm_fourier_bridgeSetStandPoseRequest = W.runDecoder 32 readRos1Uwvm_fourier_bridgeSetStandPoseRequest
instance Canonical Ros1Uwvm_fourier_bridgeSetStandPoseRequest where
  maximumBytes _ = 32
  encodeValue = encodeRos1Uwvm_fourier_bridgeSetStandPoseRequest
  readValue = readRos1Uwvm_fourier_bridgeSetStandPoseRequest
data Ros1Uwvm_fourier_bridgeSetStandPoseResponse = Ros1Uwvm_fourier_bridgeSetStandPoseResponse
  {
    -- | \@brief uwvm_fourier_bridge/SetStandPoseResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetStandPoseResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetStandPoseResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/SetStandPoseResponse.error: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetStandPoseResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetStandPoseResponse_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeSetStandPoseResponse :: Ros1Uwvm_fourier_bridgeSetStandPoseResponse
defaultRos1Uwvm_fourier_bridgeSetStandPoseResponse = Ros1Uwvm_fourier_bridgeSetStandPoseResponse (0) (T.empty)
ros1Uwvm_fourier_bridgeSetStandPoseResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeSetStandPoseResponseCodecIdentity =
    "UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e"
encodeRos1Uwvm_fourier_bridgeSetStandPoseResponse :: Ros1Uwvm_fourier_bridgeSetStandPoseResponse -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeSetStandPoseResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeSetStandPoseResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeSetStandPoseResponse_error value)
  W.bounded 136 [b0, b1]
readRos1Uwvm_fourier_bridgeSetStandPoseResponse :: W.Decoder Ros1Uwvm_fourier_bridgeSetStandPoseResponse
readRos1Uwvm_fourier_bridgeSetStandPoseResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  let value = Ros1Uwvm_fourier_bridgeSetStandPoseResponse a0 a1
  case encodeRos1Uwvm_fourier_bridgeSetStandPoseResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeSetStandPoseResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeSetStandPoseResponse
decodeRos1Uwvm_fourier_bridgeSetStandPoseResponse = W.runDecoder 136 readRos1Uwvm_fourier_bridgeSetStandPoseResponse
instance Canonical Ros1Uwvm_fourier_bridgeSetStandPoseResponse where
  maximumBytes _ = 136
  encodeValue = encodeRos1Uwvm_fourier_bridgeSetStandPoseResponse
  readValue = readRos1Uwvm_fourier_bridgeSetStandPoseResponse
data Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest = Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest
  {
    -- | \@brief uwvm_fourier_bridge/SetUpperFsmStateRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/SetUpperFsmStateRequest.state: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest_state :: Int32
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest :: Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest
defaultRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest = Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest (0) (0)
ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodecIdentity =
    "UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758"
encodeRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest :: Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest -> Either
    Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest_sequence value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest_state value))
  W.bounded 12 [b0, b1]
readRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest :: W.Decoder Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest
readRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- fromIntegral <$> W.signed 4
  let value = Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest a0 a1
  case encodeRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest
decodeRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest = W.runDecoder 12
    readRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest
instance Canonical Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest where
  maximumBytes _ = 12
  encodeValue = encodeRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest
  readValue = readRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest
data Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse = Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse
  {
    -- | \@brief uwvm_fourier_bridge/SetUpperFsmStateResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/SetUpperFsmStateResponse.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse :: Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse
defaultRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse = Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse (0)
    (T.empty)
ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodecIdentity =
    "UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1"
encodeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse :: Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse -> Either
    Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse_error value)
  W.bounded 136 [b0, b1]
readRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse :: W.Decoder Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse
readRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  let value = Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse a0 a1
  case encodeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse
decodeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse = W.runDecoder 136
    readRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse
instance Canonical Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse where
  maximumBytes _ = 136
  encodeValue = encodeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse
  readValue = readRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse
data Ros1Uwvm_fourier_bridgeSetVelocityRequest = Ros1Uwvm_fourier_bridgeSetVelocityRequest
  {
    -- | \@brief uwvm_fourier_bridge/SetVelocityRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetVelocityRequest_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/SetVelocityRequest.vx: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetVelocityRequest_vx :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/SetVelocityRequest.vy: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetVelocityRequest_vy :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/SetVelocityRequest.yaw: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetVelocityRequest_yaw :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/SetVelocityRequest.duration: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetVelocityRequest_duration :: Double
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeSetVelocityRequest :: Ros1Uwvm_fourier_bridgeSetVelocityRequest
defaultRos1Uwvm_fourier_bridgeSetVelocityRequest = Ros1Uwvm_fourier_bridgeSetVelocityRequest (0) (0) (0) (0) (0)
ros1Uwvm_fourier_bridgeSetVelocityRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeSetVelocityRequestCodecIdentity =
    "UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d"
encodeRos1Uwvm_fourier_bridgeSetVelocityRequest :: Ros1Uwvm_fourier_bridgeSetVelocityRequest -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeSetVelocityRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeSetVelocityRequest_sequence value))
  b1 <- W.encodeFloat64 (ros1Uwvm_fourier_bridgeSetVelocityRequest_vx value)
  b2 <- W.encodeFloat64 (ros1Uwvm_fourier_bridgeSetVelocityRequest_vy value)
  b3 <- W.encodeFloat64 (ros1Uwvm_fourier_bridgeSetVelocityRequest_yaw value)
  b4 <- W.encodeFloat64 (ros1Uwvm_fourier_bridgeSetVelocityRequest_duration value)
  W.bounded 40 [b0, b1, b2, b3, b4]
readRos1Uwvm_fourier_bridgeSetVelocityRequest :: W.Decoder Ros1Uwvm_fourier_bridgeSetVelocityRequest
readRos1Uwvm_fourier_bridgeSetVelocityRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  a4 <- W.float64
  let value = Ros1Uwvm_fourier_bridgeSetVelocityRequest a0 a1 a2 a3 a4
  case encodeRos1Uwvm_fourier_bridgeSetVelocityRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeSetVelocityRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeSetVelocityRequest
decodeRos1Uwvm_fourier_bridgeSetVelocityRequest = W.runDecoder 40 readRos1Uwvm_fourier_bridgeSetVelocityRequest
instance Canonical Ros1Uwvm_fourier_bridgeSetVelocityRequest where
  maximumBytes _ = 40
  encodeValue = encodeRos1Uwvm_fourier_bridgeSetVelocityRequest
  readValue = readRos1Uwvm_fourier_bridgeSetVelocityRequest
data Ros1Uwvm_fourier_bridgeSetVelocityResponse = Ros1Uwvm_fourier_bridgeSetVelocityResponse
  {
    -- | \@brief uwvm_fourier_bridge/SetVelocityResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetVelocityResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetVelocityResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/SetVelocityResponse.error: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetVelocityResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetVelocityResponse_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeSetVelocityResponse :: Ros1Uwvm_fourier_bridgeSetVelocityResponse
defaultRos1Uwvm_fourier_bridgeSetVelocityResponse = Ros1Uwvm_fourier_bridgeSetVelocityResponse (0) (T.empty)
ros1Uwvm_fourier_bridgeSetVelocityResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeSetVelocityResponseCodecIdentity =
    "UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a"
encodeRos1Uwvm_fourier_bridgeSetVelocityResponse :: Ros1Uwvm_fourier_bridgeSetVelocityResponse -> Either Word32
    B.ByteString
encodeRos1Uwvm_fourier_bridgeSetVelocityResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeSetVelocityResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeSetVelocityResponse_error value)
  W.bounded 136 [b0, b1]
readRos1Uwvm_fourier_bridgeSetVelocityResponse :: W.Decoder Ros1Uwvm_fourier_bridgeSetVelocityResponse
readRos1Uwvm_fourier_bridgeSetVelocityResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  let value = Ros1Uwvm_fourier_bridgeSetVelocityResponse a0 a1
  case encodeRos1Uwvm_fourier_bridgeSetVelocityResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeSetVelocityResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeSetVelocityResponse
decodeRos1Uwvm_fourier_bridgeSetVelocityResponse = W.runDecoder 136 readRos1Uwvm_fourier_bridgeSetVelocityResponse
instance Canonical Ros1Uwvm_fourier_bridgeSetVelocityResponse where
  maximumBytes _ = 136
  encodeValue = encodeRos1Uwvm_fourier_bridgeSetVelocityResponse
  readValue = readRos1Uwvm_fourier_bridgeSetVelocityResponse
data Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest = Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest
  {
    -- | \@brief uwvm_fourier_bridge/SetVelocitySourceRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetVelocitySourceRequest_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/SetVelocitySourceRequest.source: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetVelocitySourceRequest_source :: Int32
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeSetVelocitySourceRequest :: Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest
defaultRos1Uwvm_fourier_bridgeSetVelocitySourceRequest = Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest (0) (0)
ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodecIdentity =
    "UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb"
encodeRos1Uwvm_fourier_bridgeSetVelocitySourceRequest :: Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest -> Either
    Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeSetVelocitySourceRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeSetVelocitySourceRequest_sequence value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeSetVelocitySourceRequest_source value))
  W.bounded 12 [b0, b1]
readRos1Uwvm_fourier_bridgeSetVelocitySourceRequest :: W.Decoder Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest
readRos1Uwvm_fourier_bridgeSetVelocitySourceRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- fromIntegral <$> W.signed 4
  let value = Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest a0 a1
  case encodeRos1Uwvm_fourier_bridgeSetVelocitySourceRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeSetVelocitySourceRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest
decodeRos1Uwvm_fourier_bridgeSetVelocitySourceRequest = W.runDecoder 12
    readRos1Uwvm_fourier_bridgeSetVelocitySourceRequest
instance Canonical Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest where
  maximumBytes _ = 12
  encodeValue = encodeRos1Uwvm_fourier_bridgeSetVelocitySourceRequest
  readValue = readRos1Uwvm_fourier_bridgeSetVelocitySourceRequest
data Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse = Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse
  {
    -- | \@brief uwvm_fourier_bridge/SetVelocitySourceResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetVelocitySourceResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/SetVelocitySourceResponse.error: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeSetVelocitySourceResponse_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeSetVelocitySourceResponse :: Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse
defaultRos1Uwvm_fourier_bridgeSetVelocitySourceResponse = Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse (0)
    (T.empty)
ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodecIdentity =
    "UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be"
encodeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse :: Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse -> Either
    Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeSetVelocitySourceResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeSetVelocitySourceResponse_error value)
  W.bounded 136 [b0, b1]
readRos1Uwvm_fourier_bridgeSetVelocitySourceResponse :: W.Decoder Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse
readRos1Uwvm_fourier_bridgeSetVelocitySourceResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  let value = Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse a0 a1
  case encodeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse
decodeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse = W.runDecoder 136
    readRos1Uwvm_fourier_bridgeSetVelocitySourceResponse
instance Canonical Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse where
  maximumBytes _ = 136
  encodeValue = encodeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse
  readValue = readRos1Uwvm_fourier_bridgeSetVelocitySourceResponse
data Ros1Uwvm_fourier_bridgeVelocityCommand = Ros1Uwvm_fourier_bridgeVelocityCommand
  {
    -- | \@brief uwvm_fourier_bridge/VelocityCommand.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeVelocityCommand_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/VelocityCommand.vx: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeVelocityCommand_vx :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/VelocityCommand.vy: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeVelocityCommand_vy :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/VelocityCommand.yaw: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeVelocityCommand_yaw :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/VelocityCommand.duration: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeVelocityCommand_duration :: Double
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeVelocityCommand :: Ros1Uwvm_fourier_bridgeVelocityCommand
defaultRos1Uwvm_fourier_bridgeVelocityCommand = Ros1Uwvm_fourier_bridgeVelocityCommand (0) (0) (0) (0) (0)
ros1Uwvm_fourier_bridgeVelocityCommandCodecIdentity :: String
ros1Uwvm_fourier_bridgeVelocityCommandCodecIdentity =
    "UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54"
encodeRos1Uwvm_fourier_bridgeVelocityCommand :: Ros1Uwvm_fourier_bridgeVelocityCommand -> Either Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeVelocityCommand value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeVelocityCommand_sequence value))
  b1 <- W.encodeFloat64 (ros1Uwvm_fourier_bridgeVelocityCommand_vx value)
  b2 <- W.encodeFloat64 (ros1Uwvm_fourier_bridgeVelocityCommand_vy value)
  b3 <- W.encodeFloat64 (ros1Uwvm_fourier_bridgeVelocityCommand_yaw value)
  b4 <- W.encodeFloat64 (ros1Uwvm_fourier_bridgeVelocityCommand_duration value)
  W.bounded 40 [b0, b1, b2, b3, b4]
readRos1Uwvm_fourier_bridgeVelocityCommand :: W.Decoder Ros1Uwvm_fourier_bridgeVelocityCommand
readRos1Uwvm_fourier_bridgeVelocityCommand = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  a4 <- W.float64
  let value = Ros1Uwvm_fourier_bridgeVelocityCommand a0 a1 a2 a3 a4
  case encodeRos1Uwvm_fourier_bridgeVelocityCommand value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeVelocityCommand :: B.ByteString -> Either Word32 Ros1Uwvm_fourier_bridgeVelocityCommand
decodeRos1Uwvm_fourier_bridgeVelocityCommand = W.runDecoder 40 readRos1Uwvm_fourier_bridgeVelocityCommand
instance Canonical Ros1Uwvm_fourier_bridgeVelocityCommand where
  maximumBytes _ = 40
  encodeValue = encodeRos1Uwvm_fourier_bridgeVelocityCommand
  readValue = readRos1Uwvm_fourier_bridgeVelocityCommand
data Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
  {
    -- | \@brief uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest.sequence: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest_sequence :: Word64
  ,
    -- | \@brief uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest.groups: string; 0..8 elements; each string is
    -- 0..128 bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest_groups :: [T.Text]
  ,
    -- | \@brief uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest.timeout_seconds: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest_timeout_seconds :: Double
  ,
    -- | \@brief uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest.poll_seconds: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest_poll_seconds :: Double
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest ::
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
defaultRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest =
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest (0) ([]) (0) (0)
ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodecIdentity :: String
ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodecIdentity =
    "UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33"
encodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest ::
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest -> Either Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest_sequence value))
  if length (ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest_groups value) > 8 then Left 22 else Right ()
  prefix1 <- W.encodeCount 8 (length (ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest_groups value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e))
      (ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest_groups value)
  b2 <- W.encodeFloat64 (ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest_timeout_seconds value)
  b3 <- W.encodeFloat64 (ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest_poll_seconds value)
  W.bounded 1084 [b0, prefix1, b1, b2, b3]
readRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest :: W.Decoder
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
readRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest = do
  a0 <- fromIntegral <$> W.unsigned 8
  count1 <- W.count 8
  a1 <- replicateM count1 (W.text 128 True)
  a2 <- W.float64
  a3 <- W.float64
  let value = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest a0 a1 a2 a3
  case encodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
decodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest = W.runDecoder 1084
    readRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
instance Canonical Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest where
  maximumBytes _ = 1084
  encodeValue = encodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
  readValue = readRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
data Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse =
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
  {
    -- | \@brief uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse_status :: Word32
  ,
    -- | \@brief uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse.error: string; each string is 0..128 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse_error :: T.Text
  ,
    -- | \@brief uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse.complete: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse_complete :: Bool
  } deriving (Eq, Show)
defaultRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse ::
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
defaultRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse =
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse (0) (T.empty) (False)
ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodecIdentity :: String
ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodecIdentity =
    "UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8"
encodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse ::
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse -> Either Word32 B.ByteString
encodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse_status value))
  b1 <- W.encodeText 128 True (ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse_error value)
  b2 <- W.encodeBool (ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse_complete value)
  W.bounded 137 [b0, b1, b2]
readRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse :: W.Decoder
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
readRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- W.text 128 True
  a2 <- W.boolean
  let value = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse a0 a1 a2
  case encodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse :: B.ByteString -> Either Word32
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
decodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse = W.runDecoder 137
    readRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
instance Canonical Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse where
  maximumBytes _ = 137
  encodeValue = encodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
  readValue = readRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
