-- | @file Records.hs
-- @brief Complete original Unitree ROS 2 Haskell records and codecs.
-- @details Owned immutable values preserve all fields; constructing them grants no ROS authority.
module Unitree.Ros2.Records where
import Data.Int
import Data.Word
import Data.Bits
import GHC.Float
import Control.Monad (replicateM)
import qualified Unitree.Wire as W

-- | @brief Complete original unitree_api/msg/RequestIdentity value.
-- | @details Retain every original field in declaration order. Canonical extent 16..16 bytes.
data Ros2Unitree_apiMsgRequestIdentity = Ros2Unitree_apiMsgRequestIdentity
    {
    -- | @brief Original unitree_api/msg/RequestIdentity.id field.
    -- | @details Original type int64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_apiMsgRequestIdentity_id :: Int64
    ,
    -- | @brief Original unitree_api/msg/RequestIdentity.api_id field.
    -- | @details Original type int64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_apiMsgRequestIdentity_api_id :: Int64
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_apiMsgRequestIdentityCodecIdentity :: String
ros2Unitree_apiMsgRequestIdentityCodecIdentity =
    "UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2"
-- | @brief Encode every field of complete unitree_api/msg/RequestIdentity.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_apiMsgRequestIdentity :: Ros2Unitree_apiMsgRequestIdentity -> Either Word32 [Word8]
encodeRos2Unitree_apiMsgRequestIdentity value = do
    chunk0 <- Right (W.putNumber 8 (ros2Unitree_apiMsgRequestIdentity_id value))
    chunk1 <- Right (W.putNumber 8 (ros2Unitree_apiMsgRequestIdentity_api_id value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 16 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_api/msg/RequestIdentity.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_apiMsgRequestIdentity :: W.Parser Ros2Unitree_apiMsgRequestIdentity
readRos2Unitree_apiMsgRequestIdentity = do
    value0 <- fromIntegral <$> W.number 8
    value1 <- fromIntegral <$> W.number 8
    let value =
            Ros2Unitree_apiMsgRequestIdentity
                value0
                value1
    case encodeRos2Unitree_apiMsgRequestIdentity value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_api/msg/RequestIdentity.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_apiMsgRequestIdentity :: [Word8] -> Either Word32 Ros2Unitree_apiMsgRequestIdentity
decodeRos2Unitree_apiMsgRequestIdentity bytes
    | length bytes < 16 || length bytes > 16 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_apiMsgRequestIdentity bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_api/msg/RequestLease value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Unitree_apiMsgRequestLease = Ros2Unitree_apiMsgRequestLease
    {
    -- | @brief Original unitree_api/msg/RequestLease.id field.
    -- | @details Original type int64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_apiMsgRequestLease_id :: Int64
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_apiMsgRequestLeaseCodecIdentity :: String
ros2Unitree_apiMsgRequestLeaseCodecIdentity =
    "UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e"
-- | @brief Encode every field of complete unitree_api/msg/RequestLease.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_apiMsgRequestLease :: Ros2Unitree_apiMsgRequestLease -> Either Word32 [Word8]
encodeRos2Unitree_apiMsgRequestLease value = do
    chunk0 <- Right (W.putNumber 8 (ros2Unitree_apiMsgRequestLease_id value))
    let bytes =
            concat
                [ chunk0
                ]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_api/msg/RequestLease.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_apiMsgRequestLease :: W.Parser Ros2Unitree_apiMsgRequestLease
readRos2Unitree_apiMsgRequestLease = do
    value0 <- fromIntegral <$> W.number 8
    let value =
            Ros2Unitree_apiMsgRequestLease
                value0
    case encodeRos2Unitree_apiMsgRequestLease value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_api/msg/RequestLease.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_apiMsgRequestLease :: [Word8] -> Either Word32 Ros2Unitree_apiMsgRequestLease
decodeRos2Unitree_apiMsgRequestLease bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_apiMsgRequestLease bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_api/msg/RequestPolicy value.
-- | @details Retain every original field in declaration order. Canonical extent 5..5 bytes.
data Ros2Unitree_apiMsgRequestPolicy = Ros2Unitree_apiMsgRequestPolicy
    {
    -- | @brief Original unitree_api/msg/RequestPolicy.priority field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_apiMsgRequestPolicy_priority :: Int32
    ,
    -- | @brief Original unitree_api/msg/RequestPolicy.noreply field.
    -- | @details Original type bool. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_apiMsgRequestPolicy_noreply :: Bool
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_apiMsgRequestPolicyCodecIdentity :: String
ros2Unitree_apiMsgRequestPolicyCodecIdentity =
    "UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8"
-- | @brief Encode every field of complete unitree_api/msg/RequestPolicy.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_apiMsgRequestPolicy :: Ros2Unitree_apiMsgRequestPolicy -> Either Word32 [Word8]
encodeRos2Unitree_apiMsgRequestPolicy value = do
    chunk0 <- Right (W.putNumber 4 (ros2Unitree_apiMsgRequestPolicy_priority value))
    chunk1 <- Right (W.putBool (ros2Unitree_apiMsgRequestPolicy_noreply value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 5 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_api/msg/RequestPolicy.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_apiMsgRequestPolicy :: W.Parser Ros2Unitree_apiMsgRequestPolicy
readRos2Unitree_apiMsgRequestPolicy = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- W.boolean
    let value =
            Ros2Unitree_apiMsgRequestPolicy
                value0
                value1
    case encodeRos2Unitree_apiMsgRequestPolicy value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_api/msg/RequestPolicy.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_apiMsgRequestPolicy :: [Word8] -> Either Word32 Ros2Unitree_apiMsgRequestPolicy
decodeRos2Unitree_apiMsgRequestPolicy bytes
    | length bytes < 5 || length bytes > 5 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_apiMsgRequestPolicy bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_api/msg/RequestHeader value.
-- | @details Retain every original field in declaration order. Canonical extent 29..29 bytes.
data Ros2Unitree_apiMsgRequestHeader = Ros2Unitree_apiMsgRequestHeader
    {
    -- | @brief Original unitree_api/msg/RequestHeader.identity field.
    -- | @details Original type unitree_api/msg/RequestIdentity. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Unitree_apiMsgRequestHeader_identity :: Ros2Unitree_apiMsgRequestIdentity
    ,
    -- | @brief Original unitree_api/msg/RequestHeader.lease field.
    -- | @details Original type unitree_api/msg/RequestLease. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Unitree_apiMsgRequestHeader_lease :: Ros2Unitree_apiMsgRequestLease
    ,
    -- | @brief Original unitree_api/msg/RequestHeader.policy field.
    -- | @details Original type unitree_api/msg/RequestPolicy. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Unitree_apiMsgRequestHeader_policy :: Ros2Unitree_apiMsgRequestPolicy
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_apiMsgRequestHeaderCodecIdentity :: String
ros2Unitree_apiMsgRequestHeaderCodecIdentity =
    "UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0"
-- | @brief Encode every field of complete unitree_api/msg/RequestHeader.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_apiMsgRequestHeader :: Ros2Unitree_apiMsgRequestHeader -> Either Word32 [Word8]
encodeRos2Unitree_apiMsgRequestHeader value = do
    chunk0 <- encodeRos2Unitree_apiMsgRequestIdentity (ros2Unitree_apiMsgRequestHeader_identity value)
    chunk1 <- encodeRos2Unitree_apiMsgRequestLease (ros2Unitree_apiMsgRequestHeader_lease value)
    chunk2 <- encodeRos2Unitree_apiMsgRequestPolicy (ros2Unitree_apiMsgRequestHeader_policy value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 29 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_api/msg/RequestHeader.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_apiMsgRequestHeader :: W.Parser Ros2Unitree_apiMsgRequestHeader
readRos2Unitree_apiMsgRequestHeader = do
    value0 <- readRos2Unitree_apiMsgRequestIdentity
    value1 <- readRos2Unitree_apiMsgRequestLease
    value2 <- readRos2Unitree_apiMsgRequestPolicy
    let value =
            Ros2Unitree_apiMsgRequestHeader
                value0
                value1
                value2
    case encodeRos2Unitree_apiMsgRequestHeader value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_api/msg/RequestHeader.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_apiMsgRequestHeader :: [Word8] -> Either Word32 Ros2Unitree_apiMsgRequestHeader
decodeRos2Unitree_apiMsgRequestHeader bytes
    | length bytes < 29 || length bytes > 29 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_apiMsgRequestHeader bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_api/msg/Request value.
-- | @details Retain every original field in declaration order. Canonical extent 37..4133 bytes.
data Ros2Unitree_apiMsgRequest = Ros2Unitree_apiMsgRequest
    {
    -- | @brief Original unitree_api/msg/Request.header field.
    -- | @details Original type unitree_api/msg/RequestHeader. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Unitree_apiMsgRequest_header :: Ros2Unitree_apiMsgRequestHeader
    ,
    -- | @brief Original unitree_api/msg/Request.parameter field.
    -- | @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_apiMsgRequest_parameter :: [Word8]
    ,
    -- | @brief Original unitree_api/msg/Request.binary field.
    -- | @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_apiMsgRequest_binary :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_apiMsgRequestCodecIdentity :: String
ros2Unitree_apiMsgRequestCodecIdentity =
    "UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192"
-- | @brief Encode every field of complete unitree_api/msg/Request.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_apiMsgRequest :: Ros2Unitree_apiMsgRequest -> Either Word32 [Word8]
encodeRos2Unitree_apiMsgRequest value = do
    chunk0 <- encodeRos2Unitree_apiMsgRequestHeader (ros2Unitree_apiMsgRequest_header value)
    chunk1 <- W.putText 2048 (ros2Unitree_apiMsgRequest_parameter value)
    if length (ros2Unitree_apiMsgRequest_binary value) <= 2048 then Right () else Left 22
    item2 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_apiMsgRequest_binary value)
    chunk2 <- Right (
        W.putNumber 4 (length (ros2Unitree_apiMsgRequest_binary value))
        ++ item2
        )
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 4133 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_api/msg/Request.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_apiMsgRequest :: W.Parser Ros2Unitree_apiMsgRequest
readRos2Unitree_apiMsgRequest = do
    value0 <- readRos2Unitree_apiMsgRequestHeader
    value1 <- W.text 2048
    count2 <- W.number 4
    if count2 > 2048 then W.reject else pure ()
    value2 <- replicateM (fromIntegral count2) (fromIntegral <$> W.number 1)
    let value =
            Ros2Unitree_apiMsgRequest
                value0
                value1
                value2
    case encodeRos2Unitree_apiMsgRequest value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_api/msg/Request.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_apiMsgRequest :: [Word8] -> Either Word32 Ros2Unitree_apiMsgRequest
decodeRos2Unitree_apiMsgRequest bytes
    | length bytes < 37 || length bytes > 4133 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_apiMsgRequest bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_api/msg/ResponseStatus value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Unitree_apiMsgResponseStatus = Ros2Unitree_apiMsgResponseStatus
    {
    -- | @brief Original unitree_api/msg/ResponseStatus.code field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_apiMsgResponseStatus_code :: Int32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_apiMsgResponseStatusCodecIdentity :: String
ros2Unitree_apiMsgResponseStatusCodecIdentity =
    "UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1"
-- | @brief Encode every field of complete unitree_api/msg/ResponseStatus.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_apiMsgResponseStatus :: Ros2Unitree_apiMsgResponseStatus -> Either Word32 [Word8]
encodeRos2Unitree_apiMsgResponseStatus value = do
    chunk0 <- Right (W.putNumber 4 (ros2Unitree_apiMsgResponseStatus_code value))
    let bytes =
            concat
                [ chunk0
                ]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_api/msg/ResponseStatus.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_apiMsgResponseStatus :: W.Parser Ros2Unitree_apiMsgResponseStatus
readRos2Unitree_apiMsgResponseStatus = do
    value0 <- fromIntegral <$> W.number 4
    let value =
            Ros2Unitree_apiMsgResponseStatus
                value0
    case encodeRos2Unitree_apiMsgResponseStatus value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_api/msg/ResponseStatus.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_apiMsgResponseStatus :: [Word8] -> Either Word32 Ros2Unitree_apiMsgResponseStatus
decodeRos2Unitree_apiMsgResponseStatus bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_apiMsgResponseStatus bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_api/msg/ResponseHeader value.
-- | @details Retain every original field in declaration order. Canonical extent 20..20 bytes.
data Ros2Unitree_apiMsgResponseHeader = Ros2Unitree_apiMsgResponseHeader
    {
    -- | @brief Original unitree_api/msg/ResponseHeader.identity field.
    -- | @details Original type unitree_api/msg/RequestIdentity. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Unitree_apiMsgResponseHeader_identity :: Ros2Unitree_apiMsgRequestIdentity
    ,
    -- | @brief Original unitree_api/msg/ResponseHeader.status field.
    -- | @details Original type unitree_api/msg/ResponseStatus. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Unitree_apiMsgResponseHeader_status :: Ros2Unitree_apiMsgResponseStatus
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_apiMsgResponseHeaderCodecIdentity :: String
ros2Unitree_apiMsgResponseHeaderCodecIdentity =
    "UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0"
-- | @brief Encode every field of complete unitree_api/msg/ResponseHeader.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_apiMsgResponseHeader :: Ros2Unitree_apiMsgResponseHeader -> Either Word32 [Word8]
encodeRos2Unitree_apiMsgResponseHeader value = do
    chunk0 <- encodeRos2Unitree_apiMsgRequestIdentity (ros2Unitree_apiMsgResponseHeader_identity value)
    chunk1 <- encodeRos2Unitree_apiMsgResponseStatus (ros2Unitree_apiMsgResponseHeader_status value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 20 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_api/msg/ResponseHeader.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_apiMsgResponseHeader :: W.Parser Ros2Unitree_apiMsgResponseHeader
readRos2Unitree_apiMsgResponseHeader = do
    value0 <- readRos2Unitree_apiMsgRequestIdentity
    value1 <- readRos2Unitree_apiMsgResponseStatus
    let value =
            Ros2Unitree_apiMsgResponseHeader
                value0
                value1
    case encodeRos2Unitree_apiMsgResponseHeader value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_api/msg/ResponseHeader.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_apiMsgResponseHeader :: [Word8] -> Either Word32 Ros2Unitree_apiMsgResponseHeader
decodeRos2Unitree_apiMsgResponseHeader bytes
    | length bytes < 20 || length bytes > 20 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_apiMsgResponseHeader bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_api/msg/Response value.
-- | @details Retain every original field in declaration order. Canonical extent 28..2108 bytes.
data Ros2Unitree_apiMsgResponse = Ros2Unitree_apiMsgResponse
    {
    -- | @brief Original unitree_api/msg/Response.header field.
    -- | @details Original type unitree_api/msg/ResponseHeader. Preserve declared units, frame,
    -- | signedness and field order. Backing storage belongs to this value; constructing or copying
    -- | it creates no native ROS owner.
      ros2Unitree_apiMsgResponse_header :: Ros2Unitree_apiMsgResponseHeader
    ,
    -- | @brief Original unitree_api/msg/Response.data field.
    -- | @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_apiMsgResponse_data :: [Word8]
    ,
    -- | @brief Original unitree_api/msg/Response.binary field.
    -- | @details Original type int8. Shape sequence; bound/count 32 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_apiMsgResponse_binary :: [Int8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_apiMsgResponseCodecIdentity :: String
ros2Unitree_apiMsgResponseCodecIdentity =
    "UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f"
-- | @brief Encode every field of complete unitree_api/msg/Response.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_apiMsgResponse :: Ros2Unitree_apiMsgResponse -> Either Word32 [Word8]
encodeRos2Unitree_apiMsgResponse value = do
    chunk0 <- encodeRos2Unitree_apiMsgResponseHeader (ros2Unitree_apiMsgResponse_header value)
    chunk1 <- W.putText 2048 (ros2Unitree_apiMsgResponse_data value)
    if length (ros2Unitree_apiMsgResponse_binary value) <= 32 then Right () else Left 22
    item2 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_apiMsgResponse_binary value)
    chunk2 <- Right (
        W.putNumber 4 (length (ros2Unitree_apiMsgResponse_binary value))
        ++ item2
        )
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 2108 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_api/msg/Response.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_apiMsgResponse :: W.Parser Ros2Unitree_apiMsgResponse
readRos2Unitree_apiMsgResponse = do
    value0 <- readRos2Unitree_apiMsgResponseHeader
    value1 <- W.text 2048
    count2 <- W.number 4
    if count2 > 32 then W.reject else pure ()
    value2 <- replicateM (fromIntegral count2) (fromIntegral <$> W.number 1)
    let value =
            Ros2Unitree_apiMsgResponse
                value0
                value1
                value2
    case encodeRos2Unitree_apiMsgResponse value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_api/msg/Response.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_apiMsgResponse :: [Word8] -> Either Word32 Ros2Unitree_apiMsgResponse
decodeRos2Unitree_apiMsgResponse bytes
    | length bytes < 28 || length bytes > 2108 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_apiMsgResponse bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/AudioData value.
-- | @details Retain every original field in declaration order. Canonical extent 12..2060 bytes.
data Ros2Unitree_goMsgAudioData = Ros2Unitree_goMsgAudioData
    {
    -- | @brief Original unitree_go/msg/AudioData.time_frame field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgAudioData_time_frame :: Word64
    ,
    -- | @brief Original unitree_go/msg/AudioData.data field.
    -- | @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgAudioData_data :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgAudioDataCodecIdentity :: String
ros2Unitree_goMsgAudioDataCodecIdentity =
    "UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe"
-- | @brief Encode every field of complete unitree_go/msg/AudioData.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgAudioData :: Ros2Unitree_goMsgAudioData -> Either Word32 [Word8]
encodeRos2Unitree_goMsgAudioData value = do
    chunk0 <- Right (W.putNumber 8 (ros2Unitree_goMsgAudioData_time_frame value))
    if length (ros2Unitree_goMsgAudioData_data value) <= 2048 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_goMsgAudioData_data value)
    chunk1 <- Right (
        W.putNumber 4 (length (ros2Unitree_goMsgAudioData_data value))
        ++ item1
        )
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 2060 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/AudioData.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgAudioData :: W.Parser Ros2Unitree_goMsgAudioData
readRos2Unitree_goMsgAudioData = do
    value0 <- fromIntegral <$> W.number 8
    count1 <- W.number 4
    if count1 > 2048 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (fromIntegral <$> W.number 1)
    let value =
            Ros2Unitree_goMsgAudioData
                value0
                value1
    case encodeRos2Unitree_goMsgAudioData value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/AudioData.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgAudioData :: [Word8] -> Either Word32 Ros2Unitree_goMsgAudioData
decodeRos2Unitree_goMsgAudioData bytes
    | length bytes < 12 || length bytes > 2060 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgAudioData bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/BmsCmd value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Unitree_goMsgBmsCmd = Ros2Unitree_goMsgBmsCmd
    {
    -- | @brief Original unitree_go/msg/BmsCmd.off field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgBmsCmd_off :: Word8
    ,
    -- | @brief Original unitree_go/msg/BmsCmd.reserve field.
    -- | @details Original type uint8. Shape array; bound/count 3 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Unitree_goMsgBmsCmd_reserve :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgBmsCmdCodecIdentity :: String
ros2Unitree_goMsgBmsCmdCodecIdentity =
    "UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339"
-- | @brief Encode every field of complete unitree_go/msg/BmsCmd.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgBmsCmd :: Ros2Unitree_goMsgBmsCmd -> Either Word32 [Word8]
encodeRos2Unitree_goMsgBmsCmd value = do
    chunk0 <- Right (W.putNumber 1 (ros2Unitree_goMsgBmsCmd_off value))
    if length (ros2Unitree_goMsgBmsCmd_reserve value) == 3 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_goMsgBmsCmd_reserve value)
    chunk1 <- Right item1
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/BmsCmd.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgBmsCmd :: W.Parser Ros2Unitree_goMsgBmsCmd
readRos2Unitree_goMsgBmsCmd = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- replicateM 3 (fromIntegral <$> W.number 1)
    let value =
            Ros2Unitree_goMsgBmsCmd
                value0
                value1
    case encodeRos2Unitree_goMsgBmsCmd value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/BmsCmd.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgBmsCmd :: [Word8] -> Either Word32 Ros2Unitree_goMsgBmsCmd
decodeRos2Unitree_goMsgBmsCmd bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgBmsCmd bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/BmsState value.
-- | @details Retain every original field in declaration order. Canonical extent 44..44 bytes.
data Ros2Unitree_goMsgBmsState = Ros2Unitree_goMsgBmsState
    {
    -- | @brief Original unitree_go/msg/BmsState.version_high field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgBmsState_version_high :: Word8
    ,
    -- | @brief Original unitree_go/msg/BmsState.version_low field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgBmsState_version_low :: Word8
    ,
    -- | @brief Original unitree_go/msg/BmsState.status field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgBmsState_status :: Word8
    ,
    -- | @brief Original unitree_go/msg/BmsState.soc field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgBmsState_soc :: Word8
    ,
    -- | @brief Original unitree_go/msg/BmsState.current field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgBmsState_current :: Int32
    ,
    -- | @brief Original unitree_go/msg/BmsState.cycle field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgBmsState_cycle :: Word16
    ,
    -- | @brief Original unitree_go/msg/BmsState.bq_ntc field.
    -- | @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Unitree_goMsgBmsState_bq_ntc :: [Int8]
    ,
    -- | @brief Original unitree_go/msg/BmsState.mcu_ntc field.
    -- | @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Unitree_goMsgBmsState_mcu_ntc :: [Int8]
    ,
    -- | @brief Original unitree_go/msg/BmsState.cell_vol field.
    -- | @details Original type uint16. Shape array; bound/count 15 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgBmsState_cell_vol :: [Word16]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgBmsStateCodecIdentity :: String
ros2Unitree_goMsgBmsStateCodecIdentity =
    "UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0"
-- | @brief Encode every field of complete unitree_go/msg/BmsState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgBmsState :: Ros2Unitree_goMsgBmsState -> Either Word32 [Word8]
encodeRos2Unitree_goMsgBmsState value = do
    chunk0 <- Right (W.putNumber 1 (ros2Unitree_goMsgBmsState_version_high value))
    chunk1 <- Right (W.putNumber 1 (ros2Unitree_goMsgBmsState_version_low value))
    chunk2 <- Right (W.putNumber 1 (ros2Unitree_goMsgBmsState_status value))
    chunk3 <- Right (W.putNumber 1 (ros2Unitree_goMsgBmsState_soc value))
    chunk4 <- Right (W.putNumber 4 (ros2Unitree_goMsgBmsState_current value))
    chunk5 <- Right (W.putNumber 2 (ros2Unitree_goMsgBmsState_cycle value))
    if length (ros2Unitree_goMsgBmsState_bq_ntc value) == 2 then Right () else Left 22
    item6 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_goMsgBmsState_bq_ntc value)
    chunk6 <- Right item6
    if length (ros2Unitree_goMsgBmsState_mcu_ntc value) == 2 then Right () else Left 22
    item7 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_goMsgBmsState_mcu_ntc value)
    chunk7 <- Right item7
    if length (ros2Unitree_goMsgBmsState_cell_vol value) == 15 then Right () else Left 22
    item8 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 2 (element)))
            (ros2Unitree_goMsgBmsState_cell_vol value)
    chunk8 <- Right item8
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
                ]
    if length bytes > 44 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/BmsState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgBmsState :: W.Parser Ros2Unitree_goMsgBmsState
readRos2Unitree_goMsgBmsState = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- fromIntegral <$> W.number 1
    value4 <- fromIntegral <$> W.number 4
    value5 <- fromIntegral <$> W.number 2
    value6 <- replicateM 2 (fromIntegral <$> W.number 1)
    value7 <- replicateM 2 (fromIntegral <$> W.number 1)
    value8 <- replicateM 15 (fromIntegral <$> W.number 2)
    let value =
            Ros2Unitree_goMsgBmsState
                value0
                value1
                value2
                value3
                value4
                value5
                value6
                value7
                value8
    case encodeRos2Unitree_goMsgBmsState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/BmsState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgBmsState :: [Word8] -> Either Word32 Ros2Unitree_goMsgBmsState
decodeRos2Unitree_goMsgBmsState bytes
    | length bytes < 44 || length bytes > 44 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgBmsState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/Error value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Unitree_goMsgError = Ros2Unitree_goMsgError
    {
    -- | @brief Original unitree_go/msg/Error.source field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgError_source :: Word32
    ,
    -- | @brief Original unitree_go/msg/Error.state field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgError_state :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgErrorCodecIdentity :: String
ros2Unitree_goMsgErrorCodecIdentity =
    "UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd"
-- | @brief Encode every field of complete unitree_go/msg/Error.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgError :: Ros2Unitree_goMsgError -> Either Word32 [Word8]
encodeRos2Unitree_goMsgError value = do
    chunk0 <- Right (W.putNumber 4 (ros2Unitree_goMsgError_source value))
    chunk1 <- Right (W.putNumber 4 (ros2Unitree_goMsgError_state value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/Error.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgError :: W.Parser Ros2Unitree_goMsgError
readRos2Unitree_goMsgError = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value =
            Ros2Unitree_goMsgError
                value0
                value1
    case encodeRos2Unitree_goMsgError value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/Error.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgError :: [Word8] -> Either Word32 Ros2Unitree_goMsgError
decodeRos2Unitree_goMsgError bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgError bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/Go2FrontVideoData value.
-- | @details Retain every original field in declaration order. Canonical extent 20..6164 bytes.
data Ros2Unitree_goMsgGo2FrontVideoData = Ros2Unitree_goMsgGo2FrontVideoData
    {
    -- | @brief Original unitree_go/msg/Go2FrontVideoData.time_frame field.
    -- | @details Original type uint64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgGo2FrontVideoData_time_frame :: Word64
    ,
    -- | @brief Original unitree_go/msg/Go2FrontVideoData.video720p field.
    -- | @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgGo2FrontVideoData_video720p :: [Word8]
    ,
    -- | @brief Original unitree_go/msg/Go2FrontVideoData.video360p field.
    -- | @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgGo2FrontVideoData_video360p :: [Word8]
    ,
    -- | @brief Original unitree_go/msg/Go2FrontVideoData.video180p field.
    -- | @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgGo2FrontVideoData_video180p :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgGo2FrontVideoDataCodecIdentity :: String
ros2Unitree_goMsgGo2FrontVideoDataCodecIdentity =
    "UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad"
-- | @brief Encode every field of complete unitree_go/msg/Go2FrontVideoData.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgGo2FrontVideoData :: Ros2Unitree_goMsgGo2FrontVideoData -> Either Word32 [Word8]
encodeRos2Unitree_goMsgGo2FrontVideoData value = do
    chunk0 <- Right (W.putNumber 8 (ros2Unitree_goMsgGo2FrontVideoData_time_frame value))
    if length (ros2Unitree_goMsgGo2FrontVideoData_video720p value) <= 2048 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_goMsgGo2FrontVideoData_video720p value)
    chunk1 <- Right (
        W.putNumber 4 (length (ros2Unitree_goMsgGo2FrontVideoData_video720p value))
        ++ item1
        )
    if length (ros2Unitree_goMsgGo2FrontVideoData_video360p value) <= 2048 then Right () else Left 22
    item2 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_goMsgGo2FrontVideoData_video360p value)
    chunk2 <- Right (
        W.putNumber 4 (length (ros2Unitree_goMsgGo2FrontVideoData_video360p value))
        ++ item2
        )
    if length (ros2Unitree_goMsgGo2FrontVideoData_video180p value) <= 2048 then Right () else Left 22
    item3 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_goMsgGo2FrontVideoData_video180p value)
    chunk3 <- Right (
        W.putNumber 4 (length (ros2Unitree_goMsgGo2FrontVideoData_video180p value))
        ++ item3
        )
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                ]
    if length bytes > 6164 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/Go2FrontVideoData.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgGo2FrontVideoData :: W.Parser Ros2Unitree_goMsgGo2FrontVideoData
readRos2Unitree_goMsgGo2FrontVideoData = do
    value0 <- fromIntegral <$> W.number 8
    count1 <- W.number 4
    if count1 > 2048 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (fromIntegral <$> W.number 1)
    count2 <- W.number 4
    if count2 > 2048 then W.reject else pure ()
    value2 <- replicateM (fromIntegral count2) (fromIntegral <$> W.number 1)
    count3 <- W.number 4
    if count3 > 2048 then W.reject else pure ()
    value3 <- replicateM (fromIntegral count3) (fromIntegral <$> W.number 1)
    let value =
            Ros2Unitree_goMsgGo2FrontVideoData
                value0
                value1
                value2
                value3
    case encodeRos2Unitree_goMsgGo2FrontVideoData value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/Go2FrontVideoData.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgGo2FrontVideoData :: [Word8] -> Either Word32 Ros2Unitree_goMsgGo2FrontVideoData
decodeRos2Unitree_goMsgGo2FrontVideoData bytes
    | length bytes < 20 || length bytes > 6164 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgGo2FrontVideoData bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/HeightMap value.
-- | @details Retain every original field in declaration order. Canonical extent 36..2212 bytes.
data Ros2Unitree_goMsgHeightMap = Ros2Unitree_goMsgHeightMap
    {
    -- | @brief Original unitree_go/msg/HeightMap.stamp field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgHeightMap_stamp :: Double
    ,
    -- | @brief Original unitree_go/msg/HeightMap.frame_id field.
    -- | @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgHeightMap_frame_id :: [Word8]
    ,
    -- | @brief Original unitree_go/msg/HeightMap.resolution field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgHeightMap_resolution :: Float
    ,
    -- | @brief Original unitree_go/msg/HeightMap.width field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgHeightMap_width :: Word32
    ,
    -- | @brief Original unitree_go/msg/HeightMap.height field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgHeightMap_height :: Word32
    ,
    -- | @brief Original unitree_go/msg/HeightMap.origin field.
    -- | @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgHeightMap_origin :: [Float]
    ,
    -- | @brief Original unitree_go/msg/HeightMap.data field.
    -- | @details Original type float32. Shape sequence; bound/count 32 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgHeightMap_data :: [Float]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgHeightMapCodecIdentity :: String
ros2Unitree_goMsgHeightMapCodecIdentity =
    "UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d"
-- | @brief Encode every field of complete unitree_go/msg/HeightMap.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgHeightMap :: Ros2Unitree_goMsgHeightMap -> Either Word32 [Word8]
encodeRos2Unitree_goMsgHeightMap value = do
    chunk0 <- finite8 (ros2Unitree_goMsgHeightMap_stamp value) castDoubleToWord64
    chunk1 <- W.putText 2048 (ros2Unitree_goMsgHeightMap_frame_id value)
    chunk2 <- finite4 (ros2Unitree_goMsgHeightMap_resolution value) castFloatToWord32
    chunk3 <- Right (W.putNumber 4 (ros2Unitree_goMsgHeightMap_width value))
    chunk4 <- Right (W.putNumber 4 (ros2Unitree_goMsgHeightMap_height value))
    if length (ros2Unitree_goMsgHeightMap_origin value) == 2 then Right () else Left 22
    item5 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_goMsgHeightMap_origin value)
    chunk5 <- Right item5
    if length (ros2Unitree_goMsgHeightMap_data value) <= 32 then Right () else Left 22
    item6 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_goMsgHeightMap_data value)
    chunk6 <- Right (
        W.putNumber 4 (length (ros2Unitree_goMsgHeightMap_data value))
        ++ item6
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
                ]
    if length bytes > 2212 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/HeightMap.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgHeightMap :: W.Parser Ros2Unitree_goMsgHeightMap
readRos2Unitree_goMsgHeightMap = do
    value0 <- castWord64ToDouble <$> W.number 8
    value1 <- W.text 2048
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- fromIntegral <$> W.number 4
    value4 <- fromIntegral <$> W.number 4
    value5 <- replicateM 2 (castWord32ToFloat . fromIntegral <$> W.number 4)
    count6 <- W.number 4
    if count6 > 32 then W.reject else pure ()
    value6 <- replicateM (fromIntegral count6) (castWord32ToFloat . fromIntegral <$> W.number 4)
    let value =
            Ros2Unitree_goMsgHeightMap
                value0
                value1
                value2
                value3
                value4
                value5
                value6
    case encodeRos2Unitree_goMsgHeightMap value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/HeightMap.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgHeightMap :: [Word8] -> Either Word32 Ros2Unitree_goMsgHeightMap
decodeRos2Unitree_goMsgHeightMap bytes
    | length bytes < 36 || length bytes > 2212 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgHeightMap bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/IMUState value.
-- | @details Retain every original field in declaration order. Canonical extent 53..53 bytes.
data Ros2Unitree_goMsgIMUState = Ros2Unitree_goMsgIMUState
    {
    -- | @brief Original unitree_go/msg/IMUState.quaternion field.
    -- | @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgIMUState_quaternion :: [Float]
    ,
    -- | @brief Original unitree_go/msg/IMUState.gyroscope field.
    -- | @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgIMUState_gyroscope :: [Float]
    ,
    -- | @brief Original unitree_go/msg/IMUState.accelerometer field.
    -- | @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgIMUState_accelerometer :: [Float]
    ,
    -- | @brief Original unitree_go/msg/IMUState.rpy field.
    -- | @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgIMUState_rpy :: [Float]
    ,
    -- | @brief Original unitree_go/msg/IMUState.temperature field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgIMUState_temperature :: Int8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgIMUStateCodecIdentity :: String
ros2Unitree_goMsgIMUStateCodecIdentity =
    "UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc"
-- | @brief Encode every field of complete unitree_go/msg/IMUState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgIMUState :: Ros2Unitree_goMsgIMUState -> Either Word32 [Word8]
encodeRos2Unitree_goMsgIMUState value = do
    if length (ros2Unitree_goMsgIMUState_quaternion value) == 4 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_goMsgIMUState_quaternion value)
    chunk0 <- Right item0
    if length (ros2Unitree_goMsgIMUState_gyroscope value) == 3 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_goMsgIMUState_gyroscope value)
    chunk1 <- Right item1
    if length (ros2Unitree_goMsgIMUState_accelerometer value) == 3 then Right () else Left 22
    item2 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_goMsgIMUState_accelerometer value)
    chunk2 <- Right item2
    if length (ros2Unitree_goMsgIMUState_rpy value) == 3 then Right () else Left 22
    item3 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_goMsgIMUState_rpy value)
    chunk3 <- Right item3
    chunk4 <- Right (W.putNumber 1 (ros2Unitree_goMsgIMUState_temperature value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                ]
    if length bytes > 53 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/IMUState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgIMUState :: W.Parser Ros2Unitree_goMsgIMUState
readRos2Unitree_goMsgIMUState = do
    value0 <- replicateM 4 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value1 <- replicateM 3 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value2 <- replicateM 3 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value3 <- replicateM 3 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value4 <- fromIntegral <$> W.number 1
    let value =
            Ros2Unitree_goMsgIMUState
                value0
                value1
                value2
                value3
                value4
    case encodeRos2Unitree_goMsgIMUState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/IMUState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgIMUState :: [Word8] -> Either Word32 Ros2Unitree_goMsgIMUState
decodeRos2Unitree_goMsgIMUState bytes
    | length bytes < 53 || length bytes > 53 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgIMUState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/InterfaceConfig value.
-- | @details Retain every original field in declaration order. Canonical extent 4..4 bytes.
data Ros2Unitree_goMsgInterfaceConfig = Ros2Unitree_goMsgInterfaceConfig
    {
    -- | @brief Original unitree_go/msg/InterfaceConfig.mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgInterfaceConfig_mode :: Word8
    ,
    -- | @brief Original unitree_go/msg/InterfaceConfig.value field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgInterfaceConfig_value :: Word8
    ,
    -- | @brief Original unitree_go/msg/InterfaceConfig.reserve field.
    -- | @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Unitree_goMsgInterfaceConfig_reserve :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgInterfaceConfigCodecIdentity :: String
ros2Unitree_goMsgInterfaceConfigCodecIdentity =
    "UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110"
-- | @brief Encode every field of complete unitree_go/msg/InterfaceConfig.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgInterfaceConfig :: Ros2Unitree_goMsgInterfaceConfig -> Either Word32 [Word8]
encodeRos2Unitree_goMsgInterfaceConfig value = do
    chunk0 <- Right (W.putNumber 1 (ros2Unitree_goMsgInterfaceConfig_mode value))
    chunk1 <- Right (W.putNumber 1 (ros2Unitree_goMsgInterfaceConfig_value value))
    if length (ros2Unitree_goMsgInterfaceConfig_reserve value) == 2 then Right () else Left 22
    item2 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_goMsgInterfaceConfig_reserve value)
    chunk2 <- Right item2
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 4 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/InterfaceConfig.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgInterfaceConfig :: W.Parser Ros2Unitree_goMsgInterfaceConfig
readRos2Unitree_goMsgInterfaceConfig = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- fromIntegral <$> W.number 1
    value2 <- replicateM 2 (fromIntegral <$> W.number 1)
    let value =
            Ros2Unitree_goMsgInterfaceConfig
                value0
                value1
                value2
    case encodeRos2Unitree_goMsgInterfaceConfig value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/InterfaceConfig.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgInterfaceConfig :: [Word8] -> Either Word32 Ros2Unitree_goMsgInterfaceConfig
decodeRos2Unitree_goMsgInterfaceConfig bytes
    | length bytes < 4 || length bytes > 4 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgInterfaceConfig bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/LidarState value.
-- | @details Retain every original field in declaration order. Canonical extent 81..6225 bytes.
data Ros2Unitree_goMsgLidarState = Ros2Unitree_goMsgLidarState
    {
    -- | @brief Original unitree_go/msg/LidarState.stamp field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLidarState_stamp :: Double
    ,
    -- | @brief Original unitree_go/msg/LidarState.firmware_version field.
    -- | @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgLidarState_firmware_version :: [Word8]
    ,
    -- | @brief Original unitree_go/msg/LidarState.software_version field.
    -- | @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgLidarState_software_version :: [Word8]
    ,
    -- | @brief Original unitree_go/msg/LidarState.sdk_version field.
    -- | @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgLidarState_sdk_version :: [Word8]
    ,
    -- | @brief Original unitree_go/msg/LidarState.sys_rotation_speed field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLidarState_sys_rotation_speed :: Float
    ,
    -- | @brief Original unitree_go/msg/LidarState.com_rotation_speed field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLidarState_com_rotation_speed :: Float
    ,
    -- | @brief Original unitree_go/msg/LidarState.error_state field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLidarState_error_state :: Word8
    ,
    -- | @brief Original unitree_go/msg/LidarState.cloud_frequency field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLidarState_cloud_frequency :: Float
    ,
    -- | @brief Original unitree_go/msg/LidarState.cloud_packet_loss_rate field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLidarState_cloud_packet_loss_rate :: Float
    ,
    -- | @brief Original unitree_go/msg/LidarState.cloud_size field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLidarState_cloud_size :: Word32
    ,
    -- | @brief Original unitree_go/msg/LidarState.cloud_scan_num field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLidarState_cloud_scan_num :: Word32
    ,
    -- | @brief Original unitree_go/msg/LidarState.imu_frequency field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLidarState_imu_frequency :: Float
    ,
    -- | @brief Original unitree_go/msg/LidarState.imu_packet_loss_rate field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLidarState_imu_packet_loss_rate :: Float
    ,
    -- | @brief Original unitree_go/msg/LidarState.imu_rpy field.
    -- | @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgLidarState_imu_rpy :: [Float]
    ,
    -- | @brief Original unitree_go/msg/LidarState.serial_recv_stamp field.
    -- | @details Original type float64. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLidarState_serial_recv_stamp :: Double
    ,
    -- | @brief Original unitree_go/msg/LidarState.serial_buffer_size field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLidarState_serial_buffer_size :: Word32
    ,
    -- | @brief Original unitree_go/msg/LidarState.serial_buffer_read field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLidarState_serial_buffer_read :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgLidarStateCodecIdentity :: String
ros2Unitree_goMsgLidarStateCodecIdentity =
    "UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb"
-- | @brief Encode every field of complete unitree_go/msg/LidarState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgLidarState :: Ros2Unitree_goMsgLidarState -> Either Word32 [Word8]
encodeRos2Unitree_goMsgLidarState value = do
    chunk0 <- finite8 (ros2Unitree_goMsgLidarState_stamp value) castDoubleToWord64
    chunk1 <- W.putText 2048 (ros2Unitree_goMsgLidarState_firmware_version value)
    chunk2 <- W.putText 2048 (ros2Unitree_goMsgLidarState_software_version value)
    chunk3 <- W.putText 2048 (ros2Unitree_goMsgLidarState_sdk_version value)
    chunk4 <- finite4 (ros2Unitree_goMsgLidarState_sys_rotation_speed value) castFloatToWord32
    chunk5 <- finite4 (ros2Unitree_goMsgLidarState_com_rotation_speed value) castFloatToWord32
    chunk6 <- Right (W.putNumber 1 (ros2Unitree_goMsgLidarState_error_state value))
    chunk7 <- finite4 (ros2Unitree_goMsgLidarState_cloud_frequency value) castFloatToWord32
    chunk8 <- finite4 (ros2Unitree_goMsgLidarState_cloud_packet_loss_rate value) castFloatToWord32
    chunk9 <- Right (W.putNumber 4 (ros2Unitree_goMsgLidarState_cloud_size value))
    chunk10 <- Right (W.putNumber 4 (ros2Unitree_goMsgLidarState_cloud_scan_num value))
    chunk11 <- finite4 (ros2Unitree_goMsgLidarState_imu_frequency value) castFloatToWord32
    chunk12 <- finite4 (ros2Unitree_goMsgLidarState_imu_packet_loss_rate value) castFloatToWord32
    if length (ros2Unitree_goMsgLidarState_imu_rpy value) == 3 then Right () else Left 22
    item13 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_goMsgLidarState_imu_rpy value)
    chunk13 <- Right item13
    chunk14 <- finite8 (ros2Unitree_goMsgLidarState_serial_recv_stamp value) castDoubleToWord64
    chunk15 <- Right (W.putNumber 4 (ros2Unitree_goMsgLidarState_serial_buffer_size value))
    chunk16 <- Right (W.putNumber 4 (ros2Unitree_goMsgLidarState_serial_buffer_read value))
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
                , chunk13
                , chunk14
                , chunk15
                , chunk16
                ]
    if length bytes > 6225 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/LidarState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgLidarState :: W.Parser Ros2Unitree_goMsgLidarState
readRos2Unitree_goMsgLidarState = do
    value0 <- castWord64ToDouble <$> W.number 8
    value1 <- W.text 2048
    value2 <- W.text 2048
    value3 <- W.text 2048
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- fromIntegral <$> W.number 1
    value7 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value8 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value9 <- fromIntegral <$> W.number 4
    value10 <- fromIntegral <$> W.number 4
    value11 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value12 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value13 <- replicateM 3 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value14 <- castWord64ToDouble <$> W.number 8
    value15 <- fromIntegral <$> W.number 4
    value16 <- fromIntegral <$> W.number 4
    let value =
            Ros2Unitree_goMsgLidarState
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
                value13
                value14
                value15
                value16
    case encodeRos2Unitree_goMsgLidarState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/LidarState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgLidarState :: [Word8] -> Either Word32 Ros2Unitree_goMsgLidarState
decodeRos2Unitree_goMsgLidarState bytes
    | length bytes < 81 || length bytes > 6225 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgLidarState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/MotorCmd value.
-- | @details Retain every original field in declaration order. Canonical extent 33..33 bytes.
data Ros2Unitree_goMsgMotorCmd = Ros2Unitree_goMsgMotorCmd
    {
    -- | @brief Original unitree_go/msg/MotorCmd.mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgMotorCmd_mode :: Word8
    ,
    -- | @brief Original unitree_go/msg/MotorCmd.q field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgMotorCmd_q :: Float
    ,
    -- | @brief Original unitree_go/msg/MotorCmd.dq field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgMotorCmd_dq :: Float
    ,
    -- | @brief Original unitree_go/msg/MotorCmd.tau field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgMotorCmd_tau :: Float
    ,
    -- | @brief Original unitree_go/msg/MotorCmd.kp field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgMotorCmd_kp :: Float
    ,
    -- | @brief Original unitree_go/msg/MotorCmd.kd field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgMotorCmd_kd :: Float
    ,
    -- | @brief Original unitree_go/msg/MotorCmd.reserve field.
    -- | @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgMotorCmd_reserve :: [Word32]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgMotorCmdCodecIdentity :: String
ros2Unitree_goMsgMotorCmdCodecIdentity =
    "UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989"
-- | @brief Encode every field of complete unitree_go/msg/MotorCmd.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgMotorCmd :: Ros2Unitree_goMsgMotorCmd -> Either Word32 [Word8]
encodeRos2Unitree_goMsgMotorCmd value = do
    chunk0 <- Right (W.putNumber 1 (ros2Unitree_goMsgMotorCmd_mode value))
    chunk1 <- finite4 (ros2Unitree_goMsgMotorCmd_q value) castFloatToWord32
    chunk2 <- finite4 (ros2Unitree_goMsgMotorCmd_dq value) castFloatToWord32
    chunk3 <- finite4 (ros2Unitree_goMsgMotorCmd_tau value) castFloatToWord32
    chunk4 <- finite4 (ros2Unitree_goMsgMotorCmd_kp value) castFloatToWord32
    chunk5 <- finite4 (ros2Unitree_goMsgMotorCmd_kd value) castFloatToWord32
    if length (ros2Unitree_goMsgMotorCmd_reserve value) == 3 then Right () else Left 22
    item6 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_goMsgMotorCmd_reserve value)
    chunk6 <- Right item6
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
    if length bytes > 33 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/MotorCmd.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgMotorCmd :: W.Parser Ros2Unitree_goMsgMotorCmd
readRos2Unitree_goMsgMotorCmd = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- replicateM 3 (fromIntegral <$> W.number 4)
    let value =
            Ros2Unitree_goMsgMotorCmd
                value0
                value1
                value2
                value3
                value4
                value5
                value6
    case encodeRos2Unitree_goMsgMotorCmd value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/MotorCmd.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgMotorCmd :: [Word8] -> Either Word32 Ros2Unitree_goMsgMotorCmd
decodeRos2Unitree_goMsgMotorCmd bytes
    | length bytes < 33 || length bytes > 33 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgMotorCmd bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/LowCmd value.
-- | @details Retain every original field in declaration order. Canonical extent 749..749 bytes.
data Ros2Unitree_goMsgLowCmd = Ros2Unitree_goMsgLowCmd
    {
    -- | @brief Original unitree_go/msg/LowCmd.head field.
    -- | @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Unitree_goMsgLowCmd_head :: [Word8]
    ,
    -- | @brief Original unitree_go/msg/LowCmd.level_flag field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowCmd_level_flag :: Word8
    ,
    -- | @brief Original unitree_go/msg/LowCmd.frame_reserve field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowCmd_frame_reserve :: Word8
    ,
    -- | @brief Original unitree_go/msg/LowCmd.sn field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgLowCmd_sn :: [Word32]
    ,
    -- | @brief Original unitree_go/msg/LowCmd.version field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgLowCmd_version :: [Word32]
    ,
    -- | @brief Original unitree_go/msg/LowCmd.bandwidth field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowCmd_bandwidth :: Word16
    ,
    -- | @brief Original unitree_go/msg/LowCmd.motor_cmd field.
    -- | @details Original type unitree_go/msg/MotorCmd. Shape array; bound/count 20 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgLowCmd_motor_cmd :: [Ros2Unitree_goMsgMotorCmd]
    ,
    -- | @brief Original unitree_go/msg/LowCmd.bms_cmd field.
    -- | @details Original type unitree_go/msg/BmsCmd. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Unitree_goMsgLowCmd_bms_cmd :: Ros2Unitree_goMsgBmsCmd
    ,
    -- | @brief Original unitree_go/msg/LowCmd.wireless_remote field.
    -- | @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgLowCmd_wireless_remote :: [Word8]
    ,
    -- | @brief Original unitree_go/msg/LowCmd.led field.
    -- | @details Original type uint8. Shape array; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgLowCmd_led :: [Word8]
    ,
    -- | @brief Original unitree_go/msg/LowCmd.fan field.
    -- | @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Unitree_goMsgLowCmd_fan :: [Word8]
    ,
    -- | @brief Original unitree_go/msg/LowCmd.gpio field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowCmd_gpio :: Word8
    ,
    -- | @brief Original unitree_go/msg/LowCmd.reserve field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowCmd_reserve :: Word32
    ,
    -- | @brief Original unitree_go/msg/LowCmd.crc field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowCmd_crc :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgLowCmdCodecIdentity :: String
ros2Unitree_goMsgLowCmdCodecIdentity =
    "UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63"
-- | @brief Encode every field of complete unitree_go/msg/LowCmd.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgLowCmd :: Ros2Unitree_goMsgLowCmd -> Either Word32 [Word8]
encodeRos2Unitree_goMsgLowCmd value = do
    if length (ros2Unitree_goMsgLowCmd_head value) == 2 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_goMsgLowCmd_head value)
    chunk0 <- Right item0
    chunk1 <- Right (W.putNumber 1 (ros2Unitree_goMsgLowCmd_level_flag value))
    chunk2 <- Right (W.putNumber 1 (ros2Unitree_goMsgLowCmd_frame_reserve value))
    if length (ros2Unitree_goMsgLowCmd_sn value) == 2 then Right () else Left 22
    item3 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_goMsgLowCmd_sn value)
    chunk3 <- Right item3
    if length (ros2Unitree_goMsgLowCmd_version value) == 2 then Right () else Left 22
    item4 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_goMsgLowCmd_version value)
    chunk4 <- Right item4
    chunk5 <- Right (W.putNumber 2 (ros2Unitree_goMsgLowCmd_bandwidth value))
    if length (ros2Unitree_goMsgLowCmd_motor_cmd value) == 20 then Right () else Left 22
    item6 <-
        concat <$> mapM
            (\element -> encodeRos2Unitree_goMsgMotorCmd (element))
            (ros2Unitree_goMsgLowCmd_motor_cmd value)
    chunk6 <- Right item6
    chunk7 <- encodeRos2Unitree_goMsgBmsCmd (ros2Unitree_goMsgLowCmd_bms_cmd value)
    if length (ros2Unitree_goMsgLowCmd_wireless_remote value) == 40 then Right () else Left 22
    item8 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_goMsgLowCmd_wireless_remote value)
    chunk8 <- Right item8
    if length (ros2Unitree_goMsgLowCmd_led value) == 12 then Right () else Left 22
    item9 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_goMsgLowCmd_led value)
    chunk9 <- Right item9
    if length (ros2Unitree_goMsgLowCmd_fan value) == 2 then Right () else Left 22
    item10 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_goMsgLowCmd_fan value)
    chunk10 <- Right item10
    chunk11 <- Right (W.putNumber 1 (ros2Unitree_goMsgLowCmd_gpio value))
    chunk12 <- Right (W.putNumber 4 (ros2Unitree_goMsgLowCmd_reserve value))
    chunk13 <- Right (W.putNumber 4 (ros2Unitree_goMsgLowCmd_crc value))
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
                , chunk13
                ]
    if length bytes > 749 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/LowCmd.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgLowCmd :: W.Parser Ros2Unitree_goMsgLowCmd
