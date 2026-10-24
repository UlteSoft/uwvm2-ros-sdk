{-# LANGUAGE ForeignFunctionInterface #-}
-- | @file NativeCommand.hs
-- @brief Own complete native ROS records, codecs and finite command lifetimes.
-- @details Genuine WASI GHC compiles every application operation. Immutable
-- lists own all bytes; C only adapts scalar transport pointers and reports facts.
module Ros.NativeCommand where

import Control.Exception (mask, onException)
import Data.Bits
import Data.Word
import Foreign
import System.Exit (exitWith, ExitCode(..))

-- | @brief Read the selected transport ABI version.
-- @return Version value, independently from operation errors.
foreign import ccall unsafe "nl_version"
    rawVersion :: IO Word32
-- | @brief Open a caller-selected exact grant alias.
-- @param alias Borrowed immutable alias bytes.
-- @param size Complete byte count.
-- @param handle Writable opaque owner slot.
-- @return Original unsigned ABI error.
foreign import ccall unsafe "nl_open"
    rawOpen :: Ptr Word8 -> Word32 -> Ptr Word64 -> IO Word32
-- | @brief Retire one acquired owner once.
-- @param handle Caller-owned opaque capability identifier.
-- @return Original independent close status.
foreign import ccall unsafe "nl_close"
    rawClose :: Word64 -> IO Word32
-- | @brief Activate one already granted subscription.
-- @param handle Caller-owned exact topic capability.
-- @return Original unsigned ABI status.
foreign import ccall unsafe "nl_subscribe"
    rawSubscribe :: Word64 -> IO Word32
-- | @brief Poll one event without an implicit retry.
-- @param handle Caller-owned exact topic capability.
-- @param output Exclusive writable response bytes.
-- @param capacity Complete storage extent.
-- @param length Sentinel-initialized full-width length slot.
-- @return Original unsigned transport status.
foreign import ccall unsafe "nl_poll"
    rawPoll :: Word64 -> Ptr Word8 -> Word32 -> Ptr Word64 -> IO Word32
-- | @brief Perform one admitted service call without replay.
-- @param handle Caller-owned exact service capability.
-- @param input Complete immutable canonical request.
-- @param size Request byte extent.
-- @param output Exclusive writable response bytes.
-- @param capacity Complete response storage extent.
-- @param length Sentinel-initialized full-width length slot.
-- @return Original unsigned transport status.
foreign import ccall unsafe "nl_call"
    rawCall :: Word64 -> Ptr Word8 -> Word32 -> Ptr Word8 -> Word32
            -> Ptr Word64 -> IO Word32
-- | @brief Delay after an explicit idle observation.
-- @param milliseconds Finite delay in 0..1000 milliseconds.
-- @return Original local pause status.
foreign import ccall unsafe "nl_pause"
    rawPause :: Word32 -> IO Word32
-- | @brief Emit already owned facts and lossless complete canonical bytes.
-- @param primary First operation, codec or controller failure.
-- @param cleanup Independent owner-close status.
-- @param cleanupPresent Whether a close was attempted.
-- @param rpc Original full-width transport status.
-- @param rpcPresent Whether a transport operation occurred.
-- @param length Original full-width length slot.
-- @param present Whether the complete response validated.
-- @param wire Immutable complete source-language re-encoded bytes.
-- @param size Complete initialized wire extent.
-- @return Primary, cleanup or output error, without numeric truncation.
foreign import ccall unsafe "nl_report"
    rawReport :: Word32 -> Word32 -> Word32 -> Word32 -> Word32
              -> Word64 -> Word32 -> Ptr Word8 -> Word32 -> IO Word32

-- | @brief Publish one complete borrowed canonical String without replay.
-- @param owner Exact caller-owned topic handle.
-- @param input Complete immutable canonical bytes borrowed through return.
-- @param size Complete original extent. @return Original unsigned ABI error.
foreign import ccall unsafe "nl_publish"
    rawPublish :: Word64 -> Ptr Word8 -> Word32 -> IO Word32

-- | @brief Own complete original std_msgs String data or both Trigger response fields.
-- @details The Trigger request is empty. Bounds constrain SDK admission, while
-- the original native fields remain unbounded String and Trigger declarations.
data Value
    = StringValue { stringData :: [Word8] } -- ^ @brief Whole strict UTF-8 data, at most 252 bytes.
    | TriggerValue
        { triggerSuccess :: Bool -- ^ @brief Original success flag, including false.
        , triggerMessage :: [Word8] -- ^ @brief Whole diagnostic, at most 251 UTF-8 bytes.
        }
    deriving (Eq, Show)

-- | @brief Own all complete values and independent original failure facts.
data Outcome = Outcome
    { primary :: Word32 -- ^ @brief First local, operation or complete service-refusal status.
    , cleanup :: Word32 -- ^ @brief Independent original once-only close status.
    , cleanupPresent :: Bool -- ^ @brief Whether an acquired owner was retired.
    , rpcStatus :: Word32 -- ^ @brief Original full unsigned last transport status.
    , rpcPresent :: Bool -- ^ @brief Whether a transport operation occurred.
    , lengthSlot :: Word64 -- ^ @brief Original length; maximum preserves unwritten state.
    , response :: Maybe Value -- ^ @brief Whole owned validated response, if any.
    , wire :: [Word8] -- ^ @brief Complete source-language re-encoded canonical bytes.
    } deriving (Eq, Show)

-- | @brief Validate strict Unicode scalar encodings without NUL.
-- @param bytes Immutable complete text. @return True for canonical UTF-8, including empty.
utf8 :: [Word8] -> Bool
utf8 = go 0 0 0
  where
    go :: Int -> Word32 -> Word32 -> [Word8] -> Bool
    go remaining _ _ [] = remaining == 0
    go 0 _ _ (byte : rest)
        | byte == 0 = False
        | byte < 128 = go 0 0 0 rest
        | byte >= 194 && byte <= 223 = go 1 (fromIntegral (byte .&. 31)) 128 rest
        | byte >= 224 && byte <= 239 = go 2 (fromIntegral (byte .&. 15)) 2048 rest
        | byte >= 240 && byte <= 244 = go 3 (fromIntegral (byte .&. 7)) 65536 rest
        | otherwise = False
    go remaining scalar minimumValue (byte : rest)
        | byte .&. 192 /= 128 = False
        | otherwise =
            let value = shiftL scalar 6 .|. fromIntegral (byte .&. 63)
                invalid = value < minimumValue || value > 0x10ffff
                    || (value >= 0xd800 && value <= 0xdfff)
            in if remaining == 1 && invalid
                then False
                else go (remaining - 1) value minimumValue rest

-- | @brief Encode an exact little-endian length and one whole strict UTF-8 field.
-- @param capacity Explicit inclusive SDK quota. @param bytes Complete owned text.
-- @return Whole independent canonical bytes or exact local canonical error 22.
putText :: Int -> [Word8] -> Either Word32 [Word8]
putText capacity bytes
    | length bytes > capacity || not (utf8 bytes) = Left 22
    | otherwise = Right
        ([ fromIntegral (shiftR (fromIntegral (length bytes) :: Word32) (index * 8))
         | index <- [0..3] ] ++ bytes)

-- | @brief Decode one entire finite string, refusing truncation and trailing input.
-- @param capacity Explicit quota. @param bytes Borrowed whole canonical input.
-- @return Whole owned strict UTF-8 text or exact canonical error 22.
getText :: Int -> [Word8] -> Either Word32 [Word8]
getText capacity bytes
    | length bytes < 4 || length bytes > capacity + 4 = Left 22
    | otherwise =
        let (prefix, payload) = splitAt 4 bytes
            count = foldr (\(index, byte) rest ->
                shiftL (fromIntegral byte :: Word32) (index * 8) .|. rest)
                0 (zip [0..] prefix)
        in if count > fromIntegral capacity || fromIntegral count /= length payload || not (utf8 payload)
            then Left 22 else Right payload

-- | @brief Encode every original String or Trigger field in source order.
-- @param value Whole owned typed record. @return Whole canonical bytes or error 22.
encode :: Value -> Either Word32 [Word8]
encode (StringValue bytes) = putText 252 bytes
encode (TriggerValue success message) = do
    diagnostic <- putText 251 message
    pure ((if success then 1 else 0) : diagnostic)

-- | @brief Decode a complete native response without field projection or partial values.
-- @param operation Exactly 2 subscription or 3 service.call.
-- @param bytes Complete immutable input. @return Whole typed value or error 22.
decode :: Word32 -> [Word8] -> Either Word32 Value
decode 2 bytes = StringValue <$> getText 252 bytes
decode 3 (flag : bytes)
    | flag <= 1 = TriggerValue (flag == 1) <$> getText 251 bytes
decode _ _ = Left 22

-- | @brief Construct an unacquired result preserving the unwritten length sentinel.
-- @param code First exact failure. @return Ordinary owned facts without native effects.
empty :: Word32 -> Outcome
empty code = Outcome code 0 False 0 False maxBound Nothing []

-- | @brief Execute one original operation and retire one normally acquired owner once.
-- @param operation Exactly 1 publish, 2 subscribe, or 3 service.call.
-- @param alias Complete existing strict UTF-8 policy alias, synchronously borrowed.
-- @return Whole fields, original RPC/length, and independent cleanup facts.
-- @details Acquisition and retirement are masked against asynchronous exceptions.
-- Ordinary exceptions after acquisition close once before propagation. Only idle
-- 11 permits another of at most 250 polls; an admitted service call never replays.
run :: Word32 -> [Word8] -> IO Outcome
run operation alias
    | operation < 1 || operation > 3 || null alias || length alias > 255 || not (utf8 alias) = pure (empty 22)
    | otherwise = do
        version <- rawVersion
        if version /= 1 then pure (empty 95)
        else mask $ \restore -> withArray alias $ \aliasPointer -> alloca $ \handlePointer -> do
            poke handlePointer 0
            opened <- rawOpen aliasPointer (fromIntegral (length alias)) handlePointer
            if opened /= 0 then pure (empty opened)
            else do
                handle <- peek handlePointer
                if handle == 0 then pure (empty 5)
                else do
                    result <- restore (receive handle) `onException` (rawClose handle >> pure ())
                    closed <- rawClose handle
                    pure result { cleanup = closed, cleanupPresent = True }
  where
    sample = StringValue [104,101,108,108,111,32,110,97,116,105,118,101,32,82,79,83]
    receive handle
        | operation == 1 = case encode sample of
            Left code -> pure (empty code)
            Right bytes -> withArray bytes $ \input -> do
                first <- rawPublish handle input (fromIntegral (length bytes))
                waited <- if first == 0 then rawPause 1000 else pure first
                second <- if waited == 0 then rawPublish handle input (fromIntegral (length bytes)) else pure first
                settled <- if waited == 0 && second == 0 then rawPause 200 else pure (if waited /= 0 then waited else second)
                pure ((empty settled) { rpcStatus = second, rpcPresent = True, wire = bytes })
        | otherwise = allocaArray 256 $ \output -> alloca $ \lengthPointer -> do
            poke lengthPointer maxBound
            subscribed <- if operation == 2 then rawSubscribe handle else pure 0
            if subscribed /= 0 then pure (empty subscribed)
            else do
                (status, rpc) <- if operation == 2 then poll handle output lengthPointer 250
                    else do
                        code <- rawCall handle nullPtr 0 output 256 lengthPointer
                        pure (code, code)
                observedLength <- peek lengthPointer
                let base = (empty status) { rpcStatus = rpc, rpcPresent = True, lengthSlot = observedLength }
                if status /= 0 then pure base
                else if observedLength > 256 then pure base { primary = 22 }
                else do
                    bytes <- peekArray (fromIntegral observedLength) output
                    case decode operation bytes >>= (\value -> do encoded <- encode value; pure (value, encoded)) of
                        Left code -> pure base { primary = code }
                        Right (value, encoded) -> pure base
                            { primary = case value of TriggerValue False _ -> 5; _ -> 0
                            , response = Just value, wire = encoded }
    poll handle output lengthPointer budget = do
        poke lengthPointer maxBound
        code <- rawPoll handle output 256 lengthPointer
        if code /= 11 || budget == 1 then pure (code, code)
        else do
            paused <- rawPause 20
            if paused /= 0 then pure (paused, code)
            else poll handle output lengthPointer (budget - 1)

-- | @brief Emit complete already owned facts after normally retiring the owner.
-- @param value Whole ordinary result. @return First primary, cleanup or stdout error.
report :: Outcome -> IO Word32
report value = withArray (wire value) $ \bytes ->
    rawReport (primary value) (cleanup value) (flag (cleanupPresent value))
        (rpcStatus value) (flag (rpcPresent value)) (lengthSlot value)
        (case response value of Nothing -> 0; Just _ -> 1)
        bytes (fromIntegral (length (wire value)))
  where
    flag selected = if selected then 1 else 0

-- | @brief Execute one genuine Haskell command with the exact trusted sample alias.
-- @param operation Exact original selector. @return IO action with full reported status.
-- @details Only the conventional process exit is clamped to 125; JSON retains full status.
command :: Word32 -> IO ()
command operation = do
    facts <- run operation [115,97,109,112,108,101]
    code <- report facts
    exitWith (if code == 0 then ExitSuccess else ExitFailure (fromIntegral (min 125 code)))

