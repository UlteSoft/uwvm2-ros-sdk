-- @file Records.hs
-- @brief Full leju haskell codecs and original record metadata.
-- @details Complete leju ros1_master_packaged_ik values in haskell. 17 original records retain 55 fields and 15
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
data Ros1Motion_capture_ikArmHandPose = Ros1Motion_capture_ikArmHandPose
  {
    -- | \@brief motion_capture_ik/armHandPose.pos_xyz: float64; exactly 3 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikArmHandPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikArmHandPose_pos_xyz :: [Double]
  ,
    -- | \@brief motion_capture_ik/armHandPose.quat_xyzw: float64; exactly 4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikArmHandPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikArmHandPose_quat_xyzw :: [Double]
  ,
    -- | \@brief motion_capture_ik/armHandPose.elbow_pos_xyz: float64; exactly 3 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikArmHandPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikArmHandPose_elbow_pos_xyz :: [Double]
  ,
    -- | \@brief motion_capture_ik/armHandPose.joint_angles: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikArmHandPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikArmHandPose_joint_angles :: [Double]
  } deriving (Eq, Show)
defaultRos1Motion_capture_ikArmHandPose :: Ros1Motion_capture_ikArmHandPose
defaultRos1Motion_capture_ikArmHandPose = Ros1Motion_capture_ikArmHandPose (replicate 3 (0)) (replicate 4 (0))
    (replicate 3 (0)) (replicate 7 (0))
ros1Motion_capture_ikArmHandPoseCodecIdentity :: String
ros1Motion_capture_ikArmHandPoseCodecIdentity =
    "UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08"
encodeRos1Motion_capture_ikArmHandPose :: Ros1Motion_capture_ikArmHandPose -> Either Word32 B.ByteString
encodeRos1Motion_capture_ikArmHandPose value = do
  if length (ros1Motion_capture_ikArmHandPose_pos_xyz value) /= 3 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Motion_capture_ikArmHandPose_pos_xyz value)
  if length (ros1Motion_capture_ikArmHandPose_quat_xyzw value) /= 4 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Motion_capture_ikArmHandPose_quat_xyzw value)
  if length (ros1Motion_capture_ikArmHandPose_elbow_pos_xyz value) /= 3 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Motion_capture_ikArmHandPose_elbow_pos_xyz value)
  if length (ros1Motion_capture_ikArmHandPose_joint_angles value) /= 7 then Left 22 else Right ()
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Motion_capture_ikArmHandPose_joint_angles value)
  W.bounded 136 [b0, b1, b2, b3]
readRos1Motion_capture_ikArmHandPose :: W.Decoder Ros1Motion_capture_ikArmHandPose
readRos1Motion_capture_ikArmHandPose = do
  a0 <- replicateM 3 (W.float64)
  a1 <- replicateM 4 (W.float64)
  a2 <- replicateM 3 (W.float64)
  a3 <- replicateM 7 (W.float64)
  let value = Ros1Motion_capture_ikArmHandPose a0 a1 a2 a3
  case encodeRos1Motion_capture_ikArmHandPose value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Motion_capture_ikArmHandPose :: B.ByteString -> Either Word32 Ros1Motion_capture_ikArmHandPose
decodeRos1Motion_capture_ikArmHandPose = W.runDecoder 136 readRos1Motion_capture_ikArmHandPose
instance Canonical Ros1Motion_capture_ikArmHandPose where
  maximumBytes _ = 136
  encodeValue = encodeRos1Motion_capture_ikArmHandPose
  readValue = readRos1Motion_capture_ikArmHandPose
data Ros1Motion_capture_ikArmHandPoseFree = Ros1Motion_capture_ikArmHandPoseFree
  {
    -- | \@brief motion_capture_ik/armHandPoseFree.pos_xyz: float64; exactly 3 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikArmHandPoseFree; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikArmHandPoseFree_pos_xyz :: [Double]
  ,
    -- | \@brief motion_capture_ik/armHandPoseFree.quat_xyzw: float64; exactly 4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikArmHandPoseFree; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikArmHandPoseFree_quat_xyzw :: [Double]
  ,
    -- | \@brief motion_capture_ik/armHandPoseFree.elbow_pos_xyz: float64; exactly 3 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikArmHandPoseFree; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikArmHandPoseFree_elbow_pos_xyz :: [Double]
  ,
    -- | \@brief motion_capture_ik/armHandPoseFree.joint_angles: float64; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikArmHandPoseFree; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikArmHandPoseFree_joint_angles :: [Double]
  } deriving (Eq, Show)
defaultRos1Motion_capture_ikArmHandPoseFree :: Ros1Motion_capture_ikArmHandPoseFree
defaultRos1Motion_capture_ikArmHandPoseFree = Ros1Motion_capture_ikArmHandPoseFree (replicate 3 (0)) (replicate 4
    (0)) (replicate 3 (0)) ([])
ros1Motion_capture_ikArmHandPoseFreeCodecIdentity :: String
ros1Motion_capture_ikArmHandPoseFreeCodecIdentity =
    "UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf"
encodeRos1Motion_capture_ikArmHandPoseFree :: Ros1Motion_capture_ikArmHandPoseFree -> Either Word32 B.ByteString
encodeRos1Motion_capture_ikArmHandPoseFree value = do
  if length (ros1Motion_capture_ikArmHandPoseFree_pos_xyz value) /= 3 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Motion_capture_ikArmHandPoseFree_pos_xyz value)
  if length (ros1Motion_capture_ikArmHandPoseFree_quat_xyzw value) /= 4 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Motion_capture_ikArmHandPoseFree_quat_xyzw value)
  if length (ros1Motion_capture_ikArmHandPoseFree_elbow_pos_xyz value) /= 3 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Motion_capture_ikArmHandPoseFree_elbow_pos_xyz value)
  if length (ros1Motion_capture_ikArmHandPoseFree_joint_angles value) > 16 then Left 22 else Right ()
  prefix3 <- W.encodeCount 16 (length (ros1Motion_capture_ikArmHandPoseFree_joint_angles value))
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Motion_capture_ikArmHandPoseFree_joint_angles value)
  W.bounded 212 [b0, b1, b2, prefix3, b3]
