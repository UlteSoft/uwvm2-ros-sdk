-- | @file main.hs
-- @brief Read the complete ABB system_state reply through genuine Haskell records.
-- @details The actual WASI GHC backend emits this command; no host Haskell runs it.
module Main where
import ABB.Observation (command)
-- | @brief Execute one bounded observation. @return IO action with original status.
main :: IO ()
main = command 3
