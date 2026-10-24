/**
 * @file main_ros1_doosan_robotics_patch_1.ts
 * @brief Retained doosan native ROS application flow over the public typed SDK.
 * @details Select the exact original source profile and manually configured deployment before use. Observe the
 * operation and cleanup statuses separately. Source retention does not establish native communication, current
 * robot state, or controller compatibility.
 * @see document/platform/doosan/en_US/README.md
 */

/** stdin: state0/command1, u8 alias size, strict UTF-8 alias, then command payload if admitted. */
import {readOnce, commandOnce, cleanupStatus} from "doosan/flows/as/telemetry_ros1_doosan_robotics_patch_1";
import {readAlias, proc_exit} from "doosan/flows/as/wasi_alias";

export function _start(): void
{
    const a = readAlias();
    const p = a.status ? a.status : (a.query ? commandOnce(a.alias) : readOnce(a.alias));
    const c = p ? p : cleanupStatus;
    proc_exit(c < 126 ? c : 125);
}