readRos1Motion_capture_ikArmHandPoseFree :: W.Decoder Ros1Motion_capture_ikArmHandPoseFree
readRos1Motion_capture_ikArmHandPoseFree = do
  a0 <- replicateM 3 (W.float64)
  a1 <- replicateM 4 (W.float64)
  a2 <- replicateM 3 (W.float64)
  count3 <- W.count 16
  a3 <- replicateM count3 (W.float64)
  let value = Ros1Motion_capture_ikArmHandPoseFree a0 a1 a2 a3
  case encodeRos1Motion_capture_ikArmHandPoseFree value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Motion_capture_ikArmHandPoseFree :: B.ByteString -> Either Word32 Ros1Motion_capture_ikArmHandPoseFree
decodeRos1Motion_capture_ikArmHandPoseFree = W.runDecoder 212 readRos1Motion_capture_ikArmHandPoseFree
instance Canonical Ros1Motion_capture_ikArmHandPoseFree where
  maximumBytes _ = 212
  encodeValue = encodeRos1Motion_capture_ikArmHandPoseFree
  readValue = readRos1Motion_capture_ikArmHandPoseFree
data Ros1Motion_capture_ikChangeArmCtrlModeRequest = Ros1Motion_capture_ikChangeArmCtrlModeRequest
  {
    -- | \@brief motion_capture_ik/changeArmCtrlModeRequest.control_mode: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikChangeArmCtrlModeRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikChangeArmCtrlModeRequest_control_mode :: Bool
  } deriving (Eq, Show)
defaultRos1Motion_capture_ikChangeArmCtrlModeRequest :: Ros1Motion_capture_ikChangeArmCtrlModeRequest
defaultRos1Motion_capture_ikChangeArmCtrlModeRequest = Ros1Motion_capture_ikChangeArmCtrlModeRequest (False)
ros1Motion_capture_ikChangeArmCtrlModeRequestCodecIdentity :: String
ros1Motion_capture_ikChangeArmCtrlModeRequestCodecIdentity =
    "UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd"
encodeRos1Motion_capture_ikChangeArmCtrlModeRequest :: Ros1Motion_capture_ikChangeArmCtrlModeRequest -> Either
    Word32 B.ByteString
encodeRos1Motion_capture_ikChangeArmCtrlModeRequest value = do
  b0 <- W.encodeBool (ros1Motion_capture_ikChangeArmCtrlModeRequest_control_mode value)
  W.bounded 1 [b0]
readRos1Motion_capture_ikChangeArmCtrlModeRequest :: W.Decoder Ros1Motion_capture_ikChangeArmCtrlModeRequest
readRos1Motion_capture_ikChangeArmCtrlModeRequest = do
  a0 <- W.boolean
  let value = Ros1Motion_capture_ikChangeArmCtrlModeRequest a0
  case encodeRos1Motion_capture_ikChangeArmCtrlModeRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Motion_capture_ikChangeArmCtrlModeRequest :: B.ByteString -> Either Word32
    Ros1Motion_capture_ikChangeArmCtrlModeRequest
decodeRos1Motion_capture_ikChangeArmCtrlModeRequest = W.runDecoder 1
    readRos1Motion_capture_ikChangeArmCtrlModeRequest
instance Canonical Ros1Motion_capture_ikChangeArmCtrlModeRequest where
  maximumBytes _ = 1
  encodeValue = encodeRos1Motion_capture_ikChangeArmCtrlModeRequest
  readValue = readRos1Motion_capture_ikChangeArmCtrlModeRequest
data Ros1Motion_capture_ikChangeArmCtrlModeResponse = Ros1Motion_capture_ikChangeArmCtrlModeResponse
  {
    -- | \@brief motion_capture_ik/changeArmCtrlModeResponse.result: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikChangeArmCtrlModeResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikChangeArmCtrlModeResponse_result :: Bool
  } deriving (Eq, Show)
defaultRos1Motion_capture_ikChangeArmCtrlModeResponse :: Ros1Motion_capture_ikChangeArmCtrlModeResponse
defaultRos1Motion_capture_ikChangeArmCtrlModeResponse = Ros1Motion_capture_ikChangeArmCtrlModeResponse (False)
ros1Motion_capture_ikChangeArmCtrlModeResponseCodecIdentity :: String
ros1Motion_capture_ikChangeArmCtrlModeResponseCodecIdentity =
    "UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac"
encodeRos1Motion_capture_ikChangeArmCtrlModeResponse :: Ros1Motion_capture_ikChangeArmCtrlModeResponse -> Either
    Word32 B.ByteString
encodeRos1Motion_capture_ikChangeArmCtrlModeResponse value = do
  b0 <- W.encodeBool (ros1Motion_capture_ikChangeArmCtrlModeResponse_result value)
  W.bounded 1 [b0]
readRos1Motion_capture_ikChangeArmCtrlModeResponse :: W.Decoder Ros1Motion_capture_ikChangeArmCtrlModeResponse
readRos1Motion_capture_ikChangeArmCtrlModeResponse = do
  a0 <- W.boolean
  let value = Ros1Motion_capture_ikChangeArmCtrlModeResponse a0
  case encodeRos1Motion_capture_ikChangeArmCtrlModeResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Motion_capture_ikChangeArmCtrlModeResponse :: B.ByteString -> Either Word32
    Ros1Motion_capture_ikChangeArmCtrlModeResponse
decodeRos1Motion_capture_ikChangeArmCtrlModeResponse = W.runDecoder 1
    readRos1Motion_capture_ikChangeArmCtrlModeResponse
instance Canonical Ros1Motion_capture_ikChangeArmCtrlModeResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Motion_capture_ikChangeArmCtrlModeResponse
  readValue = readRos1Motion_capture_ikChangeArmCtrlModeResponse
data Ros1Motion_capture_ikHandPose = Ros1Motion_capture_ikHandPose
  {
    -- | \@brief motion_capture_ik/handPose.x: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikHandPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikHandPose_x :: Double
  ,
    -- | \@brief motion_capture_ik/handPose.y: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikHandPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikHandPose_y :: Double
  ,
    -- | \@brief motion_capture_ik/handPose.z: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikHandPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikHandPose_z :: Double
  ,
    -- | \@brief motion_capture_ik/handPose.roll: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikHandPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikHandPose_roll :: Double
  ,
    -- | \@brief motion_capture_ik/handPose.pitch: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikHandPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikHandPose_pitch :: Double
  ,
    -- | \@brief motion_capture_ik/handPose.yaw: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikHandPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikHandPose_yaw :: Double
  } deriving (Eq, Show)
