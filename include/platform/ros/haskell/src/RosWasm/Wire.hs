-- Complete scalar/container cursor primitives. No host serialization is used.
-- | \@brief Pure complete canonical scalar/container codecs with bounded cursors.
--
-- \@details No Host operation, native struct cast, permission or type registry
-- is used. Widths and bounds come from the exact original schema. ByteString
-- slices retain their immutable backing storage. Pure codec failures preserve
-- unsigned statuses; allocation/runtime exceptions are not encoded as Left.
-- \@see 'Decoder', 'runDecoder', 'bounded', 'failure'
module RosWasm.Wire
  ( Decoder, runDecoder, bytes, unsigned, signed, boolean, float32, float64
  , text, count, encodeUnsigned, encodeSigned, encodeBool, encodeFloat32
  , encodeFloat64, encodeText, encodeCount, bounded, failure, finite
  ) where

import Data.Bits
import qualified Data.ByteString as B
import qualified Data.Text as T
import qualified Data.Text.Encoding as TE
import Data.Int
import Data.Word
import GHC.Float (castWord32ToFloat,castWord64ToDouble,castFloatToWord32,castDoubleToWord64)

-- | \@brief Abstract pure cursor computation for one complete field/record prefix.
--
-- \@details Functor/Applicative/Monad composition threads one byte offset and
-- short-circuits the original nonzero status. The constructor/cursor are private;
-- compose public primitives and let runDecoder check whole-record exhaustion.
-- Returned ByteString fields can share and retain the immutable original buffer.
-- \@see 'runDecoder', 'bytes', 'failure'
newtype Decoder a = Decoder { step :: B.ByteString -> Int -> Either Word32 (a,Int) }
instance Functor Decoder where
  fmap f p = Decoder $ \b at -> do (a,end) <- step p b at; pure (f a,end)
instance Applicative Decoder where
  pure a = Decoder $ \_ at -> Right (a,at)
  f <*> p = Decoder $ \b at -> do (g,end) <- step f b at; (a,lastAt) <- step p b end; pure (g a,lastAt)
instance Monad Decoder where
  p >>= f = Decoder $ \b at -> do (a,end) <- step p b at; step (f a) b end
-- | \@brief Construct a pure decoder refusal with the exact supplied status.
-- \@details Consumes no input and calls no Host; composition stops at this Left.
-- \@param[in] c Original unsigned refusal code; callers should supply nonzero.
-- \@return Decoder producing Left c without a value or cursor advance.
-- \@see 'Decoder', 'runDecoder'
failure :: Word32 -> Decoder a
failure c = Decoder $ \_ _ -> Left c
-- | \@brief Decode exactly one bounded complete input and reject trailing bytes.
-- \@details Starts the abstract cursor at zero. A successful decoder must consume
-- the full ByteString before its value is exposed; no replacement value is used.
-- \@param[in] limit Inclusive complete-input ceiling, 0 through 4194304 bytes.
-- \@param[in] p Complete selected field/record decoder, composed from exact primitives.
-- \@param[in] b Immutable complete canonical input; decoded slices retain its storage.
-- \@return Right complete value, Left 90 for bounds, Left 22 for trailing input,
-- or the unchanged selected decoder refusal. Allocation/runtime exceptions stay separate.
-- \@see 'Decoder', 'bytes', 'bounded'
runDecoder :: Int -> Decoder a -> B.ByteString -> Either Word32 a
runDecoder limit p b
  | limit<0 || limit>4194304 || B.length b>limit = Left 90
  | otherwise = do
      (value,end) <- step p b 0
      if end==B.length b then Right value else Left 22
-- | \@brief Consume one exact complete byte extent without truncating it.
-- \@details The resulting immutable slice shares and retains original ByteString
-- backing storage. No native pointer is exposed and no padding is synthesized.
-- \@param[in] n Nonnegative exact selected field extent in bytes.
-- \@return Decoder for that complete slice; Left 22 rejects negative/truncated extents.
-- \@see 'Decoder', 'runDecoder', 'text'
bytes :: Int -> Decoder B.ByteString
bytes n = Decoder $ \b at ->
  if n<0 || n>B.length b-at then Left 22 else Right (B.take n (B.drop at b),at+n)
-- | \@brief Decode an exact-width unsigned little-endian field into full Word64.
-- \@details No host-sized Int conversion or native ROS layout is inferred.
-- \@param[in] n Exact original scalar width in bytes: 1, 2, 4 or 8.
-- \@return Decoder preserving every field bit; Left 22 for width/truncation refusal.
-- \@see 'signed', 'encodeUnsigned', 'runDecoder'
unsigned :: Int -> Decoder Word64
unsigned n
  | n `notElem` [1,2,4,8] = failure 22
  | otherwise = do b <- bytes n; pure (B.foldr (\v acc -> fromIntegral v .|. (acc `shiftL` 8)) 0 b)
