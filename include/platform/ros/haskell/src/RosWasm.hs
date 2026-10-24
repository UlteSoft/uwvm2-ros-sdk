-- Guest callbacks remain caller-driven. No native ROS thread enters Haskell.
-- | \@brief Synchronous same-Instance ROS Guest ownership and local scheduling.
--
-- \@details Explicit owners share a nonblocking MVar lease and permanent local
-- retirement. Operations borrow memory-0 buffers only through synchronous FFI
-- return. Use one admitted Guest execution thread; MVar bookkeeping does not
-- create a native executor or establish a matching cross-GHC/RTS closure.
-- Checked statuses use Either RosError. Allocation, user IO and runtime exceptions
-- remain IO exceptions; fatal traps do not promise ordinary Guest cleanup.
-- \@permissions Default rights are empty. Every exact alias, operation, type,
-- direction, quota and deadline comes from independent trusted Host policy.
-- \@see 'Owner', 'open', 'Session', 'Executor'
module RosWasm
  ( Owner, RosError(..), Readiness(..), RPC(..), open, close, revoke
  , publish, logWrite, subscribe, advertiseService, subscribeParameterEvents
  , request, poll, watch, ready, submit, maximumRequest, maximumOutput
  , Session, newSession, sessionOpen, sessionClose
  , Node, newNode, nodeName, nodeOpen, nodeClose
  , Executor, newExecutor, add, spinOnce, executorClose
  ) where

import Control.Concurrent.MVar
import Control.Exception (finally, mask_, onException)
import Data.Bits
import qualified Data.ByteString as B
import qualified Data.Text as T
import qualified Data.Text.Encoding as TE
import Data.Word
import Foreign.ForeignPtr (mallocForeignPtrBytes, withForeignPtr)
import Foreign.Marshal.Alloc (allocaBytes)
import Foreign.Marshal.Utils (fillBytes)
import Foreign.Ptr (Ptr, castPtr, ptrToWordPtr)
import Foreign.Storable (peekByteOff)
import RosWasm.Raw

-- | \@brief Owned original unsigned status with optional observed required extent.
-- \@details Timeout can follow an admitted native effect; copying an error does
-- not make the operation replay-safe or restore a retired owner.
-- \@see 'request', 'poll', 'sessionClose'
data RosError
  = -- | \@brief Construct an ordinary local status value without any Host call.
    -- \@details Preserves supplied fields, including a caller-constructed code 0;
    -- construction does not authenticate an observed error or capacity requirement.
    -- \@see 'code', 'required', 'RosError'
    RosError
      { -- | \@brief Original unsigned Host/local refusal code.
        -- \@details Normal checked operations report failure codes without narrowing.
        -- Public construction/update remains local immutable data, not a Host result.
        -- \@see 'RosError', 'required'
        code :: Word32
      , -- | \@brief Observed required byte extent, or Nothing when none was established.
        -- \@details Checked receive sets Just only for status 90 with an overwritten
        -- maxBound Word64 length sentinel. The extent is advisory, not a reservation.
        -- \@see 'request', 'poll', 'code'
        required :: Maybe Word64
      } deriving (Eq, Show)
-- | \@brief Four-word readiness snapshot data with complete unsigned extents.
-- \@details Only ready obtains an actual Host observation. Direct construction
-- creates ordinary values and cannot reserve events, slots, bytes or permission.
-- \@see 'ready', 'watch', 'submit'
data Readiness
  = -- | \@brief Construct local readiness data without querying the Host.
    -- \@details The four values describe no authenticated observation unless they
    -- came from a successful ready call on the actual granted observer.
    -- \@see 'ready', 'events', 'nextBytes', 'admissionSlots', 'admissionBytes'
    Readiness
      { -- | \@brief Currently observed ready event-record count.
        -- \@details Zero is an idle snapshot and does not close or revoke an owner.
        -- \@see 'ready', 'poll'
        events :: Word64
      , -- | \@brief Complete observed next-event extent in bytes, including its envelope.
        -- \@details A later poll still performs independent state/capacity/quota checks.
        -- \@see 'ready', 'poll', 'events'
        nextBytes :: Word64
      , -- | \@brief Currently observed asynchronous admission-slot budget.
        -- \@details This snapshot reserves no slot for a later Service submission.
        -- \@see 'submit', 'admissionBytes'
        admissionSlots :: Word64
      , -- | \@brief Currently observed asynchronous admission-byte budget.
        -- \@details Exact schema and trusted alias limits can be smaller than this value.
        -- \@see 'submit', 'admissionSlots'
        admissionBytes :: Word64
      } deriving (Eq, Show)