defaultRos1Motion_capture_ikHandPose :: Ros1Motion_capture_ikHandPose
defaultRos1Motion_capture_ikHandPose = Ros1Motion_capture_ikHandPose (0) (0) (0) (0) (0) (0)
ros1Motion_capture_ikHandPoseCodecIdentity :: String
ros1Motion_capture_ikHandPoseCodecIdentity =
    "UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f"
encodeRos1Motion_capture_ikHandPose :: Ros1Motion_capture_ikHandPose -> Either Word32 B.ByteString
encodeRos1Motion_capture_ikHandPose value = do
  b0 <- W.encodeFloat64 (ros1Motion_capture_ikHandPose_x value)
  b1 <- W.encodeFloat64 (ros1Motion_capture_ikHandPose_y value)
  b2 <- W.encodeFloat64 (ros1Motion_capture_ikHandPose_z value)
  b3 <- W.encodeFloat64 (ros1Motion_capture_ikHandPose_roll value)
  b4 <- W.encodeFloat64 (ros1Motion_capture_ikHandPose_pitch value)
  b5 <- W.encodeFloat64 (ros1Motion_capture_ikHandPose_yaw value)
  W.bounded 48 [b0, b1, b2, b3, b4, b5]
readRos1Motion_capture_ikHandPose :: W.Decoder Ros1Motion_capture_ikHandPose
readRos1Motion_capture_ikHandPose = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  a4 <- W.float64
  a5 <- W.float64
  let value = Ros1Motion_capture_ikHandPose a0 a1 a2 a3 a4 a5
  case encodeRos1Motion_capture_ikHandPose value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Motion_capture_ikHandPose :: B.ByteString -> Either Word32 Ros1Motion_capture_ikHandPose
decodeRos1Motion_capture_ikHandPose = W.runDecoder 48 readRos1Motion_capture_ikHandPose
instance Canonical Ros1Motion_capture_ikHandPose where
  maximumBytes _ = 48
  encodeValue = encodeRos1Motion_capture_ikHandPose
  readValue = readRos1Motion_capture_ikHandPose
data Ros1Motion_capture_ikIkSolveError = Ros1Motion_capture_ikIkSolveError
  {
    -- | \@brief motion_capture_ik/ikSolveError.ik_type: string; each string is 0..256 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikIkSolveError; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikIkSolveError_ik_type :: T.Text
  ,
    -- | \@brief motion_capture_ik/ikSolveError.left_pose_error: motion_capture_ik/handPose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikIkSolveError; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikIkSolveError_left_pose_error :: Ros1Motion_capture_ikHandPose
  ,
    -- | \@brief motion_capture_ik/ikSolveError.right_pose_error: motion_capture_ik/handPose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikIkSolveError; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikIkSolveError_right_pose_error :: Ros1Motion_capture_ikHandPose
  } deriving (Eq, Show)
defaultRos1Motion_capture_ikIkSolveError :: Ros1Motion_capture_ikIkSolveError
defaultRos1Motion_capture_ikIkSolveError = Ros1Motion_capture_ikIkSolveError (T.empty)
    (defaultRos1Motion_capture_ikHandPose) (defaultRos1Motion_capture_ikHandPose)
ros1Motion_capture_ikIkSolveErrorCodecIdentity :: String
ros1Motion_capture_ikIkSolveErrorCodecIdentity =
    "UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94"
encodeRos1Motion_capture_ikIkSolveError :: Ros1Motion_capture_ikIkSolveError -> Either Word32 B.ByteString
encodeRos1Motion_capture_ikIkSolveError value = do
  b0 <- W.encodeText 256 True (ros1Motion_capture_ikIkSolveError_ik_type value)
  b1 <- encodeRos1Motion_capture_ikHandPose (ros1Motion_capture_ikIkSolveError_left_pose_error value)
  b2 <- encodeRos1Motion_capture_ikHandPose (ros1Motion_capture_ikIkSolveError_right_pose_error value)
  W.bounded 356 [b0, b1, b2]
readRos1Motion_capture_ikIkSolveError :: W.Decoder Ros1Motion_capture_ikIkSolveError
readRos1Motion_capture_ikIkSolveError = do
  a0 <- W.text 256 True
  a1 <- readRos1Motion_capture_ikHandPose
  a2 <- readRos1Motion_capture_ikHandPose
  let value = Ros1Motion_capture_ikIkSolveError a0 a1 a2
  case encodeRos1Motion_capture_ikIkSolveError value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Motion_capture_ikIkSolveError :: B.ByteString -> Either Word32 Ros1Motion_capture_ikIkSolveError
decodeRos1Motion_capture_ikIkSolveError = W.runDecoder 356 readRos1Motion_capture_ikIkSolveError
instance Canonical Ros1Motion_capture_ikIkSolveError where
  maximumBytes _ = 356
  encodeValue = encodeRos1Motion_capture_ikIkSolveError
  readValue = readRos1Motion_capture_ikIkSolveError
data Ros1Motion_capture_ikIkSolveParam = Ros1Motion_capture_ikIkSolveParam
  {
    -- | \@brief motion_capture_ik/ikSolveParam.major_optimality_tol: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikIkSolveParam_major_optimality_tol :: Double
  ,
    -- | \@brief motion_capture_ik/ikSolveParam.major_feasibility_tol: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikIkSolveParam_major_feasibility_tol :: Double
  ,
    -- | \@brief motion_capture_ik/ikSolveParam.minor_feasibility_tol: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikIkSolveParam_minor_feasibility_tol :: Double
  ,
    -- | \@brief motion_capture_ik/ikSolveParam.major_iterations_limit: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikIkSolveParam_major_iterations_limit :: Double
  ,
    -- | \@brief motion_capture_ik/ikSolveParam.oritation_constraint_tol: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikIkSolveParam_oritation_constraint_tol :: Double
  ,
    -- | \@brief motion_capture_ik/ikSolveParam.pos_constraint_tol: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikIkSolveParam_pos_constraint_tol :: Double
  ,
    -- | \@brief motion_capture_ik/ikSolveParam.pos_cost_weight: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikIkSolveParam_pos_cost_weight :: Double
  } deriving (Eq, Show)
