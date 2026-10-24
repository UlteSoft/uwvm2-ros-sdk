/**
 * @file main_ros1_melodic.ts
 * @brief Preserve the original trossen explicit-alias application flow.
 * @details The caller supplies aliases and complete command bytes; source selection does not grant permission.
 * Operation failures and explicit resource cleanup remain distinct; admitted effects are never replayed.
 * Canonical storage and input bounds come from the selected public typed SDK.
 * This implementation source still requires a shared provider build and native ROS qualification.
 */
/** stdin: state0/command1, u8 alias size, strict UTF-8 alias, then command payload if admitted. */
import {readOnce, commandOnce, cleanupStatus} from "./telemetry_ros1_melodic";
import {readAlias, proc_exit} from "./wasi_alias";

export function _start(): void
{
    const a = readAlias();
    const p = a.status ? a.status : (a.query ? commandOnce(a.alias) : readOnce(a.alias));
    const c = p ? p : cleanupStatus;
    proc_exit(c < 126 ? c : 125);
}
