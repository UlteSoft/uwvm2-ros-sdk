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
data Ros2Uwvm_groot_bridgeMsgRGBFrame = Ros2Uwvm_groot_bridgeMsgRGBFrame
  {
    -- | \@brief uwvm_groot_bridge/msg/RGBFrame.key: string; each string is 0..64 bytes; strict UTF-8 with no embedded
    -- NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeMsgRGBFrame_key :: T.Text
  ,
    -- | \@brief uwvm_groot_bridge/msg/RGBFrame.shape: uint32; exactly 5 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeMsgRGBFrame_shape :: [Word32]
  ,
    -- | \@brief uwvm_groot_bridge/msg/RGBFrame.pixels: uint8; 0..768 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeMsgRGBFrame_pixels :: [Word8]
  } deriving (Eq, Show)
defaultRos2Uwvm_groot_bridgeMsgRGBFrame :: Ros2Uwvm_groot_bridgeMsgRGBFrame
defaultRos2Uwvm_groot_bridgeMsgRGBFrame = Ros2Uwvm_groot_bridgeMsgRGBFrame (T.empty) (replicate 5 (0)) ([])
ros2Uwvm_groot_bridgeMsgRGBFrameCodecIdentity :: String
ros2Uwvm_groot_bridgeMsgRGBFrameCodecIdentity =
    "UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364"
encodeRos2Uwvm_groot_bridgeMsgRGBFrame :: Ros2Uwvm_groot_bridgeMsgRGBFrame -> Either Word32 B.ByteString
encodeRos2Uwvm_groot_bridgeMsgRGBFrame value = do
  b0 <- W.encodeText 64 True (ros2Uwvm_groot_bridgeMsgRGBFrame_key value)
  if length (ros2Uwvm_groot_bridgeMsgRGBFrame_shape value) /= 5 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeUnsigned 4 (fromIntegral (e))) (ros2Uwvm_groot_bridgeMsgRGBFrame_shape value)
  if length (ros2Uwvm_groot_bridgeMsgRGBFrame_pixels value) > 768 then Left 22 else Right ()
  prefix2 <- W.encodeCount 768 (length (ros2Uwvm_groot_bridgeMsgRGBFrame_pixels value))
  b2 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e))) (ros2Uwvm_groot_bridgeMsgRGBFrame_pixels value)
  W.bounded 860 [b0, b1, prefix2, b2]
readRos2Uwvm_groot_bridgeMsgRGBFrame :: W.Decoder Ros2Uwvm_groot_bridgeMsgRGBFrame
readRos2Uwvm_groot_bridgeMsgRGBFrame = do
  a0 <- W.text 64 True
  a1 <- replicateM 5 (fromIntegral <$> W.unsigned 4)
  count2 <- W.count 768
  a2 <- replicateM count2 (fromIntegral <$> W.unsigned 1)
  let value = Ros2Uwvm_groot_bridgeMsgRGBFrame a0 a1 a2
  case encodeRos2Uwvm_groot_bridgeMsgRGBFrame value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_groot_bridgeMsgRGBFrame :: B.ByteString -> Either Word32 Ros2Uwvm_groot_bridgeMsgRGBFrame
decodeRos2Uwvm_groot_bridgeMsgRGBFrame = W.runDecoder 860 readRos2Uwvm_groot_bridgeMsgRGBFrame
instance Canonical Ros2Uwvm_groot_bridgeMsgRGBFrame where
  maximumBytes _ = 860
  encodeValue = encodeRos2Uwvm_groot_bridgeMsgRGBFrame
  readValue = readRos2Uwvm_groot_bridgeMsgRGBFrame
data Ros2Uwvm_groot_bridgeMsgFloatTensor = Ros2Uwvm_groot_bridgeMsgFloatTensor
  {
    -- | \@brief uwvm_groot_bridge/msg/FloatTensor.key: string; each string is 0..64 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeMsgFloatTensor_key :: T.Text
  ,
    -- | \@brief uwvm_groot_bridge/msg/FloatTensor.shape: uint32; exactly 3 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeMsgFloatTensor_shape :: [Word32]
  ,
    -- | \@brief uwvm_groot_bridge/msg/FloatTensor.values: float32; 0..320 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeMsgFloatTensor_values :: [Float]
  } deriving (Eq, Show)
defaultRos2Uwvm_groot_bridgeMsgFloatTensor :: Ros2Uwvm_groot_bridgeMsgFloatTensor
defaultRos2Uwvm_groot_bridgeMsgFloatTensor = Ros2Uwvm_groot_bridgeMsgFloatTensor (T.empty) (replicate 3 (0)) ([])
ros2Uwvm_groot_bridgeMsgFloatTensorCodecIdentity :: String
ros2Uwvm_groot_bridgeMsgFloatTensorCodecIdentity =
    "UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae"
