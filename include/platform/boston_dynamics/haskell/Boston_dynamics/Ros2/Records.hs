-- | @file Records.hs
-- @brief Complete original boston_dynamics ROS 2 Haskell records and codecs.
-- @details Owned immutable values preserve all fields; constructing them grants no ROS authority.
module Boston_dynamics.Ros2.Records where
import Data.Int
import Data.Word
import Data.Bits
import GHC.Float
import qualified Data.Text as T
import Control.Monad (replicateM)
import qualified Native.Wire as W

-- | @brief Complete original uwvm_spot_bridge/srv/State_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 24..24 bytes.
data Ros2Uwvm_spot_bridgeSrvState_Request = Ros2Uwvm_spot_bridgeSrvState_Request
    {
    -- | @brief Original uwvm_spot_bridge/srv/State_Request.token field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvState_Request_token :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/State_Request.nonce field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvState_Request_nonce :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/State_Request.budget_ns field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvState_Request_budget_ns :: Word64
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Uwvm_spot_bridgeSrvState_Request :: Ros2Uwvm_spot_bridgeSrvState_Request
defaultRos2Uwvm_spot_bridgeSrvState_Request =
    Ros2Uwvm_spot_bridgeSrvState_Request
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Uwvm_spot_bridgeSrvState_RequestCodecIdentity :: String
ros2Uwvm_spot_bridgeSrvState_RequestCodecIdentity =
    "UWVMROS1_9becf278bc168ed6d5b15fe7f1ec35b83e274de8a5173cb2335948306bc7a47e"
-- | @brief Encode every field of complete uwvm_spot_bridge/srv/State_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Uwvm_spot_bridgeSrvState_Request :: Ros2Uwvm_spot_bridgeSrvState_Request -> Either Word32 [Word8]
encodeRos2Uwvm_spot_bridgeSrvState_Request value = do
    chunk0 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvState_Request_token value))
    chunk1 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvState_Request_nonce value))
    chunk2 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvState_Request_budget_ns value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 24 then Left 22 else Right bytes
-- | @brief Read every field of nested uwvm_spot_bridge/srv/State_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Uwvm_spot_bridgeSrvState_Request :: W.Parser Ros2Uwvm_spot_bridgeSrvState_Request
readRos2Uwvm_spot_bridgeSrvState_Request = do
    value0 <- fromIntegral <$> W.number 8
    value1 <- fromIntegral <$> W.number 8
    value2 <- fromIntegral <$> W.number 8
    let value =
            Ros2Uwvm_spot_bridgeSrvState_Request
                value0
                value1
                value2
    case encodeRos2Uwvm_spot_bridgeSrvState_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete uwvm_spot_bridge/srv/State_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Uwvm_spot_bridgeSrvState_Request :: [Word8] -> Either Word32 Ros2Uwvm_spot_bridgeSrvState_Request
decodeRos2Uwvm_spot_bridgeSrvState_Request bytes
    | length bytes < 24 || length bytes > 24 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Uwvm_spot_bridgeSrvState_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original uwvm_spot_bridge/srv/State_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 57..21433 bytes.
