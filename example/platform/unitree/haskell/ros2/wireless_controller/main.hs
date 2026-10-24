-- | @file main.hs
-- @brief Observe one complete original ROS 2 wireless_controller native message.
-- @details One explicit alias is required; the real Haskell observer closes before stdout.
module Main where
import Unitree.Observation (command)
import qualified Unitree.Ros2.Observation as Unitree
-- | @brief Enter the genuine Haskell Wasm command with the complete typed observer.
-- @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
-- The observer closes once before stdout; invalid argument count exits 22 before acquisition.
-- @return Normal unit completion exits zero; primary, close or stdout errors exit with their original
-- status clamped to 125 only at the process boundary. Fatal runtime failures cannot promise cleanup.
main :: IO ()
main = command Unitree.waitWirelessController