encodeRos2Uwvm_groot_bridgeMsgFloatTensor :: Ros2Uwvm_groot_bridgeMsgFloatTensor -> Either Word32 B.ByteString
encodeRos2Uwvm_groot_bridgeMsgFloatTensor value = do
  b0 <- W.encodeText 64 True (ros2Uwvm_groot_bridgeMsgFloatTensor_key value)
  if length (ros2Uwvm_groot_bridgeMsgFloatTensor_shape value) /= 3 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeUnsigned 4 (fromIntegral (e))) (ros2Uwvm_groot_bridgeMsgFloatTensor_shape
      value)
  if length (ros2Uwvm_groot_bridgeMsgFloatTensor_values value) > 320 then Left 22 else Right ()
  prefix2 <- W.encodeCount 320 (length (ros2Uwvm_groot_bridgeMsgFloatTensor_values value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Uwvm_groot_bridgeMsgFloatTensor_values value)
  W.bounded 1364 [b0, b1, prefix2, b2]
readRos2Uwvm_groot_bridgeMsgFloatTensor :: W.Decoder Ros2Uwvm_groot_bridgeMsgFloatTensor
readRos2Uwvm_groot_bridgeMsgFloatTensor = do
  a0 <- W.text 64 True
  a1 <- replicateM 3 (fromIntegral <$> W.unsigned 4)
  count2 <- W.count 320
  a2 <- replicateM count2 (W.float32)
  let value = Ros2Uwvm_groot_bridgeMsgFloatTensor a0 a1 a2
  case encodeRos2Uwvm_groot_bridgeMsgFloatTensor value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_groot_bridgeMsgFloatTensor :: B.ByteString -> Either Word32 Ros2Uwvm_groot_bridgeMsgFloatTensor
decodeRos2Uwvm_groot_bridgeMsgFloatTensor = W.runDecoder 1364 readRos2Uwvm_groot_bridgeMsgFloatTensor
instance Canonical Ros2Uwvm_groot_bridgeMsgFloatTensor where
  maximumBytes _ = 1364
  encodeValue = encodeRos2Uwvm_groot_bridgeMsgFloatTensor
  readValue = readRos2Uwvm_groot_bridgeMsgFloatTensor
data Ros2Uwvm_groot_bridgeMsgTextSequence = Ros2Uwvm_groot_bridgeMsgTextSequence
  {
    -- | \@brief uwvm_groot_bridge/msg/TextSequence.key: string; each string is 0..64 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeMsgTextSequence_key :: T.Text
  ,
    -- | \@brief uwvm_groot_bridge/msg/TextSequence.shape: uint32; exactly 2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeMsgTextSequence_shape :: [Word32]
  ,
    -- | \@brief uwvm_groot_bridge/msg/TextSequence.texts: string; 0..4 elements; each string is 0..256 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeMsgTextSequence_texts :: [T.Text]
  } deriving (Eq, Show)
defaultRos2Uwvm_groot_bridgeMsgTextSequence :: Ros2Uwvm_groot_bridgeMsgTextSequence
defaultRos2Uwvm_groot_bridgeMsgTextSequence = Ros2Uwvm_groot_bridgeMsgTextSequence (T.empty) (replicate 2 (0)) ([])
ros2Uwvm_groot_bridgeMsgTextSequenceCodecIdentity :: String
ros2Uwvm_groot_bridgeMsgTextSequenceCodecIdentity =
    "UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d"
encodeRos2Uwvm_groot_bridgeMsgTextSequence :: Ros2Uwvm_groot_bridgeMsgTextSequence -> Either Word32 B.ByteString
encodeRos2Uwvm_groot_bridgeMsgTextSequence value = do
  b0 <- W.encodeText 64 True (ros2Uwvm_groot_bridgeMsgTextSequence_key value)
  if length (ros2Uwvm_groot_bridgeMsgTextSequence_shape value) /= 2 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeUnsigned 4 (fromIntegral (e))) (ros2Uwvm_groot_bridgeMsgTextSequence_shape
      value)
  if length (ros2Uwvm_groot_bridgeMsgTextSequence_texts value) > 4 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4 (length (ros2Uwvm_groot_bridgeMsgTextSequence_texts value))
  b2 <- B.concat <$> mapM (\e -> W.encodeText 256 True (e)) (ros2Uwvm_groot_bridgeMsgTextSequence_texts value)
  W.bounded 1120 [b0, b1, prefix2, b2]
