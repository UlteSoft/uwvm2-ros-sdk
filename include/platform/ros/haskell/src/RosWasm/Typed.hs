{-# LANGUAGE ScopedTypeVariables #-}
-- | \@brief Complete original canonical record operations over explicit owners.
--
-- \@details Every value retains all selected schema fields and exact bounds.
-- The original business Service/Action routes do not substitute for the distinct
-- original-control owned raw12 transport. IO/runtime exceptions remain outside
-- Either RosError; no thread, clock, native Node or automatic retry is created.
-- \@see 'Canonical', 'publishValue', 'callValue', 'resultValue'
module RosWasm.Typed
  ( Canonical(..), decodeValue, Incoming(..), Terminal(..), publishValue, pollValue
  , callValue, incoming, respondValue, sendGoalValue, cancelOwnGoal
  , feedbackValue, resultValue, actionReplyValue
  ) where
import qualified Data.ByteString as B
import Data.Proxy
import Data.Word
import RosWasm
import qualified RosWasm.Wire as W

-- | \@brief Full original-record codec contract without a native type/authority claim.
-- \@details Instances preserve every field, width, order, bound, default and
-- validation rule. Failures should use original nonzero unsigned codes; helpers
-- preserve the supplied Left status rather than manufacture a default value.
-- \@see 'decodeValue', 'maximumBytes', 'encodeValue', 'readValue'
class Canonical a where
  -- | \@brief Stable inclusive canonical ceiling for the complete selected record.
  -- \@details Must include all nested/string/sequence bounds from the original
  -- definition; it reserves no native queue, allocation or Host quota.
  -- \@param[in] 1 Type proxy identifying the exact complete record instance.
  -- \@return Nonnegative byte ceiling usable by the original bounded wire helpers.
  -- \@see 'encodeValue', 'decodeValue', 'W.runDecoder'
  maximumBytes :: Proxy a -> Int
  -- | \@brief Encode every original field into complete canonical bytes.
  -- \@details Uses exact declaration order and selected scalar/container rules;
  -- successful Empty remains a genuinely complete zero-byte record.
  -- \@param[in] 1 Complete immutable selected record value.
  -- \@return Right complete bytes or original unsigned Left refusal; no partial
  -- output/default field projection may replace the original record.
  -- \@see 'readValue', 'maximumBytes', 'publishValue'
  encodeValue :: a -> Either Word32 B.ByteString
  -- | \@brief Decode every original record field from its enclosing cursor.
  -- \@details Consume only this nested record's prefix; outer decodeValue checks
  -- final exhaustion. Returned ByteString slices retain immutable input storage.
  -- \@return Complete selected-record decoder, preserving original refusal status.
  -- \@see 'encodeValue', 'decodeValue', 'W.Decoder'
  readValue :: W.Decoder a
-- | \@brief Decode exactly one complete original record and reject trailing input.
-- \@details Purely applies the selected stable byte ceiling and complete decoder.
-- No native identity, ROS grant or replacement/default record is created.
-- \@param[in] 1 Complete immutable canonical ByteString (point-free definition).
-- \@return Right complete a, original Left decoder status, 90 for byte bounds
-- or 22 for trailing data. Allocation/runtime exceptions remain separate.
-- \@see 'readValue', 'maximumBytes', 'W.runDecoder'
decodeValue :: forall a. Canonical a => B.ByteString -> Either Word32 a
decodeValue = W.runDecoder (maximumBytes (Proxy :: Proxy a)) readValue
-- | \@brief Complete original business-ABI Service request and its actual ID.
-- \@details Retains all decoded request fields; original-control Services require
-- their independent owned raw12 path. An envelope value itself grants no rights.
-- \@see 'incoming', 'respondValue', 'Canonical'
data Incoming a
  = -- | \@brief Construct an owned local request envelope without a Host call.
    -- \@details Checked incoming supplies its actual nonzero ID and complete value;
    -- direct construction does not authenticate either value or grant response rights.
    -- \@see 'incoming', 'incomingId', 'incomingValue'
    Incoming
      { -- | \@brief Complete original unsigned request-correlation ID.
        -- \@details Checked incoming requires nonzero; use only its original
        -- Instance/backend. Direct construction does not authenticate an ID.
        -- \@see 'incoming', 'respondValue'
        incomingId :: Word64
      , -- | \@brief Complete decoded request with every selected original field.
        -- \@details Any ByteString fields retain immutable backing storage; no
        -- transient Host pointer or fabricated default request is returned.
        -- \@see 'Canonical', 'decodeValue'
        incomingValue :: a
      } deriving (Eq,Show)
-- | \@brief Complete Action terminal result with exact goal and outcome values.
-- \@details The checked receive path preserves the original discriminator and
-- every result field. Timeout/refusal does not become a synthetic terminal result.
-- \@see 'resultValue', 'actionReplyValue', 'Canonical'
data Terminal a
  = -- | \@brief Construct a local terminal envelope without native completion proof.
    -- \@details Checked resultValue verifies actual ID/outcome/body. Direct
    -- construction is data only and cannot establish a native Action result.
    -- \@see 'resultValue', 'goalId', 'outcome', 'result'
    Terminal
      { -- | \@brief Full unsigned goal ID preserved from the checked response.
        -- \@details Checked resultValue verifies equality to the requested nonzero ID.
        -- \@see 'sendGoalValue', 'resultValue'
        goalId :: Word64
      , -- | \@brief Original terminal discriminator, checked as 2 through 4 on receive.
        -- \@details Preserve its selected schema meaning; direct construction alone
        -- does not validate a discriminator or native completion.
        -- \@see 'resultValue', 'actionReplyValue'
        outcome :: Word8
      , -- | \@brief Complete decoded result component with all original fields.
        -- \@details No native struct cast, omitted field projection or default result.
        -- \@see 'Canonical', 'decodeValue', 'resultValue'
        result :: a
      } deriving (Eq,Show)
ros :: Either Word32 a -> Either RosError a
ros = either (\c -> Left (RosError c Nothing)) Right
idBytes :: Word64 -> Either RosError B.ByteString
idBytes 0 = Left (RosError 22 Nothing)
idBytes n = ros (W.encodeUnsigned 8 n)
-- | \@brief Encode and publish one complete selected canonical message.
-- \@details Full pure encoding precedes the single checked original topic call.
-- Conformance/type selection does not establish native type support or authority.
-- \@param[in] owner Existing exact independently granted publisher owner.
-- \@param[in] value Complete immutable original message through encoding/call return.
-- \@return IO with Right () after actual success or original codec/Host RosError.
-- Allocation/runtime exceptions stay outside Either; uncertain effects are not replayed.
-- \@permissions Exact alias/type/direction/quota/deadline publish grant.
-- \@see 'encodeValue', 'publish', 'pollValue'
publishValue :: Canonical a => Owner -> a -> IO (Either RosError ())
publishValue owner value = either (pure . Left) (publish owner) (ros (encodeValue value))
-- | \@brief Poll and fully decode one actual selected canonical message.
-- \@details Uses the original complete byte ceiling and exact-end decoder.
-- A legacy event may already be consumed before a later decode/capacity refusal.
-- \@param[in] owner Existing exact subscription/observer owner, borrowed through return.
-- \@return IO with Right complete a or unchanged poll/codec RosError, including
-- genuine idle 11. No default value or automatic grow/retry is returned.
-- \@permissions Exact independently granted type and delivery admission.
-- \@see 'poll', 'decodeValue', 'maximumBytes'
pollValue :: forall a. Canonical a => Owner -> IO (Either RosError a)
pollValue owner = do
  r <- poll owner (maximumBytes (Proxy :: Proxy a)) False
  pure (r >>= ros . decodeValue)
-- | \@brief Make one original business-ABI Service call with full q/s codecs.
-- \@details Encodes every request field, performs the exact service_call and
-- completely decodes the response. Original-control raw12 remains a separate path.
-- \@param[in] owner Exact pre-granted call owner for this Service/schema.
-- \@param[in] value Complete immutable original request value.
-- \@return IO with Right complete response or original encode/RPC/decode RosError.
-- Timeout can follow native admission; the request is never automatically replayed.
-- \@permissions Exact call/type/direction/quota/deadline grant.
-- \@see 'request', 'decodeValue', 'incoming'
callValue :: forall q s. (Canonical q,Canonical s) => Owner -> q -> IO (Either RosError s)
callValue owner value = case ros (encodeValue value) of
  Left e -> pure (Left e)
  Right b -> do
    r <- request owner RpcServiceCall b (maximumBytes (Proxy :: Proxy s))
    pure (r >>= ros . decodeValue)
-- | \@brief Poll one complete original business-ABI server request envelope.
-- \@details Checks the exact ID8 prefix, nonzero ID and full selected request
-- decode. It does not implement the original-control owned raw12 transport.
-- \@param[in] owner Exact pre-granted server/incoming-delivery owner.
-- \@return IO with actual Incoming ID/value or original poll/codec RosError;
-- malformed/zero ID uses 22. Consumed legacy output is not automatically retried.
-- \@permissions Exact original server/type and delivery admission grant.
-- \@see 'Incoming', 'respondValue', 'poll'
incoming :: forall a. Canonical a => Owner -> IO (Either RosError (Incoming a))
incoming owner = do
  r <- poll owner (8+maximumBytes (Proxy :: Proxy a)) False
  pure (r >>= \b -> do
    n <- ros (W.runDecoder 8 (W.unsigned 8) (B.take 8 b))
    if n==0 then Left (RosError 22 Nothing) else Incoming n <$> ros (decodeValue (B.drop 8 b)))
-- | \@brief Respond once with a complete selected original Service response.
-- \@details Encodes exact request ID8 plus every response field and requires
-- empty successful RPC output. No request/default response is manufactured.
-- \@param[in] owner Independently granted exact response owner for this Service.
-- \@param[in] requestId Actual nonzero incoming ID from the same Instance/backend.
-- \@param[in] value Complete immutable original response value through encoding.
-- \@return IO with Right () after actual success or original codec/Host RosError;
-- zero ID uses 22. An uncertain native send is not replayed automatically.
-- \@permissions Exact respond/type/direction/quota/deadline grant.
-- \@see 'incoming', 'request', 'incomingId'
respondValue :: Canonical a => Owner -> Word64 -> a -> IO (Either RosError ())
respondValue owner requestId value = case (,) <$> idBytes requestId <*> ros (encodeValue value) of
  Left e -> pure (Left e)
  Right (prefix,b) -> fmap (fmap (const ())) (request owner RpcServiceRespond (prefix<>b) 0)
-- | \@brief Submit one complete Action goal and check its actual admitted ID.
-- \@details Requires exactly eight successful output bytes and a nonzero u64
-- ID. Goal admission does not establish feedback or terminal completion.
-- \@param[in] owner Exact independently granted Action goal owner.
-- \@param[in] value Complete immutable selected goal with every original field.
-- \@return IO with actual nonzero Word64 ID or original codec/Host RosError;
-- malformed/zero ID uses 22. A possibly admitted goal is never resubmitted.
-- \@permissions Exact goal/type/direction/quota/deadline grant.
-- \@see 'feedbackValue', 'resultValue', 'cancelOwnGoal'
sendGoalValue :: Canonical a => Owner -> a -> IO (Either RosError Word64)
sendGoalValue owner value = case ros (encodeValue value) of
  Left e -> pure (Left e)
  Right b -> do
    r <- request owner RpcActionSendGoal b 8
    pure (r >>= \bytesValue -> do
      n <- ros (W.runDecoder 8 (W.unsigned 8) bytesValue)
      if n==0 then Left (RosError 22 Nothing) else Right n)
-- | \@brief Request cancellation for one exact goal owned by this Action client.
-- \@details Requires exact one-byte canonical Boolean output. Successful
-- cancellation admission does not manufacture a terminal Action result.
-- \@param[in] owner Independently granted exact own-goal cancellation owner.
-- \@param[in] n Actual nonzero goal ID from the original Instance/backend.
-- \@return IO with the actual native Boolean or original RosError; malformed
-- ID/Boolean/trailing output uses 22. No clock, sleep or automatic retry is used.
-- \@permissions Exact own-goal/type/quota/deadline cancellation grant.
-- \@see 'sendGoalValue', 'resultValue', 'W.boolean'
cancelOwnGoal :: Owner -> Word64 -> IO (Either RosError Bool)
cancelOwnGoal owner n = case idBytes n of
  Left e -> pure (Left e)
  Right b -> do
    r <- request owner RpcActionCancelOwnGoal b 1
    pure (r >>= ros . W.runDecoder 1 W.boolean)
-- | \@brief Receive complete selected feedback for one exact admitted Action goal.
-- \@details Verifies returned ID equality before complete exact-end feedback
-- decoding. Idle/refusal never becomes a last/default feedback value.
-- \@param[in] owner Exact separately granted feedback owner for the selected Action.
-- \@param[in] n Actual nonzero goal ID expected in this Instance/backend.
-- \@return IO with complete a or original RPC/codec RosError; mismatch/truncated
-- ID uses 22. Consumed legacy output is not replayed after decode failure.
-- \@permissions Exact feedback/type/goal/quota/deadline grant.
-- \@see 'sendGoalValue', 'resultValue', 'decodeValue'
feedbackValue :: forall a. Canonical a => Owner -> Word64 -> IO (Either RosError a)
feedbackValue owner n = case idBytes n of
  Left e -> pure (Left e)
  Right b -> do
    r <- request owner RpcActionReceiveFeedback b (8+maximumBytes (Proxy :: Proxy a))
    pure (r >>= \bytesValue -> do
      actual <- ros (W.runDecoder 8 (W.unsigned 8) (B.take 8 bytesValue))
      if actual/=n then Left (RosError 22 Nothing) else ros (decodeValue (B.drop 8 bytesValue)))
-- | \@brief Receive one complete terminal result for the exact original Action goal.
-- \@details Verifies ID equality and original terminal discriminator 2 through 4,
-- then decodes every selected result field without a native struct projection.
-- \@param[in] owner Exact separately granted result owner for the selected Action.
-- \@param[in] n Actual nonzero goal ID expected in this Instance/backend.
-- \@return IO with complete owned Terminal or original RPC/codec RosError;
-- malformed/mismatched envelope uses 22. Refusal creates no terminal outcome.
-- \@permissions Exact result/type/goal/quota/deadline grant.
-- \@see 'Terminal', 'feedbackValue', 'decodeValue'
resultValue :: forall a. Canonical a => Owner -> Word64 -> IO (Either RosError (Terminal a))
resultValue owner n = case idBytes n of
  Left e -> pure (Left e)
  Right b -> do
    r <- request owner RpcActionReceiveResult b (9+maximumBytes (Proxy :: Proxy a))
    pure (r >>= \bytesValue -> do
      (actual,kind) <- ros (W.runDecoder 9 ((,) <$> W.unsigned 8 <*> W.unsigned 1) (B.take 9 bytesValue))
      if actual/=n || kind<2 || kind>4 then Left (RosError 22 Nothing)
      else Terminal n (fromIntegral kind) <$> ros (decodeValue (B.drop 9 bytesValue)))
-- | \@brief Send complete selected Action feedback or terminal response once.
-- \@details Encodes exact ID8, kind and all component fields. The original
-- trusted Action schema determines which complete component each kind requires.
-- \@param[in] owner Exact independently granted Action-response owner.
-- \@param[in] n Actual nonzero incoming goal ID from this Instance/backend.
-- \@param[in] kind Exact original response discriminator, 1 through 4 inclusive.
-- \@param[in] value Complete original component required by the selected kind/schema.
-- \@return IO with Right () after actual success or original codec/Host RosError;
-- bad ID/kind uses 22. An uncertain native response is not automatically retried.
-- \@permissions Exact Action response/type/direction/quota/deadline grant.
-- \@see 'request', 'Terminal', 'encodeValue'
actionReplyValue :: Canonical a => Owner -> Word64 -> Word8 -> a -> IO (Either RosError ())
actionReplyValue owner n kind value
  | kind<1 || kind>4 = pure (Left (RosError 22 Nothing))
  | otherwise = case (,) <$> idBytes n <*> ros (encodeValue value) of
      Left e -> pure (Left e)
      Right (prefix,b) -> fmap (fmap (const ())) (request owner RpcActionRespond (prefix<>B.singleton kind<>b) 0)
