-- | @file Main.hs
-- @brief Exercise the complete original ur_dashboard_msgs/srv/AddToLog_Response with genuine Haskell values.
module Main where
import qualified Data.ByteString as B
import UniversalRobots.Records.UniversalRobotsRos2Complete
main :: IO ()
main = do
    let bytes = either (error . show) id (encodeRos2Ur_dashboard_msgsSrvAddToLog_Response defaultRos2Ur_dashboard_msgsSrvAddToLog_Response)
    let value = either (error . show) id (decodeRos2Ur_dashboard_msgsSrvAddToLog_Response bytes)
    let again = either (error . show) id (encodeRos2Ur_dashboard_msgsSrvAddToLog_Response value)
    if bytes /= again then error "complete canonical record changed" else pure ()
    putStrLn ("{\"type\":\"ur_dashboard_msgs/srv/AddToLog_Response\",\"bytes\":" ++ show (B.length bytes) ++ "}")