readRos2Uwvm_groot_bridgeMsgTextSequence :: W.Decoder Ros2Uwvm_groot_bridgeMsgTextSequence
readRos2Uwvm_groot_bridgeMsgTextSequence = do
  a0 <- W.text 64 True
  a1 <- replicateM 2 (fromIntegral <$> W.unsigned 4)
  count2 <- W.count 4
  a2 <- replicateM count2 (W.text 256 True)
  let value = Ros2Uwvm_groot_bridgeMsgTextSequence a0 a1 a2
  case encodeRos2Uwvm_groot_bridgeMsgTextSequence value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_groot_bridgeMsgTextSequence :: B.ByteString -> Either Word32 Ros2Uwvm_groot_bridgeMsgTextSequence
decodeRos2Uwvm_groot_bridgeMsgTextSequence = W.runDecoder 1120 readRos2Uwvm_groot_bridgeMsgTextSequence
instance Canonical Ros2Uwvm_groot_bridgeMsgTextSequence where
  maximumBytes _ = 1120
  encodeValue = encodeRos2Uwvm_groot_bridgeMsgTextSequence
  readValue = readRos2Uwvm_groot_bridgeMsgTextSequence
data Ros2Uwvm_groot_bridgeSrvInferAction_Request = Ros2Uwvm_groot_bridgeSrvInferAction_Request
  {
    -- | \@brief uwvm_groot_bridge/srv/InferAction_Request.application_nonce: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvInferAction_Request_application_nonce :: Word64
  ,
    -- | \@brief uwvm_groot_bridge/srv/InferAction_Request.video: uwvm_groot_bridge/msg/RGBFrame; 0..3 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvInferAction_Request_video :: [Ros2Uwvm_groot_bridgeMsgRGBFrame]
  ,
    -- | \@brief uwvm_groot_bridge/srv/InferAction_Request.state: uwvm_groot_bridge/msg/FloatTensor; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvInferAction_Request_state :: [Ros2Uwvm_groot_bridgeMsgFloatTensor]
  ,
    -- | \@brief uwvm_groot_bridge/srv/InferAction_Request.language: uwvm_groot_bridge/msg/TextSequence; 0..2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvInferAction_Request_language :: [Ros2Uwvm_groot_bridgeMsgTextSequence]
  } deriving (Eq, Show)
defaultRos2Uwvm_groot_bridgeSrvInferAction_Request :: Ros2Uwvm_groot_bridgeSrvInferAction_Request
defaultRos2Uwvm_groot_bridgeSrvInferAction_Request = Ros2Uwvm_groot_bridgeSrvInferAction_Request (0) ([]) ([]) ([])
ros2Uwvm_groot_bridgeSrvInferAction_RequestCodecIdentity :: String
ros2Uwvm_groot_bridgeSrvInferAction_RequestCodecIdentity =
    "UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6"
encodeRos2Uwvm_groot_bridgeSrvInferAction_Request :: Ros2Uwvm_groot_bridgeSrvInferAction_Request -> Either Word32
    B.ByteString
