-- | @brief Decode all original fields and return only a completely valid encoding.
module Main where
import Kinova.Ros2Humble.Records
import qualified Data.ByteString as B
import System.IO (stdin, stderr, hPutStrLn)
import System.Exit (exitFailure)
main :: IO ()
main = do
    bytes <- B.hGet stdin 8581
    case decodeRos2Control_msgsActionFollowJointTrajectory_Goal bytes of
        Left code -> hPutStrLn stderr (show code) >> exitFailure
        Right value -> case encodeRos2Control_msgsActionFollowJointTrajectory_Goal value of
            Left code -> hPutStrLn stderr (show code) >> exitFailure
            Right encoded -> B.putStr encoded