readRos2Unitree_goMsgLowCmd = do
    value0 <- replicateM 2 (fromIntegral <$> W.number 1)
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- replicateM 2 (fromIntegral <$> W.number 4)
    value4 <- replicateM 2 (fromIntegral <$> W.number 4)
    value5 <- fromIntegral <$> W.number 2
    value6 <- replicateM 20 (readRos2Unitree_goMsgMotorCmd)
    value7 <- readRos2Unitree_goMsgBmsCmd
    value8 <- replicateM 40 (fromIntegral <$> W.number 1)
    value9 <- replicateM 12 (fromIntegral <$> W.number 1)
    value10 <- replicateM 2 (fromIntegral <$> W.number 1)
    value11 <- fromIntegral <$> W.number 1
    value12 <- fromIntegral <$> W.number 4
    value13 <- fromIntegral <$> W.number 4
    let value =
            Ros2Unitree_goMsgLowCmd
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
                value13
    case encodeRos2Unitree_goMsgLowCmd value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/LowCmd.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgLowCmd :: [Word8] -> Either Word32 Ros2Unitree_goMsgLowCmd
decodeRos2Unitree_goMsgLowCmd bytes
    | length bytes < 749 || length bytes > 749 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgLowCmd bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/MotorState value.
-- | @details Retain every original field in declaration order. Canonical extent 42..42 bytes.
data Ros2Unitree_goMsgMotorState = Ros2Unitree_goMsgMotorState
    {
    -- | @brief Original unitree_go/msg/MotorState.mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgMotorState_mode :: Word8
    ,
    -- | @brief Original unitree_go/msg/MotorState.q field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgMotorState_q :: Float
    ,
    -- | @brief Original unitree_go/msg/MotorState.dq field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgMotorState_dq :: Float
    ,
    -- | @brief Original unitree_go/msg/MotorState.ddq field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgMotorState_ddq :: Float
    ,
    -- | @brief Original unitree_go/msg/MotorState.tau_est field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgMotorState_tau_est :: Float
    ,
    -- | @brief Original unitree_go/msg/MotorState.q_raw field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgMotorState_q_raw :: Float
    ,
    -- | @brief Original unitree_go/msg/MotorState.dq_raw field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgMotorState_dq_raw :: Float
    ,
    -- | @brief Original unitree_go/msg/MotorState.ddq_raw field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgMotorState_ddq_raw :: Float
    ,
    -- | @brief Original unitree_go/msg/MotorState.temperature field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgMotorState_temperature :: Int8
    ,
    -- | @brief Original unitree_go/msg/MotorState.lost field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgMotorState_lost :: Word32
    ,
    -- | @brief Original unitree_go/msg/MotorState.reserve field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgMotorState_reserve :: [Word32]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgMotorStateCodecIdentity :: String
ros2Unitree_goMsgMotorStateCodecIdentity =
    "UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62"
-- | @brief Encode every field of complete unitree_go/msg/MotorState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgMotorState :: Ros2Unitree_goMsgMotorState -> Either Word32 [Word8]
encodeRos2Unitree_goMsgMotorState value = do
    chunk0 <- Right (W.putNumber 1 (ros2Unitree_goMsgMotorState_mode value))
    chunk1 <- finite4 (ros2Unitree_goMsgMotorState_q value) castFloatToWord32
    chunk2 <- finite4 (ros2Unitree_goMsgMotorState_dq value) castFloatToWord32
    chunk3 <- finite4 (ros2Unitree_goMsgMotorState_ddq value) castFloatToWord32
    chunk4 <- finite4 (ros2Unitree_goMsgMotorState_tau_est value) castFloatToWord32
    chunk5 <- finite4 (ros2Unitree_goMsgMotorState_q_raw value) castFloatToWord32
    chunk6 <- finite4 (ros2Unitree_goMsgMotorState_dq_raw value) castFloatToWord32
    chunk7 <- finite4 (ros2Unitree_goMsgMotorState_ddq_raw value) castFloatToWord32
    chunk8 <- Right (W.putNumber 1 (ros2Unitree_goMsgMotorState_temperature value))
    chunk9 <- Right (W.putNumber 4 (ros2Unitree_goMsgMotorState_lost value))
    if length (ros2Unitree_goMsgMotorState_reserve value) == 2 then Right () else Left 22
    item10 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_goMsgMotorState_reserve value)
    chunk10 <- Right item10
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
                ]
    if length bytes > 42 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/MotorState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgMotorState :: W.Parser Ros2Unitree_goMsgMotorState