encodeRos2Uwvm_groot_bridgeSrvInferAction_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_groot_bridgeSrvInferAction_Request_application_nonce value))
  if length (ros2Uwvm_groot_bridgeSrvInferAction_Request_video value) > 3 then Left 22 else Right ()
  prefix1 <- W.encodeCount 3 (length (ros2Uwvm_groot_bridgeSrvInferAction_Request_video value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2Uwvm_groot_bridgeMsgRGBFrame (e)) (
      ros2Uwvm_groot_bridgeSrvInferAction_Request_video value)
  if length (ros2Uwvm_groot_bridgeSrvInferAction_Request_state value) > 4 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4 (length (ros2Uwvm_groot_bridgeSrvInferAction_Request_state value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Uwvm_groot_bridgeMsgFloatTensor (e)) (
      ros2Uwvm_groot_bridgeSrvInferAction_Request_state value)
  if length (ros2Uwvm_groot_bridgeSrvInferAction_Request_language value) > 2 then Left 22 else Right ()
  prefix3 <- W.encodeCount 2 (length (ros2Uwvm_groot_bridgeSrvInferAction_Request_language value))
  b3 <- B.concat <$> mapM (\e -> encodeRos2Uwvm_groot_bridgeMsgTextSequence (e)) (
      ros2Uwvm_groot_bridgeSrvInferAction_Request_language value)
  W.bounded 10296 [b0, prefix1, b1, prefix2, b2, prefix3, b3]
readRos2Uwvm_groot_bridgeSrvInferAction_Request :: W.Decoder Ros2Uwvm_groot_bridgeSrvInferAction_Request
readRos2Uwvm_groot_bridgeSrvInferAction_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  count1 <- W.count 3
  a1 <- replicateM count1 (readRos2Uwvm_groot_bridgeMsgRGBFrame)
  count2 <- W.count 4
  a2 <- replicateM count2 (readRos2Uwvm_groot_bridgeMsgFloatTensor)
  count3 <- W.count 2
  a3 <- replicateM count3 (readRos2Uwvm_groot_bridgeMsgTextSequence)
  let value = Ros2Uwvm_groot_bridgeSrvInferAction_Request a0 a1 a2 a3
  case encodeRos2Uwvm_groot_bridgeSrvInferAction_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_groot_bridgeSrvInferAction_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_groot_bridgeSrvInferAction_Request
decodeRos2Uwvm_groot_bridgeSrvInferAction_Request = W.runDecoder 10296 readRos2Uwvm_groot_bridgeSrvInferAction_Request
instance Canonical Ros2Uwvm_groot_bridgeSrvInferAction_Request where
  maximumBytes _ = 10296
  encodeValue = encodeRos2Uwvm_groot_bridgeSrvInferAction_Request
  readValue = readRos2Uwvm_groot_bridgeSrvInferAction_Request
data Ros2Uwvm_groot_bridgeSrvInferAction_Response = Ros2Uwvm_groot_bridgeSrvInferAction_Response
  {
    -- | \@brief uwvm_groot_bridge/srv/InferAction_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvInferAction_Response_status :: Word32
  ,
    -- | \@brief uwvm_groot_bridge/srv/InferAction_Response.application_nonce: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvInferAction_Response_application_nonce :: Word64
  ,
    -- | \@brief uwvm_groot_bridge/srv/InferAction_Response.action: uwvm_groot_bridge/msg/FloatTensor; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvInferAction_Response_action :: [Ros2Uwvm_groot_bridgeMsgFloatTensor]
  ,
    -- | \@brief uwvm_groot_bridge/srv/InferAction_Response.info_is_empty: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvInferAction_Response_info_is_empty :: Bool
  } deriving (Eq, Show)
defaultRos2Uwvm_groot_bridgeSrvInferAction_Response :: Ros2Uwvm_groot_bridgeSrvInferAction_Response
defaultRos2Uwvm_groot_bridgeSrvInferAction_Response = Ros2Uwvm_groot_bridgeSrvInferAction_Response (0) (0) ([]) (False)
ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodecIdentity :: String
ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodecIdentity =
    "UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce"
encodeRos2Uwvm_groot_bridgeSrvInferAction_Response :: Ros2Uwvm_groot_bridgeSrvInferAction_Response -> Either Word32
    B.ByteString
encodeRos2Uwvm_groot_bridgeSrvInferAction_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_groot_bridgeSrvInferAction_Response_status value))
  b1 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_groot_bridgeSrvInferAction_Response_application_nonce value))
  if length (ros2Uwvm_groot_bridgeSrvInferAction_Response_action value) > 8 then Left 22 else Right ()
  prefix2 <- W.encodeCount 8 (length (ros2Uwvm_groot_bridgeSrvInferAction_Response_action value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Uwvm_groot_bridgeMsgFloatTensor (e)) (
      ros2Uwvm_groot_bridgeSrvInferAction_Response_action value)
  b3 <- W.encodeBool (ros2Uwvm_groot_bridgeSrvInferAction_Response_info_is_empty value)
  W.bounded 10929 [b0, b1, prefix2, b2, b3]
readRos2Uwvm_groot_bridgeSrvInferAction_Response :: W.Decoder Ros2Uwvm_groot_bridgeSrvInferAction_Response
readRos2Uwvm_groot_bridgeSrvInferAction_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- fromIntegral <$> W.unsigned 8
  count2 <- W.count 8
  a2 <- replicateM count2 (readRos2Uwvm_groot_bridgeMsgFloatTensor)
  a3 <- W.boolean
  let value = Ros2Uwvm_groot_bridgeSrvInferAction_Response a0 a1 a2 a3
  case encodeRos2Uwvm_groot_bridgeSrvInferAction_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_groot_bridgeSrvInferAction_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_groot_bridgeSrvInferAction_Response
decodeRos2Uwvm_groot_bridgeSrvInferAction_Response = W.runDecoder 10929 readRos2Uwvm_groot_bridgeSrvInferAction_Response
instance Canonical Ros2Uwvm_groot_bridgeSrvInferAction_Response where
  maximumBytes _ = 10929
  encodeValue = encodeRos2Uwvm_groot_bridgeSrvInferAction_Response
  readValue = readRos2Uwvm_groot_bridgeSrvInferAction_Response
data Ros2Uwvm_groot_bridgeMsgRGBDescriptor = Ros2Uwvm_groot_bridgeMsgRGBDescriptor
  {
    -- | \@brief uwvm_groot_bridge/msg/RGBDescriptor.key: string; each string is 0..64 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeMsgRGBDescriptor_key :: T.Text
  ,
    -- | \@brief uwvm_groot_bridge/msg/RGBDescriptor.shape: uint32; exactly 5 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeMsgRGBDescriptor_shape :: [Word32]
  } deriving (Eq, Show)
defaultRos2Uwvm_groot_bridgeMsgRGBDescriptor :: Ros2Uwvm_groot_bridgeMsgRGBDescriptor
defaultRos2Uwvm_groot_bridgeMsgRGBDescriptor = Ros2Uwvm_groot_bridgeMsgRGBDescriptor (T.empty) (replicate 5 (0))
ros2Uwvm_groot_bridgeMsgRGBDescriptorCodecIdentity :: String
ros2Uwvm_groot_bridgeMsgRGBDescriptorCodecIdentity =
    "UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40"
encodeRos2Uwvm_groot_bridgeMsgRGBDescriptor :: Ros2Uwvm_groot_bridgeMsgRGBDescriptor -> Either Word32 B.ByteString
encodeRos2Uwvm_groot_bridgeMsgRGBDescriptor value = do
  b0 <- W.encodeText 64 True (ros2Uwvm_groot_bridgeMsgRGBDescriptor_key value)
  if length (ros2Uwvm_groot_bridgeMsgRGBDescriptor_shape value) /= 5 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeUnsigned 4 (fromIntegral (e))) (ros2Uwvm_groot_bridgeMsgRGBDescriptor_shape
      value)
  W.bounded 88 [b0, b1]