defaultRos1Motion_capture_ikIkSolveParam :: Ros1Motion_capture_ikIkSolveParam
defaultRos1Motion_capture_ikIkSolveParam = Ros1Motion_capture_ikIkSolveParam (0) (0) (0) (0) (0) (0) (0)
ros1Motion_capture_ikIkSolveParamCodecIdentity :: String
ros1Motion_capture_ikIkSolveParamCodecIdentity =
    "UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981"
encodeRos1Motion_capture_ikIkSolveParam :: Ros1Motion_capture_ikIkSolveParam -> Either Word32 B.ByteString
encodeRos1Motion_capture_ikIkSolveParam value = do
  b0 <- W.encodeFloat64 (ros1Motion_capture_ikIkSolveParam_major_optimality_tol value)
  b1 <- W.encodeFloat64 (ros1Motion_capture_ikIkSolveParam_major_feasibility_tol value)
  b2 <- W.encodeFloat64 (ros1Motion_capture_ikIkSolveParam_minor_feasibility_tol value)
  b3 <- W.encodeFloat64 (ros1Motion_capture_ikIkSolveParam_major_iterations_limit value)
  b4 <- W.encodeFloat64 (ros1Motion_capture_ikIkSolveParam_oritation_constraint_tol value)
  b5 <- W.encodeFloat64 (ros1Motion_capture_ikIkSolveParam_pos_constraint_tol value)
  b6 <- W.encodeFloat64 (ros1Motion_capture_ikIkSolveParam_pos_cost_weight value)
  W.bounded 56 [b0, b1, b2, b3, b4, b5, b6]
readRos1Motion_capture_ikIkSolveParam :: W.Decoder Ros1Motion_capture_ikIkSolveParam
readRos1Motion_capture_ikIkSolveParam = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  a4 <- W.float64
  a5 <- W.float64
  a6 <- W.float64
  let value = Ros1Motion_capture_ikIkSolveParam a0 a1 a2 a3 a4 a5 a6
  case encodeRos1Motion_capture_ikIkSolveParam value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Motion_capture_ikIkSolveParam :: B.ByteString -> Either Word32 Ros1Motion_capture_ikIkSolveParam
decodeRos1Motion_capture_ikIkSolveParam = W.runDecoder 56 readRos1Motion_capture_ikIkSolveParam
instance Canonical Ros1Motion_capture_ikIkSolveParam where
  maximumBytes _ = 56
  encodeValue = encodeRos1Motion_capture_ikIkSolveParam
  readValue = readRos1Motion_capture_ikIkSolveParam
data Ros1Motion_capture_ikRecordArmHandPose = Ros1Motion_capture_ikRecordArmHandPose
  {
    -- | \@brief motion_capture_ik/recordArmHandPose.left_pose: motion_capture_ik/armHandPose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikRecordArmHandPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikRecordArmHandPose_left_pose :: Ros1Motion_capture_ikArmHandPose
  ,
    -- | \@brief motion_capture_ik/recordArmHandPose.right_pose: motion_capture_ik/armHandPose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikRecordArmHandPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikRecordArmHandPose_right_pose :: Ros1Motion_capture_ikArmHandPose
  } deriving (Eq, Show)
defaultRos1Motion_capture_ikRecordArmHandPose :: Ros1Motion_capture_ikRecordArmHandPose
defaultRos1Motion_capture_ikRecordArmHandPose = Ros1Motion_capture_ikRecordArmHandPose
    (defaultRos1Motion_capture_ikArmHandPose) (defaultRos1Motion_capture_ikArmHandPose)
ros1Motion_capture_ikRecordArmHandPoseCodecIdentity :: String
ros1Motion_capture_ikRecordArmHandPoseCodecIdentity =
    "UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a"
encodeRos1Motion_capture_ikRecordArmHandPose :: Ros1Motion_capture_ikRecordArmHandPose -> Either Word32 B.ByteString
encodeRos1Motion_capture_ikRecordArmHandPose value = do
  b0 <- encodeRos1Motion_capture_ikArmHandPose (ros1Motion_capture_ikRecordArmHandPose_left_pose value)
  b1 <- encodeRos1Motion_capture_ikArmHandPose (ros1Motion_capture_ikRecordArmHandPose_right_pose value)
  W.bounded 272 [b0, b1]
readRos1Motion_capture_ikRecordArmHandPose :: W.Decoder Ros1Motion_capture_ikRecordArmHandPose
readRos1Motion_capture_ikRecordArmHandPose = do
  a0 <- readRos1Motion_capture_ikArmHandPose
  a1 <- readRos1Motion_capture_ikArmHandPose
  let value = Ros1Motion_capture_ikRecordArmHandPose a0 a1
  case encodeRos1Motion_capture_ikRecordArmHandPose value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Motion_capture_ikRecordArmHandPose :: B.ByteString -> Either Word32 Ros1Motion_capture_ikRecordArmHandPose
decodeRos1Motion_capture_ikRecordArmHandPose = W.runDecoder 272 readRos1Motion_capture_ikRecordArmHandPose
instance Canonical Ros1Motion_capture_ikRecordArmHandPose where
  maximumBytes _ = 272
  encodeValue = encodeRos1Motion_capture_ikRecordArmHandPose
  readValue = readRos1Motion_capture_ikRecordArmHandPose
data Ros1Motion_capture_ikRecordArmHandPoseFree = Ros1Motion_capture_ikRecordArmHandPoseFree
  {
    -- | \@brief motion_capture_ik/recordArmHandPoseFree.left_pose: motion_capture_ik/armHandPoseFree.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikRecordArmHandPoseFree; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikRecordArmHandPoseFree_left_pose :: Ros1Motion_capture_ikArmHandPoseFree
  ,
    -- | \@brief motion_capture_ik/recordArmHandPoseFree.right_pose: motion_capture_ik/armHandPoseFree.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikRecordArmHandPoseFree; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikRecordArmHandPoseFree_right_pose :: Ros1Motion_capture_ikArmHandPoseFree
  } deriving (Eq, Show)
defaultRos1Motion_capture_ikRecordArmHandPoseFree :: Ros1Motion_capture_ikRecordArmHandPoseFree
defaultRos1Motion_capture_ikRecordArmHandPoseFree = Ros1Motion_capture_ikRecordArmHandPoseFree
    (defaultRos1Motion_capture_ikArmHandPoseFree) (defaultRos1Motion_capture_ikArmHandPoseFree)