data Ros2Uwvm_spot_bridgeSrvState_Response = Ros2Uwvm_spot_bridgeSrvState_Response
    {
    -- | @brief Original uwvm_spot_bridge/srv/State_Response.token field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvState_Response_token :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/State_Response.nonce field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvState_Response_nonce :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/State_Response.error field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvState_Response_error :: Word32
    ,
    -- | @brief Original uwvm_spot_bridge/srv/State_Response.unknown field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvState_Response_unknown :: Bool
    ,
    -- | @brief Original uwvm_spot_bridge/srv/State_Response.acquisition_sec field.
    -- | @details Original type int64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvState_Response_acquisition_sec :: Int64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/State_Response.acquisition_nsec field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvState_Response_acquisition_nsec :: Word32
    ,
    -- | @brief Original uwvm_spot_bridge/srv/State_Response.joint_names field.
    -- | @details Original type string. String bound 128 bytes; domain utf8. Shape sequence;
    -- | bound/count 32 elements. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvState_Response_joint_names :: [[Word8]]
    ,
    -- | @brief Original uwvm_spot_bridge/srv/State_Response.joint_position field.
    -- | @details Original type float64. Shape sequence; bound/count 32 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Uwvm_spot_bridgeSrvState_Response_joint_position :: [Double]
    ,
    -- | @brief Original uwvm_spot_bridge/srv/State_Response.joint_velocity field.
    -- | @details Original type float64. Shape sequence; bound/count 32 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Uwvm_spot_bridgeSrvState_Response_joint_velocity :: [Double]
    ,
    -- | @brief Original uwvm_spot_bridge/srv/State_Response.joint_load field.
    -- | @details Original type float64. Shape sequence; bound/count 32 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Uwvm_spot_bridgeSrvState_Response_joint_load :: [Double]
    ,
    -- | @brief Original uwvm_spot_bridge/srv/State_Response.motor_power_state field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvState_Response_motor_power_state :: Word32
    ,
    -- | @brief Original uwvm_spot_bridge/srv/State_Response.native_proto field.
    -- | @details Original type uint8. Shape sequence; bound/count 16384 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Uwvm_spot_bridgeSrvState_Response_native_proto :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Uwvm_spot_bridgeSrvState_Response :: Ros2Uwvm_spot_bridgeSrvState_Response
defaultRos2Uwvm_spot_bridgeSrvState_Response =
    Ros2Uwvm_spot_bridgeSrvState_Response
        (0)
        (0)
        (0)
        (False)
        (0)
        (0)
        ([])
        ([])
        ([])
        ([])
        (0)
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Uwvm_spot_bridgeSrvState_ResponseCodecIdentity :: String
ros2Uwvm_spot_bridgeSrvState_ResponseCodecIdentity =
    "UWVMROS1_ab07340e952c2ff63f35dad37e9d4837a280eee9ce477ac5be4a05f82408ce0a"
-- | @brief Encode every field of complete uwvm_spot_bridge/srv/State_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Uwvm_spot_bridgeSrvState_Response :: Ros2Uwvm_spot_bridgeSrvState_Response -> Either Word32 [Word8]
encodeRos2Uwvm_spot_bridgeSrvState_Response value = do
    chunk0 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvState_Response_token value))
    chunk1 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvState_Response_nonce value))
    chunk2 <- Right (W.putNumber 4 (ros2Uwvm_spot_bridgeSrvState_Response_error value))
    chunk3 <- Right (W.putBool (ros2Uwvm_spot_bridgeSrvState_Response_unknown value))
    chunk4 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvState_Response_acquisition_sec value))
    chunk5 <- Right (W.putNumber 4 (ros2Uwvm_spot_bridgeSrvState_Response_acquisition_nsec value))
    if length (ros2Uwvm_spot_bridgeSrvState_Response_joint_names value) <= 32 then Right () else Left 22
    item6 <-
        concat <$> mapM
            (\element -> W.putText 128 (element))
            (ros2Uwvm_spot_bridgeSrvState_Response_joint_names value)
    chunk6 <- Right (
        W.putNumber 4 (length (ros2Uwvm_spot_bridgeSrvState_Response_joint_names value))
        ++ item6
        )
    if length (ros2Uwvm_spot_bridgeSrvState_Response_joint_position value) <= 32 then Right () else Left 22
    item7 <-
        concat <$> mapM
            (\element -> finite8 (element) castDoubleToWord64)
            (ros2Uwvm_spot_bridgeSrvState_Response_joint_position value)
    chunk7 <- Right (
        W.putNumber 4 (length (ros2Uwvm_spot_bridgeSrvState_Response_joint_position value))
        ++ item7
        )
    if length (ros2Uwvm_spot_bridgeSrvState_Response_joint_velocity value) <= 32 then Right () else Left 22
    item8 <-
        concat <$> mapM
            (\element -> finite8 (element) castDoubleToWord64)
            (ros2Uwvm_spot_bridgeSrvState_Response_joint_velocity value)
    chunk8 <- Right (
        W.putNumber 4 (length (ros2Uwvm_spot_bridgeSrvState_Response_joint_velocity value))
        ++ item8
        )
    if length (ros2Uwvm_spot_bridgeSrvState_Response_joint_load value) <= 32 then Right () else Left 22
    item9 <-
        concat <$> mapM
            (\element -> finite8 (element) castDoubleToWord64)
            (ros2Uwvm_spot_bridgeSrvState_Response_joint_load value)
    chunk9 <- Right (
        W.putNumber 4 (length (ros2Uwvm_spot_bridgeSrvState_Response_joint_load value))
        ++ item9
        )
    chunk10 <- Right (W.putNumber 4 (ros2Uwvm_spot_bridgeSrvState_Response_motor_power_state value))
    if length (ros2Uwvm_spot_bridgeSrvState_Response_native_proto value) <= 16384 then Right () else Left 22
    item11 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Uwvm_spot_bridgeSrvState_Response_native_proto value)
    chunk11 <- Right (
        W.putNumber 4 (length (ros2Uwvm_spot_bridgeSrvState_Response_native_proto value))
        ++ item11
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
                , chunk8
                , chunk9
                , chunk10
                , chunk11
                ]
    if length bytes > 21433 then Left 22 else Right bytes