readRos2Uwvm_groot_bridgeMsgRGBDescriptor :: W.Decoder Ros2Uwvm_groot_bridgeMsgRGBDescriptor
readRos2Uwvm_groot_bridgeMsgRGBDescriptor = do
  a0 <- W.text 64 True
  a1 <- replicateM 5 (fromIntegral <$> W.unsigned 4)
  let value = Ros2Uwvm_groot_bridgeMsgRGBDescriptor a0 a1
  case encodeRos2Uwvm_groot_bridgeMsgRGBDescriptor value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_groot_bridgeMsgRGBDescriptor :: B.ByteString -> Either Word32 Ros2Uwvm_groot_bridgeMsgRGBDescriptor
decodeRos2Uwvm_groot_bridgeMsgRGBDescriptor = W.runDecoder 88 readRos2Uwvm_groot_bridgeMsgRGBDescriptor
instance Canonical Ros2Uwvm_groot_bridgeMsgRGBDescriptor where
  maximumBytes _ = 88
  encodeValue = encodeRos2Uwvm_groot_bridgeMsgRGBDescriptor
  readValue = readRos2Uwvm_groot_bridgeMsgRGBDescriptor
data Ros2Uwvm_groot_bridgeSrvBeginObservation_Request = Ros2Uwvm_groot_bridgeSrvBeginObservation_Request
  {
    -- | \@brief uwvm_groot_bridge/srv/BeginObservation_Request.observation_nonce: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvBeginObservation_Request_observation_nonce :: Word64
  ,
    -- | \@brief uwvm_groot_bridge/srv/BeginObservation_Request.video: uwvm_groot_bridge/msg/RGBDescriptor; 0..3
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvBeginObservation_Request_video :: [Ros2Uwvm_groot_bridgeMsgRGBDescriptor]
  } deriving (Eq, Show)
defaultRos2Uwvm_groot_bridgeSrvBeginObservation_Request :: Ros2Uwvm_groot_bridgeSrvBeginObservation_Request
defaultRos2Uwvm_groot_bridgeSrvBeginObservation_Request = Ros2Uwvm_groot_bridgeSrvBeginObservation_Request (0) ([])
ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodecIdentity :: String
ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodecIdentity =
    "UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2"
encodeRos2Uwvm_groot_bridgeSrvBeginObservation_Request :: Ros2Uwvm_groot_bridgeSrvBeginObservation_Request -> Either
    Word32 B.ByteString