-- A reference to one nonblocking lease/state. Copies share retirement.
-- | \@brief Opaque reference to one original Instance/backend handle generation.
-- \@details Copies share a nonblocking operation lease and permanent retirement.
-- Constructor/state are private. No finalizer, implicit reopen, actor transfer,
-- native pointer or automatic Host retry is supplied by this value.
-- \@see 'open', 'close', 'revoke', 'watch'
newtype Owner = Owner (MVar Word64)

-- | \@brief Inclusive original request-data ceiling, exactly 4193786 bytes.
-- \@details Fits the selected 4 MiB IPC envelope; a schema/alias may require less.
-- This constant allocates no storage and grants no operation quota.
-- \@see 'request', 'publish', 'maximumOutput'
maximumRequest :: Int
maximumRequest = 4193786
-- | \@brief Inclusive checked output-allocation ceiling, exactly 4194304 bytes.
-- \@details A caller-selected capacity reserves no event, admission slot or ROS right.
-- \@see 'request', 'poll', 'maximumRequest'
maximumOutput :: Int
maximumOutput = 4194304
offset :: Ptr a -> Word64
offset = fromIntegral . ptrToWordPtr
word :: Ptr a -> Int -> IO Word64
word p at = go 0 0 where
  go 8 n = pure n
  go i n = do
    b <- peekByteOff p (at+i) :: IO Word8
    go (i+1) (n .|. (fromIntegral b `shiftL` (8*i)))
err :: Word32 -> Either RosError a
err c = Left (RosError c Nothing)
status :: Word32 -> Either RosError ()
status 0 = Right ()
status c = err c

-- Allocate bookkeeping first. Mask asynchronous exceptions through registration.
-- | \@brief Open one exact independently granted alias for the current Instance.
-- \@details Allocates bookkeeping before opening, masks ordinary asynchronous
-- exceptions during registration and checks the returned nonzero u64 handle.
-- Buffer borrows stay live through the single memory-0 raw open call.
-- \@param[in] alias Explicit nonempty policy alias, at most 255 UTF-8 bytes, no NUL.
-- \@return IO with Right shared Owner or original Host RosError; alias/zero-handle
-- refusal uses 22. IO/allocation exceptions remain separate from Either.
-- \@permissions Exact preexisting current-Instance/backend alias grant.
-- \@see 'close', 'revoke', 'sessionOpen'
open :: T.Text -> IO (Either RosError Owner)
open alias
  | B.null b || B.length b > 255 || B.elem 0 b = pure (err 22)
  | otherwise = mask_ $ do
      cell <- newEmptyMVar
      B.useAsCStringLen b $ \(p,n) -> allocaBytes 8 $ \z -> do
        fillBytes z 0 8
        c <- rawCapabilityOpen 0 (offset p) (fromIntegral n) (offset z)
        h <- if c==0 then word z 0 else pure 0
        if c/=0 then pure (err c)
        else if h==0 then pure (err 22)
        else putMVar cell h >> pure (Right (Owner cell))
  where b = TE.encodeUtf8 alias

withOwner :: Owner -> (Word64 -> IO (Either RosError a)) -> IO (Either RosError a)
withOwner (Owner cell) action = mask_ $ do
  leased <- tryTakeMVar cell
  case leased of
    Nothing -> pure (err 17)
    Just 0 -> putMVar cell 0 >> pure (err 9)
    Just h -> action h `finally` putMVar cell h

