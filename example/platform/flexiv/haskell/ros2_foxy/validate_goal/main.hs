-- | @brief Decode all original fields and return only a completely valid encoding.
module Main where
import Flexiv.Ros2Foxy.Records
import qualified Data.ByteString as B
import System.IO (stdin, stderr, hPutStrLn)
import System.Exit (exitFailure)
main :: IO ()
main = do
    bytes <- B.hGet stdin 113
    case decodeRos2Flexiv_msgsMsgJointPosVel bytes of
        Left code -> hPutStrLn stderr (show code) >> exitFailure
        Right value -> case encodeRos2Flexiv_msgsMsgJointPosVel value of
            Left code -> hPutStrLn stderr (show code) >> exitFailure
            Right encoded -> B.putStr encoded