encodeRos2Uwvm_groot_bridgeSrvBeginObservation_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_groot_bridgeSrvBeginObservation_Request_observation_nonce value))
  if length (ros2Uwvm_groot_bridgeSrvBeginObservation_Request_video value) > 3 then Left 22 else Right ()
  prefix1 <- W.encodeCount 3 (length (ros2Uwvm_groot_bridgeSrvBeginObservation_Request_video value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2Uwvm_groot_bridgeMsgRGBDescriptor (e)) (
      ros2Uwvm_groot_bridgeSrvBeginObservation_Request_video value)
  W.bounded 276 [b0, prefix1, b1]
readRos2Uwvm_groot_bridgeSrvBeginObservation_Request :: W.Decoder Ros2Uwvm_groot_bridgeSrvBeginObservation_Request
readRos2Uwvm_groot_bridgeSrvBeginObservation_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  count1 <- W.count 3
  a1 <- replicateM count1 (readRos2Uwvm_groot_bridgeMsgRGBDescriptor)
  let value = Ros2Uwvm_groot_bridgeSrvBeginObservation_Request a0 a1
  case encodeRos2Uwvm_groot_bridgeSrvBeginObservation_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_groot_bridgeSrvBeginObservation_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_groot_bridgeSrvBeginObservation_Request
decodeRos2Uwvm_groot_bridgeSrvBeginObservation_Request = W.runDecoder 276
    readRos2Uwvm_groot_bridgeSrvBeginObservation_Request
instance Canonical Ros2Uwvm_groot_bridgeSrvBeginObservation_Request where
  maximumBytes _ = 276
  encodeValue = encodeRos2Uwvm_groot_bridgeSrvBeginObservation_Request
  readValue = readRos2Uwvm_groot_bridgeSrvBeginObservation_Request
data Ros2Uwvm_groot_bridgeSrvBeginObservation_Response = Ros2Uwvm_groot_bridgeSrvBeginObservation_Response
  {
    -- | \@brief uwvm_groot_bridge/srv/BeginObservation_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvBeginObservation_Response_status :: Word32
  ,
    -- | \@brief uwvm_groot_bridge/srv/BeginObservation_Response.observation_nonce: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvBeginObservation_Response_observation_nonce :: Word64
  } deriving (Eq, Show)
defaultRos2Uwvm_groot_bridgeSrvBeginObservation_Response :: Ros2Uwvm_groot_bridgeSrvBeginObservation_Response
defaultRos2Uwvm_groot_bridgeSrvBeginObservation_Response = Ros2Uwvm_groot_bridgeSrvBeginObservation_Response (0) (0)
ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodecIdentity :: String
ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodecIdentity =
    "UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049"
encodeRos2Uwvm_groot_bridgeSrvBeginObservation_Response :: Ros2Uwvm_groot_bridgeSrvBeginObservation_Response -> Either
    Word32 B.ByteString
encodeRos2Uwvm_groot_bridgeSrvBeginObservation_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_groot_bridgeSrvBeginObservation_Response_status value))
  b1 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_groot_bridgeSrvBeginObservation_Response_observation_nonce value))
  W.bounded 12 [b0, b1]
readRos2Uwvm_groot_bridgeSrvBeginObservation_Response :: W.Decoder Ros2Uwvm_groot_bridgeSrvBeginObservation_Response
readRos2Uwvm_groot_bridgeSrvBeginObservation_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- fromIntegral <$> W.unsigned 8
  let value = Ros2Uwvm_groot_bridgeSrvBeginObservation_Response a0 a1
  case encodeRos2Uwvm_groot_bridgeSrvBeginObservation_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_groot_bridgeSrvBeginObservation_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_groot_bridgeSrvBeginObservation_Response
decodeRos2Uwvm_groot_bridgeSrvBeginObservation_Response = W.runDecoder 12
    readRos2Uwvm_groot_bridgeSrvBeginObservation_Response
instance Canonical Ros2Uwvm_groot_bridgeSrvBeginObservation_Response where
  maximumBytes _ = 12
  encodeValue = encodeRos2Uwvm_groot_bridgeSrvBeginObservation_Response
  readValue = readRos2Uwvm_groot_bridgeSrvBeginObservation_Response
data Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request = Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request
  {
    -- | \@brief uwvm_groot_bridge/srv/WriteRGBChunk_Request.observation_nonce: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request_observation_nonce :: Word64
  ,
    -- | \@brief uwvm_groot_bridge/srv/WriteRGBChunk_Request.key: string; each string is 0..64 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request_key :: T.Text
  ,
    -- | \@brief uwvm_groot_bridge/srv/WriteRGBChunk_Request.offset: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request_offset :: Word32
  ,
    -- | \@brief uwvm_groot_bridge/srv/WriteRGBChunk_Request.pixels: uint8; 0..768 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request_pixels :: [Word8]
  } deriving (Eq, Show)
defaultRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request :: Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request
defaultRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request = Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request (0) (T.empty) (0) (
    [])
ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodecIdentity :: String
ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodecIdentity =
    "UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c"
encodeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request :: Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request -> Either Word32
    B.ByteString
encodeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request_observation_nonce value))
  b1 <- W.encodeText 64 True (ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request_key value)
  b2 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request_offset value))
  if length (ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request_pixels value) > 768 then Left 22 else Right ()
  prefix3 <- W.encodeCount 768 (length (ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request_pixels value))
  b3 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e))) (
      ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request_pixels value)
  W.bounded 852 [b0, b1, b2, prefix3, b3]
readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request :: W.Decoder Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request
readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.text 64 True
  a2 <- fromIntegral <$> W.unsigned 4
  count3 <- W.count 768
  a3 <- replicateM count3 (fromIntegral <$> W.unsigned 1)
  let value = Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request a0 a1 a2 a3
  case encodeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request
decodeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request = W.runDecoder 852 readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request
instance Canonical Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request where
  maximumBytes _ = 852
  encodeValue = encodeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request
  readValue = readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request
data Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response = Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response
  {
    -- | \@brief uwvm_groot_bridge/srv/WriteRGBChunk_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response_status :: Word32
  ,
    -- | \@brief uwvm_groot_bridge/srv/WriteRGBChunk_Response.observation_nonce: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response_observation_nonce :: Word64
  ,
    -- | \@brief uwvm_groot_bridge/srv/WriteRGBChunk_Response.accepted_bytes: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response_accepted_bytes :: Word32
  } deriving (Eq, Show)
defaultRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response :: Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response
defaultRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response = Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response (0) (0) (0)
ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodecIdentity :: String
ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodecIdentity =
    "UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba"
encodeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response :: Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response -> Either Word32
    B.ByteString
encodeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response_status value))
  b1 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response_observation_nonce value))
  b2 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response_accepted_bytes value))
  W.bounded 16 [b0, b1, b2]
readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response :: W.Decoder Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response
readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- fromIntegral <$> W.unsigned 8
  a2 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response a0 a1 a2
  case encodeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response
decodeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response = W.runDecoder 16
    readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response
instance Canonical Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response where
  maximumBytes _ = 16
  encodeValue = encodeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response
  readValue = readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response
data Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request = Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request
  {
    -- | \@brief uwvm_groot_bridge/srv/ReleaseObservation_Request.observation_nonce: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvReleaseObservation_Request_observation_nonce :: Word64
  } deriving (Eq, Show)
defaultRos2Uwvm_groot_bridgeSrvReleaseObservation_Request :: Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request
defaultRos2Uwvm_groot_bridgeSrvReleaseObservation_Request = Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request (0)
ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodecIdentity :: String
ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodecIdentity =
    "UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5"
encodeRos2Uwvm_groot_bridgeSrvReleaseObservation_Request :: Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request -> Either
    Word32 B.ByteString
encodeRos2Uwvm_groot_bridgeSrvReleaseObservation_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_groot_bridgeSrvReleaseObservation_Request_observation_nonce value))
  W.bounded 8 [b0]
readRos2Uwvm_groot_bridgeSrvReleaseObservation_Request :: W.Decoder Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request
readRos2Uwvm_groot_bridgeSrvReleaseObservation_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  let value = Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request a0
  case encodeRos2Uwvm_groot_bridgeSrvReleaseObservation_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_groot_bridgeSrvReleaseObservation_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request
decodeRos2Uwvm_groot_bridgeSrvReleaseObservation_Request = W.runDecoder 8
    readRos2Uwvm_groot_bridgeSrvReleaseObservation_Request
instance Canonical Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Uwvm_groot_bridgeSrvReleaseObservation_Request
  readValue = readRos2Uwvm_groot_bridgeSrvReleaseObservation_Request
data Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response = Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response
  {
    -- | \@brief uwvm_groot_bridge/srv/ReleaseObservation_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvReleaseObservation_Response_status :: Word32
  ,
    -- | \@brief uwvm_groot_bridge/srv/ReleaseObservation_Response.observation_nonce: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvReleaseObservation_Response_observation_nonce :: Word64
  } deriving (Eq, Show)
defaultRos2Uwvm_groot_bridgeSrvReleaseObservation_Response :: Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response
defaultRos2Uwvm_groot_bridgeSrvReleaseObservation_Response = Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response (0) (0)
ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodecIdentity :: String
ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodecIdentity =
    "UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69"
encodeRos2Uwvm_groot_bridgeSrvReleaseObservation_Response :: Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response ->
    Either Word32 B.ByteString
encodeRos2Uwvm_groot_bridgeSrvReleaseObservation_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_groot_bridgeSrvReleaseObservation_Response_status value))
  b1 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_groot_bridgeSrvReleaseObservation_Response_observation_nonce value))
  W.bounded 12 [b0, b1]
readRos2Uwvm_groot_bridgeSrvReleaseObservation_Response :: W.Decoder Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response
readRos2Uwvm_groot_bridgeSrvReleaseObservation_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- fromIntegral <$> W.unsigned 8
  let value = Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response a0 a1
  case encodeRos2Uwvm_groot_bridgeSrvReleaseObservation_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_groot_bridgeSrvReleaseObservation_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response