retire :: (Word64 -> IO Word32) -> Owner -> IO (Either RosError ())
retire operation (Owner cell) = mask_ $ do
  leased <- tryTakeMVar cell
  case leased of
    Nothing -> pure (err 17)
    Just 0 -> putMVar cell 0 >> pure (err 9)
    Just h -> do
      -- All copies see zero before notification; errors cannot resurrect h.
      putMVar cell 0
      status <$> operation h
-- | \@brief Permanently retire the shared local handle before one actual raw close.
-- \@details All copies observe retirement before the Host status is known. A
-- nonzero close result does not resurrect the handle or authorize a close retry.
-- \@param[in] 1 Original shared Owner (point-free definition), borrowed through return.
-- \@return IO with Right () after actual success, or busy 17, stale 9 or original
-- close RosError. No replacement owner or implicit alias regrant is supplied.
-- \@permissions Existing owner identity only.
-- \@see 'revoke', 'sessionClose', 'RosError'
close :: Owner -> IO (Either RosError ())
close = retire rawCapabilityClose
-- | \@brief Permanently retire and explicitly revoke this actual owner generation.
-- \@details Shared references become stale before the single Host notification.
-- Preserve the original failure; revocation does not create a new handle generation.
-- \@param[in] 1 Original shared Owner (point-free definition), borrowed through return.
-- \@return IO with Right () or busy 17, stale 9 or original revoke RosError.
-- \@permissions Existing independently admitted revocation/owner association.
-- \@see 'close', 'sessionClose', 'open'
revoke :: Owner -> IO (Either RosError ())
revoke = retire rawCapabilityRevoke

write :: (Word64 -> Word32 -> Word64 -> Word64 -> IO Word32) -> Owner -> B.ByteString -> IO (Either RosError ())
write operation o b
  | B.length b > maximumRequest = pure (err 90)
  | otherwise = withOwner o $ \h -> B.useAsCStringLen b $ \(p,n) ->
      status <$> operation h 0 (offset p) (fromIntegral n)
-- | \@brief Publish one complete canonical body through the exact topic owner.
-- \@details Borrows immutable ByteString backing storage through a single
-- synchronous memory-0 call. It does not perform a native type lookup or retry.
-- \@param[in] 1 Existing independently granted publisher owner (point-free definition).
-- \@param[in] 2 Complete original selected message bytes, at most maximumRequest.
-- \@return IO with Right () or size 90, busy 17, stale 9 or original Host RosError.
-- An uncertain native effect is not replayed automatically.
-- \@permissions Exact publish alias/type/direction/quota/deadline grant.
-- \@see 'request', 'maximumRequest', 'RosWasm.Typed.publishValue'
publish :: Owner -> B.ByteString -> IO (Either RosError ())
publish = write rawTopicPublish
-- | \@brief Write the exact canonical log body through its independently granted owner.
-- \@details Does not select a logger, change severity policy or convert arbitrary
-- display text into the configured canonical log schema.
-- \@param[in] 1 Existing exact log owner (point-free definition).
-- \@param[in] 2 Complete immutable log bytes, at most maximumRequest, stable until return.
-- \@return IO with Right () or original checked size/owner/Host RosError.
-- \@permissions Exact log alias/schema/direction/quota/deadline grant.
-- \@see 'publish', 'request', 'maximumRequest'
logWrite :: Owner -> B.ByteString -> IO (Either RosError ())
logWrite = write rawLogWrite
activate :: (Word64 -> IO Word32) -> Owner -> IO (Either RosError ())
activate operation o = withOwner o $ \h -> status <$> operation h
-- | \@brief Activate the original subscription through its exact granted owner.
-- \@details No observer, native callback or executor is implicitly created.
-- Poll the actual admitted topic events explicitly on the caller thread.
-- \@param[in] 1 Existing subscription owner (point-free definition).
-- \@return IO with Right () or busy 17, stale 9 or original subscription RosError.
-- \@permissions Exact subscription alias/type/direction/quota/deadline grant.
-- \@see 'poll', 'watch', 'close'
subscribe :: Owner -> IO (Either RosError ())
subscribe = activate rawTopicSubscribe
-- | \@brief Activate the original business-ABI Service server with no payload.
-- \@details Uses the selected existing alias/type policy. Response rights are
-- independent; original-control owned raw12 remains a distinct required path.
-- \@param[in] 1 Existing exact advertisement owner (point-free definition).
-- \@return IO with Right () or busy 17, stale 9 or original activation RosError.
-- \@permissions Exact advertise/type/native-QoS grant; no response grant is added.
-- \@see 'poll', 'RosWasm.Typed.incoming', 'RosWasm.Typed.respondValue'
advertiseService :: Owner -> IO (Either RosError ())
advertiseService = activate rawServiceAdvertise
-- | \@brief Activate an independently granted original parameter-event subscription.
-- \@details Creates no local parameter store, default native Node, observer or
-- mutation permission. Receive selected actual events through explicit poll.
-- \@param[in] 1 Existing exact parameter-event owner (point-free definition).
-- \@return IO with Right () or busy 17, stale 9 or original activation RosError.
-- \@permissions Exact event alias/schema/delivery/quota/deadline grant.
-- \@see 'poll', 'watch', 'ready'
subscribeParameterEvents :: Owner -> IO (Either RosError ())
subscribeParameterEvents = activate rawParameterSubscribeEvents