-- | \@brief Decode an exact-width signed little-endian field with sign extension.
-- \@details Preserves original two's-complement bits in Int64, including negatives.
-- \@param[in] n Exact original signed scalar width in bytes: 1, 2, 4 or 8.
-- \@return Complete signed-field decoder; Left 22 for invalid width or truncation.
-- \@see 'unsigned', 'encodeSigned'
signed :: Int -> Decoder Int64
signed n = do
  value <- unsigned n
  pure (fromIntegral (if n<8 && testBit value (n*8-1) then value .|. (maxBound `shiftL` (n*8)) else value))
-- | \@brief Decode one canonical Boolean byte, exactly 0 or 1.
-- \@details Other byte values are rejected rather than coerced to True.
-- \@return Decoder for False/True; Left 22 for truncation or a noncanonical byte.
-- \@see 'encodeBool', 'unsigned'
boolean :: Decoder Bool
boolean = do n <- unsigned 1; if n>1 then failure 22 else pure (n==1)
-- | \@brief Test whether one RealFloat value is neither NaN nor infinite.
-- \@details Pure predicate; does not scale, normalize or encode the input.
-- \@param[in] v Complete floating value evaluated by the selected RealFloat instance.
-- \@return True for a finite value, including finite signed zero and subnormals.
-- \@see 'float32', 'float64', 'encodeFloat32', 'encodeFloat64'
finite :: RealFloat a => a -> Bool
finite v = not (isNaN v || isInfinite v)
-- | \@brief Decode one finite IEEE binary32 field from four canonical LE bytes.
-- \@details Reconstructs original finite bits; no physical-unit conversion occurs.
-- \@return Complete Float decoder; Left 22 for truncation, NaN or infinity.
-- \@see 'encodeFloat32', 'finite', 'unsigned'
float32 :: Decoder Float
float32 = do n <- unsigned 4; let v=castWord32ToFloat (fromIntegral n)
             if finite v then pure v else failure 22
-- | \@brief Decode one finite IEEE binary64 field from eight canonical LE bytes.
-- \@details Preserves exact finite bits without assuming host byte order.
-- \@return Complete Double decoder; Left 22 for truncation, NaN or infinity.
-- \@see 'encodeFloat64', 'finite', 'unsigned'
float64 :: Decoder Double
float64 = do n <- unsigned 8; let v=castWord64ToDouble n
             if finite v then pure v else failure 22
-- | \@brief Decode one u32 count constrained by the exact original field bound.
-- \@details Checks the unsigned count before converting to target Int; it does
-- not allocate elements, reserve a Host quota or infer a native sequence capacity.
-- \@param[in] bound Nonnegative inclusive count/UTF-8-byte ceiling from the schema.
-- \@return Decoder for the checked count; Left 22 for negative bound, excess or truncation.
-- \@see 'encodeCount', 'text', 'unsigned'
count :: Int -> Decoder Int
count bound = do n <- unsigned 4
                 if bound<0 || n>fromIntegral bound then failure 22 else pure (fromIntegral n)
-- | \@brief Decode complete bounded length-prefixed UTF-8 without replacement.
-- \@details Reads exact u32 byte count and all bytes, then strictly validates UTF-8.
-- Bound counts UTF-8 bytes rather than characters; no normalization/trailing NUL is added.
-- \@param[in] bound Nonnegative inclusive UTF-8 byte ceiling from the original schema.
-- \@param[in] rejectNul True rejects embedded NUL; False requires the selected
-- original field contract independently to permit it.
-- \@return Complete Text decoder; Left 22 for count/content/truncation refusal.
-- \@see 'encodeText', 'count', 'bytes'
text :: Int -> Bool -> Decoder T.Text
text bound rejectNul = do
  n <- count bound; b <- bytes n
  case TE.decodeUtf8' b of
    Left _ -> failure 22
    Right value -> if rejectNul && B.elem 0 b then failure 22 else pure value

-- | \@brief Encode an exact-width unsigned field into canonical LE bytes.
-- \@details Validates the complete unsigned range before creating output.
-- \@param[in] n Exact original byte width, one of 1, 2, 4 or 8.
-- \@param[in] value Full unsigned value without host-Int narrowing.
-- \@return Right complete n-byte value, or Left 22 for width/range refusal.
-- \@see 'unsigned', 'encodeSigned', 'bounded'
encodeUnsigned :: Int -> Word64 -> Either Word32 B.ByteString
encodeUnsigned n value
  | n `notElem` [1,2,4,8] || (n<8 && value >= 1 `shiftL` (n*8)) = Left 22
  | otherwise = Right (B.pack [fromIntegral (value `shiftR` (8*i)) | i <- [0..n-1]])