-- | @brief Read every field of nested uwvm_spot_bridge/srv/State_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Uwvm_spot_bridgeSrvState_Response :: W.Parser Ros2Uwvm_spot_bridgeSrvState_Response
readRos2Uwvm_spot_bridgeSrvState_Response = do
    value0 <- fromIntegral <$> W.number 8
    value1 <- fromIntegral <$> W.number 8
    value2 <- fromIntegral <$> W.number 4
    value3 <- W.boolean
    value4 <- fromIntegral <$> W.number 8
    value5 <- fromIntegral <$> W.number 4
    count6 <- W.number 4
    if count6 > 32 then W.reject else pure ()
    value6 <- replicateM (fromIntegral count6) (W.text 128)
    count7 <- W.number 4
    if count7 > 32 then W.reject else pure ()
    value7 <- replicateM (fromIntegral count7) (castWord64ToDouble <$> W.number 8)
    count8 <- W.number 4
    if count8 > 32 then W.reject else pure ()
    value8 <- replicateM (fromIntegral count8) (castWord64ToDouble <$> W.number 8)
    count9 <- W.number 4
    if count9 > 32 then W.reject else pure ()
    value9 <- replicateM (fromIntegral count9) (castWord64ToDouble <$> W.number 8)
    value10 <- fromIntegral <$> W.number 4
    count11 <- W.number 4
    if count11 > 16384 then W.reject else pure ()
    value11 <- replicateM (fromIntegral count11) (fromIntegral <$> W.number 1)
    let value =
            Ros2Uwvm_spot_bridgeSrvState_Response
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
    case encodeRos2Uwvm_spot_bridgeSrvState_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete uwvm_spot_bridge/srv/State_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Uwvm_spot_bridgeSrvState_Response :: [Word8] -> Either Word32 Ros2Uwvm_spot_bridgeSrvState_Response
decodeRos2Uwvm_spot_bridgeSrvState_Response bytes
    | length bytes < 57 || length bytes > 21433 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Uwvm_spot_bridgeSrvState_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original uwvm_spot_bridge/srv/Lease_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 24..24 bytes.
data Ros2Uwvm_spot_bridgeSrvLease_Request = Ros2Uwvm_spot_bridgeSrvLease_Request
    {
    -- | @brief Original uwvm_spot_bridge/srv/Lease_Request.token field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvLease_Request_token :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Lease_Request.nonce field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvLease_Request_nonce :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Lease_Request.budget_ns field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvLease_Request_budget_ns :: Word64
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Uwvm_spot_bridgeSrvLease_Request :: Ros2Uwvm_spot_bridgeSrvLease_Request
defaultRos2Uwvm_spot_bridgeSrvLease_Request =
    Ros2Uwvm_spot_bridgeSrvLease_Request
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Uwvm_spot_bridgeSrvLease_RequestCodecIdentity :: String
ros2Uwvm_spot_bridgeSrvLease_RequestCodecIdentity =
    "UWVMROS1_a9aacd78dc6ae9d18fb6bb0d185797c6463c882edadf251eb5c21e3aa3c538a1"
-- | @brief Encode every field of complete uwvm_spot_bridge/srv/Lease_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Uwvm_spot_bridgeSrvLease_Request :: Ros2Uwvm_spot_bridgeSrvLease_Request -> Either Word32 [Word8]
encodeRos2Uwvm_spot_bridgeSrvLease_Request value = do
    chunk0 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvLease_Request_token value))
    chunk1 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvLease_Request_nonce value))
    chunk2 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvLease_Request_budget_ns value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 24 then Left 22 else Right bytes
-- | @brief Read every field of nested uwvm_spot_bridge/srv/Lease_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Uwvm_spot_bridgeSrvLease_Request :: W.Parser Ros2Uwvm_spot_bridgeSrvLease_Request
readRos2Uwvm_spot_bridgeSrvLease_Request = do
    value0 <- fromIntegral <$> W.number 8
    value1 <- fromIntegral <$> W.number 8
    value2 <- fromIntegral <$> W.number 8
    let value =
            Ros2Uwvm_spot_bridgeSrvLease_Request
                value0
                value1
                value2
    case encodeRos2Uwvm_spot_bridgeSrvLease_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete uwvm_spot_bridge/srv/Lease_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Uwvm_spot_bridgeSrvLease_Request :: [Word8] -> Either Word32 Ros2Uwvm_spot_bridgeSrvLease_Request
decodeRos2Uwvm_spot_bridgeSrvLease_Request bytes
    | length bytes < 24 || length bytes > 24 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Uwvm_spot_bridgeSrvLease_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original uwvm_spot_bridge/srv/Lease_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 22..22 bytes.
