-- | @brief Decode all original fields and return only a completely valid encoding.
module Main where
import Franka.Ros1.Records
import qualified Data.ByteString as B
import System.IO (stdin, stderr, hPutStrLn)
import System.Exit (exitFailure)
main :: IO ()
main = do
    bytes <- B.hGet stdin 2620
    case decodeRos1Franka_msgsFrankaState bytes of
        Left code -> hPutStrLn stderr (show code) >> exitFailure
        Right value -> case encodeRos1Franka_msgsFrankaState value of
            Left code -> hPutStrLn stderr (show code) >> exitFailure
            Right encoded -> B.putStr encoded
