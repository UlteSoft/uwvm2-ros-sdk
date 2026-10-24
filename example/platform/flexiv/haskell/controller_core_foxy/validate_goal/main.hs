-- | @brief Decode all original fields and return only a completely valid encoding.
module Main where
import Flexiv.Controllercorefoxy.Records
import qualified Data.ByteString as B
import System.IO (stdin, stderr, hPutStrLn)
import System.Exit (exitFailure)
main :: IO ()
main = do
    bytes <- B.hGet stdin 9373
    case decodeRos2Sensor_msgsMsgJointState bytes of
        Left code -> hPutStrLn stderr (show code) >> exitFailure
        Right value -> case encodeRos2Sensor_msgsMsgJointState value of
            Left code -> hPutStrLn stderr (show code) >> exitFailure
            Right encoded -> B.putStr encoded