data Ros2Uwvm_spot_bridgeSrvLease_Response = Ros2Uwvm_spot_bridgeSrvLease_Response
    {
    -- | @brief Original uwvm_spot_bridge/srv/Lease_Response.token field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvLease_Response_token :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Lease_Response.nonce field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvLease_Response_nonce :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Lease_Response.error field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvLease_Response_error :: Word32
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Lease_Response.unknown field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvLease_Response_unknown :: Bool
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Lease_Response.provider_holds_body_lease field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvLease_Response_provider_holds_body_lease :: Bool
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Uwvm_spot_bridgeSrvLease_Response :: Ros2Uwvm_spot_bridgeSrvLease_Response
defaultRos2Uwvm_spot_bridgeSrvLease_Response =
    Ros2Uwvm_spot_bridgeSrvLease_Response
        (0)
        (0)
        (0)
        (False)
        (False)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Uwvm_spot_bridgeSrvLease_ResponseCodecIdentity :: String
ros2Uwvm_spot_bridgeSrvLease_ResponseCodecIdentity =
    "UWVMROS1_ce875eb701b607c01f8a19dc8fcff607829824ad99276f906c7fc8fc5567f6d3"
-- | @brief Encode every field of complete uwvm_spot_bridge/srv/Lease_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Uwvm_spot_bridgeSrvLease_Response :: Ros2Uwvm_spot_bridgeSrvLease_Response -> Either Word32 [Word8]
encodeRos2Uwvm_spot_bridgeSrvLease_Response value = do
    chunk0 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvLease_Response_token value))
    chunk1 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvLease_Response_nonce value))
    chunk2 <- Right (W.putNumber 4 (ros2Uwvm_spot_bridgeSrvLease_Response_error value))
    chunk3 <- Right (W.putBool (ros2Uwvm_spot_bridgeSrvLease_Response_unknown value))
    chunk4 <- Right (W.putBool (ros2Uwvm_spot_bridgeSrvLease_Response_provider_holds_body_lease value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                ]
    if length bytes > 22 then Left 22 else Right bytes
-- | @brief Read every field of nested uwvm_spot_bridge/srv/Lease_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Uwvm_spot_bridgeSrvLease_Response :: W.Parser Ros2Uwvm_spot_bridgeSrvLease_Response
readRos2Uwvm_spot_bridgeSrvLease_Response = do
    value0 <- fromIntegral <$> W.number 8
    value1 <- fromIntegral <$> W.number 8
    value2 <- fromIntegral <$> W.number 4
    value3 <- W.boolean
    value4 <- W.boolean
    let value =
            Ros2Uwvm_spot_bridgeSrvLease_Response
                value0
                value1
                value2
                value3
                value4
    case encodeRos2Uwvm_spot_bridgeSrvLease_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete uwvm_spot_bridge/srv/Lease_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Uwvm_spot_bridgeSrvLease_Response :: [Word8] -> Either Word32 Ros2Uwvm_spot_bridgeSrvLease_Response
decodeRos2Uwvm_spot_bridgeSrvLease_Response bytes
    | length bytes < 22 || length bytes > 22 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Uwvm_spot_bridgeSrvLease_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original uwvm_spot_bridge/srv/Command_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 24..24 bytes.
data Ros2Uwvm_spot_bridgeSrvCommand_Request = Ros2Uwvm_spot_bridgeSrvCommand_Request
    {
    -- | @brief Original uwvm_spot_bridge/srv/Command_Request.token field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvCommand_Request_token :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Command_Request.nonce field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvCommand_Request_nonce :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Command_Request.budget_ns field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvCommand_Request_budget_ns :: Word64
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Uwvm_spot_bridgeSrvCommand_Request :: Ros2Uwvm_spot_bridgeSrvCommand_Request
defaultRos2Uwvm_spot_bridgeSrvCommand_Request =
    Ros2Uwvm_spot_bridgeSrvCommand_Request
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Uwvm_spot_bridgeSrvCommand_RequestCodecIdentity :: String
ros2Uwvm_spot_bridgeSrvCommand_RequestCodecIdentity =
    "UWVMROS1_29996d4dacb4ea847c5d629cb634d4aa5e2451627d2469d6cdf301cc007968f8"
-- | @brief Encode every field of complete uwvm_spot_bridge/srv/Command_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Uwvm_spot_bridgeSrvCommand_Request :: Ros2Uwvm_spot_bridgeSrvCommand_Request -> Either Word32 [Word8]
encodeRos2Uwvm_spot_bridgeSrvCommand_Request value = do
    chunk0 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvCommand_Request_token value))
    chunk1 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvCommand_Request_nonce value))
    chunk2 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvCommand_Request_budget_ns value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 24 then Left 22 else Right bytes
-- | @brief Read every field of nested uwvm_spot_bridge/srv/Command_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Uwvm_spot_bridgeSrvCommand_Request :: W.Parser Ros2Uwvm_spot_bridgeSrvCommand_Request
readRos2Uwvm_spot_bridgeSrvCommand_Request = do
    value0 <- fromIntegral <$> W.number 8
    value1 <- fromIntegral <$> W.number 8
    value2 <- fromIntegral <$> W.number 8
    let value =
            Ros2Uwvm_spot_bridgeSrvCommand_Request
                value0
                value1
                value2
    case encodeRos2Uwvm_spot_bridgeSrvCommand_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete uwvm_spot_bridge/srv/Command_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Uwvm_spot_bridgeSrvCommand_Request :: [Word8] -> Either Word32 Ros2Uwvm_spot_bridgeSrvCommand_Request
decodeRos2Uwvm_spot_bridgeSrvCommand_Request bytes
    | length bytes < 24 || length bytes > 24 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Uwvm_spot_bridgeSrvCommand_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original uwvm_spot_bridge/srv/Command_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 26..26 bytes.