readRos2Unitree_goMsgMotorState = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value7 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value8 <- fromIntegral <$> W.number 1
    value9 <- fromIntegral <$> W.number 4
    value10 <- replicateM 2 (fromIntegral <$> W.number 4)
    let value =
            Ros2Unitree_goMsgMotorState
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
    case encodeRos2Unitree_goMsgMotorState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/MotorState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgMotorState :: [Word8] -> Either Word32 Ros2Unitree_goMsgMotorState
decodeRos2Unitree_goMsgMotorState bytes
    | length bytes < 42 || length bytes > 42 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgMotorState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/LowState value.
-- | @details Retain every original field in declaration order. Canonical extent 1050..1050 bytes.
data Ros2Unitree_goMsgLowState = Ros2Unitree_goMsgLowState
    {
    -- | @brief Original unitree_go/msg/LowState.head field.
    -- | @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Unitree_goMsgLowState_head :: [Word8]
    ,
    -- | @brief Original unitree_go/msg/LowState.level_flag field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowState_level_flag :: Word8
    ,
    -- | @brief Original unitree_go/msg/LowState.frame_reserve field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowState_frame_reserve :: Word8
    ,
    -- | @brief Original unitree_go/msg/LowState.sn field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgLowState_sn :: [Word32]
    ,
    -- | @brief Original unitree_go/msg/LowState.version field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgLowState_version :: [Word32]
    ,
    -- | @brief Original unitree_go/msg/LowState.bandwidth field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowState_bandwidth :: Word16
    ,
    -- | @brief Original unitree_go/msg/LowState.imu_state field.
    -- | @details Original type unitree_go/msg/IMUState. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Unitree_goMsgLowState_imu_state :: Ros2Unitree_goMsgIMUState
    ,
    -- | @brief Original unitree_go/msg/LowState.motor_state field.
    -- | @details Original type unitree_go/msg/MotorState. Shape array; bound/count 20 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgLowState_motor_state :: [Ros2Unitree_goMsgMotorState]
    ,
    -- | @brief Original unitree_go/msg/LowState.bms_state field.
    -- | @details Original type unitree_go/msg/BmsState. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Unitree_goMsgLowState_bms_state :: Ros2Unitree_goMsgBmsState
    ,
    -- | @brief Original unitree_go/msg/LowState.foot_force field.
    -- | @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Unitree_goMsgLowState_foot_force :: [Int16]
    ,
    -- | @brief Original unitree_go/msg/LowState.foot_force_est field.
    -- | @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Unitree_goMsgLowState_foot_force_est :: [Int16]
    ,
    -- | @brief Original unitree_go/msg/LowState.tick field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowState_tick :: Word32
    ,
    -- | @brief Original unitree_go/msg/LowState.wireless_remote field.
    -- | @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgLowState_wireless_remote :: [Word8]
    ,
    -- | @brief Original unitree_go/msg/LowState.bit_flag field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowState_bit_flag :: Word8
    ,
    -- | @brief Original unitree_go/msg/LowState.adc_reel field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowState_adc_reel :: Float
    ,
    -- | @brief Original unitree_go/msg/LowState.temperature_ntc1 field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowState_temperature_ntc1 :: Int8
    ,
    -- | @brief Original unitree_go/msg/LowState.temperature_ntc2 field.
    -- | @details Original type int8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowState_temperature_ntc2 :: Int8
    ,
    -- | @brief Original unitree_go/msg/LowState.power_v field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowState_power_v :: Float
    ,
    -- | @brief Original unitree_go/msg/LowState.power_a field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowState_power_a :: Float
    ,
    -- | @brief Original unitree_go/msg/LowState.fan_frequency field.
    -- | @details Original type uint16. Shape array; bound/count 4 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgLowState_fan_frequency :: [Word16]
    ,
    -- | @brief Original unitree_go/msg/LowState.reserve field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowState_reserve :: Word32
    ,
    -- | @brief Original unitree_go/msg/LowState.crc field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgLowState_crc :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgLowStateCodecIdentity :: String
ros2Unitree_goMsgLowStateCodecIdentity =
    "UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab"
-- | @brief Encode every field of complete unitree_go/msg/LowState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgLowState :: Ros2Unitree_goMsgLowState -> Either Word32 [Word8]
encodeRos2Unitree_goMsgLowState value = do
    if length (ros2Unitree_goMsgLowState_head value) == 2 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_goMsgLowState_head value)
    chunk0 <- Right item0
    chunk1 <- Right (W.putNumber 1 (ros2Unitree_goMsgLowState_level_flag value))
    chunk2 <- Right (W.putNumber 1 (ros2Unitree_goMsgLowState_frame_reserve value))
    if length (ros2Unitree_goMsgLowState_sn value) == 2 then Right () else Left 22
    item3 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_goMsgLowState_sn value)
    chunk3 <- Right item3
    if length (ros2Unitree_goMsgLowState_version value) == 2 then Right () else Left 22
    item4 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_goMsgLowState_version value)
    chunk4 <- Right item4
    chunk5 <- Right (W.putNumber 2 (ros2Unitree_goMsgLowState_bandwidth value))
    chunk6 <- encodeRos2Unitree_goMsgIMUState (ros2Unitree_goMsgLowState_imu_state value)
    if length (ros2Unitree_goMsgLowState_motor_state value) == 20 then Right () else Left 22
    item7 <-
        concat <$> mapM
            (\element -> encodeRos2Unitree_goMsgMotorState (element))
            (ros2Unitree_goMsgLowState_motor_state value)
    chunk7 <- Right item7
    chunk8 <- encodeRos2Unitree_goMsgBmsState (ros2Unitree_goMsgLowState_bms_state value)
    if length (ros2Unitree_goMsgLowState_foot_force value) == 4 then Right () else Left 22
    item9 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 2 (element)))
            (ros2Unitree_goMsgLowState_foot_force value)
    chunk9 <- Right item9
    if length (ros2Unitree_goMsgLowState_foot_force_est value) == 4 then Right () else Left 22
    item10 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 2 (element)))
            (ros2Unitree_goMsgLowState_foot_force_est value)
    chunk10 <- Right item10
    chunk11 <- Right (W.putNumber 4 (ros2Unitree_goMsgLowState_tick value))
    if length (ros2Unitree_goMsgLowState_wireless_remote value) == 40 then Right () else Left 22
    item12 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_goMsgLowState_wireless_remote value)
    chunk12 <- Right item12
    chunk13 <- Right (W.putNumber 1 (ros2Unitree_goMsgLowState_bit_flag value))
    chunk14 <- finite4 (ros2Unitree_goMsgLowState_adc_reel value) castFloatToWord32
    chunk15 <- Right (W.putNumber 1 (ros2Unitree_goMsgLowState_temperature_ntc1 value))
    chunk16 <- Right (W.putNumber 1 (ros2Unitree_goMsgLowState_temperature_ntc2 value))
    chunk17 <- finite4 (ros2Unitree_goMsgLowState_power_v value) castFloatToWord32
    chunk18 <- finite4 (ros2Unitree_goMsgLowState_power_a value) castFloatToWord32
    if length (ros2Unitree_goMsgLowState_fan_frequency value) == 4 then Right () else Left 22
    item19 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 2 (element)))
            (ros2Unitree_goMsgLowState_fan_frequency value)
    chunk19 <- Right item19
    chunk20 <- Right (W.putNumber 4 (ros2Unitree_goMsgLowState_reserve value))
    chunk21 <- Right (W.putNumber 4 (ros2Unitree_goMsgLowState_crc value))
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
                , chunk13
                , chunk14
                , chunk15
                , chunk16
                , chunk17
                , chunk18
                , chunk19
                , chunk20
                , chunk21
                ]
    if length bytes > 1050 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/LowState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgLowState :: W.Parser Ros2Unitree_goMsgLowState