ros1Motion_capture_ikRecordArmHandPoseFreeCodecIdentity :: String
ros1Motion_capture_ikRecordArmHandPoseFreeCodecIdentity =
    "UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811"
encodeRos1Motion_capture_ikRecordArmHandPoseFree :: Ros1Motion_capture_ikRecordArmHandPoseFree -> Either Word32
    B.ByteString
encodeRos1Motion_capture_ikRecordArmHandPoseFree value = do
  b0 <- encodeRos1Motion_capture_ikArmHandPoseFree (ros1Motion_capture_ikRecordArmHandPoseFree_left_pose value)
  b1 <- encodeRos1Motion_capture_ikArmHandPoseFree (ros1Motion_capture_ikRecordArmHandPoseFree_right_pose value)
  W.bounded 424 [b0, b1]
readRos1Motion_capture_ikRecordArmHandPoseFree :: W.Decoder Ros1Motion_capture_ikRecordArmHandPoseFree
readRos1Motion_capture_ikRecordArmHandPoseFree = do
  a0 <- readRos1Motion_capture_ikArmHandPoseFree
  a1 <- readRos1Motion_capture_ikArmHandPoseFree
  let value = Ros1Motion_capture_ikRecordArmHandPoseFree a0 a1
  case encodeRos1Motion_capture_ikRecordArmHandPoseFree value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Motion_capture_ikRecordArmHandPoseFree :: B.ByteString -> Either Word32
    Ros1Motion_capture_ikRecordArmHandPoseFree
decodeRos1Motion_capture_ikRecordArmHandPoseFree = W.runDecoder 424 readRos1Motion_capture_ikRecordArmHandPoseFree
instance Canonical Ros1Motion_capture_ikRecordArmHandPoseFree where
  maximumBytes _ = 424
  encodeValue = encodeRos1Motion_capture_ikRecordArmHandPoseFree
  readValue = readRos1Motion_capture_ikRecordArmHandPoseFree
data Ros1Motion_capture_ikRobotArmQVVD = Ros1Motion_capture_ikRobotArmQVVD
  {
    -- | \@brief motion_capture_ik/robotArmQVVD.q: float64; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikRobotArmQVVD; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikRobotArmQVVD_q :: [Double]
  ,
    -- | \@brief motion_capture_ik/robotArmQVVD.v: float64; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikRobotArmQVVD; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikRobotArmQVVD_v :: [Double]
  ,
    -- | \@brief motion_capture_ik/robotArmQVVD.vd: float64; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikRobotArmQVVD; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikRobotArmQVVD_vd :: [Double]
  } deriving (Eq, Show)
defaultRos1Motion_capture_ikRobotArmQVVD :: Ros1Motion_capture_ikRobotArmQVVD
defaultRos1Motion_capture_ikRobotArmQVVD = Ros1Motion_capture_ikRobotArmQVVD ([]) ([]) ([])
ros1Motion_capture_ikRobotArmQVVDCodecIdentity :: String
ros1Motion_capture_ikRobotArmQVVDCodecIdentity =
    "UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb"
encodeRos1Motion_capture_ikRobotArmQVVD :: Ros1Motion_capture_ikRobotArmQVVD -> Either Word32 B.ByteString
encodeRos1Motion_capture_ikRobotArmQVVD value = do
  if length (ros1Motion_capture_ikRobotArmQVVD_q value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros1Motion_capture_ikRobotArmQVVD_q value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Motion_capture_ikRobotArmQVVD_q value)
  if length (ros1Motion_capture_ikRobotArmQVVD_v value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros1Motion_capture_ikRobotArmQVVD_v value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Motion_capture_ikRobotArmQVVD_v value)
  if length (ros1Motion_capture_ikRobotArmQVVD_vd value) > 16 then Left 22 else Right ()
  prefix2 <- W.encodeCount 16 (length (ros1Motion_capture_ikRobotArmQVVD_vd value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Motion_capture_ikRobotArmQVVD_vd value)
  W.bounded 396 [prefix0, b0, prefix1, b1, prefix2, b2]
readRos1Motion_capture_ikRobotArmQVVD :: W.Decoder Ros1Motion_capture_ikRobotArmQVVD
readRos1Motion_capture_ikRobotArmQVVD = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.float64)
  count1 <- W.count 16
  a1 <- replicateM count1 (W.float64)
  count2 <- W.count 16
  a2 <- replicateM count2 (W.float64)
  let value = Ros1Motion_capture_ikRobotArmQVVD a0 a1 a2
  case encodeRos1Motion_capture_ikRobotArmQVVD value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Motion_capture_ikRobotArmQVVD :: B.ByteString -> Either Word32 Ros1Motion_capture_ikRobotArmQVVD
decodeRos1Motion_capture_ikRobotArmQVVD = W.runDecoder 396 readRos1Motion_capture_ikRobotArmQVVD
instance Canonical Ros1Motion_capture_ikRobotArmQVVD where
  maximumBytes _ = 396
  encodeValue = encodeRos1Motion_capture_ikRobotArmQVVD
  readValue = readRos1Motion_capture_ikRobotArmQVVD
data Ros1Time = Ros1Time
  {
    -- | \@brief time.sec: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Time; share/platform/ros/haskell/API-CONTRACT.md
    ros1Time_sec :: Word32
  ,
    -- | \@brief time.nsec: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Time; share/platform/ros/haskell/API-CONTRACT.md
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
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros1Std_msgsHeader_seq :: Word32
  ,
    -- | \@brief std_msgs/Header.stamp: time.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros1Std_msgsHeader_stamp :: Ros1Time
  ,
    -- | \@brief std_msgs/Header.frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros1Std_msgsHeader_frame_id :: T.Text
  } deriving (Eq, Show)
defaultRos1Std_msgsHeader :: Ros1Std_msgsHeader
defaultRos1Std_msgsHeader = Ros1Std_msgsHeader (0) (defaultRos1Time) (T.empty)
ros1Std_msgsHeaderCodecIdentity :: String
ros1Std_msgsHeaderCodecIdentity = "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7"
encodeRos1Std_msgsHeader :: Ros1Std_msgsHeader -> Either Word32 B.ByteString
encodeRos1Std_msgsHeader value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Std_msgsHeader_seq value))
  b1 <- encodeRos1Time (ros1Std_msgsHeader_stamp value)
  b2 <- W.encodeText 256 True (ros1Std_msgsHeader_frame_id value)
  W.bounded 272 [b0, b1, b2]
