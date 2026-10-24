-- | @file Wire.hs
-- @brief Traverse complete canonical Unitree values with pure Haskell parsers.
-- @details Owned immutable values preserve every original scalar bit and field.
-- These codecs create no ROS owner, callback, task or implicit permission.
module Unitree.Wire where
import Data.Word
import Data.Bits

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

