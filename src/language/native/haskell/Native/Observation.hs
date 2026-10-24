{-# LANGUAGE ForeignFunctionInterface #-}
-- | @file Observation.hs
-- @brief Own complete Native native observations in a genuine Haskell command.
-- @details Immutable records and bytes belong to this guest. Haskell owns every
-- handle decision, poll, complete codec and close result. Fatal runtime failures
-- cannot promise ordinary cleanup; the scalar C adapter owns no capability.
module Native.Observation where

import Data.Bits
import Data.Char (ord)
import Data.Word
import Foreign
import System.Environment (getArgs)
import System.Exit
import qualified Native.Wire as W

-- | @brief Borrow exact scalar infrastructure from language/native/abi.h.
-- @details Pointers reference live guest-owned storage borrowed only until return.
foreign import ccall unsafe "nl_version"
    rawVersion :: IO Word32
foreign import ccall unsafe "nl_open"
    rawOpen :: Ptr Word8 -> Word32 -> Ptr Word64 -> IO Word32
foreign import ccall unsafe "nl_close"
    rawClose :: Word64 -> IO Word32
foreign import ccall unsafe "nl_subscribe"
    rawSubscribe :: Word64 -> IO Word32
foreign import ccall unsafe "nl_poll"
    rawPoll :: Word64 -> Ptr Word8 -> Word32 -> Ptr Word64 -> IO Word32
foreign import ccall unsafe "nl_pause"
    rawPause :: Word32 -> IO Word32
foreign import ccall unsafe "nl_report"
    rawReport :: Word32 -> Word32 -> Word32 -> Word32 -> Word32 -> Word64
              -> Word32 -> Word32 -> Ptr Word8 -> Word32 -> IO Word32

-- | @brief Own one complete original record and independent observation facts.
-- @details Read response only when Just. Copies create no native ROS authority.
data Observation value = Observation
    { primary :: Word32
        -- ^ @brief First original validation, transport or complete-codec error.
    , cleanup :: Word32
        -- ^ @brief Independent original acquired-owner close status.
    , cleanupPresent :: Bool
        -- ^ @brief True only after one acquired-owner close attempt.
    , rpcStatus :: Word32
        -- ^ @brief Original final event-poll status before complete decoding.
    , rpcPresent :: Bool
        -- ^ @brief True only after an actual event poll returned.
    , lengthSlot :: Word64
        -- ^ @brief Original full-width slot; maximum preserves the unwritten sentinel.
    , polls :: Word32
        -- ^ @brief Actual event polls, including idle results.
    , response :: Maybe value
        -- ^ @brief Entire independently owned original record; Nothing on refusal.
    , wire :: [Word8]
        -- ^ @brief Complete owned source-language canonical bytes; empty on refusal.
    } deriving (Eq, Show)

-- | @brief Construct absent local result storage without acquiring an owner.
-- @return Empty ordinary result with the original unwritten length sentinel.
empty :: Observation value
empty = Observation 0 0 False 0 False maxBound 0 Nothing []

-- | @brief Receive one whole original record through one retained subscription.
-- @param decoder Exact complete original source-language decoder.
-- @param encoder Exact complete original source-language encoder.
-- @param capacity Exact finite canonical byte ceiling of the original record.
-- @param aliasBytes Borrowed strict UTF-8 alias, 1..255 bytes, stable until return.
-- @param attempts Finite total event-poll budget in 1..250.
-- @return Entire owned value and independent primary, poll, length and close facts.
-- @details Only idle 11 permits another poll, after a real twenty-millisecond
-- WASI wait. Every ordinary successful acquisition closes once before return.
receive :: ([Word8] -> Either Word32 value) -> (value -> Either Word32 [Word8])
        -> Int -> [Word8] -> Word32 -> IO (Observation value)
receive decoder encoder capacity aliasBytes attempts
    | null aliasBytes || length aliasBytes > 255 || not (W.utf8 aliasBytes)
        || attempts == 0 || attempts > 250 || capacity < 0 || capacity > 32768 =
        pure empty {primary = 22}
    | otherwise = do
        version <- rawVersion
        if version /= 1
            then pure empty {primary = 95}
            else withArrayLen aliasBytes $ \count aliasPointer -> alloca $ \ownerSlot -> do
                opened <- rawOpen aliasPointer (fromIntegral count) ownerSlot
                if opened /= 0
                    then pure empty {primary = opened}
                    else do
                        owner <- peek ownerSlot
                        subscribed <- rawSubscribe owner
                        observed <- if subscribed /= 0
                            then pure empty {primary = subscribed}
                            else allocaBytes capacity $ \buffer -> alloca $ \lengthPointer -> do
                                let loop index = do
                                        poke lengthPointer maxBound
                                        code <- rawPoll owner buffer (fromIntegral capacity) lengthPointer
                                        extent <- peek lengthPointer
                                        let result = empty {primary = code, rpcStatus = code,
                                                rpcPresent = True, lengthSlot = extent, polls = index + 1}
                                        if code == 11 && index + 1 < attempts
                                            then do
                                                paused <- rawPause 20
                                                if paused /= 0
                                                    then pure result {primary = paused}
                                                    else loop (index + 1)
                                            else if code /= 0
                                                then pure result
                                                else if extent > fromIntegral capacity
                                                    then pure result {primary = 22}
                                                    else do
                                                        bytes <- peekArray (fromIntegral extent) buffer
                                                        case decoder bytes of
                                                            Left failure -> pure result {primary = failure}
                                                            Right value -> case encoder value of
                                                                Left failure -> pure result {primary = failure}
                                                                Right encoded ->
                                                                    if length encoded > capacity
                                                                        then pure result {primary = 22}
                                                                        else pure result {
                                                                            response = Just value, wire = encoded}
                                loop 0
                        closed <- rawClose owner
                        pure observed {cleanup = closed, cleanupPresent = True}

-- | @brief Emit all accepted canonical bytes and independent observation facts.
-- @param value Borrowed complete observation, stable through stdout flush.
-- @return Primary, independent close, then stdout error; no numeric narrowing.
report :: Observation value -> IO Word32
report value = withArrayLen (wire value) $ \count bytes ->
    rawReport (primary value) (cleanup value) (flag (cleanupPresent value)) (rpcStatus value)
        (flag (rpcPresent value)) (lengthSlot value) (flag present) (polls value) bytes (fromIntegral count)
    where
        flag True = 1
        flag False = 0
        present = case response value of
            Just _ -> True
            Nothing -> False

-- | @brief Encode one original command argument into complete strict UTF-8 bytes.
-- @param value Original Haskell command argument; no native pointer escapes.
-- @return Owned bytes; the observation performs the final strict alias validation.
argumentBytes :: String -> [Word8]
argumentBytes = concatMap encode
    where
        encode character
            | point < 0x80 = [fromIntegral point]
            | point < 0x800 = [fromIntegral (0xc0 .|. shiftR point 6), continuation point]
            | point < 0x10000 = [fromIntegral (0xe0 .|. shiftR point 12),
                continuation (shiftR point 6), continuation point]
            | otherwise = [fromIntegral (0xf0 .|. shiftR point 18),
                continuation (shiftR point 12), continuation (shiftR point 6), continuation point]
            where
                point = ord character
        continuation value = fromIntegral (0x80 .|. (value .&. 63))

-- | @brief Execute one actual typed observer with exactly one explicit alias argument.
-- @param observer Genuine backend-specific complete original record observer.
-- @return Ordinary WASI process completion; exit status is clamped only at this boundary.
-- @details The observer closes its retained owner before stdout is flushed.
command :: ([Word8] -> Word32 -> IO (Observation value)) -> IO ()
command observer = do
    arguments <- getArgs
    case arguments of
        [aliasBytes] -> do
            value <- observer (argumentBytes aliasBytes) 250
            status <- report value
            if status == 0
                then exitSuccess
                else exitWith (ExitFailure (fromIntegral (min 125 status)))
        _ -> exitWith (ExitFailure 22)

-- | @brief Borrow one synchronous operation over live guest-owned spans.
foreign import ccall unsafe "nl_request"
    rawRequest :: Word32 -> Word64 -> Ptr Word8 -> Word32 -> Ptr Word8
               -> Word32 -> Ptr Word64 -> IO Word32

-- | @brief Execute one exact service/action request and decode its entire response.
-- @param decoder Complete original transactional source-language decoder.
-- @param encoder Complete original source-language encoder.
-- @param capacity Exact response canonical byte ceiling, 0..32768.
-- @param aliasBytes Borrowed strict UTF-8 exact-operation alias, 1..255 bytes.
-- @param operation Service call 1, send goal 2, cancel own 3, feedback 4, result 5.
-- @param input Complete source-language canonical request, at most 32768 bytes.
-- @return Entire owned response and independent request/close facts.
-- @details No failure, timeout or ambiguous effect is replayed. Every normal
-- acquired owner closes once; fatal runtime termination cannot promise cleanup.
request :: ([Word8] -> Either Word32 value) -> (value -> Either Word32 [Word8])
        -> Int -> [Word8] -> Word32 -> [Word8] -> IO (Observation value)
request decoder encoder capacity aliasBytes operation input
    | null aliasBytes || length aliasBytes > 255 || not (W.utf8 aliasBytes)
        || operation < 1 || operation > 5 || length input > 32768
        || capacity < 0 || capacity > 32768 = pure empty {primary = 22}
    | otherwise = do
        version <- rawVersion
        if version /= 1
            then pure empty {primary = 95}
            else withArrayLen aliasBytes $ \aliasCount aliasPointer -> alloca $ \ownerSlot -> do
                opened <- rawOpen aliasPointer (fromIntegral aliasCount) ownerSlot
                if opened /= 0
                    then pure empty {primary = opened}
                    else do
                        owner <- peek ownerSlot
                        observed <- withArrayLen input $ \inputCount inputPointer ->
                            allocaBytes (max 1 capacity) $ \buffer -> alloca $ \lengthPointer -> do
                                poke lengthPointer maxBound
                                code <- rawRequest operation owner inputPointer (fromIntegral inputCount)
                                    buffer (fromIntegral capacity) lengthPointer
                                extent <- peek lengthPointer
                                let result = empty {primary = code, rpcStatus = code,
                                        rpcPresent = True, lengthSlot = extent}
                                if code /= 0
                                    then pure result
                                    else if extent > fromIntegral capacity
                                        then pure result {primary = 22}
                                        else do
                                            bytes <- peekArray (fromIntegral extent) buffer
                                            case decoder bytes of
                                                Left failure -> pure result {primary = failure}
                                                Right value -> case encoder value of
                                                    Left failure -> pure result {primary = failure}
                                                    Right encoded ->
                                                        if length encoded > capacity
                                                            then pure result {primary = 22}
                                                            else pure result {response = Just value, wire = encoded}
                        closed <- rawClose owner
                        pure observed {cleanup = closed, cleanupPresent = True}