receive :: Int -> (Word64 -> Word64 -> IO Word32) -> IO (Either RosError B.ByteString)
receive capacity operation
  | capacity<0 || capacity>maximumOutput = pure (err 90)
  | otherwise = do
      backing <- mallocForeignPtrBytes (max 1 capacity)
      withForeignPtr backing $ \out -> allocaBytes 8 $ \z -> do
        fillBytes out 0 capacity
        fillBytes z 255 8
        c <- operation (offset out) (offset z) `onException` fillBytes out 0 capacity
        n <- word z 0
        if c==0 && n<=fromIntegral capacity
          then Right <$> B.packCStringLen (castPtr out,fromIntegral n)
          else do
            fillBytes out 0 capacity
            pure (Left (RosError (if c==0 then 22 else c)
              (if c==90 && n/=maxBound then Just n else Nothing)))

-- | \@brief Execute one original selected RPC with complete canonical request bytes.
-- \@details Holds the owner lease, retains every FFI allocation through return
-- and initializes output length to maxBound Word64. Exposes only a successful
-- observed in-capacity initialized prefix. No partial error output is published.
-- \@param[in] o Existing exact same-Instance/backend owner for this operation.
-- \@param[in] op Closed RPC selector from the exact generated Raw module.
-- \@param[in] input Complete immutable request body, at most maximumRequest bytes.
-- \@param[in] capacity Explicit output byte allocation, 0 through maximumOutput.
-- \@return IO with Right owned successful bytes or original checked RosError.
-- Status 90 sets required only for an overwritten length sentinel; invalid success
-- length uses 22. Timeout/consumption/capacity refusal never implies safe replay.
-- \@permissions Exact operation/alias/type/direction/quota/deadline grant.
-- \@see 'poll', 'required', 'maximumRequest', 'maximumOutput'
request :: Owner -> RPC -> B.ByteString -> Int -> IO (Either RosError B.ByteString)
request o op input capacity
  | B.length input>maximumRequest = pure (err 90)
  | otherwise = withOwner o $ \h -> B.useAsCStringLen input $ \(p,n) ->
      receive capacity $ \out z -> rawRequest op h (offset p) (fromIntegral n) out (fromIntegral capacity) z