readRos2Unitree_goMsgLowState = do
    value0 <- replicateM 2 (fromIntegral <$> W.number 1)
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- replicateM 2 (fromIntegral <$> W.number 4)
    value4 <- replicateM 2 (fromIntegral <$> W.number 4)
    value5 <- fromIntegral <$> W.number 2
    value6 <- readRos2Unitree_goMsgIMUState
    value7 <- replicateM 20 (readRos2Unitree_goMsgMotorState)
    value8 <- readRos2Unitree_goMsgBmsState
    value9 <- replicateM 4 (fromIntegral <$> W.number 2)
    value10 <- replicateM 4 (fromIntegral <$> W.number 2)
    value11 <- fromIntegral <$> W.number 4
    value12 <- replicateM 40 (fromIntegral <$> W.number 1)
    value13 <- fromIntegral <$> W.number 1
    value14 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value15 <- fromIntegral <$> W.number 1
    value16 <- fromIntegral <$> W.number 1
    value17 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value18 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value19 <- replicateM 4 (fromIntegral <$> W.number 2)
    value20 <- fromIntegral <$> W.number 4
    value21 <- fromIntegral <$> W.number 4
    let value =
            Ros2Unitree_goMsgLowState
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
                value13
                value14
                value15
                value16
                value17
                value18
                value19
                value20
                value21
    case encodeRos2Unitree_goMsgLowState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/LowState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgLowState :: [Word8] -> Either Word32 Ros2Unitree_goMsgLowState
decodeRos2Unitree_goMsgLowState bytes
    | length bytes < 1050 || length bytes > 1050 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgLowState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/MotorCmds value.
-- | @details Retain every original field in declaration order. Canonical extent 4..1060 bytes.
data Ros2Unitree_goMsgMotorCmds = Ros2Unitree_goMsgMotorCmds
    {
    -- | @brief Original unitree_go/msg/MotorCmds.cmds field.
    -- | @details Original type unitree_go/msg/MotorCmd. Shape sequence; bound/count 32 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgMotorCmds_cmds :: [Ros2Unitree_goMsgMotorCmd]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgMotorCmdsCodecIdentity :: String
ros2Unitree_goMsgMotorCmdsCodecIdentity =
    "UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3"
-- | @brief Encode every field of complete unitree_go/msg/MotorCmds.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgMotorCmds :: Ros2Unitree_goMsgMotorCmds -> Either Word32 [Word8]
encodeRos2Unitree_goMsgMotorCmds value = do
    if length (ros2Unitree_goMsgMotorCmds_cmds value) <= 32 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> encodeRos2Unitree_goMsgMotorCmd (element))
            (ros2Unitree_goMsgMotorCmds_cmds value)
    chunk0 <- Right (
        W.putNumber 4 (length (ros2Unitree_goMsgMotorCmds_cmds value))
        ++ item0
        )
    let bytes =
            concat
                [ chunk0
                ]
    if length bytes > 1060 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/MotorCmds.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgMotorCmds :: W.Parser Ros2Unitree_goMsgMotorCmds
readRos2Unitree_goMsgMotorCmds = do
    count0 <- W.number 4
    if count0 > 32 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (readRos2Unitree_goMsgMotorCmd)
    let value =
            Ros2Unitree_goMsgMotorCmds
                value0
    case encodeRos2Unitree_goMsgMotorCmds value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/MotorCmds.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgMotorCmds :: [Word8] -> Either Word32 Ros2Unitree_goMsgMotorCmds
decodeRos2Unitree_goMsgMotorCmds bytes
    | length bytes < 4 || length bytes > 1060 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgMotorCmds bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/MotorStates value.
-- | @details Retain every original field in declaration order. Canonical extent 4..1348 bytes.
data Ros2Unitree_goMsgMotorStates = Ros2Unitree_goMsgMotorStates
    {
    -- | @brief Original unitree_go/msg/MotorStates.states field.
    -- | @details Original type unitree_go/msg/MotorState. Shape sequence; bound/count 32 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgMotorStates_states :: [Ros2Unitree_goMsgMotorState]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgMotorStatesCodecIdentity :: String
ros2Unitree_goMsgMotorStatesCodecIdentity =
    "UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e"
-- | @brief Encode every field of complete unitree_go/msg/MotorStates.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgMotorStates :: Ros2Unitree_goMsgMotorStates -> Either Word32 [Word8]
encodeRos2Unitree_goMsgMotorStates value = do
    if length (ros2Unitree_goMsgMotorStates_states value) <= 32 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> encodeRos2Unitree_goMsgMotorState (element))
            (ros2Unitree_goMsgMotorStates_states value)
    chunk0 <- Right (
        W.putNumber 4 (length (ros2Unitree_goMsgMotorStates_states value))
        ++ item0
        )
    let bytes =
            concat
                [ chunk0
                ]
    if length bytes > 1348 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/MotorStates.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgMotorStates :: W.Parser Ros2Unitree_goMsgMotorStates
readRos2Unitree_goMsgMotorStates = do
    count0 <- W.number 4
    if count0 > 32 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (readRos2Unitree_goMsgMotorState)
    let value =
            Ros2Unitree_goMsgMotorStates
                value0
    case encodeRos2Unitree_goMsgMotorStates value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/MotorStates.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgMotorStates :: [Word8] -> Either Word32 Ros2Unitree_goMsgMotorStates
decodeRos2Unitree_goMsgMotorStates bytes
    | length bytes < 4 || length bytes > 1348 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgMotorStates bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/PathPoint value.