decodeRos2Uwvm_groot_bridgeSrvReleaseObservation_Response = W.runDecoder 12
    readRos2Uwvm_groot_bridgeSrvReleaseObservation_Response
instance Canonical Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response where
  maximumBytes _ = 12
  encodeValue = encodeRos2Uwvm_groot_bridgeSrvReleaseObservation_Response
  readValue = readRos2Uwvm_groot_bridgeSrvReleaseObservation_Response
data Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request = Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request
  {
    -- | \@brief uwvm_groot_bridge/srv/InferUploadedAction_Request.application_nonce: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request_application_nonce :: Word64
  ,
    -- | \@brief uwvm_groot_bridge/srv/InferUploadedAction_Request.observation_nonce: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request_observation_nonce :: Word64
  ,
    -- | \@brief uwvm_groot_bridge/srv/InferUploadedAction_Request.state: uwvm_groot_bridge/msg/FloatTensor; 0..4
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request_state :: [Ros2Uwvm_groot_bridgeMsgFloatTensor]
  ,
    -- | \@brief uwvm_groot_bridge/srv/InferUploadedAction_Request.language: uwvm_groot_bridge/msg/TextSequence; 0..2
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request_language :: [Ros2Uwvm_groot_bridgeMsgTextSequence]
  } deriving (Eq, Show)
defaultRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request :: Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request
defaultRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request = Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request (0) (0)
    ([]) ([])
ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodecIdentity :: String
ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodecIdentity =
    "UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d"
encodeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request :: Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request ->
    Either Word32 B.ByteString
encodeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request_application_nonce value))
  b1 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request_observation_nonce value))
  if length (ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request_state value) > 4 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4 (length (ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request_state value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Uwvm_groot_bridgeMsgFloatTensor (e)) (
      ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request_state value)
  if length (ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request_language value) > 2 then Left 22 else Right ()
  prefix3 <- W.encodeCount 2 (length (ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request_language value))
  b3 <- B.concat <$> mapM (\e -> encodeRos2Uwvm_groot_bridgeMsgTextSequence (e)) (
      ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request_language value)
  W.bounded 7720 [b0, b1, prefix2, b2, prefix3, b3]
readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request :: W.Decoder Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request
readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- fromIntegral <$> W.unsigned 8
  count2 <- W.count 4
  a2 <- replicateM count2 (readRos2Uwvm_groot_bridgeMsgFloatTensor)
  count3 <- W.count 2
  a3 <- replicateM count3 (readRos2Uwvm_groot_bridgeMsgTextSequence)
  let value = Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request a0 a1 a2 a3
  case encodeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request :: B.ByteString -> Either Word32
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request
decodeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request = W.runDecoder 7720
    readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request
instance Canonical Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request where
  maximumBytes _ = 7720
  encodeValue = encodeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request
  readValue = readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request
data Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response = Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response
  {
    -- | \@brief uwvm_groot_bridge/srv/InferUploadedAction_Response.status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response_status :: Word32
  ,
    -- | \@brief uwvm_groot_bridge/srv/InferUploadedAction_Response.application_nonce: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response_application_nonce :: Word64
  ,
    -- | \@brief uwvm_groot_bridge/srv/InferUploadedAction_Response.action: uwvm_groot_bridge/msg/FloatTensor; 0..8
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response_action :: [Ros2Uwvm_groot_bridgeMsgFloatTensor]
  ,
    -- | \@brief uwvm_groot_bridge/srv/InferUploadedAction_Response.info_is_empty: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response_info_is_empty :: Bool
  } deriving (Eq, Show)
defaultRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response :: Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response
defaultRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response = Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response (0) (
    0) ([]) (False)
ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodecIdentity :: String
ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodecIdentity =
    "UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e"
encodeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response :: Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response ->
    Either Word32 B.ByteString
encodeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response_status value))
  b1 <- W.encodeUnsigned 8 (fromIntegral (ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response_application_nonce value))
  if length (ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response_action value) > 8 then Left 22 else Right ()
  prefix2 <- W.encodeCount 8 (length (ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response_action value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Uwvm_groot_bridgeMsgFloatTensor (e)) (
      ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response_action value)
  b3 <- W.encodeBool (ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response_info_is_empty value)
  W.bounded 10929 [b0, b1, prefix2, b2, b3]
readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response :: W.Decoder
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response
readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- fromIntegral <$> W.unsigned 8
  count2 <- W.count 8
  a2 <- replicateM count2 (readRos2Uwvm_groot_bridgeMsgFloatTensor)
  a3 <- W.boolean
  let value = Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response a0 a1 a2 a3
  case encodeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response :: B.ByteString -> Either Word32
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response
decodeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response = W.runDecoder 10929
    readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response
instance Canonical Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response where
  maximumBytes _ = 10929
  encodeValue = encodeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response
  readValue = readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response