readRos1Std_msgsHeader :: W.Decoder Ros1Std_msgsHeader
readRos1Std_msgsHeader = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- readRos1Time
  a2 <- W.text 256 True
  let value = Ros1Std_msgsHeader a0 a1 a2
  case encodeRos1Std_msgsHeader value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Std_msgsHeader :: B.ByteString -> Either Word32 Ros1Std_msgsHeader
decodeRos1Std_msgsHeader = W.runDecoder 272 readRos1Std_msgsHeader
instance Canonical Ros1Std_msgsHeader where
  maximumBytes _ = 272
  encodeValue = encodeRos1Std_msgsHeader
  readValue = readRos1Std_msgsHeader
data Ros1Motion_capture_ikRobotHandPosition = Ros1Motion_capture_ikRobotHandPosition
  {
    -- | \@brief motion_capture_ik/robotHandPosition.header: std_msgs/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikRobotHandPosition; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikRobotHandPosition_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief motion_capture_ik/robotHandPosition.left_hand_position: uint8; 0..256 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikRobotHandPosition; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikRobotHandPosition_left_hand_position :: [Word8]
  ,
    -- | \@brief motion_capture_ik/robotHandPosition.right_hand_position: uint8; 0..256 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikRobotHandPosition; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikRobotHandPosition_right_hand_position :: [Word8]
  } deriving (Eq, Show)
defaultRos1Motion_capture_ikRobotHandPosition :: Ros1Motion_capture_ikRobotHandPosition
defaultRos1Motion_capture_ikRobotHandPosition = Ros1Motion_capture_ikRobotHandPosition (defaultRos1Std_msgsHeader)
    ([]) ([])
ros1Motion_capture_ikRobotHandPositionCodecIdentity :: String
ros1Motion_capture_ikRobotHandPositionCodecIdentity =
    "UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa"
encodeRos1Motion_capture_ikRobotHandPosition :: Ros1Motion_capture_ikRobotHandPosition -> Either Word32 B.ByteString
encodeRos1Motion_capture_ikRobotHandPosition value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Motion_capture_ikRobotHandPosition_header value)
  if length (ros1Motion_capture_ikRobotHandPosition_left_hand_position value) > 256 then Left 22 else Right ()
  prefix1 <- W.encodeCount 256 (length (ros1Motion_capture_ikRobotHandPosition_left_hand_position value))
  b1 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e)))
      (ros1Motion_capture_ikRobotHandPosition_left_hand_position value)
  if length (ros1Motion_capture_ikRobotHandPosition_right_hand_position value) > 256 then Left 22 else Right ()
  prefix2 <- W.encodeCount 256 (length (ros1Motion_capture_ikRobotHandPosition_right_hand_position value))
  b2 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e)))
      (ros1Motion_capture_ikRobotHandPosition_right_hand_position value)
  W.bounded 792 [b0, prefix1, b1, prefix2, b2]
readRos1Motion_capture_ikRobotHandPosition :: W.Decoder Ros1Motion_capture_ikRobotHandPosition
readRos1Motion_capture_ikRobotHandPosition = do
  a0 <- readRos1Std_msgsHeader
  count1 <- W.count 256
  a1 <- replicateM count1 (fromIntegral <$> W.unsigned 1)
  count2 <- W.count 256
  a2 <- replicateM count2 (fromIntegral <$> W.unsigned 1)
  let value = Ros1Motion_capture_ikRobotHandPosition a0 a1 a2
  case encodeRos1Motion_capture_ikRobotHandPosition value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Motion_capture_ikRobotHandPosition :: B.ByteString -> Either Word32 Ros1Motion_capture_ikRobotHandPosition
decodeRos1Motion_capture_ikRobotHandPosition = W.runDecoder 792 readRos1Motion_capture_ikRobotHandPosition
instance Canonical Ros1Motion_capture_ikRobotHandPosition where
  maximumBytes _ = 792
  encodeValue = encodeRos1Motion_capture_ikRobotHandPosition
  readValue = readRos1Motion_capture_ikRobotHandPosition
data Ros1Motion_capture_ikTwoArmHandPose = Ros1Motion_capture_ikTwoArmHandPose
  {
    -- | \@brief motion_capture_ik/twoArmHandPose.header: std_msgs/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikTwoArmHandPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikTwoArmHandPose_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief motion_capture_ik/twoArmHandPose.left_pose: motion_capture_ik/armHandPose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikTwoArmHandPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikTwoArmHandPose_left_pose :: Ros1Motion_capture_ikArmHandPose
  ,
    -- | \@brief motion_capture_ik/twoArmHandPose.right_pose: motion_capture_ik/armHandPose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikTwoArmHandPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikTwoArmHandPose_right_pose :: Ros1Motion_capture_ikArmHandPose
  } deriving (Eq, Show)
defaultRos1Motion_capture_ikTwoArmHandPose :: Ros1Motion_capture_ikTwoArmHandPose
defaultRos1Motion_capture_ikTwoArmHandPose = Ros1Motion_capture_ikTwoArmHandPose (defaultRos1Std_msgsHeader)
    (defaultRos1Motion_capture_ikArmHandPose) (defaultRos1Motion_capture_ikArmHandPose)
ros1Motion_capture_ikTwoArmHandPoseCodecIdentity :: String
ros1Motion_capture_ikTwoArmHandPoseCodecIdentity =
    "UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181"
encodeRos1Motion_capture_ikTwoArmHandPose :: Ros1Motion_capture_ikTwoArmHandPose -> Either Word32 B.ByteString
encodeRos1Motion_capture_ikTwoArmHandPose value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Motion_capture_ikTwoArmHandPose_header value)
  b1 <- encodeRos1Motion_capture_ikArmHandPose (ros1Motion_capture_ikTwoArmHandPose_left_pose value)
  b2 <- encodeRos1Motion_capture_ikArmHandPose (ros1Motion_capture_ikTwoArmHandPose_right_pose value)
  W.bounded 544 [b0, b1, b2]