-- | @details Retain every original field in declaration order. Canonical extent 28..28 bytes.
data Ros2Unitree_goMsgPathPoint = Ros2Unitree_goMsgPathPoint
    {
    -- | @brief Original unitree_go/msg/PathPoint.t_from_start field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgPathPoint_t_from_start :: Float
    ,
    -- | @brief Original unitree_go/msg/PathPoint.x field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgPathPoint_x :: Float
    ,
    -- | @brief Original unitree_go/msg/PathPoint.y field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgPathPoint_y :: Float
    ,
    -- | @brief Original unitree_go/msg/PathPoint.yaw field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgPathPoint_yaw :: Float
    ,
    -- | @brief Original unitree_go/msg/PathPoint.vx field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgPathPoint_vx :: Float
    ,
    -- | @brief Original unitree_go/msg/PathPoint.vy field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgPathPoint_vy :: Float
    ,
    -- | @brief Original unitree_go/msg/PathPoint.vyaw field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgPathPoint_vyaw :: Float
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgPathPointCodecIdentity :: String
ros2Unitree_goMsgPathPointCodecIdentity =
    "UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4"
-- | @brief Encode every field of complete unitree_go/msg/PathPoint.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgPathPoint :: Ros2Unitree_goMsgPathPoint -> Either Word32 [Word8]
encodeRos2Unitree_goMsgPathPoint value = do
    chunk0 <- finite4 (ros2Unitree_goMsgPathPoint_t_from_start value) castFloatToWord32
    chunk1 <- finite4 (ros2Unitree_goMsgPathPoint_x value) castFloatToWord32
    chunk2 <- finite4 (ros2Unitree_goMsgPathPoint_y value) castFloatToWord32
    chunk3 <- finite4 (ros2Unitree_goMsgPathPoint_yaw value) castFloatToWord32
    chunk4 <- finite4 (ros2Unitree_goMsgPathPoint_vx value) castFloatToWord32
    chunk5 <- finite4 (ros2Unitree_goMsgPathPoint_vy value) castFloatToWord32
    chunk6 <- finite4 (ros2Unitree_goMsgPathPoint_vyaw value) castFloatToWord32
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
    if length bytes > 28 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/PathPoint.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgPathPoint :: W.Parser Ros2Unitree_goMsgPathPoint
readRos2Unitree_goMsgPathPoint = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- castWord32ToFloat . fromIntegral <$> W.number 4
    let value =
            Ros2Unitree_goMsgPathPoint
                value0
                value1
                value2
                value3
                value4
                value5
                value6
    case encodeRos2Unitree_goMsgPathPoint value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/PathPoint.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgPathPoint :: [Word8] -> Either Word32 Ros2Unitree_goMsgPathPoint
decodeRos2Unitree_goMsgPathPoint bytes
    | length bytes < 28 || length bytes > 28 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgPathPoint bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/Req value.
-- | @details Retain every original field in declaration order. Canonical extent 8..4104 bytes.
data Ros2Unitree_goMsgReq = Ros2Unitree_goMsgReq
    {
    -- | @brief Original unitree_go/msg/Req.uuid field.
    -- | @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgReq_uuid :: [Word8]
    ,
    -- | @brief Original unitree_go/msg/Req.body field.
    -- | @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgReq_body :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgReqCodecIdentity :: String
ros2Unitree_goMsgReqCodecIdentity =
    "UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8"
-- | @brief Encode every field of complete unitree_go/msg/Req.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgReq :: Ros2Unitree_goMsgReq -> Either Word32 [Word8]
encodeRos2Unitree_goMsgReq value = do
    chunk0 <- W.putText 2048 (ros2Unitree_goMsgReq_uuid value)
    chunk1 <- W.putText 2048 (ros2Unitree_goMsgReq_body value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 4104 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/Req.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgReq :: W.Parser Ros2Unitree_goMsgReq
readRos2Unitree_goMsgReq = do
    value0 <- W.text 2048
    value1 <- W.text 2048
    let value =
            Ros2Unitree_goMsgReq
                value0
                value1
    case encodeRos2Unitree_goMsgReq value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/Req.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgReq :: [Word8] -> Either Word32 Ros2Unitree_goMsgReq
decodeRos2Unitree_goMsgReq bytes
    | length bytes < 8 || length bytes > 4104 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgReq bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/Res value.
-- | @details Retain every original field in declaration order. Canonical extent 12..6156 bytes.
data Ros2Unitree_goMsgRes = Ros2Unitree_goMsgRes
    {
    -- | @brief Original unitree_go/msg/Res.uuid field.
    -- | @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgRes_uuid :: [Word8]
    ,
    -- | @brief Original unitree_go/msg/Res.data field.
    -- | @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgRes_data :: [Word8]
    ,
    -- | @brief Original unitree_go/msg/Res.body field.
    -- | @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgRes_body :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgResCodecIdentity :: String
ros2Unitree_goMsgResCodecIdentity =
    "UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963"
-- | @brief Encode every field of complete unitree_go/msg/Res.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgRes :: Ros2Unitree_goMsgRes -> Either Word32 [Word8]
encodeRos2Unitree_goMsgRes value = do
    chunk0 <- W.putText 2048 (ros2Unitree_goMsgRes_uuid value)
    if length (ros2Unitree_goMsgRes_data value) <= 2048 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_goMsgRes_data value)
    chunk1 <- Right (
        W.putNumber 4 (length (ros2Unitree_goMsgRes_data value))
        ++ item1
        )
    chunk2 <- W.putText 2048 (ros2Unitree_goMsgRes_body value)
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                ]
    if length bytes > 6156 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/Res.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgRes :: W.Parser Ros2Unitree_goMsgRes
readRos2Unitree_goMsgRes = do
    value0 <- W.text 2048
    count1 <- W.number 4
    if count1 > 2048 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (fromIntegral <$> W.number 1)
    value2 <- W.text 2048
    let value =
            Ros2Unitree_goMsgRes
                value0
                value1
                value2
    case encodeRos2Unitree_goMsgRes value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/Res.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgRes :: [Word8] -> Either Word32 Ros2Unitree_goMsgRes
decodeRos2Unitree_goMsgRes bytes
    | length bytes < 12 || length bytes > 6156 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgRes bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/SportModeCmd value.
-- | @details Retain every original field in declaration order. Canonical extent 887..887 bytes.
data Ros2Unitree_goMsgSportModeCmd = Ros2Unitree_goMsgSportModeCmd
    {
    -- | @brief Original unitree_go/msg/SportModeCmd.mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgSportModeCmd_mode :: Word8
    ,
    -- | @brief Original unitree_go/msg/SportModeCmd.gait_type field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgSportModeCmd_gait_type :: Word8
    ,
    -- | @brief Original unitree_go/msg/SportModeCmd.speed_level field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgSportModeCmd_speed_level :: Word8
    ,
    -- | @brief Original unitree_go/msg/SportModeCmd.foot_raise_height field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgSportModeCmd_foot_raise_height :: Float
    ,
    -- | @brief Original unitree_go/msg/SportModeCmd.body_height field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgSportModeCmd_body_height :: Float
    ,
    -- | @brief Original unitree_go/msg/SportModeCmd.position field.
    -- | @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgSportModeCmd_position :: [Float]
    ,
    -- | @brief Original unitree_go/msg/SportModeCmd.euler field.
    -- | @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgSportModeCmd_euler :: [Float]
    ,
    -- | @brief Original unitree_go/msg/SportModeCmd.velocity field.
    -- | @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgSportModeCmd_velocity :: [Float]
    ,
    -- | @brief Original unitree_go/msg/SportModeCmd.yaw_speed field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgSportModeCmd_yaw_speed :: Float
    ,
    -- | @brief Original unitree_go/msg/SportModeCmd.bms_cmd field.
    -- | @details Original type unitree_go/msg/BmsCmd. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Unitree_goMsgSportModeCmd_bms_cmd :: Ros2Unitree_goMsgBmsCmd
    ,
    -- | @brief Original unitree_go/msg/SportModeCmd.path_point field.
    -- | @details Original type unitree_go/msg/PathPoint. Shape array; bound/count 30 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgSportModeCmd_path_point :: [Ros2Unitree_goMsgPathPoint]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgSportModeCmdCodecIdentity :: String
ros2Unitree_goMsgSportModeCmdCodecIdentity =
    "UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c"
-- | @brief Encode every field of complete unitree_go/msg/SportModeCmd.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgSportModeCmd :: Ros2Unitree_goMsgSportModeCmd -> Either Word32 [Word8]
encodeRos2Unitree_goMsgSportModeCmd value = do
    chunk0 <- Right (W.putNumber 1 (ros2Unitree_goMsgSportModeCmd_mode value))
    chunk1 <- Right (W.putNumber 1 (ros2Unitree_goMsgSportModeCmd_gait_type value))
    chunk2 <- Right (W.putNumber 1 (ros2Unitree_goMsgSportModeCmd_speed_level value))
    chunk3 <- finite4 (ros2Unitree_goMsgSportModeCmd_foot_raise_height value) castFloatToWord32
    chunk4 <- finite4 (ros2Unitree_goMsgSportModeCmd_body_height value) castFloatToWord32
    if length (ros2Unitree_goMsgSportModeCmd_position value) == 2 then Right () else Left 22
    item5 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_goMsgSportModeCmd_position value)
    chunk5 <- Right item5
    if length (ros2Unitree_goMsgSportModeCmd_euler value) == 3 then Right () else Left 22
    item6 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_goMsgSportModeCmd_euler value)
    chunk6 <- Right item6
    if length (ros2Unitree_goMsgSportModeCmd_velocity value) == 2 then Right () else Left 22
    item7 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_goMsgSportModeCmd_velocity value)
    chunk7 <- Right item7
    chunk8 <- finite4 (ros2Unitree_goMsgSportModeCmd_yaw_speed value) castFloatToWord32
    chunk9 <- encodeRos2Unitree_goMsgBmsCmd (ros2Unitree_goMsgSportModeCmd_bms_cmd value)
    if length (ros2Unitree_goMsgSportModeCmd_path_point value) == 30 then Right () else Left 22
    item10 <-
        concat <$> mapM
            (\element -> encodeRos2Unitree_goMsgPathPoint (element))
            (ros2Unitree_goMsgSportModeCmd_path_point value)
    chunk10 <- Right item10
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
                ]
    if length bytes > 887 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/SportModeCmd.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgSportModeCmd :: W.Parser Ros2Unitree_goMsgSportModeCmd
readRos2Unitree_goMsgSportModeCmd = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- replicateM 2 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value6 <- replicateM 3 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value7 <- replicateM 2 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value8 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value9 <- readRos2Unitree_goMsgBmsCmd
    value10 <- replicateM 30 (readRos2Unitree_goMsgPathPoint)
    let value =
            Ros2Unitree_goMsgSportModeCmd
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
    case encodeRos2Unitree_goMsgSportModeCmd value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/SportModeCmd.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgSportModeCmd :: [Word8] -> Either Word32 Ros2Unitree_goMsgSportModeCmd
decodeRos2Unitree_goMsgSportModeCmd bytes
    | length bytes < 887 || length bytes > 887 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgSportModeCmd bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/TimeSpec value.
-- | @details Retain every original field in declaration order. Canonical extent 8..8 bytes.
data Ros2Unitree_goMsgTimeSpec = Ros2Unitree_goMsgTimeSpec
    {
    -- | @brief Original unitree_go/msg/TimeSpec.sec field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgTimeSpec_sec :: Int32
    ,
    -- | @brief Original unitree_go/msg/TimeSpec.nanosec field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgTimeSpec_nanosec :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgTimeSpecCodecIdentity :: String
ros2Unitree_goMsgTimeSpecCodecIdentity =
    "UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4"
-- | @brief Encode every field of complete unitree_go/msg/TimeSpec.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgTimeSpec :: Ros2Unitree_goMsgTimeSpec -> Either Word32 [Word8]
encodeRos2Unitree_goMsgTimeSpec value = do
    chunk0 <- Right (W.putNumber 4 (ros2Unitree_goMsgTimeSpec_sec value))
    chunk1 <- Right (W.putNumber 4 (ros2Unitree_goMsgTimeSpec_nanosec value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 8 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/TimeSpec.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgTimeSpec :: W.Parser Ros2Unitree_goMsgTimeSpec
readRos2Unitree_goMsgTimeSpec = do
    value0 <- fromIntegral <$> W.number 4
    value1 <- fromIntegral <$> W.number 4
    let value =
            Ros2Unitree_goMsgTimeSpec
                value0
                value1
    case encodeRos2Unitree_goMsgTimeSpec value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/TimeSpec.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgTimeSpec :: [Word8] -> Either Word32 Ros2Unitree_goMsgTimeSpec
decodeRos2Unitree_goMsgTimeSpec bytes
    | length bytes < 8 || length bytes > 8 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgTimeSpec bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/SportModeState value.
-- | @details Retain every original field in declaration order. Canonical extent 227..227 bytes.
data Ros2Unitree_goMsgSportModeState = Ros2Unitree_goMsgSportModeState
    {
    -- | @brief Original unitree_go/msg/SportModeState.stamp field.
    -- | @details Original type unitree_go/msg/TimeSpec. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Unitree_goMsgSportModeState_stamp :: Ros2Unitree_goMsgTimeSpec
    ,
    -- | @brief Original unitree_go/msg/SportModeState.error_code field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgSportModeState_error_code :: Word32
    ,
    -- | @brief Original unitree_go/msg/SportModeState.imu_state field.
    -- | @details Original type unitree_go/msg/IMUState. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Unitree_goMsgSportModeState_imu_state :: Ros2Unitree_goMsgIMUState
    ,
    -- | @brief Original unitree_go/msg/SportModeState.mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgSportModeState_mode :: Word8
    ,
    -- | @brief Original unitree_go/msg/SportModeState.progress field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgSportModeState_progress :: Float
    ,
    -- | @brief Original unitree_go/msg/SportModeState.gait_type field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgSportModeState_gait_type :: Word8
    ,
    -- | @brief Original unitree_go/msg/SportModeState.foot_raise_height field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgSportModeState_foot_raise_height :: Float
    ,
    -- | @brief Original unitree_go/msg/SportModeState.position field.
    -- | @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgSportModeState_position :: [Float]
    ,
    -- | @brief Original unitree_go/msg/SportModeState.body_height field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgSportModeState_body_height :: Float
    ,
    -- | @brief Original unitree_go/msg/SportModeState.velocity field.
    -- | @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgSportModeState_velocity :: [Float]
    ,
    -- | @brief Original unitree_go/msg/SportModeState.yaw_speed field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgSportModeState_yaw_speed :: Float
    ,
    -- | @brief Original unitree_go/msg/SportModeState.range_obstacle field.
    -- | @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgSportModeState_range_obstacle :: [Float]
    ,
    -- | @brief Original unitree_go/msg/SportModeState.foot_force field.
    -- | @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Unitree_goMsgSportModeState_foot_force :: [Int16]
    ,
    -- | @brief Original unitree_go/msg/SportModeState.foot_position_body field.
    -- | @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgSportModeState_foot_position_body :: [Float]
    ,
    -- | @brief Original unitree_go/msg/SportModeState.foot_speed_body field.
    -- | @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgSportModeState_foot_speed_body :: [Float]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgSportModeStateCodecIdentity :: String
ros2Unitree_goMsgSportModeStateCodecIdentity =
    "UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760"
-- | @brief Encode every field of complete unitree_go/msg/SportModeState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgSportModeState :: Ros2Unitree_goMsgSportModeState -> Either Word32 [Word8]
encodeRos2Unitree_goMsgSportModeState value = do
    chunk0 <- encodeRos2Unitree_goMsgTimeSpec (ros2Unitree_goMsgSportModeState_stamp value)
    chunk1 <- Right (W.putNumber 4 (ros2Unitree_goMsgSportModeState_error_code value))
    chunk2 <- encodeRos2Unitree_goMsgIMUState (ros2Unitree_goMsgSportModeState_imu_state value)
    chunk3 <- Right (W.putNumber 1 (ros2Unitree_goMsgSportModeState_mode value))
    chunk4 <- finite4 (ros2Unitree_goMsgSportModeState_progress value) castFloatToWord32
    chunk5 <- Right (W.putNumber 1 (ros2Unitree_goMsgSportModeState_gait_type value))
    chunk6 <- finite4 (ros2Unitree_goMsgSportModeState_foot_raise_height value) castFloatToWord32
    if length (ros2Unitree_goMsgSportModeState_position value) == 3 then Right () else Left 22
    item7 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_goMsgSportModeState_position value)
    chunk7 <- Right item7
    chunk8 <- finite4 (ros2Unitree_goMsgSportModeState_body_height value) castFloatToWord32
    if length (ros2Unitree_goMsgSportModeState_velocity value) == 3 then Right () else Left 22
    item9 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_goMsgSportModeState_velocity value)
    chunk9 <- Right item9
    chunk10 <- finite4 (ros2Unitree_goMsgSportModeState_yaw_speed value) castFloatToWord32
    if length (ros2Unitree_goMsgSportModeState_range_obstacle value) == 4 then Right () else Left 22
    item11 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_goMsgSportModeState_range_obstacle value)
    chunk11 <- Right item11
    if length (ros2Unitree_goMsgSportModeState_foot_force value) == 4 then Right () else Left 22
    item12 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 2 (element)))
            (ros2Unitree_goMsgSportModeState_foot_force value)
    chunk12 <- Right item12
    if length (ros2Unitree_goMsgSportModeState_foot_position_body value) == 12 then Right () else Left 22
    item13 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_goMsgSportModeState_foot_position_body value)
    chunk13 <- Right item13
    if length (ros2Unitree_goMsgSportModeState_foot_speed_body value) == 12 then Right () else Left 22
    item14 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_goMsgSportModeState_foot_speed_body value)
    chunk14 <- Right item14
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
                , chunk13
                , chunk14
                ]
    if length bytes > 227 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/SportModeState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgSportModeState :: W.Parser Ros2Unitree_goMsgSportModeState
