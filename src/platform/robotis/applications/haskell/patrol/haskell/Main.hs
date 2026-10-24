{-# LANGUAGE DeriveDataTypeable #-}
-- | \@brief Bounded complete original TurtleBot3 Patrol application for Haskell/WASI.
-- \@details Uses actual shared RosWasm owners and complete canonical codecs.
-- No native ROS server/socket, callback thread, retry or automatic cancellation.
-- \@see Goal Report parseGoal encodeGoal run main
module Main (Goal(..), Report(..), PatrolFailure(..), parseGoal, encodeGoal, run, main) where

import Control.Exception
import Control.Monad (forM, forM_, unless, when)
import qualified Data.ByteString as B
import Data.IORef
import Data.List (nub)
import qualified Data.Text as T
import qualified Data.Text.Encoding as TE
import Data.Typeable (Typeable)
import Data.Word
import RosWasm
import qualified RosWasm.Raw as Raw
import qualified RosWasm.Wire as Wire
import System.Environment (getArgs)
import System.Exit (ExitCode(..), exitWith)
import Text.Read (readMaybe)

-- | \@brief Complete original Vector3 Goal: square1/triangle2, metres, float count.
-- \@details Strict fields retain every original Double value; construction
-- grants no authority and implies no physical/model safety limit.
-- \@see parseGoal encodeGoal run
data Goal = Goal { mode :: !Double, distance :: !Double, count :: !Double }
    deriving (Eq, Show)

-- | \@brief Preserve complete original values, uncertainty and every role close.
-- \@details primary retains the exact exception; goalId retains every Word64
-- bit, and sendUnknown never authorizes replay. feedback is retained in reverse
-- receive order, bounded by the finite poll budget. terminal is a fully decoded
-- kind2/3/4 and original text. cleanup identifies role0..3 (send/cancel-own/
-- feedback/result) and records either not-opened, original RosError, success or
-- thrown cleanup exception. One synchronous Guest caller owns this report.
-- \@see run Goal
data Report = Report
    { primary :: Maybe SomeException
    , goalId :: Word64
    , sendUnknown :: Bool
    , feedback :: [T.Text]
    , terminal :: Maybe (Word8, T.Text)
    , cleanup :: [(Int, Maybe (Either SomeException (Either RosError ())))]
    }

-- | \@brief Preserve the complete original numeric RosError as a typed exception.
-- \@details Includes conditional required-size evidence unchanged. Throwing this
-- never permits replay; report primary and cleanup remain independent.
-- \@see run Report
data PatrolFailure = PatrolFailure RosError deriving (Show, Typeable)
instance Exception PatrolFailure

invalid :: Word32 -> IO a
invalid value = throwIO (PatrolFailure (RosError value Nothing))

checked :: IO (Either RosError a) -> IO a
checked operation = operation >>= either (throwIO . PatrolFailure) pure

decoded :: Either Word32 a -> IO a
decoded = either invalid pure

asciiDigits :: String -> Bool
asciiDigits text = not (null text) && all (\value -> value >= '0' && value <= '9') text

stripPlus :: String -> String
stripPlus ('+':rest) = rest
stripPlus text = text

-- | \@brief Parse one complete original Goal before any owner is opened.
-- \@details Bounded ASCII arguments replace the original Python interactive UI.
-- Each numeric string is at most255 bytes. Count uses arbitrary Integer before
-- conversion to finite Double; '-0' therefore becomes positive floating zero.
-- The selected Haskell decimal parser's representable domain is explicit;
-- locale/hex/whitespace/nonfinite/unbounded original input is not claimed covered.
-- \@param selected Exactly s or t; main handles x without opening any role.
-- \@param metres Original finite distance in metres; no native limit inferred.
-- \@param repetitions Signed decimal integer count.
-- \@return Complete Goal or original invalid status22, with no external effect.
-- \@see Goal encodeGoal run
parseGoal :: String -> String -> String -> Either Word32 Goal
parseGoal selected metres repetitions = do
    selectedMode <- case selected of "s" -> Right 1; "t" -> Right 2; _ -> Left 22
    unless (not (null metres) && length metres <= 255 &&
            all (\value -> (value >= '0' && value <= '9') || value `elem` "+-.eE") metres &&
            length repetitions <= 255) (Left 22)
    let digits = case repetitions of '+':rest -> rest; '-':rest -> rest; _ -> repetitions
    unless (asciiDigits digits) (Left 22)
    metresValue <- maybe (Left 22) Right (readMaybe (stripPlus metres) :: Maybe Double)
    integerValue <- maybe (Left 22) Right (readMaybe (stripPlus repetitions) :: Maybe Integer)
    let countValue = fromInteger integerValue
    unless (Wire.finite metresValue && Wire.finite countValue) (Left 22)
    pure (Goal selectedMode metresValue countValue)

-- | \@brief Encode all original Vector3 fields through the shared wire codec.
-- \@details Pure complete24-byte little-endian conversion; no native operation.
-- \@param goal Complete finite Goal; count must be mathematically integral.
-- \@return Owned canonical bytes, or numeric invalid/capacity error unchanged.
-- \@see Goal parseGoal run
encodeGoal :: Goal -> Either Word32 B.ByteString
encodeGoal goal = do
    unless (mode goal `elem` [1,2] && Wire.finite (distance goal) && Wire.finite (count goal) &&
            fromInteger (truncate (count goal) :: Integer) == count goal) (Left 22)
    fields <- mapM Wire.encodeFloat64 [mode goal, distance goal, count goal]
    Wire.bounded 24 fields

fullId :: B.ByteString -> IO Word64
fullId bytes = do
    value <- decoded (Wire.runDecoder 8 (Wire.unsigned 8) bytes)
    if value == 0 then invalid 22 else pure value

feedbackValue :: Word64 -> B.ByteString -> IO T.Text
feedbackValue expected = decoded . Wire.runDecoder 268 (do
    received <- Wire.unsigned 8
    unless (received == expected) (Wire.failure 22)
    Wire.text 256 True)

resultValue :: Word64 -> B.ByteString -> IO (Word8, T.Text)
resultValue expected = decoded . Wire.runDecoder 269 (do
    received <- Wire.unsigned 8
    kind <- Wire.unsigned 1
    unless (received == expected && kind >= 2 && kind <= 4) (Wire.failure 22)
    value <- Wire.text 256 True
    pure (fromIntegral kind, value))

-- | \@brief Send once, poll full original feedback/result and close every role.
-- \@details Uses actual RosWasm.open/request/close and complete shared codecs.
-- Four distinct original role aliases open before send. Every acquired owner
-- closes independently, including after partial-open/business exceptions; exact
-- cleanup failures never overwrite the primary. Masking protects ordinary
-- asynchronous interruption during registration/cleanup. A Wasm trap/heap
-- exhaustion cannot promise cleanup. Native server/driver remains a separate
-- cooperating program. No cancel-any role, replay or automatic cancellation.
-- \@param aliases Four distinct NUL-free UTF-8 Text names,1..255 bytes each, in
-- send/cancel-own/feedback/result order; unchanged during this single-caller run.
-- \@param goal Complete original Goal with metre/float-integer-count semantics.
-- \@param polls Integer1..4096; each iteration polls both original channels once.
-- \@return Report retaining exact primary, complete original values, full ID and
-- all cleanup facts. Pure invalid input throws PatrolFailure(code22) before open.
-- \@see Goal Report parseGoal encodeGoal
run :: [T.Text] -> Goal -> Int -> IO Report
run aliases goal polls = do
    encoded <- decoded (encodeGoal goal)
    _ <- evaluate (B.length encoded)
    unless (length aliases == 4 && length (nub aliases) == 4 && polls >= 1 && polls <= 4096 &&
            all (\alias -> let bytes = TE.encodeUtf8 alias in not (B.null bytes) &&
                         B.length bytes <= 255 && not (B.elem 0 bytes)) aliases) (invalid 22)
    slots <- mapM (const (newIORef Nothing)) [0..3 :: Int]
    state <- newIORef (Report Nothing 0 False [] Nothing [])
    let ownerAt index = readIORef (slots !! index) >>= maybe (invalid 9) pure
        business = do
            version <- Raw.rawAbiVersion
            unless (version == 1) (invalid 95)
            forM_ (zip slots aliases) $ \(slot, alias) -> mask_ $ do
                owner <- checked (open alias)
                writeIORef slot (Just owner)
            send <- ownerAt 0
            source <- ownerAt 2
            result <- ownerAt 3
            modifyIORef' state (\report -> report { sendUnknown = True })
            id <- checked (request send RpcActionSendGoal encoded 8) >>= fullId
            modifyIORef' state (\report -> report { goalId = id, sendUnknown = False })
            selector <- decoded (Wire.encodeUnsigned 8 id)
            let loop remaining
                    | remaining == 0 = invalid 110
                    | otherwise = do
                        received <- request source RpcActionReceiveFeedback selector 268
                        case received of
                            Left errorValue | code errorValue == 11 -> pure ()
                            Left errorValue -> throwIO (PatrolFailure errorValue)
                            Right bytes -> do
                                value <- feedbackValue id bytes
                                modifyIORef' state (\report -> report { feedback = value : feedback report })
                        completed <- request result RpcActionReceiveResult selector 269
                        case completed of
                            Left errorValue | code errorValue == 11 -> loop (remaining - 1)
                            Left errorValue -> throwIO (PatrolFailure errorValue)
                            Right bytes -> do
                                value <- resultValue id bytes
                                modifyIORef' state (\report -> report { terminal = Just value })
            loop polls
    attempted <- try business :: IO (Either SomeException ())
    modifyIORef' state (\report -> report { primary = either Just (const Nothing) attempted })
    outcomes <- mask_ $ forM (reverse (zip [0..3] slots)) $ \(role, slot) -> do
        owner <- readIORef slot
        outcome <- case owner of
            Nothing -> pure Nothing
            Just value -> Just <$> (try (close value) :: IO (Either SomeException (Either RosError ())))
        pure (role, outcome)
    report <- readIORef state
    pure report { cleanup = outcomes }

exceptionCode :: SomeException -> Word32
exceptionCode errorValue = case fromException errorValue of
    Just (PatrolFailure value) -> code value
    Nothing -> 22

cleanupCode :: Maybe (Either SomeException (Either RosError ())) -> Word32
cleanupCode Nothing = 0
cleanupCode (Just (Left value)) = exceptionCode value
cleanupCode (Just (Right (Left value))) = code value
cleanupCode (Just (Right (Right ()))) = 0

-- | \@brief Execute the actual Haskell/WASI argv command and cap process code only.
-- \@details Accepts SEND CANCEL_OWN FEEDBACK RESULT s|t|x DIST COUNT POLLS. x opens
-- nothing. Complete original values and every role outcome print after checked
-- cleanup. Actual cross-GHC/RTS/Text/ByteString products remain required.
-- \@see run parseGoal Report
main :: IO ()
main = do
    arguments <- getArgs
    case arguments of
        [_, _, _, _, "x", _, _, _] -> exitWith ExitSuccess
        [send, cancel, source, result, selected, metres, repetitions, budget] -> do
            goal <- decoded (parseGoal selected metres repetitions)
            unless (asciiDigits budget && length budget <= 4) (invalid 22)
            polls <- maybe (invalid 22) pure (readMaybe budget :: Maybe Int)
            report <- run (map T.pack [send, cancel, source, result]) goal polls
            when (goalId report /= 0) (putStrLn ("accepted goal=" ++ show (goalId report)))
            forM_ (reverse (feedback report)) $ \value ->
                putStrLn ("feedback[" ++ show (B.length (TE.encodeUtf8 value)) ++ "]: " ++ T.unpack value)
            case terminal report of
                Just (kind, value) -> putStrLn ("terminal kind=" ++ show kind ++ " goal=" ++ show (goalId report) ++
                                               "\nresult: " ++ T.unpack value)
                Nothing -> when (goalId report /= 0 || sendUnknown report)
                    (putStrLn "outcome unresolved; no replay or automatic cancel")
            print (fmap show (primary report), [(role, fmap show value) | (role, value) <- cleanup report])
            let first = maybe 0 exceptionCode (primary report)
                failures = filter (/= 0) (first : map (cleanupCode . snd) (cleanup report))
                final = case failures of [] -> 0; value:_ -> value
            exitWith (if final == 0 then ExitSuccess else ExitFailure (fromIntegral (min final 125)))
        _ -> exitWith (ExitFailure 22)
