-- @file Main.hs
-- @brief Execute the genuine agibot Main application over its explicit SDK imports.
-- @details The application owns its values and closes explicitly acquired capabilities. An installed
-- compiler/engine and exact native deployment remain separate requirements.
-- SPDX-License-Identifier: Apache-2.0
-- | Run one complete original AimDK observation inside the Haskell Wasm guest.
-- The SDK retires its capability before this entry inspects or prints results.
module Main (main) where

import qualified Agibot.Client as Agibot
import System.Environment (getArgs)
import System.Exit (ExitCode(..), exitWith)
import System.IO (hPutStrLn, stderr)

-- | Require one explicit deployment alias; report actual ABI and cleanup errors.
main :: IO ()
main = do
    arguments <- getArgs
    if length arguments /= 1
        then do
            hPutStrLn stderr "Expected exactly one granted Agibot alias"
            exitWith (ExitFailure 22)
        else do
            result <- Agibot.nextMotionState (head arguments) 3000
            if Agibot.errorCode result /= 0
                then do
                    hPutStrLn stderr ("Agibot observation failed: " ++ show (Agibot.errorCode result) ++
                        "; close: " ++ show (Agibot.cleanupError result))
                    exitWith (ExitFailure 1)
                else do
                    status <- Agibot.writeObservation result
                    if status == 0 && Agibot.vendorCode result == 0
                        then pure ()
                        else exitWith (ExitFailure 1)