-- | \@brief Encode a checked signed field using exact two's-complement LE bytes.
-- \@details Refuses values outside the original selected signed width.
-- \@param[in] n Exact original byte width, one of 1, 2, 4 or 8.
-- \@param[in] value Complete signed Int64 field value, including negative values.
-- \@return Right complete n-byte field, or Left 22 for width/range refusal.
-- \@see 'signed', 'encodeUnsigned', 'bounded'
encodeSigned :: Int -> Int64 -> Either Word32 B.ByteString
encodeSigned n value
  | n `notElem` [1,2,4,8] = Left 22
  | n<8 && (value < negate (1 `shiftL` (n*8-1)) || value >= 1 `shiftL` (n*8-1)) = Left 22
  | otherwise = Right (B.pack [fromIntegral (value `shiftR` (8*i)) | i <- [0..n-1]])
-- | \@brief Encode one canonical Boolean byte, exactly 0 or 1.
-- \@details No native Bool memory layout, schema lookup or Host operation is used.
-- \@param[in] v Complete Boolean field value.
-- \@return Right one-byte canonical value; allocation/runtime exceptions remain separate.
-- \@see 'boolean', 'bounded'
encodeBool :: Bool -> Either Word32 B.ByteString
encodeBool v = Right (B.singleton (if v then 1 else 0))
-- | \@brief Encode one finite IEEE binary32 field with its exact bit pattern.
-- \@details Produces four LE bytes and preserves finite signed-zero/subnormal bits.
-- \@param[in] v Complete original finite Float, with no scaling or unit conversion.
-- \@return Right complete field, or Left 22 for NaN/infinity.
-- \@see 'float32', 'finite', 'encodeUnsigned'
encodeFloat32 :: Float -> Either Word32 B.ByteString
encodeFloat32 v = if finite v then encodeUnsigned 4 (fromIntegral (castFloatToWord32 v)) else Left 22
-- | \@brief Encode one finite IEEE binary64 field with its exact bit pattern.
-- \@details Produces eight LE bytes without a native ROS struct/pointer cast.
-- \@param[in] v Complete original finite Double with its declared physical meaning.
-- \@return Right complete field, or Left 22 for NaN/infinity.
-- \@see 'float64', 'finite', 'encodeUnsigned'
encodeFloat64 :: Double -> Either Word32 B.ByteString
encodeFloat64 v = if finite v then encodeUnsigned 8 (castDoubleToWord64 v) else Left 22
-- | \@brief Encode bounded UTF-8 Text with its exact u32 byte-count prefix.
-- \@details Preserves encoded content without normalization or an added NUL.
-- Performs no Host call, native identity lookup or quota reservation.
-- \@param[in] bound Nonnegative original inclusive UTF-8 byte ceiling.
-- \@param[in] rejectNul True rejects embedded NUL; False needs the field's exact policy.
-- \@param[in] value Complete immutable original Text through pure encoding.
-- \@return Right complete prefix/body bytes, or Left 22 for bound/content/u32 refusal.
-- \@see 'text', 'encodeCount', 'bounded'
encodeText :: Int -> Bool -> T.Text -> Either Word32 B.ByteString
encodeText bound rejectNul value
  | bound<0 || B.length b>bound || (rejectNul && B.elem 0 b) = Left 22
  | otherwise = do prefix <- encodeCount bound (B.length b); pure (prefix <> b)
  where b=TE.encodeUtf8 value
-- | \@brief Encode one bounded nonnegative count as an exact u32 LE value.
-- \@details Neither count nor schema bound allocates elements or grants a quota.
-- \@param[in] bound Original inclusive nonnegative count/byte ceiling.
-- \@param[in] n Actual count, nonnegative, at most bound and representable as u32.
-- \@return Right four-byte count, or Left 22 for bounds/u32 range refusal.
-- \@see 'count', 'encodeUnsigned', 'encodeText'
encodeCount :: Int -> Int -> Either Word32 B.ByteString
encodeCount bound n
  | bound<0 || n<0 || n>bound = Left 22
  | otherwise = encodeUnsigned 4 (fromIntegral n)
-- | \@brief Concatenate complete canonical chunks only after bounded-size checks.
-- \@details Checks each finite list element's extent before final concatenation.
-- The caller must supply a finite chunk list; byte bounds alone do not bound work
-- over an infinite list of empty chunks. No schema or Host grant is inferred.
-- \@param[in] limit Inclusive complete-body ceiling, 0 through 4193786 bytes.
-- \@param[in] chunks Finite immutable chunks in exact original declaration order.
-- \@return Right owned complete concatenation, or Left 90 for limit/extent refusal.
-- Allocation/runtime exceptions are distinct from a Left codec status.
-- \@see 'runDecoder', 'encodeCount', 'encodeText'
bounded :: Int -> [B.ByteString] -> Either Word32 B.ByteString
bounded limit chunks
  | limit<0 || limit>4193786 = Left 90
  | otherwise = go 0 chunks where
      go _ [] = Right (B.concat chunks)
      go used (b:rest) = if B.length b>limit-used then Left 90 else go (used+B.length b) rest