-- | \@brief Poll one actual legacy or versioned event into bounded owned bytes.
-- \@details Uses the same checked length sentinel/quarantined output contract
-- as request. A legacy event can already be consumed on capacity/decode refusal;
-- no automatic grow/retry or default idle record is supplied.
-- \@param[in] o Existing exact subscription/observer owner, borrowed through return.
-- \@param[in] capacity Explicit output byte capacity, 0 through maximumOutput.
-- \@param[in] versioned True selects event_poll_v1; False selects event_poll.
-- \@return IO with Right complete successful event bytes or original RosError,
-- including idle/quota 11, denial 13, capacity 90, busy 17 or stale 9.
-- \@permissions Exact independently admitted schema and delivery operation.
-- \@see 'request', 'ready', 'required'
poll :: Owner -> Int -> Bool -> IO (Either RosError B.ByteString)
poll o capacity versioned = withOwner o $ \h -> receive capacity $ \out z ->
  (if versioned then rawEventPollV1 else rawEventPoll) h 0 out (fromIntegral capacity) z
-- | \@brief Register this exact observer against one separately granted source.
-- \@details Leases both distinct underlying MVars through one event_watch call.
-- Watching reserves no future record and grants no source operation permission.
-- \@param[in] o Existing independently granted observer owner.
-- \@param[in] source Distinct live source owner from the same Instance/backend.
-- \@param[in] correlation Exact unsigned application correlation, including 0.
-- \@return IO with Right () or same owner 22, busy 17, stale 9 or original Host error.
-- \@permissions Exact observer/source pairing and independent policy grants.
-- \@see 'ready', 'poll', 'submit'
watch :: Owner -> Owner -> Word64 -> IO (Either RosError ())
watch o@(Owner a) source@(Owner b) correlation
  | a==b = pure (err 22)
  | otherwise = withOwner o $ \h -> withOwner source $ \s -> status <$> rawEventWatch h s correlation
-- | \@brief Read all four words of one actual observer-readiness snapshot.
-- \@details A successful single event_ready call supplies 32 canonical LE bytes.
-- None of its values reserves a later event, admission slot or byte quota.
-- \@param[in] o Existing exact independently granted readiness observer owner.
-- \@return IO with complete actual Readiness or busy 17, stale 9 or original Host error.
-- \@permissions Exact observer/readiness operation and its original limits.
-- \@see 'Readiness', 'watch', 'poll'
ready :: Owner -> IO (Either RosError Readiness)
ready o = withOwner o $ \h -> allocaBytes 32 $ \p -> do
  fillBytes p 0 32
  c <- rawEventReady h 0 (offset p)
  if c/=0 then pure (err c) else do
    a <- word p 0; b <- word p 8; s <- word p 16; n <- word p 24
    pure (Right (Readiness a b s n))
-- | \@brief Submit an original business-ABI Service request with a distinct observer.
-- \@details Holds both owner leases and checks the actual nonzero u64 admitted
-- ID. Submission is not a completed response. Original-control raw12 is separate.
-- \@param[in] o Exact original Service-call owner.
-- \@param[in] observer Distinct live independently granted observer owner.
-- \@param[in] input Complete immutable original request, at most maximumRequest bytes.
-- \@return IO with actual nonzero admitted ID or original RosError; same owner
-- or zero ID uses 22. A possibly admitted native request is not automatically retried.
-- \@permissions Exact call/observer/type/direction/quota/deadline grants.
-- \@see 'watch', 'ready', 'poll'
submit :: Owner -> Owner -> B.ByteString -> IO (Either RosError Word64)
submit o@(Owner a) observer@(Owner b) input
  | a==b = pure (err 22)
  | B.length input>maximumRequest = pure (err 90)
  | otherwise = withOwner o $ \h -> withOwner observer $ \s ->
      B.useAsCStringLen input $ \(p,n) -> allocaBytes 8 $ \z -> do
        fillBytes z 0 8
        c <- rawServiceSubmit h s 0 (offset p) (fromIntegral n) (offset z)
        idValue <- if c==0 then word z 0 else pure 0
        pure (if c/=0 then err c else if idValue==0 then err 22 else Right idValue)