data Ros2Uwvm_spot_bridgeSrvCommand_Response = Ros2Uwvm_spot_bridgeSrvCommand_Response
    {
    -- | @brief Original uwvm_spot_bridge/srv/Command_Response.token field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvCommand_Response_token :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Command_Response.nonce field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvCommand_Response_nonce :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Command_Response.error field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvCommand_Response_error :: Word32
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Command_Response.unknown field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvCommand_Response_unknown :: Bool
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Command_Response.native_accepted field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvCommand_Response_native_accepted :: Bool
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Command_Response.native_command_id field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvCommand_Response_native_command_id :: Word32
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Uwvm_spot_bridgeSrvCommand_Response :: Ros2Uwvm_spot_bridgeSrvCommand_Response
defaultRos2Uwvm_spot_bridgeSrvCommand_Response =
    Ros2Uwvm_spot_bridgeSrvCommand_Response
        (0)
        (0)
        (0)
        (False)
        (False)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Uwvm_spot_bridgeSrvCommand_ResponseCodecIdentity :: String
ros2Uwvm_spot_bridgeSrvCommand_ResponseCodecIdentity =
    "UWVMROS1_e35556e7439c8d5ca79cb0f4ad23cf73c85a8a79d1382cde398dd85082dd1733"
-- | @brief Encode every field of complete uwvm_spot_bridge/srv/Command_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Uwvm_spot_bridgeSrvCommand_Response :: Ros2Uwvm_spot_bridgeSrvCommand_Response -> Either Word32 [Word8]
encodeRos2Uwvm_spot_bridgeSrvCommand_Response value = do
    chunk0 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvCommand_Response_token value))
    chunk1 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvCommand_Response_nonce value))
    chunk2 <- Right (W.putNumber 4 (ros2Uwvm_spot_bridgeSrvCommand_Response_error value))
    chunk3 <- Right (W.putBool (ros2Uwvm_spot_bridgeSrvCommand_Response_unknown value))
    chunk4 <- Right (W.putBool (ros2Uwvm_spot_bridgeSrvCommand_Response_native_accepted value))
    chunk5 <- Right (W.putNumber 4 (ros2Uwvm_spot_bridgeSrvCommand_Response_native_command_id value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                , chunk5
                ]
    if length bytes > 26 then Left 22 else Right bytes
-- | @brief Read every field of nested uwvm_spot_bridge/srv/Command_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Uwvm_spot_bridgeSrvCommand_Response :: W.Parser Ros2Uwvm_spot_bridgeSrvCommand_Response
readRos2Uwvm_spot_bridgeSrvCommand_Response = do
    value0 <- fromIntegral <$> W.number 8
    value1 <- fromIntegral <$> W.number 8
    value2 <- fromIntegral <$> W.number 4
    value3 <- W.boolean
    value4 <- W.boolean
    value5 <- fromIntegral <$> W.number 4
    let value =
            Ros2Uwvm_spot_bridgeSrvCommand_Response
                value0
                value1
                value2
                value3
                value4
                value5
    case encodeRos2Uwvm_spot_bridgeSrvCommand_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete uwvm_spot_bridge/srv/Command_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Uwvm_spot_bridgeSrvCommand_Response :: [Word8] -> Either Word32 Ros2Uwvm_spot_bridgeSrvCommand_Response
decodeRos2Uwvm_spot_bridgeSrvCommand_Response bytes
    | length bytes < 26 || length bytes > 26 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Uwvm_spot_bridgeSrvCommand_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original uwvm_spot_bridge/srv/Velocity_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 56..56 bytes.
data Ros2Uwvm_spot_bridgeSrvVelocity_Request = Ros2Uwvm_spot_bridgeSrvVelocity_Request
    {
    -- | @brief Original uwvm_spot_bridge/srv/Velocity_Request.token field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvVelocity_Request_token :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Velocity_Request.nonce field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvVelocity_Request_nonce :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Velocity_Request.budget_ns field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvVelocity_Request_budget_ns :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Velocity_Request.x_mps field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvVelocity_Request_x_mps :: Double
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Velocity_Request.y_mps field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvVelocity_Request_y_mps :: Double
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Velocity_Request.yaw_rps field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvVelocity_Request_yaw_rps :: Double
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Velocity_Request.duration_ns field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvVelocity_Request_duration_ns :: Word64
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Uwvm_spot_bridgeSrvVelocity_Request :: Ros2Uwvm_spot_bridgeSrvVelocity_Request
defaultRos2Uwvm_spot_bridgeSrvVelocity_Request =
    Ros2Uwvm_spot_bridgeSrvVelocity_Request
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Uwvm_spot_bridgeSrvVelocity_RequestCodecIdentity :: String
ros2Uwvm_spot_bridgeSrvVelocity_RequestCodecIdentity =
    "UWVMROS1_ffe3b1dec91a25cd84d221ba4ebeae576bd7d6b96f258579c0b3d280cad79f8d"
-- | @brief Encode every field of complete uwvm_spot_bridge/srv/Velocity_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Uwvm_spot_bridgeSrvVelocity_Request :: Ros2Uwvm_spot_bridgeSrvVelocity_Request -> Either Word32 [Word8]
encodeRos2Uwvm_spot_bridgeSrvVelocity_Request value = do
    chunk0 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvVelocity_Request_token value))
    chunk1 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvVelocity_Request_nonce value))
    chunk2 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvVelocity_Request_budget_ns value))
    chunk3 <- finite8 (ros2Uwvm_spot_bridgeSrvVelocity_Request_x_mps value) castDoubleToWord64
    chunk4 <- finite8 (ros2Uwvm_spot_bridgeSrvVelocity_Request_y_mps value) castDoubleToWord64
    chunk5 <- finite8 (ros2Uwvm_spot_bridgeSrvVelocity_Request_yaw_rps value) castDoubleToWord64
    chunk6 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvVelocity_Request_duration_ns value))
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
    if length bytes > 56 then Left 22 else Right bytes
