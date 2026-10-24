-- | @file main.hs
-- @brief Execute complete ros2 call_trigger through genuine WASI GHC.
-- @details Haskell owns every original field, codec and once-only cleanup decision.
module Main where
import Ros.NativeCommand (command)
-- | @brief Execute one finite original operation and report independent statuses.
main :: IO ()
main = command 3