data SessionState = SessionState Bool Int [Owner]
-- | \@brief Bounded local owner group with one shared nonblocking state lease.
-- \@details Retains every opened Owner for explicit reverse-order cleanup.
-- Construction opens no alias or native Node. Closed state and consumed slots
-- are permanent; copies share the same Session state, not independent grants.
-- \@see 'newSession', 'sessionOpen', 'sessionClose'
newtype Session = Session (MVar SessionState)
-- | \@brief Construct an empty local owner group with one explicit capacity.
-- \@details Allocates only Haskell bookkeeping; IO/allocation exceptions remain
-- outside Either. No native context, endpoint, clock or policy is initialized.
-- \@param[in] capacity Positive permanent retained-owner ceiling, at most 1024.
-- \@return IO with a new open Session or Left RosError 22 for invalid capacity.
-- \@see 'Session', 'sessionOpen', 'sessionClose'
newSession :: Int -> IO (Either RosError Session)
newSession capacity
  | capacity<1 || capacity>1024 = pure (err 22)
  | otherwise = Right . Session <$> newMVar (SessionState False capacity [])
withSession :: Session -> (SessionState -> IO (SessionState,Either RosError a)) -> IO (Either RosError a)
withSession (Session cell) action = mask_ $ do
  leased <- tryTakeMVar cell
  case leased of
    Nothing -> pure (err 17)
    Just s -> do
      (next,result) <- action s `onException` putMVar cell s
      putMVar cell next
      pure result
-- | \@brief Open one exact granted alias and retain its shared owner in this group.
-- \@details Holds the nonblocking group lease while checking capacity/opening.
-- A failed open leaves the previous list; independently closed retained owners
-- do not recycle a Session slot or permit implicit alias reuse.
-- \@param[in] session Existing local ownership group, leased through return.
-- \@param[in] alias Exact explicit alias accepted by open; no default is supplied.
-- \@return IO with Right shared Owner or group busy 17, closed 9, capacity 90
-- or original checked open RosError. IO exceptions remain outside Either.
-- \@permissions Exact current-Instance/backend alias grant, supplied independently.
-- \@see 'open', 'sessionClose', 'Owner'
sessionOpen :: Session -> T.Text -> IO (Either RosError Owner)
sessionOpen session alias = withSession session $ \s@(SessionState closed capacity owners) ->
  if closed then pure (s,err 9)
  else if length owners==capacity then pure (s,err 90)
  else do
    result <- open alias
    pure (case result of
      Left e -> (s,Left e)
      Right owner -> (SessionState False capacity (owner:owners),Right owner))
-- | \@brief Preflight every owner lease, then permanently retire the group in reverse.
-- \@details A busy preflight restores all acquired leases before any raw close.
-- After admission, every owner cell is set to 0 before notifications and all
-- retained entries are processed newest-first. Ordinary statuses do not reopen
-- the group. Fatal traps/IO exceptions do not promise complete native cleanup.
-- \@param[in] session Existing shared group whose cleanup is exclusively leased.
-- \@return IO with outer Left for group/owner busy 17 or already closed 9.
-- Outer Right contains one independent result per retained owner in attempt
-- order: an already retired local owner contributes Right () without a Host call;
-- each live owner contributes its actual raw-close status. Inspect every result.
-- \@permissions Existing owner associations only; no reopen, regrant or retry.
-- \@see 'close', 'RosError', 'sessionOpen', 'nodeClose'
sessionClose :: Session -> IO (Either RosError [Either RosError ()])
sessionClose session = withSession session $ \s@(SessionState closed capacity owners) ->
  if closed then pure (s,err 9) else do
    -- Reserve all owner leases before the first retirement. A busy owner
    -- returns 17 without closing any member of the group.
    let acquireAll held [] = pure (Right held)
        acquireAll held (Owner cell:rest) = do
          leased <- tryTakeMVar cell
          case leased of
            Nothing -> mapM_ (\(c,h) -> putMVar c h) held >> pure (err 17)
            Just h -> acquireAll ((cell,h):held) rest
    leased <- acquireAll [] owners
    case leased of
      Left e -> pure (s,Left e)
      Right held -> do
        mapM_ (\(cell,_) -> putMVar cell 0) held
        results <- mapM (\(_,h) -> if h==0 then pure (Right ()) else status <$> rawCapabilityClose h) (reverse held)
        pure (SessionState True capacity owners,Right results)

