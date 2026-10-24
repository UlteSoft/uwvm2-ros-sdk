-- | @file Main.hs
-- @brief Exercise the complete original urinterfaces/srv/SetAnalogOutput_Response with genuine Haskell values.
module Main where
import qualified Data.ByteString as B
import UniversalRobots.Records.UniversalRobotsPolyscopexComplete
main :: IO ()
main = do
    let bytes = either (error . show) id (encodeRos2UrinterfacesSrvSetAnalogOutput_Response defaultRos2UrinterfacesSrvSetAnalogOutput_Response)
    let value = either (error . show) id (decodeRos2UrinterfacesSrvSetAnalogOutput_Response bytes)
    let again = either (error . show) id (encodeRos2UrinterfacesSrvSetAnalogOutput_Response value)
    if bytes /= again then error "complete canonical record changed" else pure ()
    putStrLn ("{\"type\":\"urinterfaces/srv/SetAnalogOutput_Response\",\"bytes\":" ++ show (B.length bytes) ++ "}")
