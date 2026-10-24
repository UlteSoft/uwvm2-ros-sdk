-- @file Client.hs
-- @brief Provide the complete agibot Client.hs source contract.
-- @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
-- encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
{-# LANGUAGE ForeignFunctionInterface #-}
-- SPDX-License-Identifier: Apache-2.0
-- | Complete AimDK 1.1.0 main observations in a wasm32-wasip1 command.
--
-- The statically linked C adapter owns one ROS capability for each synchronous
-- operation and closes it before returning. All original fields are retained in
-- UTF-8 JSON. Signed and unsigned 64-bit fields use exact decimal JSON strings.
-- No native ROS library, host Haskell process, callback or worker is involved.
module Agibot.Client
    ( Observation(..)
    , queryMode
    , nextMotionState
    , listResources
    , writeObservation
    ) where

import Data.Bits ((.&.), (.|.), shiftR)
import Data.Char (ord)
import Data.Int (Int64)
import Data.Word (Word8, Word32)
import Foreign (Ptr, alloca, allocaBytes, peek, peekArray, poke, withArrayLen)

-- | Owned operation outcome. JSON bytes are initialized only on success.
-- Cleanup failure is independent of the primary error. A nonzero vendor code
-- is an original service response, not an ABI error or an instruction to retry.
data Observation = Observation
    { errorCode :: Word32
    , cleanupError :: Word32
    , vendorCode :: Int64
    , jsonBytes :: [Word8]
    } deriving (Eq, Show)

-- | Borrow arrays only for this immediate call; C retains no Haskell pointer.
foreign import ccall unsafe "agibot_json_observe"
    observeRaw :: Word32 -> Ptr Word8 -> Word32 -> Word32 -> Ptr Word8 -> Word32
               -> Ptr Word32 -> Ptr Word32 -> Ptr Int64 -> IO Word32

-- | Write the complete JSON and newline to WASI stdout, returning errno 0 or 5.
foreign import ccall unsafe "agibot_guest_write_json"
    writeRaw :: Ptr Word8 -> Word32 -> IO Word32

-- | Encode Unicode scalar values without depending on the process locale.
-- Surrogates are rejected instead of producing an invalid UTF-8 alias.
utf8 :: String -> Maybe [Word8]
utf8 = fmap concat . traverse encode
  where
    byte = fromIntegral
    encode character
        | value >= 0xd800 && value <= 0xdfff = Nothing
        | value < 0x80 = Just [byte value]
        | value < 0x800 = Just
            [byte (0xc0 .|. shiftR value 6), byte (0x80 .|. (value .&. 0x3f))]
        | value < 0x10000 = Just
            [byte (0xe0 .|. shiftR value 12), byte (0x80 .|. (shiftR value 6 .&. 0x3f)),
             byte (0x80 .|. (value .&. 0x3f))]
        | otherwise = Just
            [byte (0xf0 .|. shiftR value 18), byte (0x80 .|. (shiftR value 12 .&. 0x3f)),
             byte (0x80 .|. (shiftR value 6 .&. 0x3f)), byte (0x80 .|. (value .&. 0x3f))]
      where value = ord character

-- | Allocate exclusive bounded output and metadata slots for one exchange.
-- Invalid aliases or deadlines return errno 22 before acquiring a capability.
-- Independent invocations share no mutable storage. The guest remains single
-- threaded; no language scheduler is used to dispatch ROS callbacks.
observe :: Word32 -> String -> Word32 -> IO Observation
observe operation capabilityAlias timeoutMilliseconds =
    case utf8 capabilityAlias of
        Just name
            | not (null name) && length name <= 255 &&
              timeoutMilliseconds >= 1 && timeoutMilliseconds <= 30000 ->
                withArrayLen name $ \count pointer ->
                allocaBytes 65536 $ \output ->
                alloca $ \written ->
                alloca $ \cleanup ->
                alloca $ \vendor -> do
                    poke written 0
                    poke cleanup 0
                    poke vendor 0
                    code <- observeRaw operation pointer (fromIntegral count)
                        timeoutMilliseconds output 65536 written cleanup vendor
                    size <- peek written
                    closeCode <- peek cleanup
                    responseCode <- peek vendor
                    bytes <- if code == 0 && size <= 65536
                        then peekArray (fromIntegral size) output else pure []
                    pure (Observation code closeCode responseCode bytes)
        _ -> pure (Observation 22 0 0 [])

-- | Query original GetMcAction once. The service is never automatically replayed.
-- The argument is an explicitly granted alias of 1..255 UTF-8 bytes. The result
-- owns the full response JSON, transport errno and independent close outcome.
queryMode :: String -> IO Observation
queryMode capabilityAlias = observe 1 capabilityAlias 3000

-- | Receive one complete McCommonState before the monotonic deadline, 1..30000 ms.
-- Requires the monotonic-clock grant. Only an empty queue is polled again;
-- malformed records and transport failures end the operation and close once.
nextMotionState :: String -> Word32 -> IO Observation
nextMotionState capabilityAlias timeoutMilliseconds = observe 2 capabilityAlias timeoutMilliseconds

-- | Enumerate original X2 Ultra resources and every bounded file entry.
-- This GetRobotResources operation does not select or play any action.
listResources :: String -> IO Observation
listResources capabilityAlias = observe 3 capabilityAlias 3000

-- | Emit owned successful JSON without converting UTF-8 bytes through a locale.
-- Returns the primary error, cleanup error, or actual WASI output error.
-- The response's vendor code remains available to the caller independently.
writeObservation :: Observation -> IO Word32
writeObservation result
    | errorCode result /= 0 = pure (errorCode result)
    | cleanupError result /= 0 = pure (cleanupError result)
    | otherwise = withArrayLen (jsonBytes result) $ \count pointer ->
        writeRaw pointer (fromIntegral count)