readRos2Unitree_goMsgSportModeState = do
    value0 <- readRos2Unitree_goMsgTimeSpec
    value1 <- fromIntegral <$> W.number 4
    value2 <- readRos2Unitree_goMsgIMUState
    value3 <- fromIntegral <$> W.number 1
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- fromIntegral <$> W.number 1
    value6 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value7 <- replicateM 3 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value8 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value9 <- replicateM 3 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value10 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value11 <- replicateM 4 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value12 <- replicateM 4 (fromIntegral <$> W.number 2)
    value13 <- replicateM 12 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value14 <- replicateM 12 (castWord32ToFloat . fromIntegral <$> W.number 4)
    let value =
            Ros2Unitree_goMsgSportModeState
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
                value13
                value14
    case encodeRos2Unitree_goMsgSportModeState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/SportModeState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgSportModeState :: [Word8] -> Either Word32 Ros2Unitree_goMsgSportModeState
decodeRos2Unitree_goMsgSportModeState bytes
    | length bytes < 227 || length bytes > 227 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgSportModeState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/UwbState value.
-- | @details Retain every original field in declaration order. Canonical extent 55..55 bytes.
data Ros2Unitree_goMsgUwbState = Ros2Unitree_goMsgUwbState
    {
    -- | @brief Original unitree_go/msg/UwbState.version field.
    -- | @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Unitree_goMsgUwbState_version :: [Word8]
    ,
    -- | @brief Original unitree_go/msg/UwbState.channel field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgUwbState_channel :: Word8
    ,
    -- | @brief Original unitree_go/msg/UwbState.joy_mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgUwbState_joy_mode :: Word8
    ,
    -- | @brief Original unitree_go/msg/UwbState.orientation_est field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgUwbState_orientation_est :: Float
    ,
    -- | @brief Original unitree_go/msg/UwbState.pitch_est field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgUwbState_pitch_est :: Float
    ,
    -- | @brief Original unitree_go/msg/UwbState.distance_est field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgUwbState_distance_est :: Float
    ,
    -- | @brief Original unitree_go/msg/UwbState.yaw_est field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgUwbState_yaw_est :: Float
    ,
    -- | @brief Original unitree_go/msg/UwbState.tag_roll field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgUwbState_tag_roll :: Float
    ,
    -- | @brief Original unitree_go/msg/UwbState.tag_pitch field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgUwbState_tag_pitch :: Float
    ,
    -- | @brief Original unitree_go/msg/UwbState.tag_yaw field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgUwbState_tag_yaw :: Float
    ,
    -- | @brief Original unitree_go/msg/UwbState.base_roll field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgUwbState_base_roll :: Float
    ,
    -- | @brief Original unitree_go/msg/UwbState.base_pitch field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgUwbState_base_pitch :: Float
    ,
    -- | @brief Original unitree_go/msg/UwbState.base_yaw field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgUwbState_base_yaw :: Float
    ,
    -- | @brief Original unitree_go/msg/UwbState.joystick field.
    -- | @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_goMsgUwbState_joystick :: [Float]
    ,
    -- | @brief Original unitree_go/msg/UwbState.error_state field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgUwbState_error_state :: Word8
    ,
    -- | @brief Original unitree_go/msg/UwbState.buttons field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgUwbState_buttons :: Word8
    ,
    -- | @brief Original unitree_go/msg/UwbState.enabled_from_app field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgUwbState_enabled_from_app :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgUwbStateCodecIdentity :: String
ros2Unitree_goMsgUwbStateCodecIdentity =
    "UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34"
-- | @brief Encode every field of complete unitree_go/msg/UwbState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgUwbState :: Ros2Unitree_goMsgUwbState -> Either Word32 [Word8]
encodeRos2Unitree_goMsgUwbState value = do
    if length (ros2Unitree_goMsgUwbState_version value) == 2 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_goMsgUwbState_version value)
    chunk0 <- Right item0
    chunk1 <- Right (W.putNumber 1 (ros2Unitree_goMsgUwbState_channel value))
    chunk2 <- Right (W.putNumber 1 (ros2Unitree_goMsgUwbState_joy_mode value))
    chunk3 <- finite4 (ros2Unitree_goMsgUwbState_orientation_est value) castFloatToWord32
    chunk4 <- finite4 (ros2Unitree_goMsgUwbState_pitch_est value) castFloatToWord32
    chunk5 <- finite4 (ros2Unitree_goMsgUwbState_distance_est value) castFloatToWord32
    chunk6 <- finite4 (ros2Unitree_goMsgUwbState_yaw_est value) castFloatToWord32
    chunk7 <- finite4 (ros2Unitree_goMsgUwbState_tag_roll value) castFloatToWord32
    chunk8 <- finite4 (ros2Unitree_goMsgUwbState_tag_pitch value) castFloatToWord32
    chunk9 <- finite4 (ros2Unitree_goMsgUwbState_tag_yaw value) castFloatToWord32
    chunk10 <- finite4 (ros2Unitree_goMsgUwbState_base_roll value) castFloatToWord32
    chunk11 <- finite4 (ros2Unitree_goMsgUwbState_base_pitch value) castFloatToWord32
    chunk12 <- finite4 (ros2Unitree_goMsgUwbState_base_yaw value) castFloatToWord32
    if length (ros2Unitree_goMsgUwbState_joystick value) == 2 then Right () else Left 22
    item13 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_goMsgUwbState_joystick value)
    chunk13 <- Right item13
    chunk14 <- Right (W.putNumber 1 (ros2Unitree_goMsgUwbState_error_state value))
    chunk15 <- Right (W.putNumber 1 (ros2Unitree_goMsgUwbState_buttons value))
    chunk16 <- Right (W.putNumber 1 (ros2Unitree_goMsgUwbState_enabled_from_app value))
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
                , chunk13
                , chunk14
                , chunk15
                , chunk16
                ]
    if length bytes > 55 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/UwbState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgUwbState :: W.Parser Ros2Unitree_goMsgUwbState
readRos2Unitree_goMsgUwbState = do
    value0 <- replicateM 2 (fromIntegral <$> W.number 1)
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value7 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value8 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value9 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value10 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value11 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value12 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value13 <- replicateM 2 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value14 <- fromIntegral <$> W.number 1
    value15 <- fromIntegral <$> W.number 1
    value16 <- fromIntegral <$> W.number 1
    let value =
            Ros2Unitree_goMsgUwbState
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
                value13
                value14
                value15
                value16
    case encodeRos2Unitree_goMsgUwbState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/UwbState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgUwbState :: [Word8] -> Either Word32 Ros2Unitree_goMsgUwbState
decodeRos2Unitree_goMsgUwbState bytes
    | length bytes < 55 || length bytes > 55 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgUwbState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/UwbSwitch value.
-- | @details Retain every original field in declaration order. Canonical extent 1..1 bytes.
data Ros2Unitree_goMsgUwbSwitch = Ros2Unitree_goMsgUwbSwitch
    {
    -- | @brief Original unitree_go/msg/UwbSwitch.enabled field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgUwbSwitch_enabled :: Word8
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgUwbSwitchCodecIdentity :: String
ros2Unitree_goMsgUwbSwitchCodecIdentity =
    "UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5"
-- | @brief Encode every field of complete unitree_go/msg/UwbSwitch.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgUwbSwitch :: Ros2Unitree_goMsgUwbSwitch -> Either Word32 [Word8]
encodeRos2Unitree_goMsgUwbSwitch value = do
    chunk0 <- Right (W.putNumber 1 (ros2Unitree_goMsgUwbSwitch_enabled value))
    let bytes =
            concat
                [ chunk0
                ]
    if length bytes > 1 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/UwbSwitch.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgUwbSwitch :: W.Parser Ros2Unitree_goMsgUwbSwitch
readRos2Unitree_goMsgUwbSwitch = do
    value0 <- fromIntegral <$> W.number 1
    let value =
            Ros2Unitree_goMsgUwbSwitch
                value0
    case encodeRos2Unitree_goMsgUwbSwitch value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/UwbSwitch.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgUwbSwitch :: [Word8] -> Either Word32 Ros2Unitree_goMsgUwbSwitch
decodeRos2Unitree_goMsgUwbSwitch bytes
    | length bytes < 1 || length bytes > 1 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgUwbSwitch bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_go/msg/WirelessController value.
-- | @details Retain every original field in declaration order. Canonical extent 18..18 bytes.
data Ros2Unitree_goMsgWirelessController = Ros2Unitree_goMsgWirelessController
    {
    -- | @brief Original unitree_go/msg/WirelessController.lx field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgWirelessController_lx :: Float
    ,
    -- | @brief Original unitree_go/msg/WirelessController.ly field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgWirelessController_ly :: Float
    ,
    -- | @brief Original unitree_go/msg/WirelessController.rx field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgWirelessController_rx :: Float
    ,
    -- | @brief Original unitree_go/msg/WirelessController.ry field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgWirelessController_ry :: Float
    ,
    -- | @brief Original unitree_go/msg/WirelessController.keys field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_goMsgWirelessController_keys :: Word16
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_goMsgWirelessControllerCodecIdentity :: String
ros2Unitree_goMsgWirelessControllerCodecIdentity =
    "UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438"
-- | @brief Encode every field of complete unitree_go/msg/WirelessController.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_goMsgWirelessController :: Ros2Unitree_goMsgWirelessController -> Either Word32 [Word8]
encodeRos2Unitree_goMsgWirelessController value = do
    chunk0 <- finite4 (ros2Unitree_goMsgWirelessController_lx value) castFloatToWord32
    chunk1 <- finite4 (ros2Unitree_goMsgWirelessController_ly value) castFloatToWord32
    chunk2 <- finite4 (ros2Unitree_goMsgWirelessController_rx value) castFloatToWord32
    chunk3 <- finite4 (ros2Unitree_goMsgWirelessController_ry value) castFloatToWord32
    chunk4 <- Right (W.putNumber 2 (ros2Unitree_goMsgWirelessController_keys value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                ]
    if length bytes > 18 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_go/msg/WirelessController.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_goMsgWirelessController :: W.Parser Ros2Unitree_goMsgWirelessController
readRos2Unitree_goMsgWirelessController = do
    value0 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- fromIntegral <$> W.number 2
    let value =
            Ros2Unitree_goMsgWirelessController
                value0
                value1
                value2
                value3
                value4
    case encodeRos2Unitree_goMsgWirelessController value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_go/msg/WirelessController.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_goMsgWirelessController :: [Word8] -> Either Word32 Ros2Unitree_goMsgWirelessController
decodeRos2Unitree_goMsgWirelessController bytes
    | length bytes < 18 || length bytes > 18 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_goMsgWirelessController bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_hg/msg/BmsCmd value.
-- | @details Retain every original field in declaration order. Canonical extent 41..41 bytes.
data Ros2Unitree_hgMsgBmsCmd = Ros2Unitree_hgMsgBmsCmd
    {
    -- | @brief Original unitree_hg/msg/BmsCmd.cmd field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgBmsCmd_cmd :: Word8
    ,
    -- | @brief Original unitree_hg/msg/BmsCmd.reserve field.
    -- | @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgBmsCmd_reserve :: [Word8]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_hgMsgBmsCmdCodecIdentity :: String
ros2Unitree_hgMsgBmsCmdCodecIdentity =
    "UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de"
-- | @brief Encode every field of complete unitree_hg/msg/BmsCmd.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_hgMsgBmsCmd :: Ros2Unitree_hgMsgBmsCmd -> Either Word32 [Word8]
encodeRos2Unitree_hgMsgBmsCmd value = do
    chunk0 <- Right (W.putNumber 1 (ros2Unitree_hgMsgBmsCmd_cmd value))
    if length (ros2Unitree_hgMsgBmsCmd_reserve value) == 40 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_hgMsgBmsCmd_reserve value)
    chunk1 <- Right item1
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 41 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_hg/msg/BmsCmd.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_hgMsgBmsCmd :: W.Parser Ros2Unitree_hgMsgBmsCmd
readRos2Unitree_hgMsgBmsCmd = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- replicateM 40 (fromIntegral <$> W.number 1)
    let value =
            Ros2Unitree_hgMsgBmsCmd
                value0
                value1
    case encodeRos2Unitree_hgMsgBmsCmd value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_hg/msg/BmsCmd.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_hgMsgBmsCmd :: [Word8] -> Either Word32 Ros2Unitree_hgMsgBmsCmd
decodeRos2Unitree_hgMsgBmsCmd bytes
    | length bytes < 41 || length bytes > 41 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_hgMsgBmsCmd bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_hg/msg/BmsState value.
-- | @details Retain every original field in declaration order. Canonical extent 161..161 bytes.
data Ros2Unitree_hgMsgBmsState = Ros2Unitree_hgMsgBmsState
    {
    -- | @brief Original unitree_hg/msg/BmsState.version_high field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgBmsState_version_high :: Word8
    ,
    -- | @brief Original unitree_hg/msg/BmsState.version_low field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgBmsState_version_low :: Word8
    ,
    -- | @brief Original unitree_hg/msg/BmsState.fn field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgBmsState_fn :: Word8
    ,
    -- | @brief Original unitree_hg/msg/BmsState.cell_vol field.
    -- | @details Original type uint16. Shape array; bound/count 40 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgBmsState_cell_vol :: [Word16]
    ,
    -- | @brief Original unitree_hg/msg/BmsState.bmsvoltage field.
    -- | @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgBmsState_bmsvoltage :: [Word32]
    ,
    -- | @brief Original unitree_hg/msg/BmsState.current field.
    -- | @details Original type int32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgBmsState_current :: Int32
    ,
    -- | @brief Original unitree_hg/msg/BmsState.soc field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgBmsState_soc :: Word8
    ,
    -- | @brief Original unitree_hg/msg/BmsState.soh field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgBmsState_soh :: Word8
    ,
    -- | @brief Original unitree_hg/msg/BmsState.temperature field.
    -- | @details Original type int16. Shape array; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgBmsState_temperature :: [Int16]
    ,
    -- | @brief Original unitree_hg/msg/BmsState.cycle field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgBmsState_cycle :: Word16
    ,
    -- | @brief Original unitree_hg/msg/BmsState.manufacturer_date field.
    -- | @details Original type uint16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgBmsState_manufacturer_date :: Word16
    ,
    -- | @brief Original unitree_hg/msg/BmsState.bmsstate field.
    -- | @details Original type uint32. Shape array; bound/count 5 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgBmsState_bmsstate :: [Word32]
    ,
    -- | @brief Original unitree_hg/msg/BmsState.reserve field.
    -- | @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgBmsState_reserve :: [Word32]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_hgMsgBmsStateCodecIdentity :: String
ros2Unitree_hgMsgBmsStateCodecIdentity =
    "UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d"
-- | @brief Encode every field of complete unitree_hg/msg/BmsState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_hgMsgBmsState :: Ros2Unitree_hgMsgBmsState -> Either Word32 [Word8]
encodeRos2Unitree_hgMsgBmsState value = do
    chunk0 <- Right (W.putNumber 1 (ros2Unitree_hgMsgBmsState_version_high value))
    chunk1 <- Right (W.putNumber 1 (ros2Unitree_hgMsgBmsState_version_low value))
    chunk2 <- Right (W.putNumber 1 (ros2Unitree_hgMsgBmsState_fn value))
    if length (ros2Unitree_hgMsgBmsState_cell_vol value) == 40 then Right () else Left 22
    item3 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 2 (element)))
            (ros2Unitree_hgMsgBmsState_cell_vol value)
    chunk3 <- Right item3
    if length (ros2Unitree_hgMsgBmsState_bmsvoltage value) == 3 then Right () else Left 22
    item4 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_hgMsgBmsState_bmsvoltage value)
    chunk4 <- Right item4
    chunk5 <- Right (W.putNumber 4 (ros2Unitree_hgMsgBmsState_current value))
    chunk6 <- Right (W.putNumber 1 (ros2Unitree_hgMsgBmsState_soc value))
    chunk7 <- Right (W.putNumber 1 (ros2Unitree_hgMsgBmsState_soh value))
    if length (ros2Unitree_hgMsgBmsState_temperature value) == 12 then Right () else Left 22
    item8 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 2 (element)))
            (ros2Unitree_hgMsgBmsState_temperature value)
    chunk8 <- Right item8
    chunk9 <- Right (W.putNumber 2 (ros2Unitree_hgMsgBmsState_cycle value))
    chunk10 <- Right (W.putNumber 2 (ros2Unitree_hgMsgBmsState_manufacturer_date value))
    if length (ros2Unitree_hgMsgBmsState_bmsstate value) == 5 then Right () else Left 22
    item11 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_hgMsgBmsState_bmsstate value)
    chunk11 <- Right item11
    if length (ros2Unitree_hgMsgBmsState_reserve value) == 3 then Right () else Left 22
    item12 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_hgMsgBmsState_reserve value)
    chunk12 <- Right item12
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
    if length bytes > 161 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_hg/msg/BmsState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_hgMsgBmsState :: W.Parser Ros2Unitree_hgMsgBmsState