-- | \@brief Explicit application label with one bounded local Session.
-- \@details Opaque construction creates no native Node/context, namespace,
-- parameter store or alias. Labels do not select trusted native type identities.
-- \@see 'newNode', 'nodeName', 'nodeOpen', 'nodeClose'
data Node = Node
  { -- | \@brief Exact nonempty application UTF-8 label, at most 255 bytes, no NUL.
    -- \@details Read-only selector for local data; it grants no ROS name,
    -- namespace, endpoint or operation permission.
    -- \@see 'newNode', 'nodeOpen'
    nodeName :: T.Text
  , nodeSession :: Session
  }
-- | \@brief Validate a local label and construct bounded Session bookkeeping.
-- \@details No Host alias, native context or resource is opened. Label and
-- Session capacity checks precede all possible later owner operations.
-- \@param[in] label Explicit nonempty label, at most 255 UTF-8 bytes, without NUL.
-- \@param[in] capacity Positive permanent local owner ceiling, at most 1024.
-- \@return IO with Right opaque Node or Left RosError 22 for invalid input.
-- Allocation/IO exceptions remain separate; no recoverable-allocation promise is made.
-- \@see 'Node', 'newSession', 'nodeClose'
newNode :: T.Text -> Int -> IO (Either RosError Node)
newNode label capacity
  | T.null label || B.length b>255 || B.elem 0 b = pure (err 22)
  | otherwise = fmap (fmap (Node label)) (newSession capacity)
  where b=TE.encodeUtf8 label
-- | \@brief Open and retain one exact independently granted alias under this label.
-- \@details Delegates to the Node's bounded Session; its label confers no authority.
-- \@param[in] n Existing local Node retaining its shared Session.
-- \@param[in] 2 Explicit alias accepted by sessionOpen (partially point-free definition).
-- \@return IO with Right shared Owner or original Session/open RosError.
-- \@permissions Exact preexisting current-Instance/backend alias grant.
-- \@see 'sessionOpen', 'open', 'nodeClose'
nodeOpen :: Node -> T.Text -> IO (Either RosError Owner)
nodeOpen n = sessionOpen (nodeSession n)
-- | \@brief Explicitly close the Node's shared local Session in reverse owner order.
-- \@details Uses sessionClose's complete lease preflight and independent status
-- array. Does not destroy, replace or construct a native ROS Node.
-- \@param[in] 1 Existing Node (point-free definition), retained as closed afterward.
-- \@return IO with original sessionClose group refusal or every retained cleanup result.
-- Already retired local entries do not cause a fabricated raw-close call.
-- \@see 'sessionClose', 'close', 'RosError'
nodeClose :: Node -> IO (Either RosError [Either RosError ()])
nodeClose = sessionClose . nodeSession

data Entry = Entry Owner Int (B.ByteString -> IO (Either RosError ()))
data ExecutorState = ExecutorState Bool Int [Entry]
-- | \@brief Bounded caller-driven raw-event callback table with a nonblocking lease.
-- \@details Retains explicit owners and caller closures without opening/closing
-- those owners. No native executor, worker thread, clock or sleep is created.
-- Callbacks receive complete checked event bytes and must decode the exact schema.
-- \@see 'newExecutor', 'add', 'spinOnce', 'executorClose'
newtype Executor = Executor (MVar ExecutorState)
-- | \@brief Construct an empty local executor with an explicit entry ceiling.
-- \@details Allocates only Haskell bookkeeping; creates no ROS owner or callback.
-- \@param[in] capacity Positive permanent entry capacity, inclusive maximum 1024.
-- \@return IO with Right open Executor or Left RosError 22 for invalid capacity.
-- Allocation/IO exceptions remain outside the checked-status result.
-- \@see 'Executor', 'add', 'executorClose'
newExecutor :: Int -> IO (Either RosError Executor)
newExecutor capacity
  | capacity<1 || capacity>1024 = pure (err 22)
  | otherwise = Right . Executor <$> newMVar (ExecutorState False capacity [])