readRos1Motion_capture_ikTwoArmHandPose :: W.Decoder Ros1Motion_capture_ikTwoArmHandPose
readRos1Motion_capture_ikTwoArmHandPose = do
  a0 <- readRos1Std_msgsHeader
  a1 <- readRos1Motion_capture_ikArmHandPose
  a2 <- readRos1Motion_capture_ikArmHandPose
  let value = Ros1Motion_capture_ikTwoArmHandPose a0 a1 a2
  case encodeRos1Motion_capture_ikTwoArmHandPose value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Motion_capture_ikTwoArmHandPose :: B.ByteString -> Either Word32 Ros1Motion_capture_ikTwoArmHandPose
decodeRos1Motion_capture_ikTwoArmHandPose = W.runDecoder 544 readRos1Motion_capture_ikTwoArmHandPose
instance Canonical Ros1Motion_capture_ikTwoArmHandPose where
  maximumBytes _ = 544
  encodeValue = encodeRos1Motion_capture_ikTwoArmHandPose
  readValue = readRos1Motion_capture_ikTwoArmHandPose
data Ros1Motion_capture_ikTwoArmHandPoseCmd = Ros1Motion_capture_ikTwoArmHandPoseCmd
  {
    -- | \@brief motion_capture_ik/twoArmHandPoseCmd.hand_poses: motion_capture_ik/twoArmHandPose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikTwoArmHandPoseCmd; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikTwoArmHandPoseCmd_hand_poses :: Ros1Motion_capture_ikTwoArmHandPose
  ,
    -- | \@brief motion_capture_ik/twoArmHandPoseCmd.use_custom_ik_param: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikTwoArmHandPoseCmd; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikTwoArmHandPoseCmd_use_custom_ik_param :: Bool
  ,
    -- | \@brief motion_capture_ik/twoArmHandPoseCmd.joint_angles_as_q0: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikTwoArmHandPoseCmd; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikTwoArmHandPoseCmd_joint_angles_as_q0 :: Bool
  ,
    -- | \@brief motion_capture_ik/twoArmHandPoseCmd.ik_param: motion_capture_ik/ikSolveParam.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikTwoArmHandPoseCmd; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikTwoArmHandPoseCmd_ik_param :: Ros1Motion_capture_ikIkSolveParam
  } deriving (Eq, Show)
defaultRos1Motion_capture_ikTwoArmHandPoseCmd :: Ros1Motion_capture_ikTwoArmHandPoseCmd
defaultRos1Motion_capture_ikTwoArmHandPoseCmd = Ros1Motion_capture_ikTwoArmHandPoseCmd
    (defaultRos1Motion_capture_ikTwoArmHandPose) (False) (False) (defaultRos1Motion_capture_ikIkSolveParam)
ros1Motion_capture_ikTwoArmHandPoseCmdCodecIdentity :: String
ros1Motion_capture_ikTwoArmHandPoseCmdCodecIdentity =
    "UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc"
encodeRos1Motion_capture_ikTwoArmHandPoseCmd :: Ros1Motion_capture_ikTwoArmHandPoseCmd -> Either Word32 B.ByteString
encodeRos1Motion_capture_ikTwoArmHandPoseCmd value = do
  b0 <- encodeRos1Motion_capture_ikTwoArmHandPose (ros1Motion_capture_ikTwoArmHandPoseCmd_hand_poses value)
  b1 <- W.encodeBool (ros1Motion_capture_ikTwoArmHandPoseCmd_use_custom_ik_param value)
  b2 <- W.encodeBool (ros1Motion_capture_ikTwoArmHandPoseCmd_joint_angles_as_q0 value)
  b3 <- encodeRos1Motion_capture_ikIkSolveParam (ros1Motion_capture_ikTwoArmHandPoseCmd_ik_param value)
  W.bounded 602 [b0, b1, b2, b3]
readRos1Motion_capture_ikTwoArmHandPoseCmd :: W.Decoder Ros1Motion_capture_ikTwoArmHandPoseCmd
readRos1Motion_capture_ikTwoArmHandPoseCmd = do
  a0 <- readRos1Motion_capture_ikTwoArmHandPose
  a1 <- W.boolean
  a2 <- W.boolean
  a3 <- readRos1Motion_capture_ikIkSolveParam
  let value = Ros1Motion_capture_ikTwoArmHandPoseCmd a0 a1 a2 a3
  case encodeRos1Motion_capture_ikTwoArmHandPoseCmd value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Motion_capture_ikTwoArmHandPoseCmd :: B.ByteString -> Either Word32 Ros1Motion_capture_ikTwoArmHandPoseCmd
decodeRos1Motion_capture_ikTwoArmHandPoseCmd = W.runDecoder 602 readRos1Motion_capture_ikTwoArmHandPoseCmd
instance Canonical Ros1Motion_capture_ikTwoArmHandPoseCmd where
  maximumBytes _ = 602
  encodeValue = encodeRos1Motion_capture_ikTwoArmHandPoseCmd
  readValue = readRos1Motion_capture_ikTwoArmHandPoseCmd
data Ros1Motion_capture_ikTwoArmHandPoseFree = Ros1Motion_capture_ikTwoArmHandPoseFree
  {
    -- | \@brief motion_capture_ik/twoArmHandPoseFree.header: std_msgs/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikTwoArmHandPoseFree; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikTwoArmHandPoseFree_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief motion_capture_ik/twoArmHandPoseFree.left_pose: motion_capture_ik/armHandPoseFree.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikTwoArmHandPoseFree; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikTwoArmHandPoseFree_left_pose :: Ros1Motion_capture_ikArmHandPoseFree
  ,
    -- | \@brief motion_capture_ik/twoArmHandPoseFree.right_pose: motion_capture_ik/armHandPoseFree.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikTwoArmHandPoseFree; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikTwoArmHandPoseFree_right_pose :: Ros1Motion_capture_ikArmHandPoseFree
  } deriving (Eq, Show)
defaultRos1Motion_capture_ikTwoArmHandPoseFree :: Ros1Motion_capture_ikTwoArmHandPoseFree
defaultRos1Motion_capture_ikTwoArmHandPoseFree = Ros1Motion_capture_ikTwoArmHandPoseFree (defaultRos1Std_msgsHeader)
    (defaultRos1Motion_capture_ikArmHandPoseFree) (defaultRos1Motion_capture_ikArmHandPoseFree)