readRos2Unitree_hgMsgBmsState = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- replicateM 40 (fromIntegral <$> W.number 2)
    value4 <- replicateM 3 (fromIntegral <$> W.number 4)
    value5 <- fromIntegral <$> W.number 4
    value6 <- fromIntegral <$> W.number 1
    value7 <- fromIntegral <$> W.number 1
    value8 <- replicateM 12 (fromIntegral <$> W.number 2)
    value9 <- fromIntegral <$> W.number 2
    value10 <- fromIntegral <$> W.number 2
    value11 <- replicateM 5 (fromIntegral <$> W.number 4)
    value12 <- replicateM 3 (fromIntegral <$> W.number 4)
    let value =
            Ros2Unitree_hgMsgBmsState
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
    case encodeRos2Unitree_hgMsgBmsState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_hg/msg/BmsState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_hgMsgBmsState :: [Word8] -> Either Word32 Ros2Unitree_hgMsgBmsState
decodeRos2Unitree_hgMsgBmsState bytes
    | length bytes < 161 || length bytes > 161 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_hgMsgBmsState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_hg/msg/MotorCmd value.
-- | @details Retain every original field in declaration order. Canonical extent 25..25 bytes.
data Ros2Unitree_hgMsgMotorCmd = Ros2Unitree_hgMsgMotorCmd
    {
    -- | @brief Original unitree_hg/msg/MotorCmd.mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgMotorCmd_mode :: Word8
    ,
    -- | @brief Original unitree_hg/msg/MotorCmd.q field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgMotorCmd_q :: Float
    ,
    -- | @brief Original unitree_hg/msg/MotorCmd.dq field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgMotorCmd_dq :: Float
    ,
    -- | @brief Original unitree_hg/msg/MotorCmd.tau field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgMotorCmd_tau :: Float
    ,
    -- | @brief Original unitree_hg/msg/MotorCmd.kp field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgMotorCmd_kp :: Float
    ,
    -- | @brief Original unitree_hg/msg/MotorCmd.kd field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgMotorCmd_kd :: Float
    ,
    -- | @brief Original unitree_hg/msg/MotorCmd.reserve field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgMotorCmd_reserve :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_hgMsgMotorCmdCodecIdentity :: String
ros2Unitree_hgMsgMotorCmdCodecIdentity =
    "UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb"
-- | @brief Encode every field of complete unitree_hg/msg/MotorCmd.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_hgMsgMotorCmd :: Ros2Unitree_hgMsgMotorCmd -> Either Word32 [Word8]
encodeRos2Unitree_hgMsgMotorCmd value = do
    chunk0 <- Right (W.putNumber 1 (ros2Unitree_hgMsgMotorCmd_mode value))
    chunk1 <- finite4 (ros2Unitree_hgMsgMotorCmd_q value) castFloatToWord32
    chunk2 <- finite4 (ros2Unitree_hgMsgMotorCmd_dq value) castFloatToWord32
    chunk3 <- finite4 (ros2Unitree_hgMsgMotorCmd_tau value) castFloatToWord32
    chunk4 <- finite4 (ros2Unitree_hgMsgMotorCmd_kp value) castFloatToWord32
    chunk5 <- finite4 (ros2Unitree_hgMsgMotorCmd_kd value) castFloatToWord32
    chunk6 <- Right (W.putNumber 4 (ros2Unitree_hgMsgMotorCmd_reserve value))
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
-- | @brief Read every field of nested unitree_hg/msg/MotorCmd.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_hgMsgMotorCmd :: W.Parser Ros2Unitree_hgMsgMotorCmd
readRos2Unitree_hgMsgMotorCmd = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- fromIntegral <$> W.number 4
    let value =
            Ros2Unitree_hgMsgMotorCmd
                value0
                value1
                value2
                value3
                value4
                value5
                value6
    case encodeRos2Unitree_hgMsgMotorCmd value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_hg/msg/MotorCmd.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_hgMsgMotorCmd :: [Word8] -> Either Word32 Ros2Unitree_hgMsgMotorCmd
decodeRos2Unitree_hgMsgMotorCmd bytes
    | length bytes < 25 || length bytes > 25 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_hgMsgMotorCmd bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_hg/msg/HandCmd value.
-- | @details Retain every original field in declaration order. Canonical extent 20..820 bytes.
data Ros2Unitree_hgMsgHandCmd = Ros2Unitree_hgMsgHandCmd
    {
    -- | @brief Original unitree_hg/msg/HandCmd.motor_cmd field.
    -- | @details Original type unitree_hg/msg/MotorCmd. Shape sequence; bound/count 32 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgHandCmd_motor_cmd :: [Ros2Unitree_hgMsgMotorCmd]
    ,
    -- | @brief Original unitree_hg/msg/HandCmd.reserve field.
    -- | @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgHandCmd_reserve :: [Word32]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_hgMsgHandCmdCodecIdentity :: String
ros2Unitree_hgMsgHandCmdCodecIdentity =
    "UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006"
-- | @brief Encode every field of complete unitree_hg/msg/HandCmd.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_hgMsgHandCmd :: Ros2Unitree_hgMsgHandCmd -> Either Word32 [Word8]
encodeRos2Unitree_hgMsgHandCmd value = do
    if length (ros2Unitree_hgMsgHandCmd_motor_cmd value) <= 32 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> encodeRos2Unitree_hgMsgMotorCmd (element))
            (ros2Unitree_hgMsgHandCmd_motor_cmd value)
    chunk0 <- Right (
        W.putNumber 4 (length (ros2Unitree_hgMsgHandCmd_motor_cmd value))
        ++ item0
        )
    if length (ros2Unitree_hgMsgHandCmd_reserve value) == 4 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_hgMsgHandCmd_reserve value)
    chunk1 <- Right item1
    let bytes =
            concat
                [ chunk0
                , chunk1
                ]
    if length bytes > 820 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_hg/msg/HandCmd.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_hgMsgHandCmd :: W.Parser Ros2Unitree_hgMsgHandCmd
readRos2Unitree_hgMsgHandCmd = do
    count0 <- W.number 4
    if count0 > 32 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (readRos2Unitree_hgMsgMotorCmd)
    value1 <- replicateM 4 (fromIntegral <$> W.number 4)
    let value =
            Ros2Unitree_hgMsgHandCmd
                value0
                value1
    case encodeRos2Unitree_hgMsgHandCmd value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_hg/msg/HandCmd.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_hgMsgHandCmd :: [Word8] -> Either Word32 Ros2Unitree_hgMsgHandCmd
decodeRos2Unitree_hgMsgHandCmd bytes
    | length bytes < 20 || length bytes > 820 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_hgMsgHandCmd bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_hg/msg/MotorState value.
-- | @details Retain every original field in declaration order. Canonical extent 53..53 bytes.
data Ros2Unitree_hgMsgMotorState = Ros2Unitree_hgMsgMotorState
    {
    -- | @brief Original unitree_hg/msg/MotorState.mode field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgMotorState_mode :: Word8
    ,
    -- | @brief Original unitree_hg/msg/MotorState.q field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgMotorState_q :: Float
    ,
    -- | @brief Original unitree_hg/msg/MotorState.dq field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgMotorState_dq :: Float
    ,
    -- | @brief Original unitree_hg/msg/MotorState.ddq field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgMotorState_ddq :: Float
    ,
    -- | @brief Original unitree_hg/msg/MotorState.tau_est field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgMotorState_tau_est :: Float
    ,
    -- | @brief Original unitree_hg/msg/MotorState.temperature field.
    -- | @details Original type int16. Shape array; bound/count 2 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Unitree_hgMsgMotorState_temperature :: [Int16]
    ,
    -- | @brief Original unitree_hg/msg/MotorState.vol field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgMotorState_vol :: Float
    ,
    -- | @brief Original unitree_hg/msg/MotorState.sensor field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgMotorState_sensor :: [Word32]
    ,
    -- | @brief Original unitree_hg/msg/MotorState.motorstate field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgMotorState_motorstate :: Word32
    ,
    -- | @brief Original unitree_hg/msg/MotorState.reserve field.
    -- | @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgMotorState_reserve :: [Word32]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_hgMsgMotorStateCodecIdentity :: String
ros2Unitree_hgMsgMotorStateCodecIdentity =
    "UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934"
-- | @brief Encode every field of complete unitree_hg/msg/MotorState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_hgMsgMotorState :: Ros2Unitree_hgMsgMotorState -> Either Word32 [Word8]
encodeRos2Unitree_hgMsgMotorState value = do
    chunk0 <- Right (W.putNumber 1 (ros2Unitree_hgMsgMotorState_mode value))
    chunk1 <- finite4 (ros2Unitree_hgMsgMotorState_q value) castFloatToWord32
    chunk2 <- finite4 (ros2Unitree_hgMsgMotorState_dq value) castFloatToWord32
    chunk3 <- finite4 (ros2Unitree_hgMsgMotorState_ddq value) castFloatToWord32
    chunk4 <- finite4 (ros2Unitree_hgMsgMotorState_tau_est value) castFloatToWord32
    if length (ros2Unitree_hgMsgMotorState_temperature value) == 2 then Right () else Left 22
    item5 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 2 (element)))
            (ros2Unitree_hgMsgMotorState_temperature value)
    chunk5 <- Right item5
    chunk6 <- finite4 (ros2Unitree_hgMsgMotorState_vol value) castFloatToWord32
    if length (ros2Unitree_hgMsgMotorState_sensor value) == 2 then Right () else Left 22
    item7 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_hgMsgMotorState_sensor value)
    chunk7 <- Right item7
    chunk8 <- Right (W.putNumber 4 (ros2Unitree_hgMsgMotorState_motorstate value))
    if length (ros2Unitree_hgMsgMotorState_reserve value) == 4 then Right () else Left 22
    item9 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_hgMsgMotorState_reserve value)
    chunk9 <- Right item9
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
                ]
    if length bytes > 53 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_hg/msg/MotorState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_hgMsgMotorState :: W.Parser Ros2Unitree_hgMsgMotorState
readRos2Unitree_hgMsgMotorState = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value2 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- replicateM 2 (fromIntegral <$> W.number 2)
    value6 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value7 <- replicateM 2 (fromIntegral <$> W.number 4)
    value8 <- fromIntegral <$> W.number 4
    value9 <- replicateM 4 (fromIntegral <$> W.number 4)
    let value =
            Ros2Unitree_hgMsgMotorState
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
    case encodeRos2Unitree_hgMsgMotorState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_hg/msg/MotorState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_hgMsgMotorState :: [Word8] -> Either Word32 Ros2Unitree_hgMsgMotorState
decodeRos2Unitree_hgMsgMotorState bytes
    | length bytes < 53 || length bytes > 53 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_hgMsgMotorState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_hg/msg/PressSensorState value.
-- | @details Retain every original field in declaration order. Canonical extent 104..104 bytes.
data Ros2Unitree_hgMsgPressSensorState = Ros2Unitree_hgMsgPressSensorState
    {
    -- | @brief Original unitree_hg/msg/PressSensorState.pressure field.
    -- | @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgPressSensorState_pressure :: [Float]
    ,
    -- | @brief Original unitree_hg/msg/PressSensorState.temperature field.
    -- | @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgPressSensorState_temperature :: [Float]
    ,
    -- | @brief Original unitree_hg/msg/PressSensorState.lost field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgPressSensorState_lost :: Word32
    ,
    -- | @brief Original unitree_hg/msg/PressSensorState.reserve field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgPressSensorState_reserve :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_hgMsgPressSensorStateCodecIdentity :: String
ros2Unitree_hgMsgPressSensorStateCodecIdentity =
    "UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5"
-- | @brief Encode every field of complete unitree_hg/msg/PressSensorState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_hgMsgPressSensorState :: Ros2Unitree_hgMsgPressSensorState -> Either Word32 [Word8]
encodeRos2Unitree_hgMsgPressSensorState value = do
    if length (ros2Unitree_hgMsgPressSensorState_pressure value) == 12 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_hgMsgPressSensorState_pressure value)
    chunk0 <- Right item0
    if length (ros2Unitree_hgMsgPressSensorState_temperature value) == 12 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_hgMsgPressSensorState_temperature value)
    chunk1 <- Right item1
    chunk2 <- Right (W.putNumber 4 (ros2Unitree_hgMsgPressSensorState_lost value))
    chunk3 <- Right (W.putNumber 4 (ros2Unitree_hgMsgPressSensorState_reserve value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                ]
    if length bytes > 104 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_hg/msg/PressSensorState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_hgMsgPressSensorState :: W.Parser Ros2Unitree_hgMsgPressSensorState
readRos2Unitree_hgMsgPressSensorState = do
    value0 <- replicateM 12 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value1 <- replicateM 12 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value2 <- fromIntegral <$> W.number 4
    value3 <- fromIntegral <$> W.number 4
    let value =
            Ros2Unitree_hgMsgPressSensorState
                value0
                value1
                value2
                value3
    case encodeRos2Unitree_hgMsgPressSensorState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_hg/msg/PressSensorState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_hgMsgPressSensorState :: [Word8] -> Either Word32 Ros2Unitree_hgMsgPressSensorState
decodeRos2Unitree_hgMsgPressSensorState bytes
    | length bytes < 104 || length bytes > 104 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_hgMsgPressSensorState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_hg/msg/IMUState value.
-- | @details Retain every original field in declaration order. Canonical extent 54..54 bytes.
data Ros2Unitree_hgMsgIMUState = Ros2Unitree_hgMsgIMUState
    {
    -- | @brief Original unitree_hg/msg/IMUState.quaternion field.
    -- | @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgIMUState_quaternion :: [Float]
    ,
    -- | @brief Original unitree_hg/msg/IMUState.gyroscope field.
    -- | @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgIMUState_gyroscope :: [Float]
    ,
    -- | @brief Original unitree_hg/msg/IMUState.accelerometer field.
    -- | @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgIMUState_accelerometer :: [Float]
    ,
    -- | @brief Original unitree_hg/msg/IMUState.rpy field.
    -- | @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgIMUState_rpy :: [Float]
    ,
    -- | @brief Original unitree_hg/msg/IMUState.temperature field.
    -- | @details Original type int16. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgIMUState_temperature :: Int16
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_hgMsgIMUStateCodecIdentity :: String
ros2Unitree_hgMsgIMUStateCodecIdentity =
    "UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420"
-- | @brief Encode every field of complete unitree_hg/msg/IMUState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_hgMsgIMUState :: Ros2Unitree_hgMsgIMUState -> Either Word32 [Word8]
encodeRos2Unitree_hgMsgIMUState value = do
    if length (ros2Unitree_hgMsgIMUState_quaternion value) == 4 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_hgMsgIMUState_quaternion value)
    chunk0 <- Right item0
    if length (ros2Unitree_hgMsgIMUState_gyroscope value) == 3 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_hgMsgIMUState_gyroscope value)
    chunk1 <- Right item1
    if length (ros2Unitree_hgMsgIMUState_accelerometer value) == 3 then Right () else Left 22
    item2 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_hgMsgIMUState_accelerometer value)
    chunk2 <- Right item2
    if length (ros2Unitree_hgMsgIMUState_rpy value) == 3 then Right () else Left 22
    item3 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_hgMsgIMUState_rpy value)
    chunk3 <- Right item3
    chunk4 <- Right (W.putNumber 2 (ros2Unitree_hgMsgIMUState_temperature value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                ]
    if length bytes > 54 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_hg/msg/IMUState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_hgMsgIMUState :: W.Parser Ros2Unitree_hgMsgIMUState
readRos2Unitree_hgMsgIMUState = do
    value0 <- replicateM 4 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value1 <- replicateM 3 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value2 <- replicateM 3 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value3 <- replicateM 3 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value4 <- fromIntegral <$> W.number 2
    let value =
            Ros2Unitree_hgMsgIMUState
                value0
                value1
                value2
                value3
                value4
    case encodeRos2Unitree_hgMsgIMUState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_hg/msg/IMUState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_hgMsgIMUState :: [Word8] -> Either Word32 Ros2Unitree_hgMsgIMUState
decodeRos2Unitree_hgMsgIMUState bytes
    | length bytes < 54 || length bytes > 54 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_hgMsgIMUState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_hg/msg/HandState value.
-- | @details Retain every original field in declaration order. Canonical extent 94..5118 bytes.
data Ros2Unitree_hgMsgHandState = Ros2Unitree_hgMsgHandState
    {
    -- | @brief Original unitree_hg/msg/HandState.motor_state field.
    -- | @details Original type unitree_hg/msg/MotorState. Shape sequence; bound/count 32 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgHandState_motor_state :: [Ros2Unitree_hgMsgMotorState]
    ,
    -- | @brief Original unitree_hg/msg/HandState.press_sensor_state field.
    -- | @details Original type unitree_hg/msg/PressSensorState. Shape sequence; bound/count 32
    -- | elements. Preserve declared units, frame, signedness and field order. Backing storage
    -- | belongs to this value; constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgHandState_press_sensor_state :: [Ros2Unitree_hgMsgPressSensorState]
    ,
    -- | @brief Original unitree_hg/msg/HandState.imu_state field.
    -- | @details Original type unitree_hg/msg/IMUState. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Unitree_hgMsgHandState_imu_state :: Ros2Unitree_hgMsgIMUState
    ,
    -- | @brief Original unitree_hg/msg/HandState.power_v field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgHandState_power_v :: Float
    ,
    -- | @brief Original unitree_hg/msg/HandState.power_a field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgHandState_power_a :: Float
    ,
    -- | @brief Original unitree_hg/msg/HandState.system_v field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgHandState_system_v :: Float
    ,
    -- | @brief Original unitree_hg/msg/HandState.device_v field.
    -- | @details Original type float32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgHandState_device_v :: Float
    ,
    -- | @brief Original unitree_hg/msg/HandState.error field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgHandState_error :: [Word32]
    ,
    -- | @brief Original unitree_hg/msg/HandState.reserve field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgHandState_reserve :: [Word32]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_hgMsgHandStateCodecIdentity :: String
ros2Unitree_hgMsgHandStateCodecIdentity =
    "UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6"
-- | @brief Encode every field of complete unitree_hg/msg/HandState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_hgMsgHandState :: Ros2Unitree_hgMsgHandState -> Either Word32 [Word8]
encodeRos2Unitree_hgMsgHandState value = do
    if length (ros2Unitree_hgMsgHandState_motor_state value) <= 32 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> encodeRos2Unitree_hgMsgMotorState (element))
            (ros2Unitree_hgMsgHandState_motor_state value)
    chunk0 <- Right (
        W.putNumber 4 (length (ros2Unitree_hgMsgHandState_motor_state value))
        ++ item0
        )
    if length (ros2Unitree_hgMsgHandState_press_sensor_state value) <= 32 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> encodeRos2Unitree_hgMsgPressSensorState (element))
            (ros2Unitree_hgMsgHandState_press_sensor_state value)
    chunk1 <- Right (
        W.putNumber 4 (length (ros2Unitree_hgMsgHandState_press_sensor_state value))
        ++ item1
        )
    chunk2 <- encodeRos2Unitree_hgMsgIMUState (ros2Unitree_hgMsgHandState_imu_state value)
    chunk3 <- finite4 (ros2Unitree_hgMsgHandState_power_v value) castFloatToWord32
    chunk4 <- finite4 (ros2Unitree_hgMsgHandState_power_a value) castFloatToWord32
    chunk5 <- finite4 (ros2Unitree_hgMsgHandState_system_v value) castFloatToWord32
    chunk6 <- finite4 (ros2Unitree_hgMsgHandState_device_v value) castFloatToWord32
    if length (ros2Unitree_hgMsgHandState_error value) == 2 then Right () else Left 22
    item7 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_hgMsgHandState_error value)
    chunk7 <- Right item7
    if length (ros2Unitree_hgMsgHandState_reserve value) == 2 then Right () else Left 22
    item8 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_hgMsgHandState_reserve value)
    chunk8 <- Right item8
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
                ]
    if length bytes > 5118 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_hg/msg/HandState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_hgMsgHandState :: W.Parser Ros2Unitree_hgMsgHandState