-- | @brief Read every field of nested uwvm_spot_bridge/srv/Velocity_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Uwvm_spot_bridgeSrvVelocity_Request :: W.Parser Ros2Uwvm_spot_bridgeSrvVelocity_Request
readRos2Uwvm_spot_bridgeSrvVelocity_Request = do
    value0 <- fromIntegral <$> W.number 8
    value1 <- fromIntegral <$> W.number 8
    value2 <- fromIntegral <$> W.number 8
    value3 <- castWord64ToDouble <$> W.number 8
    value4 <- castWord64ToDouble <$> W.number 8
    value5 <- castWord64ToDouble <$> W.number 8
    value6 <- fromIntegral <$> W.number 8
    let value =
            Ros2Uwvm_spot_bridgeSrvVelocity_Request
                value0
                value1
                value2
                value3
                value4
                value5
                value6
    case encodeRos2Uwvm_spot_bridgeSrvVelocity_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete uwvm_spot_bridge/srv/Velocity_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Uwvm_spot_bridgeSrvVelocity_Request :: [Word8] -> Either Word32 Ros2Uwvm_spot_bridgeSrvVelocity_Request
decodeRos2Uwvm_spot_bridgeSrvVelocity_Request bytes
    | length bytes < 56 || length bytes > 56 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Uwvm_spot_bridgeSrvVelocity_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original uwvm_spot_bridge/srv/Velocity_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 26..26 bytes.
data Ros2Uwvm_spot_bridgeSrvVelocity_Response = Ros2Uwvm_spot_bridgeSrvVelocity_Response
    {
    -- | @brief Original uwvm_spot_bridge/srv/Velocity_Response.token field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvVelocity_Response_token :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Velocity_Response.nonce field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvVelocity_Response_nonce :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Velocity_Response.error field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvVelocity_Response_error :: Word32
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Velocity_Response.unknown field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvVelocity_Response_unknown :: Bool
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Velocity_Response.native_accepted field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvVelocity_Response_native_accepted :: Bool
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Velocity_Response.native_command_id field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvVelocity_Response_native_command_id :: Word32
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Uwvm_spot_bridgeSrvVelocity_Response :: Ros2Uwvm_spot_bridgeSrvVelocity_Response
defaultRos2Uwvm_spot_bridgeSrvVelocity_Response =
    Ros2Uwvm_spot_bridgeSrvVelocity_Response
        (0)
        (0)
        (0)
        (False)
        (False)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Uwvm_spot_bridgeSrvVelocity_ResponseCodecIdentity :: String
ros2Uwvm_spot_bridgeSrvVelocity_ResponseCodecIdentity =
    "UWVMROS1_031f37beeb5a03c4e65d4be8fd70bc680408d110a020e066bea593d86498401a"
-- | @brief Encode every field of complete uwvm_spot_bridge/srv/Velocity_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Uwvm_spot_bridgeSrvVelocity_Response :: Ros2Uwvm_spot_bridgeSrvVelocity_Response -> Either Word32 [Word8]
encodeRos2Uwvm_spot_bridgeSrvVelocity_Response value = do
    chunk0 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvVelocity_Response_token value))
    chunk1 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvVelocity_Response_nonce value))
    chunk2 <- Right (W.putNumber 4 (ros2Uwvm_spot_bridgeSrvVelocity_Response_error value))
    chunk3 <- Right (W.putBool (ros2Uwvm_spot_bridgeSrvVelocity_Response_unknown value))
    chunk4 <- Right (W.putBool (ros2Uwvm_spot_bridgeSrvVelocity_Response_native_accepted value))
    chunk5 <- Right (W.putNumber 4 (ros2Uwvm_spot_bridgeSrvVelocity_Response_native_command_id value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                , chunk5
                ]
    if length bytes > 26 then Left 22 else Right bytes
-- | @brief Read every field of nested uwvm_spot_bridge/srv/Velocity_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Uwvm_spot_bridgeSrvVelocity_Response :: W.Parser Ros2Uwvm_spot_bridgeSrvVelocity_Response
readRos2Uwvm_spot_bridgeSrvVelocity_Response = do
    value0 <- fromIntegral <$> W.number 8
    value1 <- fromIntegral <$> W.number 8
    value2 <- fromIntegral <$> W.number 4
    value3 <- W.boolean
    value4 <- W.boolean
    value5 <- fromIntegral <$> W.number 4
    let value =
            Ros2Uwvm_spot_bridgeSrvVelocity_Response
                value0
                value1
                value2
                value3
                value4
                value5
    case encodeRos2Uwvm_spot_bridgeSrvVelocity_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete uwvm_spot_bridge/srv/Velocity_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Uwvm_spot_bridgeSrvVelocity_Response :: [Word8] -> Either Word32 Ros2Uwvm_spot_bridgeSrvVelocity_Response
decodeRos2Uwvm_spot_bridgeSrvVelocity_Response bytes
    | length bytes < 26 || length bytes > 26 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Uwvm_spot_bridgeSrvVelocity_Response bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original uwvm_spot_bridge/srv/Feedback_Request value.
-- | @details Retain every original field in declaration order. Canonical extent 32..32 bytes.
data Ros2Uwvm_spot_bridgeSrvFeedback_Request = Ros2Uwvm_spot_bridgeSrvFeedback_Request
    {
    -- | @brief Original uwvm_spot_bridge/srv/Feedback_Request.token field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvFeedback_Request_token :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Feedback_Request.nonce field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvFeedback_Request_nonce :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Feedback_Request.budget_ns field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvFeedback_Request_budget_ns :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Feedback_Request.command_token field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvFeedback_Request_command_token :: Word64
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Uwvm_spot_bridgeSrvFeedback_Request :: Ros2Uwvm_spot_bridgeSrvFeedback_Request
defaultRos2Uwvm_spot_bridgeSrvFeedback_Request =
    Ros2Uwvm_spot_bridgeSrvFeedback_Request
        (0)
        (0)
        (0)
        (0)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Uwvm_spot_bridgeSrvFeedback_RequestCodecIdentity :: String
ros2Uwvm_spot_bridgeSrvFeedback_RequestCodecIdentity =
    "UWVMROS1_de64ce283f49f5c324912ec262f7d15b6fd828879c01039d455c765743c45ba3"
-- | @brief Encode every field of complete uwvm_spot_bridge/srv/Feedback_Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Uwvm_spot_bridgeSrvFeedback_Request :: Ros2Uwvm_spot_bridgeSrvFeedback_Request -> Either Word32 [Word8]
encodeRos2Uwvm_spot_bridgeSrvFeedback_Request value = do
    chunk0 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvFeedback_Request_token value))
    chunk1 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvFeedback_Request_nonce value))
    chunk2 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvFeedback_Request_budget_ns value))
    chunk3 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvFeedback_Request_command_token value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                ]
    if length bytes > 32 then Left 22 else Right bytes
