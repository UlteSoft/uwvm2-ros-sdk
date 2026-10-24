-- | @file Main.hs
-- @brief Exercise the complete original kuka_driver_interfaces/msg/KssStatus with genuine Haskell values.
module Main where
import qualified Data.ByteString as B
import Kuka.Records.KukaRos2Complete
main :: IO ()
main = do
    let bytes = either (error . show) id (encodeRos2Kuka_driver_interfacesMsgKssStatus defaultRos2Kuka_driver_interfacesMsgKssStatus)
    let value = either (error . show) id (decodeRos2Kuka_driver_interfacesMsgKssStatus bytes)
    let again = either (error . show) id (encodeRos2Kuka_driver_interfacesMsgKssStatus value)
    if bytes /= again then error "complete canonical record changed" else pure ()
    putStrLn ("{\"type\":\"kuka_driver_interfaces/msg/KssStatus\",\"bytes\":" ++ show (B.length bytes) ++ "}")
