-- | @file Main.hs
-- @brief Exercise the complete original lifecycle_msgs/srv/ChangeState_Response with genuine Haskell values.
module Main where
import qualified Data.ByteString as B
import Kuka.Records.KukaRos2Complete
main :: IO ()
main = do
    let bytes = either (error . show) id (encodeRos2Lifecycle_msgsSrvChangeState_Response defaultRos2Lifecycle_msgsSrvChangeState_Response)
    let value = either (error . show) id (decodeRos2Lifecycle_msgsSrvChangeState_Response bytes)
    let again = either (error . show) id (encodeRos2Lifecycle_msgsSrvChangeState_Response value)
    if bytes /= again then error "complete canonical record changed" else pure ()
    putStrLn ("{\"type\":\"lifecycle_msgs/srv/ChangeState_Response\",\"bytes\":" ++ show (B.length bytes) ++ "}")