-- | @brief Read every field of nested uwvm_spot_bridge/srv/Feedback_Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Uwvm_spot_bridgeSrvFeedback_Request :: W.Parser Ros2Uwvm_spot_bridgeSrvFeedback_Request
readRos2Uwvm_spot_bridgeSrvFeedback_Request = do
    value0 <- fromIntegral <$> W.number 8
    value1 <- fromIntegral <$> W.number 8
    value2 <- fromIntegral <$> W.number 8
    value3 <- fromIntegral <$> W.number 8
    let value =
            Ros2Uwvm_spot_bridgeSrvFeedback_Request
                value0
                value1
                value2
                value3
    case encodeRos2Uwvm_spot_bridgeSrvFeedback_Request value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete uwvm_spot_bridge/srv/Feedback_Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Uwvm_spot_bridgeSrvFeedback_Request :: [Word8] -> Either Word32 Ros2Uwvm_spot_bridgeSrvFeedback_Request
decodeRos2Uwvm_spot_bridgeSrvFeedback_Request bytes
    | length bytes < 32 || length bytes > 32 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Uwvm_spot_bridgeSrvFeedback_Request bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original uwvm_spot_bridge/srv/Feedback_Response value.
-- | @details Retain every original field in declaration order. Canonical extent 45..16429 bytes.
data Ros2Uwvm_spot_bridgeSrvFeedback_Response = Ros2Uwvm_spot_bridgeSrvFeedback_Response
    {
    -- | @brief Original uwvm_spot_bridge/srv/Feedback_Response.token field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvFeedback_Response_token :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Feedback_Response.nonce field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvFeedback_Response_nonce :: Word64
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Feedback_Response.error field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvFeedback_Response_error :: Word32
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Feedback_Response.unknown field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvFeedback_Response_unknown :: Bool
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Feedback_Response.native_command_id field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvFeedback_Response_native_command_id :: Word32
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Feedback_Response.has_full_body_feedback field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvFeedback_Response_has_full_body_feedback :: Bool
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Feedback_Response.full_body_status field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvFeedback_Response_full_body_status :: Word32
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Feedback_Response.has_mobility_feedback field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvFeedback_Response_has_mobility_feedback :: Bool
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Feedback_Response.mobility_status field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvFeedback_Response_mobility_status :: Word32
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Feedback_Response.feedback_kind field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvFeedback_Response_feedback_kind :: Word8
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Feedback_Response.has_subcommand_status field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvFeedback_Response_has_subcommand_status :: Bool
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Feedback_Response.subcommand_status field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Uwvm_spot_bridgeSrvFeedback_Response_subcommand_status :: Word32
    ,
    -- | @brief Original uwvm_spot_bridge/srv/Feedback_Response.native_proto field.
    -- | @details Original type uint8. Shape sequence; bound/count 16384 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Uwvm_spot_bridgeSrvFeedback_Response_native_proto :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Construct every declared original default with independent values.
-- | @details Nested defaults and fixed arrays retain their exact source semantics; no ROS authority
-- | is created.
-- | @return Complete immutable original value.
defaultRos2Uwvm_spot_bridgeSrvFeedback_Response :: Ros2Uwvm_spot_bridgeSrvFeedback_Response
defaultRos2Uwvm_spot_bridgeSrvFeedback_Response =
    Ros2Uwvm_spot_bridgeSrvFeedback_Response
        (0)
        (0)
        (0)
        (False)
        (0)
        (False)
        (0)
        (False)
        (0)
        (0)
        (False)
        (0)
        ([])
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Uwvm_spot_bridgeSrvFeedback_ResponseCodecIdentity :: String
ros2Uwvm_spot_bridgeSrvFeedback_ResponseCodecIdentity =
    "UWVMROS1_4a19efe7f64fe0d7f6f13abe8980fb55503d3b897af64abc73bbd236587adfe8"
-- | @brief Encode every field of complete uwvm_spot_bridge/srv/Feedback_Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Uwvm_spot_bridgeSrvFeedback_Response :: Ros2Uwvm_spot_bridgeSrvFeedback_Response -> Either Word32 [Word8]
encodeRos2Uwvm_spot_bridgeSrvFeedback_Response value = do
    chunk0 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvFeedback_Response_token value))
    chunk1 <- Right (W.putNumber 8 (ros2Uwvm_spot_bridgeSrvFeedback_Response_nonce value))
    chunk2 <- Right (W.putNumber 4 (ros2Uwvm_spot_bridgeSrvFeedback_Response_error value))
    chunk3 <- Right (W.putBool (ros2Uwvm_spot_bridgeSrvFeedback_Response_unknown value))
    chunk4 <- Right (W.putNumber 4 (ros2Uwvm_spot_bridgeSrvFeedback_Response_native_command_id value))
    chunk5 <- Right (W.putBool (ros2Uwvm_spot_bridgeSrvFeedback_Response_has_full_body_feedback value))
    chunk6 <- Right (W.putNumber 4 (ros2Uwvm_spot_bridgeSrvFeedback_Response_full_body_status value))
    chunk7 <- Right (W.putBool (ros2Uwvm_spot_bridgeSrvFeedback_Response_has_mobility_feedback value))
    chunk8 <- Right (W.putNumber 4 (ros2Uwvm_spot_bridgeSrvFeedback_Response_mobility_status value))
    chunk9 <- Right (W.putNumber 1 (ros2Uwvm_spot_bridgeSrvFeedback_Response_feedback_kind value))
    chunk10 <- Right (W.putBool (ros2Uwvm_spot_bridgeSrvFeedback_Response_has_subcommand_status value))
    chunk11 <- Right (W.putNumber 4 (ros2Uwvm_spot_bridgeSrvFeedback_Response_subcommand_status value))
    if length (ros2Uwvm_spot_bridgeSrvFeedback_Response_native_proto value) <= 16384 then Right () else Left 22
    item12 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Uwvm_spot_bridgeSrvFeedback_Response_native_proto value)
    chunk12 <- Right (
        W.putNumber 4 (length (ros2Uwvm_spot_bridgeSrvFeedback_Response_native_proto value))
        ++ item12
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
                , chunk8
                , chunk9
                , chunk10
                , chunk11
                , chunk12
                ]
    if length bytes > 16429 then Left 22 else Right bytes