readRos2Unitree_hgMsgHandState = do
    count0 <- W.number 4
    if count0 > 32 then W.reject else pure ()
    value0 <- replicateM (fromIntegral count0) (readRos2Unitree_hgMsgMotorState)
    count1 <- W.number 4
    if count1 > 32 then W.reject else pure ()
    value1 <- replicateM (fromIntegral count1) (readRos2Unitree_hgMsgPressSensorState)
    value2 <- readRos2Unitree_hgMsgIMUState
    value3 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value4 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value5 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value6 <- castWord32ToFloat . fromIntegral <$> W.number 4
    value7 <- replicateM 2 (fromIntegral <$> W.number 4)
    value8 <- replicateM 2 (fromIntegral <$> W.number 4)
    let value =
            Ros2Unitree_hgMsgHandState
                value0
                value1
                value2
                value3
                value4
                value5
                value6
                value7
                value8
    case encodeRos2Unitree_hgMsgHandState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_hg/msg/HandState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_hgMsgHandState :: [Word8] -> Either Word32 Ros2Unitree_hgMsgHandState
decodeRos2Unitree_hgMsgHandState bytes
    | length bytes < 94 || length bytes > 5118 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_hgMsgHandState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_hg/msg/LowCmd value.
-- | @details Retain every original field in declaration order. Canonical extent 897..897 bytes.
data Ros2Unitree_hgMsgLowCmd = Ros2Unitree_hgMsgLowCmd
    {
    -- | @brief Original unitree_hg/msg/LowCmd.mode_pr field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgLowCmd_mode_pr :: Word8
    ,
    -- | @brief Original unitree_hg/msg/LowCmd.mode_machine field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgLowCmd_mode_machine :: Word8
    ,
    -- | @brief Original unitree_hg/msg/LowCmd.motor_cmd field.
    -- | @details Original type unitree_hg/msg/MotorCmd. Shape array; bound/count 35 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgLowCmd_motor_cmd :: [Ros2Unitree_hgMsgMotorCmd]
    ,
    -- | @brief Original unitree_hg/msg/LowCmd.reserve field.
    -- | @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgLowCmd_reserve :: [Word32]
    ,
    -- | @brief Original unitree_hg/msg/LowCmd.crc field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgLowCmd_crc :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_hgMsgLowCmdCodecIdentity :: String
ros2Unitree_hgMsgLowCmdCodecIdentity =
    "UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461"
-- | @brief Encode every field of complete unitree_hg/msg/LowCmd.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_hgMsgLowCmd :: Ros2Unitree_hgMsgLowCmd -> Either Word32 [Word8]
encodeRos2Unitree_hgMsgLowCmd value = do
    chunk0 <- Right (W.putNumber 1 (ros2Unitree_hgMsgLowCmd_mode_pr value))
    chunk1 <- Right (W.putNumber 1 (ros2Unitree_hgMsgLowCmd_mode_machine value))
    if length (ros2Unitree_hgMsgLowCmd_motor_cmd value) == 35 then Right () else Left 22
    item2 <-
        concat <$> mapM
            (\element -> encodeRos2Unitree_hgMsgMotorCmd (element))
            (ros2Unitree_hgMsgLowCmd_motor_cmd value)
    chunk2 <- Right item2
    if length (ros2Unitree_hgMsgLowCmd_reserve value) == 4 then Right () else Left 22
    item3 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_hgMsgLowCmd_reserve value)
    chunk3 <- Right item3
    chunk4 <- Right (W.putNumber 4 (ros2Unitree_hgMsgLowCmd_crc value))
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                , chunk4
                ]
    if length bytes > 897 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_hg/msg/LowCmd.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_hgMsgLowCmd :: W.Parser Ros2Unitree_hgMsgLowCmd
readRos2Unitree_hgMsgLowCmd = do
    value0 <- fromIntegral <$> W.number 1
    value1 <- fromIntegral <$> W.number 1
    value2 <- replicateM 35 (readRos2Unitree_hgMsgMotorCmd)
    value3 <- replicateM 4 (fromIntegral <$> W.number 4)
    value4 <- fromIntegral <$> W.number 4
    let value =
            Ros2Unitree_hgMsgLowCmd
                value0
                value1
                value2
                value3
                value4
    case encodeRos2Unitree_hgMsgLowCmd value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_hg/msg/LowCmd.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_hgMsgLowCmd :: [Word8] -> Either Word32 Ros2Unitree_hgMsgLowCmd
decodeRos2Unitree_hgMsgLowCmd bytes
    | length bytes < 897 || length bytes > 897 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_hgMsgLowCmd bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_hg/msg/LowState value.
-- | @details Retain every original field in declaration order. Canonical extent 1983..1983 bytes.
data Ros2Unitree_hgMsgLowState = Ros2Unitree_hgMsgLowState
    {
    -- | @brief Original unitree_hg/msg/LowState.version field.
    -- | @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgLowState_version :: [Word32]
    ,
    -- | @brief Original unitree_hg/msg/LowState.mode_pr field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgLowState_mode_pr :: Word8
    ,
    -- | @brief Original unitree_hg/msg/LowState.mode_machine field.
    -- | @details Original type uint8. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgLowState_mode_machine :: Word8
    ,
    -- | @brief Original unitree_hg/msg/LowState.tick field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgLowState_tick :: Word32
    ,
    -- | @brief Original unitree_hg/msg/LowState.imu_state field.
    -- | @details Original type unitree_hg/msg/IMUState. Preserve declared units, frame, signedness
    -- | and field order. Backing storage belongs to this value; constructing or copying it creates
    -- | no native ROS owner.
      ros2Unitree_hgMsgLowState_imu_state :: Ros2Unitree_hgMsgIMUState
    ,
    -- | @brief Original unitree_hg/msg/LowState.motor_state field.
    -- | @details Original type unitree_hg/msg/MotorState. Shape array; bound/count 35 elements.
    -- | Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    -- | value; constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgLowState_motor_state :: [Ros2Unitree_hgMsgMotorState]
    ,
    -- | @brief Original unitree_hg/msg/LowState.wireless_remote field.
    -- | @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgLowState_wireless_remote :: [Word8]
    ,
    -- | @brief Original unitree_hg/msg/LowState.reserve field.
    -- | @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgLowState_reserve :: [Word32]
    ,
    -- | @brief Original unitree_hg/msg/LowState.crc field.
    -- | @details Original type uint32. Preserve declared units, frame, signedness and field order.
    -- | Backing storage belongs to this value; constructing or copying it creates no native ROS
    -- | owner.
      ros2Unitree_hgMsgLowState_crc :: Word32
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_hgMsgLowStateCodecIdentity :: String
ros2Unitree_hgMsgLowStateCodecIdentity =
    "UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d"
-- | @brief Encode every field of complete unitree_hg/msg/LowState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_hgMsgLowState :: Ros2Unitree_hgMsgLowState -> Either Word32 [Word8]
encodeRos2Unitree_hgMsgLowState value = do
    if length (ros2Unitree_hgMsgLowState_version value) == 2 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_hgMsgLowState_version value)
    chunk0 <- Right item0
    chunk1 <- Right (W.putNumber 1 (ros2Unitree_hgMsgLowState_mode_pr value))
    chunk2 <- Right (W.putNumber 1 (ros2Unitree_hgMsgLowState_mode_machine value))
    chunk3 <- Right (W.putNumber 4 (ros2Unitree_hgMsgLowState_tick value))
    chunk4 <- encodeRos2Unitree_hgMsgIMUState (ros2Unitree_hgMsgLowState_imu_state value)
    if length (ros2Unitree_hgMsgLowState_motor_state value) == 35 then Right () else Left 22
    item5 <-
        concat <$> mapM
            (\element -> encodeRos2Unitree_hgMsgMotorState (element))
            (ros2Unitree_hgMsgLowState_motor_state value)
    chunk5 <- Right item5
    if length (ros2Unitree_hgMsgLowState_wireless_remote value) == 40 then Right () else Left 22
    item6 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 1 (element)))
            (ros2Unitree_hgMsgLowState_wireless_remote value)
    chunk6 <- Right item6
    if length (ros2Unitree_hgMsgLowState_reserve value) == 4 then Right () else Left 22
    item7 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_hgMsgLowState_reserve value)
    chunk7 <- Right item7
    chunk8 <- Right (W.putNumber 4 (ros2Unitree_hgMsgLowState_crc value))
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
                ]
    if length bytes > 1983 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_hg/msg/LowState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_hgMsgLowState :: W.Parser Ros2Unitree_hgMsgLowState
readRos2Unitree_hgMsgLowState = do
    value0 <- replicateM 2 (fromIntegral <$> W.number 4)
    value1 <- fromIntegral <$> W.number 1
    value2 <- fromIntegral <$> W.number 1
    value3 <- fromIntegral <$> W.number 4
    value4 <- readRos2Unitree_hgMsgIMUState
    value5 <- replicateM 35 (readRos2Unitree_hgMsgMotorState)
    value6 <- replicateM 40 (fromIntegral <$> W.number 1)
    value7 <- replicateM 4 (fromIntegral <$> W.number 4)
    value8 <- fromIntegral <$> W.number 4
    let value =
            Ros2Unitree_hgMsgLowState
                value0
                value1
                value2
                value3
                value4
                value5
                value6
                value7
                value8
    case encodeRos2Unitree_hgMsgLowState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_hg/msg/LowState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_hgMsgLowState :: [Word8] -> Either Word32 Ros2Unitree_hgMsgLowState
decodeRos2Unitree_hgMsgLowState bytes
    | length bytes < 1983 || length bytes > 1983 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_hgMsgLowState bytes
        if null remaining then Right value else Left 22

-- | @brief Complete original unitree_hg/msg/MainBoardState value.
-- | @details Retain every original field in declaration order. Canonical extent 72..72 bytes.
data Ros2Unitree_hgMsgMainBoardState = Ros2Unitree_hgMsgMainBoardState
    {
    -- | @brief Original unitree_hg/msg/MainBoardState.fan_state field.
    -- | @details Original type uint16. Shape array; bound/count 6 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgMainBoardState_fan_state :: [Word16]
    ,
    -- | @brief Original unitree_hg/msg/MainBoardState.temperature field.
    -- | @details Original type int16. Shape array; bound/count 6 elements. Preserve declared units,
    -- | frame, signedness and field order. Backing storage belongs to this value; constructing or
    -- | copying it creates no native ROS owner.
      ros2Unitree_hgMsgMainBoardState_temperature :: [Int16]
    ,
    -- | @brief Original unitree_hg/msg/MainBoardState.value field.
    -- | @details Original type float32. Shape array; bound/count 6 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgMainBoardState_value :: [Float]
    ,
    -- | @brief Original unitree_hg/msg/MainBoardState.state field.
    -- | @details Original type uint32. Shape array; bound/count 6 elements. Preserve declared
    -- | units, frame, signedness and field order. Backing storage belongs to this value;
    -- | constructing or copying it creates no native ROS owner.
      ros2Unitree_hgMsgMainBoardState_state :: [Word32]
    }
    deriving (Eq, Show)
-- | @brief Exact complete canonical codec identity.
-- | @details This identifies field order and finite bounds; it is not a native registration hash.
ros2Unitree_hgMsgMainBoardStateCodecIdentity :: String
ros2Unitree_hgMsgMainBoardStateCodecIdentity =
    "UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6"
-- | @brief Encode every field of complete unitree_hg/msg/MainBoardState.
-- | @details Immutable owned output preserves original units and exact scalar bits. Invalid fields
-- | or counts return 22 before a valid whole result is published.
-- | @param value Complete immutable owned record.
-- | @return Complete canonical bytes or error 22.
encodeRos2Unitree_hgMsgMainBoardState :: Ros2Unitree_hgMsgMainBoardState -> Either Word32 [Word8]
encodeRos2Unitree_hgMsgMainBoardState value = do
    if length (ros2Unitree_hgMsgMainBoardState_fan_state value) == 6 then Right () else Left 22
    item0 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 2 (element)))
            (ros2Unitree_hgMsgMainBoardState_fan_state value)
    chunk0 <- Right item0
    if length (ros2Unitree_hgMsgMainBoardState_temperature value) == 6 then Right () else Left 22
    item1 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 2 (element)))
            (ros2Unitree_hgMsgMainBoardState_temperature value)
    chunk1 <- Right item1
    if length (ros2Unitree_hgMsgMainBoardState_value value) == 6 then Right () else Left 22
    item2 <-
        concat <$> mapM
            (\element -> finite4 (element) castFloatToWord32)
            (ros2Unitree_hgMsgMainBoardState_value value)
    chunk2 <- Right item2
    if length (ros2Unitree_hgMsgMainBoardState_state value) == 6 then Right () else Left 22
    item3 <-
        concat <$> mapM
            (\element -> Right (W.putNumber 4 (element)))
            (ros2Unitree_hgMsgMainBoardState_state value)
    chunk3 <- Right item3
    let bytes =
            concat
                [ chunk0
                , chunk1
                , chunk2
                , chunk3
                ]
    if length bytes > 72 then Left 22 else Right bytes
-- | @brief Read every field of nested unitree_hg/msg/MainBoardState.
-- | @details The parser advances one exclusive immutable input cursor. Finite bounds are checked
-- | before sequence construction; no host action occurs.
-- | @return Complete owned record through the canonical parser, or original error 22.
readRos2Unitree_hgMsgMainBoardState :: W.Parser Ros2Unitree_hgMsgMainBoardState
readRos2Unitree_hgMsgMainBoardState = do
    value0 <- replicateM 6 (fromIntegral <$> W.number 2)
    value1 <- replicateM 6 (fromIntegral <$> W.number 2)
    value2 <- replicateM 6 (castWord32ToFloat . fromIntegral <$> W.number 4)
    value3 <- replicateM 6 (fromIntegral <$> W.number 4)
    let value =
            Ros2Unitree_hgMsgMainBoardState
                value0
                value1
                value2
                value3
    case encodeRos2Unitree_hgMsgMainBoardState value of
        Left _ -> W.reject
        Right _ -> pure value
-- | @brief Decode exactly one complete unitree_hg/msg/MainBoardState.
-- | @details Require the whole bounded canonical extent and reject every trailing byte before
-- | publishing a value.
-- | @param bytes Complete immutable canonical input.
-- | @return Independent complete record or error 22.
decodeRos2Unitree_hgMsgMainBoardState :: [Word8] -> Either Word32 Ros2Unitree_hgMsgMainBoardState
decodeRos2Unitree_hgMsgMainBoardState bytes
    | length bytes < 72 || length bytes > 72 = Left 22
    | otherwise = do
        (value, remaining) <- W.parse readRos2Unitree_hgMsgMainBoardState bytes
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