ros1Motion_capture_ikTwoArmHandPoseFreeCodecIdentity :: String
ros1Motion_capture_ikTwoArmHandPoseFreeCodecIdentity =
    "UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c"
encodeRos1Motion_capture_ikTwoArmHandPoseFree :: Ros1Motion_capture_ikTwoArmHandPoseFree -> Either Word32
    B.ByteString
encodeRos1Motion_capture_ikTwoArmHandPoseFree value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Motion_capture_ikTwoArmHandPoseFree_header value)
  b1 <- encodeRos1Motion_capture_ikArmHandPoseFree (ros1Motion_capture_ikTwoArmHandPoseFree_left_pose value)
  b2 <- encodeRos1Motion_capture_ikArmHandPoseFree (ros1Motion_capture_ikTwoArmHandPoseFree_right_pose value)
  W.bounded 696 [b0, b1, b2]
readRos1Motion_capture_ikTwoArmHandPoseFree :: W.Decoder Ros1Motion_capture_ikTwoArmHandPoseFree
readRos1Motion_capture_ikTwoArmHandPoseFree = do
  a0 <- readRos1Std_msgsHeader
  a1 <- readRos1Motion_capture_ikArmHandPoseFree
  a2 <- readRos1Motion_capture_ikArmHandPoseFree
  let value = Ros1Motion_capture_ikTwoArmHandPoseFree a0 a1 a2
  case encodeRos1Motion_capture_ikTwoArmHandPoseFree value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Motion_capture_ikTwoArmHandPoseFree :: B.ByteString -> Either Word32
    Ros1Motion_capture_ikTwoArmHandPoseFree
decodeRos1Motion_capture_ikTwoArmHandPoseFree = W.runDecoder 696 readRos1Motion_capture_ikTwoArmHandPoseFree
instance Canonical Ros1Motion_capture_ikTwoArmHandPoseFree where
  maximumBytes _ = 696
  encodeValue = encodeRos1Motion_capture_ikTwoArmHandPoseFree
  readValue = readRos1Motion_capture_ikTwoArmHandPoseFree
data Ros1Motion_capture_ikTwoArmHandPoseCmdFree = Ros1Motion_capture_ikTwoArmHandPoseCmdFree
  {
    -- | \@brief motion_capture_ik/twoArmHandPoseCmdFree.hand_poses: motion_capture_ik/twoArmHandPoseFree.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikTwoArmHandPoseCmdFree; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikTwoArmHandPoseCmdFree_hand_poses :: Ros1Motion_capture_ikTwoArmHandPoseFree
  ,
    -- | \@brief motion_capture_ik/twoArmHandPoseCmdFree.use_custom_ik_param: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikTwoArmHandPoseCmdFree; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikTwoArmHandPoseCmdFree_use_custom_ik_param :: Bool
  ,
    -- | \@brief motion_capture_ik/twoArmHandPoseCmdFree.joint_angles_as_q0: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikTwoArmHandPoseCmdFree; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikTwoArmHandPoseCmdFree_joint_angles_as_q0 :: Bool
  ,
    -- | \@brief motion_capture_ik/twoArmHandPoseCmdFree.ik_param: motion_capture_ik/ikSolveParam.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Motion_capture_ikTwoArmHandPoseCmdFree; share/platform/ros/haskell/API-CONTRACT.md
    ros1Motion_capture_ikTwoArmHandPoseCmdFree_ik_param :: Ros1Motion_capture_ikIkSolveParam
  } deriving (Eq, Show)
defaultRos1Motion_capture_ikTwoArmHandPoseCmdFree :: Ros1Motion_capture_ikTwoArmHandPoseCmdFree
defaultRos1Motion_capture_ikTwoArmHandPoseCmdFree = Ros1Motion_capture_ikTwoArmHandPoseCmdFree
    (defaultRos1Motion_capture_ikTwoArmHandPoseFree) (False) (False) (defaultRos1Motion_capture_ikIkSolveParam)
ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodecIdentity :: String
ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodecIdentity =
    "UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773"
encodeRos1Motion_capture_ikTwoArmHandPoseCmdFree :: Ros1Motion_capture_ikTwoArmHandPoseCmdFree -> Either Word32
    B.ByteString
encodeRos1Motion_capture_ikTwoArmHandPoseCmdFree value = do
  b0 <- encodeRos1Motion_capture_ikTwoArmHandPoseFree (ros1Motion_capture_ikTwoArmHandPoseCmdFree_hand_poses value)
  b1 <- W.encodeBool (ros1Motion_capture_ikTwoArmHandPoseCmdFree_use_custom_ik_param value)
  b2 <- W.encodeBool (ros1Motion_capture_ikTwoArmHandPoseCmdFree_joint_angles_as_q0 value)
  b3 <- encodeRos1Motion_capture_ikIkSolveParam (ros1Motion_capture_ikTwoArmHandPoseCmdFree_ik_param value)
  W.bounded 754 [b0, b1, b2, b3]
readRos1Motion_capture_ikTwoArmHandPoseCmdFree :: W.Decoder Ros1Motion_capture_ikTwoArmHandPoseCmdFree
readRos1Motion_capture_ikTwoArmHandPoseCmdFree = do
  a0 <- readRos1Motion_capture_ikTwoArmHandPoseFree
  a1 <- W.boolean
  a2 <- W.boolean
  a3 <- readRos1Motion_capture_ikIkSolveParam
  let value = Ros1Motion_capture_ikTwoArmHandPoseCmdFree a0 a1 a2 a3
  case encodeRos1Motion_capture_ikTwoArmHandPoseCmdFree value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Motion_capture_ikTwoArmHandPoseCmdFree :: B.ByteString -> Either Word32
    Ros1Motion_capture_ikTwoArmHandPoseCmdFree
decodeRos1Motion_capture_ikTwoArmHandPoseCmdFree = W.runDecoder 754 readRos1Motion_capture_ikTwoArmHandPoseCmdFree
instance Canonical Ros1Motion_capture_ikTwoArmHandPoseCmdFree where
  maximumBytes _ = 754
  encodeValue = encodeRos1Motion_capture_ikTwoArmHandPoseCmdFree
  readValue = readRos1Motion_capture_ikTwoArmHandPoseCmdFree