-- | @brief Read every field of nested uwvm_spot_bridge/srv/Feedback_Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Uwvm_spot_bridgeSrvFeedback_Response :: W.Parser Ros2Uwvm_spot_bridgeSrvFeedback_Response
readRos2Uwvm_spot_bridgeSrvFeedback_Response = do
    value0 <- fromIntegral <$> W.number 8
    value1 <- fromIntegral <$> W.number 8
    value2 <- fromIntegral <$> W.number 4
    value3 <- W.boolean
    value4 <- fromIntegral <$> W.number 4
    value5 <- W.boolean
    value6 <- fromIntegral <$> W.number 4
    value7 <- W.boolean
    value8 <- fromIntegral <$> W.number 4
    value9 <- fromIntegral <$> W.number 1
    value10 <- W.boolean
    value11 <- fromIntegral <$> W.number 4
    count12 <- W.number 4
    if count12 > 16384 then W.reject else pure ()
    value12 <- replicateM (fromIntegral count12) (fromIntegral <$> W.number 1)
    let value =
            Ros2Uwvm_spot_bridgeSrvFeedback_Response
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
    case encodeRos2Uwvm_spot_bridgeSrvFeedback_Response value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete uwvm_spot_bridge/srv/Feedback_Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Uwvm_spot_bridgeSrvFeedback_Response :: [Word8] -> Either Word32 Ros2Uwvm_spot_bridgeSrvFeedback_Response
decodeRos2Uwvm_spot_bridgeSrvFeedback_Response bytes
    | length bytes < 45 || length bytes > 16429 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Uwvm_spot_bridgeSrvFeedback_Response bytes
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

