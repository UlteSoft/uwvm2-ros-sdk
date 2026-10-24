/**
 * @file main.mjs
 * @brief Execute complete ros1 publish_string in the genuine guest QuickJS engine.
 * @details JavaScript owns every original field, codec, status and once-only cleanup.
 */
import {run, report} from "ros/js/native_command";
globalThis.exitCode = report(run(1, "sample"));
