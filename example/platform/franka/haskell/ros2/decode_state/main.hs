-- | @brief Decode all original fields and return only a completely valid encoding.
module Main where
import Franka.Ros2.Records
import qualified Data.ByteString as B
import System.IO (stdin, stderr, hPutStrLn)
import System.Exit (exitFailure)
main :: IO ()
main = do
    bytes <- B.hGet stdin 10170
    case decodeRos2Franka_msgsMsgFrankaRobotState bytes of
        Left code -> hPutStrLn stderr (show code) >> exitFailure
        Right value -> case encodeRos2Franka_msgsMsgFrankaRobotState value of
            Left code -> hPutStrLn stderr (show code) >> exitFailure
            Right encoded -> B.putStr encoded