withExecutor :: Executor -> (ExecutorState -> IO (ExecutorState,Either RosError a)) -> IO (Either RosError a)
withExecutor (Executor cell) action = mask_ $ do
  leased <- tryTakeMVar cell
  case leased of
    Nothing -> pure (err 17)
    Just s -> do
      (next,result) <- action s `onException` putMVar cell s
      putMVar cell next
      pure result
-- | \@brief Retain one exact owner, byte capacity and caller-supplied callback.
-- \@details No subscription is activated. Duplicate owner registrations remain
-- separate ordered entries. Retained closures/state live until executorClose;
-- each handler is responsible for complete selected-schema decoding.
-- \@param[in] executor Existing local table, nonblockingly leased during registration.
-- \@param[in] owner Existing exact separately granted event/subscription owner.
-- \@param[in] capacity Explicit per-entry complete-event capacity, 0 through maximumOutput.
-- \@param[in] callback Caller IO handler for immutable complete bytes; retain its
-- captured state. Its original Left status or IO exception is preserved.
-- \@return IO with Right () or busy 17, closed 9 or byte/entry-capacity 90 RosError.
-- \@permissions Registration supplies none; later polls use actual owner grants.
-- \@see 'spinOnce', 'executorClose', 'poll', 'RosWasm.Typed.decodeValue'
add :: Executor -> Owner -> Int -> (B.ByteString -> IO (Either RosError ())) -> IO (Either RosError ())
add executor owner capacity callback = withExecutor executor $ \s@(ExecutorState closed maximumEntries entries) ->
  if closed then pure (s,err 9)
  else if capacity<0 || capacity>maximumOutput || length entries==maximumEntries then pure (s,err 90)
  else pure (ExecutorState False maximumEntries (entries++[Entry owner capacity callback]),Right ())
-- | \@brief Poll each registered entry at most once in one ordered caller-thread step.
-- \@details Skips only actual idle status 11. After successful poll, holds the
-- owner's operation lease while running that entry's callback. Reentry refuses
-- with 17. Other failures stop after already completed effects, without rollback
-- or retry; a handler failure can follow actual event consumption.
-- \@param[in] executor Existing open table, exclusively leased through the whole step.
-- \@return IO with Right completed-callback count for a fully successful step,
-- or original closed/busy/poll/callback RosError. Arbitrary callback/runtime IO
-- exceptions propagate separately while ordinary lease restoration uses finally.
-- \@permissions Only existing exact owner/type/delivery grants are used.
-- \@see 'add', 'poll', 'executorClose', 'Owner'
spinOnce :: Executor -> IO (Either RosError Int)
spinOnce executor = withExecutor executor $ \s@(ExecutorState closed _ entries) ->
  if closed then pure (s,err 9) else do
    let dispatch delivered [] = pure (Right delivered)
        dispatch delivered (Entry owner capacity callback:rest) = do
          result <- poll owner capacity False
          case result of
            Left e | code e==11 -> dispatch delivered rest
            Left e -> pure (Left e)
            Right bytesValue -> do
              outcome <- withOwner owner (\_ -> callback bytesValue)
              case outcome of
                Left e -> pure (Left e)
                Right () -> dispatch (delivered+1) rest
    result <- dispatch 0 entries
    pure (s,result)
-- | \@brief Permanently close the local callback table and release registrations.
-- \@details Drops closures and Owner references without closing, revoking or
-- reopening raw owners. Their Session/caller retains cleanup responsibility.
-- \@param[in] executor Existing table, nonblockingly leased through local mutation.
-- \@return IO with Right (), busy 17 or already closed 9 RosError.
-- \@permissions None; no Host operation or native executor shutdown is issued.
-- \@see 'spinOnce', 'sessionClose', 'close'
executorClose :: Executor -> IO (Either RosError ())
executorClose executor = withExecutor executor $ \s@(ExecutorState closed capacity _) ->
  if closed then pure (s,err 9) else pure (ExecutorState True capacity [],Right ())
