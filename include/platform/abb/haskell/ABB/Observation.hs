-- | @file Observation.hs
-- @brief Represent the complete original ABB ROS 2 canonical value catalog.
-- @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
-- fields, original constants and native defaults; field units and frames follow the retained
-- definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
-- native ROS objects; importing them grants no transport alias.
{-# LANGUAGE ForeignFunctionInterface #-}
-- | @file Observation.hs
-- @brief Genuine Haskell complete records, canonical codecs and ABB ownership.
-- @details The actual WASI GHC backend compiles this module. Immutable lists own
-- every byte. The C adapter contains no vendor codec, owner or polling decision.
module ABB.Observation where

import Control.Exception (mask, onException)
import Control.Monad (replicateM)
import Data.Bits
import Data.Char (ord)
import Data.Int
import Data.Word
import Foreign
import System.Environment (getArgs)
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

-- | @brief Complete original GetSpeedRatio response in controller units.
data Speed = Speed
    { speedRatio :: Word8 -- ^ @brief Original unscaled speed percentage.
    , speedResult :: Word16 -- ^ @brief Original controller result code.
    , speedMessage :: [Word8] -- ^ @brief Owned strict UTF-8 diagnostic, at most 512 bytes.
    } deriving (Eq, Show)

-- | @brief Complete original GetIOSignal response, including refusal diagnostics.
data IOReply = IOReply
    { ioValue :: [Word8] -- ^ @brief Owned strict UTF-8 value, at most 512 bytes.
    , ioResult :: Word16 -- ^ @brief Original controller result code.
    , ioMessage :: [Word8] -- ^ @brief Owned strict UTF-8 diagnostic, at most 512 bytes.
    } deriving (Eq, Show)

-- | @brief Complete original RAPIDTaskState.
data Task = Task
    { taskName :: [Word8] -- ^ @brief Owned original task name, at most 64 UTF-8 bytes.
    , taskActivated :: Bool -- ^ @brief Original activation flag.
    , taskExecution :: Word8 -- ^ @brief Original unscaled execution_state byte.
    , taskMotion :: Bool -- ^ @brief Original motion_task flag.
    } deriving (Eq, Show)

-- | @brief Complete original MechanicalUnitState.
data Unit = Unit
    { unitName :: [Word8] -- ^ @brief Owned original unit name, at most 64 UTF-8 bytes.
    , unitActivated :: Bool -- ^ @brief Original activation flag.
    } deriving (Eq, Show)

-- | @brief Complete ROS 2 Header, flags, task list and mechanical-unit list.
data SystemState = SystemState
    { seconds :: Int32 -- ^ @brief Original signed ROS 2 timestamp seconds.
    , nanoseconds :: Word32 -- ^ @brief Normalized original timestamp nanoseconds.
    , frameID :: [Word8] -- ^ @brief Owned original frame, at most 64 UTF-8 bytes.
    , motorsOn :: Bool -- ^ @brief Original motors_on flag.
    , autoMode :: Bool -- ^ @brief Original auto_mode flag.
    , rapidRunning :: Bool -- ^ @brief Original rapid_running flag.
    , tasks :: [Task] -- ^ @brief At most 16 complete independently owned RAPID tasks.
    , units :: [Unit] -- ^ @brief At most 16 complete independently owned mechanical units.
    } deriving (Eq, Show)

-- | @brief Retain the whole selected typed record without field projection.
data Value = SpeedValue Speed | IOValue IOReply | StateValue SystemState
    deriving (Eq, Show)

-- | @brief Own complete values and preserve all independent failure facts.
data Observation = Observation
    { primary :: Word32 -- ^ @brief First operation, codec or controller error.
    , cleanup :: Word32 -- ^ @brief Independent acquired-owner close status.
    , cleanupPresent :: Bool -- ^ @brief True only after an acquired-owner close attempt.
    , rpcStatus :: Word32 -- ^ @brief Original last unsigned transport status.
    , rpcPresent :: Bool -- ^ @brief True only after a service call or event poll.
    , lengthSlot :: Word64 -- ^ @brief Original length slot; maxBound preserves unwritten state.
    , response :: Maybe Value -- ^ @brief Whole validated owned response, when present.
    , wire :: [Word8] -- ^ @brief Lossless complete source-language re-encoded bytes.
    } deriving (Eq, Show)

-- | @brief Validate strict scalar UTF-8 without NUL.
-- @param bytes Immutable original bytes.
-- @return True only for canonical Unicode scalar sequences, including empty text.
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

-- | @brief Pure exclusive canonical cursor over immutable input.
-- @details A successful parser owns its result and returns the unconsumed suffix.
newtype Parser a = Parser
    { parse :: [Word8] -> Either Word32 (a, [Word8])
        -- ^ @brief Borrow input until return; publish complete owned value or error.
    }

instance Functor Parser where
    fmap function (Parser parser) = Parser $ \bytes -> do
        (value, remaining) <- parser bytes
        pure (function value, remaining)

instance Applicative Parser where
    pure value = Parser $ \bytes -> Right (value, bytes)
    (<*>) = apParser

instance Monad Parser where
    (Parser parser) >>= function = Parser $ \bytes -> do
        (value, remaining) <- parser bytes
        parse (function value) remaining

-- | @brief Apply a parsed function to a following complete parsed value.
-- @param function Complete function parser.
-- @param value Complete following value parser.
-- @return Sequential pure parser preserving the first canonical error.
apParser :: Parser (a -> b) -> Parser a -> Parser b
apParser function value = do
    operation <- function
    argument <- value
    pure (operation argument)

-- | @brief Refuse malformed canonical input.
-- @return Parser producing exact canonical error 22 without host action.
reject :: Parser a
reject = Parser $ const (Left 22)

-- | @brief Take one exact byte extent into independent immutable storage.
-- @param count Nonnegative complete required byte count.
-- @return Exact owned bytes or canonical error 22 on truncation.
takeBytes :: Int -> Parser [Word8]
takeBytes count = Parser $ \bytes ->
    let (value, remaining) = splitAt count bytes
    in if count < 0 || length value /= count
        then Left 22
        else Right (value, remaining)

-- | @brief Read one exact-width unsigned little-endian bit pattern.
-- @param count Original scalar width in bytes.
-- @return Original unscaled bits or canonical error 22 on truncation.
number :: Int -> Parser Word64
number count = do
    bytes <- takeBytes count
    pure (foldr combine 0 (zip [0..] bytes))
  where
    combine (index, value) remaining =
        shiftL (fromIntegral value) (index * 8) .|. remaining

-- | @brief Read one canonical boolean without integer truthiness coercion.
-- @return Native flag or canonical error 22 for bytes above one.
boolean :: Parser Bool
boolean = do
    value <- number 1
    if value > 1 then reject else pure (value /= 0)

-- | @brief Read one finite original Unicode string.
-- @param capacity Inclusive original byte bound.
-- @return Owned strict UTF-8 bytes or canonical error 22.
text :: Int -> Parser [Word8]
text capacity = do
    size <- number 4
    if size > fromIntegral capacity
        then reject
        else do
            bytes <- takeBytes (fromIntegral size)
            if utf8 bytes then pure bytes else reject

-- | @brief Read every original RAPID task field in source order.
-- @return Complete owned task or original canonical error.
taskParser :: Parser Task
taskParser = Task <$> text 64 <*> boolean <*> (fromIntegral <$> number 1) <*> boolean

-- | @brief Read every original mechanical-unit field in source order.
-- @return Complete owned unit or original canonical error.
unitParser :: Parser Unit
unitParser = Unit <$> text 64 <*> boolean

-- | @brief Read a finite sequence of complete original nested records.
-- @param parser Complete native element parser.
-- @return At most 16 owned values or canonical error 22 before allocation.
sequenceParser :: Parser a -> Parser [a]
sequenceParser parser = do
    count <- number 4
    if count > 16 then reject else replicateM (fromIntegral count) parser

-- | @brief Parse every field of one selected complete response.
-- @param operation Exact speed, IO or SystemState selector.
-- @return Complete owned variant or original canonical error.
valueParser :: Word32 -> Parser Value
valueParser 1 = SpeedValue <$>
    (Speed <$> (fromIntegral <$> number 1) <*> (fromIntegral <$> number 2) <*> text 512)
valueParser 2 = IOValue <$>
    (IOReply <$> text 512 <*> (fromIntegral <$> number 2) <*> text 512)
valueParser 3 = do
    sec <- fromIntegral <$> number 4
    nano <- number 4
    if nano >= 1000000000
        then reject
        else StateValue <$>
            (SystemState sec (fromIntegral nano) <$> text 64
                <*> boolean <*> boolean <*> boolean
                <*> sequenceParser taskParser <*> sequenceParser unitParser)
valueParser _ = reject

-- | @brief Decode exactly one whole canonical reply.
-- @param operation Exact speed, IO or SystemState selector.
-- @param bytes Complete immutable canonical input.
-- @return Complete owned value or canonical error 22, including trailing input.
decode :: Word32 -> [Word8] -> Either Word32 Value
decode operation bytes = do
    (value, remaining) <- parse (valueParser operation) bytes
    if null remaining then Right value else Left 22

-- | @brief Emit one exact-width little-endian scalar bit pattern.
-- @param count Original scalar width in bytes.
-- @param value Exact original integral value.
-- @return Independent canonical bytes retaining signed two's-complement bits.
putNumber :: Integral a => Int -> a -> [Word8]
putNumber count value =
    [ fromIntegral (shiftR (fromIntegral value :: Word64) (index * 8))
    | index <- [0 .. count - 1]
    ]

-- | @brief Emit a canonical boolean.
-- @param value Original native flag.
-- @return Exactly one independently owned zero or one byte.
putBool :: Bool -> [Word8]
putBool value = [if value then 1 else 0]

-- | @brief Emit one finite strict Unicode string with its exact byte length.
-- @param capacity Inclusive original byte bound.
-- @param bytes Complete independently owned original value.
-- @return Complete length-prefixed bytes or canonical error 22.
putText :: Int -> [Word8] -> Either Word32 [Word8]
putText capacity bytes
    | length bytes > capacity || not (utf8 bytes) = Left 22
    | otherwise = Right (putNumber 4 (length bytes) ++ bytes)

-- | @brief Emit all original fields of one complete RAPID task.
-- @param value Complete independently owned task.
-- @return Whole canonical bytes or original canonical error.
putTask :: Task -> Either Word32 [Word8]
putTask (Task name active execution motion) = do
    nameBytes <- putText 64 name
    pure (nameBytes ++ putBool active ++ [execution] ++ putBool motion)

-- | @brief Emit all original fields of one complete mechanical unit.
-- @param value Complete independently owned unit.
-- @return Whole canonical bytes or original canonical error.
putUnit :: Unit -> Either Word32 [Word8]
putUnit (Unit name active) = do
    nameBytes <- putText 64 name
    pure (nameBytes ++ putBool active)

-- | @brief Encode every original selected field with strict finite bounds.
-- @param value Complete independently owned selected response.
-- @return Whole canonical bytes or canonical error 22; no partial output escapes.
encode :: Value -> Either Word32 [Word8]
encode (SpeedValue (Speed ratio code message)) = do
    diagnostic <- putText 512 message
    pure ([ratio] ++ putNumber 2 code ++ diagnostic)
encode (IOValue (IOReply value code message)) = do
    payload <- putText 512 value
    diagnostic <- putText 512 message
    pure (payload ++ putNumber 2 code ++ diagnostic)
encode (StateValue (SystemState sec nano frame motors automatic running taskValues unitValues))
    | nano >= 1000000000 || length taskValues > 16 || length unitValues > 16 = Left 22
    | otherwise = do
        header <- putText 64 frame
        taskBytes <- concat <$> mapM putTask taskValues
        unitBytes <- concat <$> mapM putUnit unitValues
        pure (putNumber 4 sec ++ putNumber 4 nano ++ header
            ++ putBool motors ++ putBool automatic ++ putBool running
            ++ putNumber 4 (length taskValues) ++ taskBytes
            ++ putNumber 4 (length unitValues) ++ unitBytes)

-- | @brief Construct an unacquired result without inventing transport facts.
-- @param code Original first local or transport error.
-- @return Complete empty observation with unwritten length sentinel.
empty :: Word32 -> Observation
empty code = Observation code 0 False 0 False maxBound Nothing []

-- | @brief Apply the exact controller acceptance rule after complete decoding.
-- @param value Whole original response, including refusal diagnostics.
-- @return True for accepted controller replies or complete state observations.
accepted :: Value -> Bool
accepted (SpeedValue value) = speedResult value == 1 && speedRatio value <= 100
accepted (IOValue value) = ioResult value == 1
accepted (StateValue _) = True

-- | @brief Own one exact alias through one independent checked close.
-- @param operation 1=speed, 2=IO, 3=SystemState.
-- @param alias Existing complete strict UTF-8 capability alias.
-- @param signal Complete IO name; unused by other operations.
-- @param attempts Finite state poll budget in 1..1000.
-- @return Whole owned response and independent operation, transport and close facts.
-- @details Acquisition is masked against asynchronous exceptions. After open,
-- ordinary failures and exceptions retire the acquired owner once. Only idle
-- 11 permits another poll; an admitted service call is never replayed.
observe :: Word32 -> [Word8] -> [Word8] -> Word32 -> IO Observation
observe operation alias signal attempts
    | operation < 1 || operation > 3 || null alias || length alias > 255
        || not (utf8 alias) || attempts == 0 || attempts > 1000 = pure (empty 22)
    | operation == 2 && (null signal || length signal > 512 || not (utf8 signal)) = pure (empty 22)
    | otherwise = do
        version <- rawVersion
        if version /= 1
            then pure (empty 95)
            else mask $ \restore -> withArray alias $ \aliasPointer -> alloca $ \handlePointer -> do
                poke handlePointer 0
                opened <- rawOpen aliasPointer (fromIntegral (length alias)) handlePointer
                if opened /= 0
                    then pure (empty opened)
                    else do
                        handle <- peek handlePointer
                        result <- restore (receive handle)
                            `onException` (rawClose handle >> pure ())
                        closed <- rawClose handle
                        pure result { cleanup = closed, cleanupPresent = True }
  where
    request = if operation == 2 then putNumber 4 (length signal) ++ signal else []
    receive handle = allocaArray 2327 $ \output -> alloca $ \lengthPointer -> do
        poke lengthPointer maxBound
        (status, rpc, called) <- if operation == 3
            then do
                subscribed <- rawSubscribe handle
                if subscribed /= 0
                    then pure (subscribed, 0, False)
                    else poll handle output lengthPointer attempts
            else withArray request $ \input -> do
                code <- rawCall handle input (fromIntegral (length request)) output 2327 lengthPointer
                pure (code, code, True)
        observedLength <- peek lengthPointer
        if status /= 0
            then pure (Observation status 0 False rpc called observedLength Nothing [])
            else if observedLength > 2327
                then pure (Observation 22 0 False rpc called observedLength Nothing [])
                else do
                    bytes <- peekArray (fromIntegral observedLength) output
                    case decode operation bytes >>= complete of
                        Left code -> pure (Observation code 0 False rpc called observedLength Nothing [])
                        Right (value, encoded) -> pure (Observation
                            (if accepted value then 0 else 5) 0 False rpc called
                            observedLength (Just value) encoded)
    complete value = do
        encoded <- encode value
        pure (value, encoded)
    poll handle output lengthPointer budget = do
        poke lengthPointer maxBound
        code <- rawPoll handle output 2327 lengthPointer
        if code /= 11 || budget == 1
            then pure (code, code, True)
            else do
                paused <- rawPause 10
                if paused /= 0
                    then pure (paused, code, True)
                    else poll handle output lengthPointer (budget - 1)

-- | @brief Emit complete independently owned facts and canonical bytes.
-- @param value Complete response and original status observations.
-- @return Original full status; only the command exit clamps it to 125.
report :: Observation -> IO Word32
report value = withArray (wire value) $ \bytes ->
    rawReport (primary value) (cleanup value) (flag (cleanupPresent value))
        (rpcStatus value) (flag (rpcPresent value)) (lengthSlot value)
        (case response value of Nothing -> 0; Just _ -> 1)
        bytes (fromIntegral (length (wire value)))
  where
    flag selected = if selected then 1 else 0

-- | @brief Encode a Unicode command argument without locale-dependent loss.
-- @param value Original Haskell Unicode argument.
-- @return Independently owned exact scalar UTF-8 bytes.
argumentBytes :: String -> [Word8]
argumentBytes = concatMap encodeCharacter
  where
    continuation scalar = fromIntegral (128 .|. (scalar .&. 63))
    encodeCharacter character =
        let scalar = ord character
        in if scalar < 128
            then [fromIntegral scalar]
            else if scalar < 2048
                then [fromIntegral (192 .|. shiftR scalar 6), continuation scalar]
                else if scalar < 65536
                    then [ fromIntegral (224 .|. shiftR scalar 12)
                         , continuation (shiftR scalar 6), continuation scalar
                         ]
                    else [ fromIntegral (240 .|. shiftR scalar 18)
                         , continuation (shiftR scalar 12)
                         , continuation (shiftR scalar 6), continuation scalar
                         ]

-- | @brief Run one independently compiled genuine Haskell WASI command.
-- @param operation Exact original response selector.
-- @return IO action terminating with the selected original status.
command :: Word32 -> IO ()
command operation = do
    arguments <- getArgs
    let alias = if null arguments then [] else argumentBytes (head arguments)
        signal = if length arguments < 2 then [] else argumentBytes (arguments !! 1)
    value <- observe operation alias signal 1000
    code <- report value
    exitWith (if code == 0 then ExitSuccess else ExitFailure (fromIntegral (min 125 code)))
