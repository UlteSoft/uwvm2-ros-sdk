-- | @brief Decode all original fields and return only a completely valid encoding.
module Main where
import Flexiv.Controllercorehumble.Records
import qualified Data.ByteString as B
import System.IO (stdin, stderr, hPutStrLn)
import System.Exit (exitFailure)
main :: IO ()
main = do
    bytes <- B.hGet stdin 16981
    case decodeRos2Trajectory_msgsMsgJointTrajectory bytes of
        Left code -> hPutStrLn stderr (show code) >> exitFailure
        Right value -> case encodeRos2Trajectory_msgsMsgJointTrajectory value of
            Left code -> hPutStrLn stderr (show code) >> exitFailure
            Right encoded -> B.putStr encoded
